import QtQuick
import QtQuick3D
import QtQuick.Timeline
import QtQuick3D.Effects
import "../RangeRover"

Item {
    anchors.fill: parent

    View3D {
        id: view3D
        anchors.fill: parent
        camera: camera

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            temporalAAEnabled: true
            effects: fxaa
            backgroundMode: SceneEnvironment.Color
            antialiasingMode: SceneEnvironment.SSAA
            antialiasingQuality: SceneEnvironment.VeryHigh
            lightProbe: Texture {
                source: "qrc:/images/night_bridge_4k.hdr"
                mappingMode: Texture.LightProbe
            }
        }

        DirectionalLight {
            id: directionalLight
            eulerRotation.z: 1.52269
            eulerRotation.y: -9.61646
            eulerRotation.x: -57.46804
            shadowFilter: 1
            shadowFactor: 100
            shadowMapFar: 500
            shadowMapQuality: Light.ShadowMapQualityHigh
            castsShadow: true
        }

        PerspectiveCamera {
            id: camera
        }

        RangeRover {
            id: rangeRover
            eulerRotation.y: 135
        }

        Fxaa {
            id: fxaa
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                loops: 1
                duration: 40000
                to: 1800
                from: 0
            }
        ]
        enabled: true
        endFrame: 1800
        startFrame: 0

        KeyframeGroup {
            target: camera
            property: "z"
            Keyframe {
                frame: 0
                value: 500
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 400
                value: 500
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 600
                value: 200
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 800
                value: 200
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1000
                value: 70
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1200
                value: 70
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1400
                value: 150
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1600
                value: 150
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                value: -64
                frame: 1800
            }
        }

        KeyframeGroup {
            target: camera
            property: "y"
            Keyframe {
                frame: 0
                value: 60
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 400
                value: 60
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 600
                value: 45
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1200
                value: 45
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1400
                value: 30
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1600
                value: 30
            }
        }

        KeyframeGroup {
            target: camera
            property: "x"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 800
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1000
                value: 90
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1200
                value: 90
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1400
                value: -30
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 1600
                value: -30
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                value: 200
                frame: 1800
            }
        }

        KeyframeGroup {
            target: directionalLight
            property: "brightness"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                value: 0
                frame: 100
            }

            Keyframe {
                easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                value: 1.0
                frame: 200
            }
        }

        KeyframeGroup {
            target: sceneEnvironment
            property: "probeExposure"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                value: 0
                frame: 100
            }

            Keyframe {
                easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                value: 0.4
                frame: 200
            }
        }
    }
}
