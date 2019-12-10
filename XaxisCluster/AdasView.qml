import QtQuick3D 1.12
import QtQuick3D.Materials 1.12
import QtQuick 2.12
import QtQuick.Timeline 1.0

Item {
    id: lowEndAdas
    property alias view: layer_u9301
    property bool isRunning: false
    property real cameraRotation: 0.0

    readonly property int leftLane: -100
    readonly property int rightLane: 100
    readonly property int midLane: 0

    property real carFade: Math.abs(ownCar.xPos - rightLane) / rightLane

    View3D {
        id: layer_u9301
        anchors.left: parent.left
        anchors.leftMargin: parent.width * 0
        width: parent.width * 1
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0
        height: parent.height * 1
        environment: SceneEnvironment {
            backgroundMode: SceneEnvironment.Color
//            multisampleAAMode: SceneEnvironment.SSAA // This drops perf by 15 FPS
        }

        PerspectiveCamera {
            id: camera_u623
            position.y: 950
            position.z: -800
            position.x: ownCar.xPos
            rotation.x: cameraRotation
            clipNear: 1
            clipFar: 1200
            fieldOfView: 45
        }

        Node {
            id: aDASglobe_u38898

            Model {
                id: sphere_u23107
                position.y: -235
                position.z: 0
                rotation.x: -90
                scale.x: 1850
                scale.y: 1950
                scale.z: 950
                rotationOrder: Node.XYZr
                orientation: Node.RightHanded
                source: "qrc:/models/ADASglobe/meshes/Sphere.mesh"

                CustomMaterial {
                    id: globe_u4631

                    shaderInfo: ShaderInfo {
                        version: "330"
                        type: "GLSL"
                    }

                    // These properties names need to match the ones in the shader code!
                    property vector4d basecolor: Qt.vector4d(0.5195, 0.6914, 0.8398, 1.0)
                    property real linepos: 0.0

                    property TextureInput gridmap: TextureInput {
                        texture: Texture {
                            source: "qrc:/maps/grid.ktx"
                            tilingModeHorizontal: Texture.Repeat
                            tilingModeVertical: Texture.Repeat
                        }
                    }
                    property TextureInput pointmap: TextureInput {
                        texture: Texture {
                            source: "qrc:/maps/point.ktx"
                            tilingModeHorizontal: Texture.Repeat
                            tilingModeVertical: Texture.Repeat
                        }
                    }
                    property TextureInput linemap: TextureInput {
                        texture: Texture {
                            source: "qrc:/maps/line.ktx"
                            tilingModeHorizontal: Texture.Repeat
                            tilingModeVertical: Texture.Repeat
                        }
                    }
                    property TextureInput maskmap: TextureInput {
                        texture: Texture {
                            source: "qrc:/maps/mask.ktx"
                            tilingModeHorizontal: Texture.Repeat
                            tilingModeVertical: Texture.Repeat
                        }
                    }

                    Shader {
                        id: vertexShader
                        stage: Shader.Vertex
                        shader: "qrc:/shaders/globe.vert"
                    }

                    Shader {
                        id: fragmentShader
                        stage: Shader.Fragment
                        shader: "qrc:/shaders/globe.frag"
                    }

                    passes: [ Pass {
                            shaders: [ vertexShader, fragmentShader ]
                        }
                    ]
                }

                materials: [globe_u4631]
            }
        }

        Node {
            position.y: 770
            position.z: -600

            LowPolySUV {
                id: ownCar
                property real xPos: midLane
                scale: Qt.vector3d(5, 5, 5)
                position.x: xPos
            }

            LowPolyCoupe {
                id: car01
                property real zPos: 500
                scale: Qt.vector3d(0.25, 0.25, 0.25)
                position.x: leftLane
                position.z: zPos
                matOpacity: carFade
                position.y: -50 - (zPos > -250 ? (zPos + 250) / 5 : 0)
            }

            LowPolyCoupe {
                id: car02
                property real zPos: -200
                scale: Qt.vector3d(0.25, 0.25, 0.25)
                position.x: rightLane
                position.z: zPos
                position.y: -50 - (zPos > -250 ? (zPos + 250) / 5 : 0)
            }

            LowPolyCoupe {
                id: car03
                property real zPos: 200
                scale: Qt.vector3d(0.25, 0.25, 0.25)
                position.x: leftLane
                position.z: zPos
                matOpacity: carFade
                position.y: -50 - (zPos > -250 ? (zPos + 250) / 5 : 0)
            }

            LowPolyCoupe {
                id: car04
                property real zPos: -500
                scale: Qt.vector3d(0.25, 0.25, 0.25)
                position.x: midLane
                position.z: zPos
                position.y: -50 - (zPos > -250 ? (zPos + 250) / 5 : 0)
            }
        }
    }

    Timeline {
        id: slide1Timeline
        startFrame: 0
        endFrame: 300
        currentFrame: 0
        enabled: false
        animations: [
            TimelineAnimation {
                id: slide1TimelineAnimation
                duration: 15000
                from: 0
                to: 300
                running: false
                loops: -1
                pingPong: false
            }
        ]

        KeyframeGroup {
            target: globe_u4631
            property: "linepos"
            Keyframe {
                frame: 0
                value: 0
            }
            Keyframe {
                frame: 300
                value: 5
            }
        }

        KeyframeGroup {
            target: ownCar
            property: "xPos"
            Keyframe {
                frame: 100
                value: midLane
            }
            Keyframe {
                frame: 150
                value: rightLane
            }
            Keyframe {
                frame: 250
                value: rightLane
            }
            Keyframe {
                frame: 300
                value: midLane
            }
        }

        KeyframeGroup {
            target: car01
            property: "zPos"
            Keyframe {
                frame: 0
                value: 500
            }
            Keyframe {
                frame: 300
                value: -1000
            }
        }

        KeyframeGroup {
            target: car02
            property: "zPos"
            Keyframe {
                frame: 0
                value: -200
            }
            Keyframe {
                frame: 100
                value: 200
            }
            Keyframe {
                frame: 100
                value: -1200
            }
            Keyframe {
                frame: 300
                value: -200
            }
        }

        KeyframeGroup {
            target: car03
            property: "zPos"
            Keyframe {
                frame: 0
                value: 200
            }
            Keyframe {
                frame: 300
                value: -1500
            }
        }

        KeyframeGroup {
            target: car04
            property: "zPos"
            Keyframe {
                frame: 0
                value: -500
            }
            Keyframe {
                frame: 150
                value: -250
            }
            Keyframe {
                frame: 300
                value: -500
            }
        }
    }

    states: [
        State {
            name: "Slide1"
            PropertyChanges {
                target: slide1Timeline
                enabled: lowEndAdas.isRunning
                currentFrame: 0
            }
            PropertyChanges {
                target: slide1TimelineAnimation
                running: lowEndAdas.isRunning
            }
        }
    ]
    state: "Slide1"
}
