CONFIG += testcase
CONFIG += parallel_test
TARGET = tst_qhttpnetworkreply
SOURCES  += tst_qhttpnetworkreply.cpp
INCLUDEPATH += $$QT_SOURCE_TREE/src/3rdparty/zlib
requires(contains(QT_CONFIG,private_tests))

QT = core-private network-private testlib
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
