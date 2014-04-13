TARGET = guh
TEMPLATE = app

INCLUDEPATH += ../libguh jsonrpc

target.path = /usr/bin
INSTALLS += target

QT += network
CONFIG += c++11

LIBS += -L$$top_builddir/libguh/ -lguh

include(server.pri)
SOURCES += main.cpp

# FIXME: Drop this and link them dynamically
LIBS += -L../plugins/deviceplugins/elro/ -lguh_devicepluginelro
LIBS += -L../plugins/deviceplugins/intertechno/ -lguh_devicepluginintertechno
#LIBS += -L../plugins/deviceplugins/meisteranker/ -lguh_devicepluginmeisteranker
LIBS += -L../plugins/deviceplugins/wifidetector/ -lguh_devicepluginwifidetector
LIBS += -L../plugins/deviceplugins/conrad -lguh_devicepluginconrad
LIBS += -L../plugins/deviceplugins/mock -lguh_devicepluginmock
#LIBS += -L../plugins/deviceplugins/weatherground -lguh_devicepluginweatherground
LIBS += -L../plugins/deviceplugins/openweathermap -lguh_devicepluginopenweathermap

boblight {
    LIBS += -L../plugins/deviceplugins/boblight -lguh_devicepluginboblight -L/usr/local/lib/ -lboblight
    DEFINES += USE_BOBLIGHT
}
