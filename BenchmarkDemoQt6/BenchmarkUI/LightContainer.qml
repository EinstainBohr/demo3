import QtQuick
import QtQuick3D

Node {
    id: lightInstance
    property int lightType: 0
    property bool shadowsEnabled: false
    property var instanceRotation: Qt.vector3d(0, 0, 0)
    property var instancePosition: Qt.vector3d(0, 0, 0)
    property real brightness: 2.5
    property bool demomode: false
    property bool cockpitmode: false

    DirectionalLight {
        visible: lightType === 0
        ambientColor: "#222222"
        brightness: lightInstance.brightness
        position: lightInstance.instancePosition
        eulerRotation: demomode ? Qt.vector3d(-45, 45, 0) : lightInstance.instanceRotation
        castsShadow: shadowsEnabled
        shadowMapFar: demomode ? (cockpitmode ? 75 : 170) : 1500
        shadowMapQuality: Light.ShadowMapQualityHigh
        shadowFactor: 100
        shadowFilter: 4
        shadowBias: 0.005
    }

    PointLight {
        visible: lightType === 1
        brightness: lightInstance.brightness
        quadraticFade: 0
        linearFade: 0.1
        ambientColor: "#222222"
        position: lightInstance.instancePosition
        eulerRotation: lightInstance.instanceRotation
        castsShadow: shadowsEnabled
        shadowMapFar: demomode ? (cockpitmode ? 75 : 170) : 1500
        shadowMapQuality: cockpitmode ? Light.ShadowMapQualityVeryHigh
                                      : Light.ShadowMapQualityHigh
        shadowFactor: 100
        shadowFilter: 4
        shadowBias: 0.005
    }

    SpotLight {
        visible: lightType === 2
        brightness: lightInstance.brightness
        quadraticFade: 0
        linearFade: 0.1
        ambientColor: "#222222"
        position: lightInstance.instancePosition
        eulerRotation: lightInstance.instanceRotation
        castsShadow: shadowsEnabled
        coneAngle: 60
        shadowMapFar: 1500
        shadowMapQuality: Light.ShadowMapQualityHigh
        shadowFactor: 100
        shadowFilter: 4
        shadowBias: 0.005
    }
}
