SOURCES   = main.cpp

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtbase/graphicsview/simpleanchorlayout
sources.files = $$SOURCES $$HEADERS $$RESOURCES simpleanchorlayout.pro
sources.path = $$[QT_INSTALL_EXAMPLES]/qtbase/graphicsview/simpleanchorlayout
INSTALLS += target sources

TARGET = simpleanchorlayout
QT += widgets

symbian: CONFIG += qt_example
maemo5: CONFIG += qt_example
simulator: warning(This example might not fully work on Simulator platform)
