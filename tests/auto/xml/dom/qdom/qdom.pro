CONFIG += testcase
TARGET = tst_qdom
SOURCES  += tst_qdom.cpp

QT = core xml testlib
QT -= gui

wince* {
   wince*|qt_not_deployed {
       DEPLOYMENT_PLUGIN += qcncodecs qjpcodecs qkrcodecs qtwcodecs
   }
}
TESTDATA += testdata/* doubleNamespaces.xml umlaut.xml
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
