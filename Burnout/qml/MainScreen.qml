import QtQuick
import QtQuick.Timeline
import QtQuick3D
import QtQuick3D.Helpers
import QtQuick3D.Effects
import QtQuick3D.Particles3D
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
            backgroundMode: SceneEnvironment.Transparent
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

        ParticleSystem3D {
            id: psystem

            // Start so that the snowing is in full steam
            startTime: 20000

            SpriteParticle3D {
                id: snowParticle
                sprite: Texture {
                    source: "qrc:/images/snowflake.png"
                }
                maxAmount: 10000
                color: "#ffffff"
                colorVariation: Qt.vector4d(0.0, 0.0, 0.0, 0.5);
                fadeInDuration: 1000
                fadeOutDuration: 1000
            }

            ParticleEmitter3D {
                id: emitter
                particle: snowParticle
                position: Qt.vector3d(0, 500, -500)
                scale: Qt.vector3d(15.0, 0.0, 15.0)
                shape: ParticleShape3D {
                    type: ParticleShape3D.Sphere
                }
                particleRotationVariation: Qt.vector3d(180, 180, 180)
                particleRotationVelocityVariation: Qt.vector3d(50, 50, 50);
                particleScale: 0.75
                particleScaleVariation: 0.4;
                velocity: VectorDirection3D {
                    direction: Qt.vector3d(0, -100, 0)
                }
                emitRate: 500
                lifeSpan: 15000
            }

            Wander3D {
                enabled: true
                globalAmount: Qt.vector3d(50, 0, 50)
                globalPace: Qt.vector3d(0.2, 0, 0.2)
                uniqueAmount: Qt.vector3d(50, 0, 50)
                uniquePace: Qt.vector3d(0.2, 0, 0.2)
                uniqueAmountVariation: 0.5
                uniquePaceVariation: 0.5
            }
        }

        DebugView {
            source: parent
            visible: false
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
            target: emitter
            property: "scale"

            Keyframe {
                frame: 0
                value: Qt.vector3d(15.0, 0.0, 15.0)
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 400
                value: Qt.vector3d(15.0, 0.0, 15.0)
            }

            Keyframe {
                easing.bezierCurve: [0.77, 0, 0.175, 1, 1, 1]
                frame: 600
                value: Qt.vector3d(10.0, 0.0, 10.0)
            }
        }

        KeyframeGroup {
            target: emitter
            property: "enabled"

            Keyframe {
                frame: 0
                value: true
            }

            Keyframe {
                frame: 700
                value: false
            }
        }

        KeyframeGroup {
            target: snowParticle
            property: "color"

            Keyframe {
                frame: 0
                value: "#000000"
            }

            Keyframe {
                easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                value: "#000000"
                frame: 50
            }

            Keyframe {
                easing.bezierCurve: [0.55, 0.055, 0.675, 0.19, 1, 1]
                value: "#ffffff"
                frame: 100
            }
        }

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
