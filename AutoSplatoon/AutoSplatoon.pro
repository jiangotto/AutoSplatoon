QT       += core gui serialport network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11 communi
COMMUNI += core

#include(/home/tony/qtapps/libcommuni-3.5.0/src/core/core.pri)

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    autosplatoon.cpp \
    inputemulator.cpp \
    main.cpp \
    manualcontrol.cpp \
    serialcontroller.cpp

HEADERS += \
    autosplatoon.h \
    commonNames.h \
    inputemulator.h \
    manualcontrol.h \
    serialcontroller.h

FORMS += \
    autosplatoon.ui \
    manualcontrol.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    Icons.qrc

DISTFILES +=

RC_ICONS = favicon.ico
