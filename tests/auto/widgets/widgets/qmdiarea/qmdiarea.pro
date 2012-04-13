CONFIG += testcase
TARGET = tst_qmdiarea

QT += gui-private widgets testlib

INCLUDEPATH += .
SOURCES += tst_qmdiarea.cpp
DEFINES += QT_NO_CAST_TO_ASCII QT_NO_CAST_FROM_ASCII
contains(QT_CONFIG, opengl):QT += opengl

mac {
    LIBS += -framework Security
}

CONFIG+=insignificant_test # QTBUG-25298
