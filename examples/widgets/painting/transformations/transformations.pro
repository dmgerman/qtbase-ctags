HEADERS     = renderarea.h \
              window.h
SOURCES     = main.cpp \
              renderarea.cpp \
	      window.cpp

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtbase/widgets/painting/transformations
sources.files = $$SOURCES $$HEADERS $$RESOURCES $$FORMS transformations.pro
sources.path = $$[QT_INSTALL_EXAMPLES]/qtbase/widgets/painting/transformations
INSTALLS += target sources

QT += widgets
