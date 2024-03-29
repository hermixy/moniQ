#-------------------------------------------------
#
# Project created by QtCreator 2015-09-26T12:45:28
#
#-------------------------------------------------

QT       += core
QT       += websockets

QT       -= gui
QT += sql
QT += network
TARGET = moniQ
CONFIG   += console
CONFIG   += thread
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    networkdiscoverer.cpp \
    pinger.cpp \
    ipv4_address.cpp \
    networkreader.cpp \
    objectinstances.cpp \
    commandserver.cpp \
    database.cpp \
    pingthreadcontrol.cpp \
    pingscheduler.cpp \
    processcontroller.cpp

HEADERS += \
    pingerinterface.h \
    networkdiscoverer.h \
    pinger.h \
    ipv4_address.h \
    networkreader.h \
    objectinstances.h \
    commandserver.h \
    database.h \
    pingthreadcontrol.h \
    pingscheduler.h \
    processcontroller.h

DISTFILES +=



