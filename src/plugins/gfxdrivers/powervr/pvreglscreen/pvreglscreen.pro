TEMPLATE = lib
TARGET = qgfxpvregl
CONFIG += qt plugin warn_on
QT += opengl

LIBS += -lpvrQWSWSEGL

DEFINES += QT_QWS_CLIENTBLIT

INCLUDEPATH += ../QWSWSEGL


HEADERS	= \
    pvreglscreen.h \
    pvreglwindowsurface.h

SOURCES	= \
        pvreglscreenplugin.cpp \
        pvreglscreen.cpp \
	pvreglwindowsurface.cpp

DESTDIR = $$QT.gui.plugins/gfxdrivers

target.path = $$[QT_INSTALL_PLUGINS]/gfxdrivers
INSTALLS += target

include(../powervr.pri)