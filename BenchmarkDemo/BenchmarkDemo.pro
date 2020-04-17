QT += quick quick3d

CONFIG += c++11 resources_big

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        fileio.cpp \
        main.cpp

RESOURCES += qml.qrc \
    BenchmarkUI/assets/assets.qrc \
    #BenchmarkUI/assets-simple/assets-simple.qrc \ # Use these if you want to benchmark with very simple one-mesh models
    $$files(BenchmarkUI/*.qml)
# Demo mode not yet supported for Android
!android: RESOURCES += BenchmarkUI/assets-demo/assets-demo.qrc

RCC_DIR = $${PWD}

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
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
