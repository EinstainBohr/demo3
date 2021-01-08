QT += quick quick3d

CONFIG += c++11 resources_big

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
    fileio.cpp \
    main.cpp

RESOURCES += qml.qrc \
    $$files(BenchmarkUI/*.qml)

DEFINES += SIMPLE_ASSETS
RESOURCES += BenchmarkUI/assets-simple/assets-simple.qrc

RCC_DIR = $${PWD}

OTHER_FILES += \
    BenchmarkUI/testscripts/*.* \
    README.md

android: QMAKE_LFLAGS += --for-linker=--long-plt

# Additional import path used to resolve QML modules in Qt Creator's code model
!android: QML_IMPORT_PATH = BenchmarkUI

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
else: android: target.path = /tmp/$${TARGET}
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    fileio.h

DISTFILES += \
    BenchmarkUI/testscripts/antialiasing.json \
    BenchmarkUI/testscripts/effects.json \
    BenchmarkUI/testscripts/lightprobeAndAo.json \
    BenchmarkUI/testscripts/rendermodes.json \
    BenchmarkUI/testscripts/shadows.json \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
