TEMPLATE = subdirs
SUBDIRS +=  addressbook-fr threads addressbook widgets modelview gettingStarted

# install
target.path = $$[QT_INSTALL_EXAMPLES]/qtbase/widgets/tutorials
sources.files = tutorials.pro
sources.path = $$[QT_INSTALL_EXAMPLES]/qtbase/widgets/tutorials
INSTALLS += target sources
