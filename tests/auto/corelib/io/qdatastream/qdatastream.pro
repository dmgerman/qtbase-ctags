CONFIG += testcase
TARGET = tst_qdatastream
QT += testlib
SOURCES = tst_qdatastream.cpp

TESTDATA += datastream.q42

android {
    RESOURCES += \
        testdata.qrc
}
