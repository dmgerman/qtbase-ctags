load(qttest_p4)

# do not run benchmarks by default in 'make check'
CONFIG -= testcase

TEMPLATE = app
TARGET = tst_bench_qdiriterator
DEPENDPATH += .
INCLUDEPATH += .

QT -= gui

CONFIG += release

SOURCES += main.cpp qfilesystemiterator.cpp
HEADERS += qfilesystemiterator.h

wince* {
   corelibdir.files = $$QT_SOURCE_TREE/src/corelib
   corelibdir.path = ./depot/src
   DEPLOYMENT += corelibdir
}

