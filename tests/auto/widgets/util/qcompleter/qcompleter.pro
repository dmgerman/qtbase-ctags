CONFIG += testcase
TEMPLATE = app
TARGET = tst_qcompleter
QT += widgets testlib
DEPENDPATH += .
INCLUDEPATH += . ..

# Input
SOURCES += tst_qcompleter.cpp

CONFIG += insignificant_test # QTBUG-21424
