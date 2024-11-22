TARGET = pro.wolfnord.CNew

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/counter.cpp \
    src/main.cpp \

HEADERS += \
    src/counter.h

DISTFILES += \
    rpm/pro.wolfnord.CNew.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/pro.wolfnord.CNew.ts \
    translations/pro.wolfnord.CNew-ru.ts \
