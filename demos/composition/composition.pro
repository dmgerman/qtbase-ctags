SOURCES += main.cpp composition.cpp
HEADERS += composition.h

SHARED_FOLDER = ../shared

include($$SHARED_FOLDER/shared.pri)

RESOURCES += composition.qrc
contains(QT_CONFIG, opengl) {
	DEFINES += QT_OPENGL_SUPPORT
	QT += opengl
}

# install
target.path = $$[QT_INSTALL_DEMOS]/qtbase/composition
sources.files = $$SOURCES $$HEADERS $$RESOURCES *.png *.jpg *.pro *.html
sources.path = $$[QT_INSTALL_DEMOS]/qtbase/composition
INSTALLS += target sources

symbian: CONFIG += qt_demo

win32-msvc* {
    QMAKE_CXXFLAGS += /Zm500
    QMAKE_CFLAGS += /Zm500
}

wince* {
    DEPLOYMENT_PLUGIN += qjpeg
}
