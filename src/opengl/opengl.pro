load(qt_module)

TARGET     = QtOpenGL
QPRO_PWD   = $$PWD
QT         = core-private gui-private widgets-private

CONFIG += module
MODULE_PRI = ../modules/qt_opengl.pri

DEFINES   += QT_BUILD_OPENGL_LIB
DEFINES   += QT_NO_USING_NAMESPACE
win32-msvc*|win32-icc:QMAKE_LFLAGS += /BASE:0x63000000
solaris-cc*:QMAKE_CXXFLAGS_RELEASE -= -O2
irix-cc*:QMAKE_CXXFLAGS += -no_prelink -ptused

unix|win32-g++*:QMAKE_PKGCONFIG_REQUIRES = QtCore QtGui

load(qt_module_config)

HEADERS += $$QT_SOURCE_TREE/src/opengl/qtopenglversion.h

!win32:!embedded:!mac:!qpa:CONFIG	   += x11
contains(QT_CONFIG, opengl):CONFIG += opengl
contains(QT_CONFIG, opengles1):CONFIG += opengles1
contains(QT_CONFIG, opengles2):CONFIG += opengles2
contains(QT_CONFIG, egl):CONFIG += egl

HEADERS += qgl.h \
           qgl_p.h \
           qglcolormap.h \
           qglfunctions.h \
           qglpixelbuffer.h \
           qglpixelbuffer_p.h \
           qglframebufferobject.h  \
           qglframebufferobject_p.h  \
           qglextensions_p.h \
           qglpaintdevice_p.h \
           qglbuffer.h \


SOURCES += qgl.cpp \
           qglcolormap.cpp \
           qglfunctions.cpp \
           qglpixelbuffer.cpp \
           qglframebufferobject.cpp \
           qglextensions.cpp \
           qglpaintdevice.cpp \
           qglbuffer.cpp \


!contains(QT_CONFIG, opengles2) {
    HEADERS += qpaintengine_opengl_p.h
    SOURCES += qpaintengine_opengl.cpp
}

!contains(QT_CONFIG, opengles1) {
    HEADERS +=  qglshaderprogram.h \
                qglpixmapfilter_p.h  \
                qgraphicsshadereffect_p.h \
                gl2paintengineex/qglgradientcache_p.h \
                gl2paintengineex/qglengineshadermanager_p.h \
                gl2paintengineex/qgl2pexvertexarray_p.h \
                gl2paintengineex/qpaintengineex_opengl2_p.h \
                gl2paintengineex/qglengineshadersource_p.h \
                gl2paintengineex/qglcustomshaderstage_p.h \
                gl2paintengineex/qtriangulatingstroker_p.h \
                gl2paintengineex/qtriangulator_p.h \
                gl2paintengineex/qrbtree_p.h \
                gl2paintengineex/qtextureglyphcache_gl_p.h \
                gl2paintengineex/qglshadercache_p.h \
                gl2paintengineex/qglshadercache_meego_p.h

    SOURCES +=  qglshaderprogram.cpp \
                qglpixmapfilter.cpp \
                qgraphicsshadereffect.cpp \
                gl2paintengineex/qglgradientcache.cpp \
                gl2paintengineex/qglengineshadermanager.cpp \
                gl2paintengineex/qgl2pexvertexarray.cpp \
                gl2paintengineex/qpaintengineex_opengl2.cpp \
                gl2paintengineex/qglcustomshaderstage.cpp \
                gl2paintengineex/qtriangulatingstroker.cpp \
                gl2paintengineex/qtriangulator.cpp \
                gl2paintengineex/qtextureglyphcache_gl.cpp

}

qpa {
    SOURCES +=  qgl_qpa.cpp \
                qglpixelbuffer_stub.cpp
}

x11 {
    contains(QT_CONFIG, egl) {
        SOURCES +=  qgl_x11egl.cpp \
                    qglpixelbuffer_egl.cpp \
                    qgl_egl.cpp

        HEADERS +=  qgl_egl_p.h

    } else {
        SOURCES +=  qgl_x11.cpp \
                    qglpixelbuffer_x11.cpp
    }

    contains(QT_CONFIG, fontconfig) {
        contains(QT_CONFIG, system-freetype) {
            # pull in the proper freetype2 include directory
            include($$QT_SOURCE_TREE/config.tests/unix/freetype/freetype.pri)
            LIBS_PRIVATE += -lfreetype
        } else {
            ### Note: how does this compile with a non-system freetype?
	    # This probably does not compile
        }
    } else {
        DEFINES *= QT_NO_FREETYPE
    }

    LIBS_PRIVATE += $$QMAKE_LIBS_DYNLOAD
}

mac:!qpa {
    OBJECTIVE_SOURCES += qgl_mac.mm \
                         qglpixelbuffer_mac.mm
    LIBS_PRIVATE += -framework AppKit -framework Carbon
}
win32:!wince*: {
    DEFINES += QT_NO_EGL
    !qpa {
        SOURCES += qgl_win.cpp \
                       qglpixelbuffer_win.cpp
    }
}
wince*: {
    SOURCES += qgl_wince.cpp \
               qglpixelbuffer_egl.cpp \
               qgl_egl.cpp

    HEADERS += qgl_egl_p.h
}

INCLUDEPATH += ../3rdparty/harfbuzz/src
