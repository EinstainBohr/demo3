import QtQuick 2.12
import QtQuick3D 1.15
import QtQuick3D.Effects 1.15
import RainOnCarDS 1.0
import QtQuick 2.15
import QtQuick.Timeline 1.0

Item {
    id: root
    anchors.fill: parent
    property var effectList: []
    property alias showWaterMeshTwo: waterMeshTwo.visible
    property alias showWaterMesh: waterMesh.visible
    property alias showRainFar: rainFar.visible
    property alias showRainNear: rainNear.visible

    View3D {
        id: view3D
        anchors.fill: parent

        Node {
            id: scene

            PointLight {
                id: lightPoint
                x: 0
                y: 10
                shadowMapQuality: Light.ShadowMapQualityMedium
                shadowMapFar: 5000
                shadowFilter: 1
                shadowFactor: 100
                castsShadow: true
                brightness: 50
                quadraticFade: 0
                linearFade: 0.6
                constantFade: 0
                ambientColor: "#232639"
                z: 40
            }

            PerspectiveCamera {
                id: camera
                x: 30
                y: 85
                fieldOfView: 25
                clipNear: 1
                clipFar: 2500
                eulerRotation.z: 0
                eulerRotation.y: 20
                eulerRotation.x: -30
                z: 120
            }

            Model {
                id: ground
                x: 20
                y: -5
                eulerRotation.z: -0
                pickable: false
                castsShadows: false
                z: 25
                scale.z: 5
                scale.y: 5
                scale.x: 5
                eulerRotation.y: -135
                eulerRotation.x: -90
                materials: groundMaterial
                source: "#Rectangle"
                DefaultMaterial {
                    id: groundMaterial
                    specularReflectionMap: groundReflection
                    translucentFalloff: 0
                    bumpAmount: 0.75
                    opacity: 1
                    fresnelPower: 0
                    specularRoughness: 0.001
                    specularAmount: 1
                    normalMap: groundNormal
                    opacityMap: groundOpacity
                    specularMap: groundSpecular
                    diffuseMap: groundDiffuse
                    cullMode: Material.BackFaceCulling
                    diffuseColor: "#ffffff"

                    Texture {
                        id: groundDiffuse
                        scaleV: 12
                        scaleU: 12
                        tilingModeVertical: Texture.Repeat
                        tilingModeHorizontal: Texture.Repeat
                        source: "BeachPebbles_albedo.jpg"
                    }

                    Texture {
                        id: groundSpecular
                        scaleV: 12
                        scaleU: 12
                        tilingModeVertical: Texture.Repeat
                        tilingModeHorizontal: Texture.Repeat
                        source: "BeachPebbles_specular.jpg"
                    }

                    Texture {
                        id: groundNormal
                        tilingModeVertical: Texture.Repeat
                        tilingModeHorizontal: Texture.Repeat
                        scaleV: 12
                        scaleU: 12
                        source: "BeachPebbles_normal.jpg"
                    }

                    Texture {
                        id: groundOpacity
                        source: "Glow-circle-2_001.png"
                    }

                    Texture {
                        id: groundReflection
                        mappingMode: Texture.Environment
                        source: "OpenfootageNET_lowerAustria01-512.png"
                    }
                }
            }

            Model {
                id: background
                x: 40
                y: 2
                scale.y: 2
                scale.x: 5
                z: -120
                castsShadows: false
                receivesShadows: false
                pickable: false
                source: "#Rectangle"
                DefaultMaterial {
                    id: backgroundMaterial
                    lighting: DefaultMaterial.NoLighting
                    opacityMap: backgroundOpacity
                    diffuseMap: backgroundDiffuse
                    diffuseColor: "#ffffff"

                    Texture {
                        id: backgroundDiffuse
                        source: "OpenfootageNET_lowerAustria01-512.png"
                    }

                    Texture {
                        id: backgroundOpacity
                        source: "Glow-circle-2_001.png"
                    }
                }
                materials: backgroundMaterial
            }

            Model {
                id: rainNear
                x: 0
                y: 16
                pickable: false
                receivesShadows: false
                castsShadows: false
                opacity: 0.17
                scale.y: 0.65
                scale.x: 1.5
                z: 27
                source: "#Rectangle"
                DefaultMaterial {
                    id: rainNearMaterial
                    vertexColorsEnabled: false
                    blendMode: DefaultMaterial.SourceOver
                    lighting: DefaultMaterial.NoLighting
                    opacity: 0.6
                    diffuseMap: rainNearTexture
                    diffuseColor: "#ffffff"

                    Texture {
                        id: rainNearTexture
                        positionV: 10
                        tilingModeVertical: Texture.Repeat
                        tilingModeHorizontal: Texture.Repeat
                        scaleV: 5
                        scaleU: 20
                        source: "rain.png"
                    }
                }
                materials: rainNearMaterial
            }

            Model {
                id: rainFar
                y: 32
                scale.y: 1
                scale.x: 4
                z: -34
                opacity: 0.13
                pickable: false
                receivesShadows: false
                castsShadows: false
                source: "#Rectangle"
                DefaultMaterial {
                    id: rainFarMaterial
                    opacity: 0.75
                    diffuseColor: "#ffffff"

                    Texture {
                        id: rainFarTexture
                        positionV: 10
                        tilingModeVertical: Texture.Repeat
                        tilingModeHorizontal: Texture.Repeat
                        scaleV: 2
                        scaleU: 4
                        source: "rain.png"
                    }
                }
                materials: rainFarMaterial
            }

            WaterMesh {
                id: waterMesh
                source: "models/WaterMeshRover/meshes/polySurface1.mesh"
            }

            RangeRover {
                id: rangeRover
            }

            WaterMeshTwo {
                id: waterMeshTwo
                source: "models/WaterMeshRover/meshes/polySurface1.mesh"
            }
        }

        environment: SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            effects: effectList
        }
    }

    Rectangle {
        id: settingsBar
        x: 582
        y: 352
        height: 120
        border.width: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        color: "#000000"

        Image {
            id: qtLogoImage
            y: 15
            height: 120
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "icons/qt_logo_white_rgb.png"
        }

        FpsPanel {
            id: fpsPanel
            width: 120
            height: 50
            color: "#333333"
            borderColor: "#555555"
            textColor: "#46b3e6"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: qtLogoImage.right
            anchors.leftMargin: 10
        }

        EffectsPanel {
            id: effectsPanel
            color: "#333333"
            textColor: "#46b3e6"
            borderColor: "#555555"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: fpsPanel.right
            anchors.leftMargin: 10
        }

        ViewSettingsPanel {
            id: viewSettingsPanel
            width: 100
            height: 50
            color: "#333333"
            borderColor: "#555555"
            textColor: "#46b3e6"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: effectsPanel.right
            anchors.leftMargin: 10
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimationBase
                onFinished: root.state = "runningState"
                from: 0
                loops: 1
                duration: 0
                running: viewSettingsPanel.demoActive
                to: 1000
            }
        ]
        startFrame: 0
        enabled: false
        endFrame: 1000

        KeyframeGroup {
            target: rainFarTexture
            property: "positionV"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 10
            }
        }

        KeyframeGroup {
            target: rainNearTexture
            property: "positionV"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 10
            }
        }
    }

    Timeline {
        id: timelineRunning
        animations: [
            TimelineAnimation {
                id: timelineAnimationRunning
                from: 0
                loops: -1
                duration: 30000
                running: viewSettingsPanel.demoActive
                to: 1000
            }
        ]
        startFrame: 0
        enabled: false
        endFrame: 1000

        KeyframeGroup {
            target: rainNearTexture
            property: "positionV"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 120
            }
        }

        KeyframeGroup {
            target: rainFarTexture
            property: "positionV"
            Keyframe {
                frame: 1000
                value: 120
            }

            Keyframe {
                frame: 0
                value: 0
            }
        }

        KeyframeGroup {
            target: camera
            property: "x"

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 0
                value: 30
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 1000
                value: 30
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 500
                value: -75
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 150
                value: -90
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 850
                value: -90
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 300
                value: 100
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 700
                value: 100
            }
        }

        KeyframeGroup {
            target: camera
            property: "y"

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 0
                value: 85
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 1000
                value: 85
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 500
                value: 85
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 150
                value: 25
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 850
                value: 25
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 300
                value: 75
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 700
                value: 75
            }
        }

        KeyframeGroup {
            target: camera
            property: "z"

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 0
                value: 120
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 1000
                value: 120
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 500
                value: 150
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 150
                value: 60
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 850
                value: 60
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 300
                value: 120
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 700
                value: 120
            }
        }

        KeyframeGroup {
            target: camera
            property: "eulerRotation.x"

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 0
                value: -30
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 1000
                value: -30
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 500
                value: -25
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 150
                value: -10
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 850
                value: -10
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 300
                value: -20
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 700
                value: -20
            }
        }

        KeyframeGroup {
            target: camera
            property: "eulerRotation.y"

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 0
                value: 20
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 1000
                value: 20
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 500
                value: -25
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 150
                value: -50
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 850
                value: -50
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 300
                value: 45
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 700
                value: 45
            }
        }

        KeyframeGroup {
            target: camera
            property: "eulerRotation.z"

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 1000
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 500
                value: 5
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 150
                value: 1
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 850
                value: 1
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 300
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 700
                value: 0
            }
        }
    }
    states: [
        State {
            name: "runningState"

            PropertyChanges {
                target: rainNearTexture
                scaleU: 20
                scaleV: 5
                positionV: 40
            }

            PropertyChanges {
                target: timeline
                enabled: false
            }

            PropertyChanges {
                target: timelineRunning
                enabled: viewSettingsPanel.demoActive
            }

            PropertyChanges {
                target: timelineAnimationBase
                running: false
            }

            PropertyChanges {
                target: timelineAnimationRunning
                running: viewSettingsPanel.demoActive
            }

            PropertyChanges {
                target: rainFarTexture
                scaleU: 6
                positionV: 0
            }

            PropertyChanges {
                target: lightPoint
                x: 0
                y: 10
                z: 40
                castsShadow: true
            }

            PropertyChanges {
                target: ground
                castsShadows: false
            }

            PropertyChanges {
                target: rainNear
                x: 0
                y: 45.245
                scale.y: 1
                scale.x: 3
            }

            PropertyChanges {
                target: rainFar
                x: 0
                y: 91.036
                scale.y: 2
                scale.x: 6
            }

            PropertyChanges {
                target: waterMesh
                scale.x: 0.04
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;3d-active-scene:196;autoSize:true;height:480;width:640}
}
##^##*/

