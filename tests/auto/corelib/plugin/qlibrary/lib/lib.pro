TEMPLATE = lib
CONFIG += dll
CONFIG -= staticlib
SOURCES		= mylib.c
TARGET = mylib
DESTDIR = ../
QT = core

wince*: DEFINES += WIN32_MSVC
win32-msvc: DEFINES += WIN32_MSVC
win32-borland: DEFINES += WIN32_BORLAND

#no special install rule for the library used by test
INSTALLS =
