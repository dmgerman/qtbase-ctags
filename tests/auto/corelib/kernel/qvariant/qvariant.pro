CONFIG += testcase
CONFIG += parallel_test
TARGET = tst_qvariant
QT += gui testlib
INCLUDEPATH += $$PWD/../../../other/qvariant_common
SOURCES = tst_qvariant.cpp
RESOURCES += qvariant.qrc
