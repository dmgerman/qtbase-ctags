CONFIG += testcase
TARGET = tst_qinputcontext
QT += widgets testlib
SOURCES  += tst_qinputcontext.cpp

mac*:CONFIG+=insignificant_test

CONFIG += insignificant_test # QTBUG-21402
