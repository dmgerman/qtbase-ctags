############################################################
# Project file for autotest for file qsqlerror.h
############################################################

CONFIG += testcase
CONFIG += parallel_test
TARGET = tst_qsqlerror
QT = core sql testlib

SOURCES += tst_qsqlerror.cpp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
