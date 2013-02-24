# -------------------------------------------------
# Project created by QtCreator 2010-07-16T23:59:24
# -------------------------------------------------
QT += network xml
QT -= gui

TARGET = qpurple
TEMPLATE = lib
DEFINES += QPURPLE_LIBRARY

OBJECTS_DIR = build
MOC_DIR = build
UI_DIR = build
RCC_DIR=build
DESTDIR = bin


unix: {
INCLUDEPATH += \
    /usr/include/glib-2.0 \
    /usr/lib/glib-2.0/include \
    /usr/lib/x86_64-linux-gnu/glib-2.0/include \
    /usr/include/libpurple

LIBS += -lglib-2.0 \
    -lpurple

}
SOURCES += qpurple.cpp \
    qpurpletimer.cpp \
    qpurpleionotifier.cpp
HEADERS += qpurple.h \
    qpurpletimer.h \
    qpurpleionotifier.h
