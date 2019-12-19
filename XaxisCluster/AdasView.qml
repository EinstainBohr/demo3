import QtQuick3D 1.12
import QtQuick3D.Materials 1.12
import QtQuick 2.12
import QtQuick.Timeline 1.0

Item {
    id: lowEndAdas
    property alias view: layer_u9301
    property bool isRunning: false
    property real cameraRotation: 0.0
    property real cameraZRotation: 0.0
    property real cameraYPosition: 950

    readonly property int leftLane: -100
    readonly property int rightLane: 100
    readonly property int midLane: 0

    property real car01zPos: 500
    property real car02zPos: -200
    property real car03zPos: 200
    property real car04zPos: -500

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
            position.y: cameraYPosition
            position.z: -800
            position.x: ownCar.xPos
            rotation.x: cameraRotation
            rotation.z: cameraZRotation
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

            SuvOwn {
                id: ownCar
                property real xPos: midLane
                scale: Qt.vector3d(6, 6, 6)
                position.x: xPos
                position.y: -50
                position.z: -50
            }

            Van {
                id: car01
                scale: Qt.vector3d(6, 6, 6)
                position.x: leftLane
                position.z: car01zPos
                position.y: -50 - (car01zPos > -250 ? (car01zPos + 250) / 5 : 0) + (car01zPos <= -750 ? (car01zPos + 750) / 10 : 0)
                matOpacity: carFade
                visible: false
            }

            Van {
                id: car02
                scale: Qt.vector3d(6, 6, 6)
                position.x: rightLane
                position.z: car02zPos
                position.y: -50 - (car02zPos > -250 ? (car02zPos + 250) / 5 : 0) + (car02zPos <= -750 ? (car02zPos + 750) / 10 : 0)
                visible: true
            }

            Van {
                id: car03
                scale: Qt.vector3d(6, 6, 6)
                position.x: leftLane
                position.z: car03zPos
                position.y: -50 - (car03zPos > -250 ? (car03zPos + 250) / 5 : 0) + (car03zPos <= -750 ? (car03zPos + 750) / 10 : 0)
                matOpacity: carFade
                visible: false
            }

            SuvOther {
                scale: Qt.vector3d(6, 6, 6)
                position.x: leftLane
                position.z: car01zPos
                position.y: -50 - (car01zPos > -250 ? (car01zPos + 250) / 5 : 0) + (car01zPos <= -750 ? (car01zPos + 750) / 10 : 0)
                matOpacity: carFade
                visible: !car01.visible
            }

            SuvOther {
                scale: Qt.vector3d(6, 6, 6)
                position.x: rightLane
                position.z: car02zPos
                position.y: -50 - (car02zPos > -250 ? (car02zPos + 250) / 5 : 0) + (car02zPos <= -750 ? (car02zPos + 750) / 10 : 0)
                visible: !car02.visible
            }

            SuvOther {
                scale: Qt.vector3d(6, 6, 6)
                position.x: leftLane
                position.z: car03zPos
                position.y: -50 - (car03zPos > -250 ? (car03zPos + 250) / 5 : 0) + (car03zPos <= -750 ? (car03zPos + 750) / 10 : 0)
                matOpacity: carFade
                visible: !car03.visible
            }

            SuvOther {
                scale: Qt.vector3d(6, 6, 6)
                position.x: midLane
                position.z: car04zPos
                position.y: -50 - (car04zPos > -250 ? (car04zPos + 250) / 5 : 0) + (car04zPos <= -750 ? (car04zPos + 750) / 10 : 0)
            }
        }

        Model {
            scale.z: 1
            scale.y: 3
            scale.x: 12
            position.y: 800
            position.z: 375
            source: "#Rectangle"
            materials: [
                DefaultMaterial {
                    diffuseMap: Texture {
                        source: "qrc:/Images/Mountains_001.ktx"
                    }
                    lighting: DefaultMaterial.NoLighting
                }
            ]
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

        // Randomize car type
        onCurrentFrameChanged: {
            if (currentFrame > 100) {
                if (Math.ceil(currentFrame) == 101) {
                    if (Math.random() <= 0.7)
                        car02.visible = true;
                    else
                        car02.visible = false;
                }
            }
            if (currentFrame > 299) {
                if (Math.ceil(currentFrame) == 300) {
                    if (Math.random() <= 0.3)
                        car01.visible = true;
                    else
                        car01.visible = false;

                    if (Math.random() <= 0.3)
                        car03.visible = true;
                    else
                        car03.visible = false;
                }
            }
        }

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
            target: lowEndAdas
            property: "car01zPos"
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
            target: lowEndAdas
            property: "car02zPos"
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
            target: lowEndAdas
            property: "car03zPos"
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
            target: lowEndAdas
            property: "car04zPos"
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
