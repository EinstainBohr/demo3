import QtQuick3D 1.15
import QtQuick 2.15
import QtQuick.Timeline 1.0

Node {
    property string textureSize: "2048x2048"
    scale: Qt.vector3d(0.6, 0.6, 0.6)
    z: -0.75
    x: -1

    PrincipledMaterial {
        id: house_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/House_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/House_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/House_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/House_Roughness.png"
        }
        metalness: 0.1
    }

    PrincipledMaterial {
        id: propeller_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Propeller_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Propeller_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Propeller_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Propeller_Roughness.png"
        }
        metalness: 0.8
        specularAmount: 0.5
    }

    PrincipledMaterial {
        id: power_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Power_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Power_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Power_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Power_Roughness.png"
        }
        metalness: 0.2
    }

    PrincipledMaterial {
        id: electric_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Electric_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Electric_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Electric_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Electric_Roughness.png"
        }
        metalness: 0.1
    }

    PrincipledMaterial {
        id: parts_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Parts_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Parts_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Parts_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Parts_Roughness.png"
        }
        metalness: 0.5
        specularAmount: 0.5
    }

    PrincipledMaterial {
        id: cockpit_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Cockpit_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Cockpit_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Cockpit_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Cockpit_Roughness.png"
        }
        metalness: 0.2
    }

    PrincipledMaterial {
        id: gyro_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Gyro_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Gyro_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Gyro_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Gyro_Roughness.png"
        }
        metalness: 0.5
        specularAmount: 0.5
    }

    PrincipledMaterial {
        id: engine_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Engine_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Engine_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Engine_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Engine_Roughness.png"
        }
        metalness: 0.5
        specularAmount: 0.5
    }

    PrincipledMaterial {
        id: base_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/StreetBase_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/StreetBase_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/StreetBase_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/StreetBase_Roughness.png"
        }
        metalness: 0.05
    }

    PrincipledMaterial {
        id: frame_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/Frame_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/Frame_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/Frame_Specular.png"
        }
        roughnessMap: Texture {
            source: "maps/" + textureSize + "/Frame_Roughness.png"
        }
        metalness: 0.2
        specularAmount: 0.5
    }

    Model {
        id: city100
        eulerRotation.x: 90
        source: "meshes/democity.mesh"

        materials: [
            house_material,
            propeller_material,
            power_material,
            electric_material,
            parts_material,
            cockpit_material,
            gyro_material,
            engine_material,
            base_material,
            frame_material
        ]

        Model {
            id: gyro1
            x: -7.80356
            y: 0.351057
            z: -6.53156
            eulerRotation.x: -90
            scale.y: 1
            scale.z: 1
            source: "meshes/gyro1.mesh"
            materials: [
                gyro_material,
                gyro_material
            ]

            Model {
                id: gyro2
                x: 0.0365524
                y: 0.00151587
                z: -0.351058
                source: "meshes/gyro2.mesh"
                materials: [
                    gyro_material
                ]

                Model {
                    id: gyro3
                    x: -0.036551
                    y: -0.847792
                    source: "meshes/gyro3.mesh"
                    materials: [
                        gyro_material
                    ]
                }
            }
        }
    }

    Node {
        Model {
            id: factoryPropellers
            x: -1.78206
            y: 5.84643
            z: 1.71723
            source: "meshes/factoryPropellers.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearCockpit1
            x: -4.60275
            y: 3.94542
            z: 8.57263
            source: "meshes/gearCockpit1.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearCockpit2
            x: -4.00652
            y: 4.54166
            z: 8.57252
            source: "meshes/gearCockpit2.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearCockpit3
            x: -1.45766
            y: 4.78271
            z: 8.11398
            source: "meshes/gearCockpit3.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearCockpit4
            x: -1.18631
            y: 4.34679
            z: 8.11398
            source: "meshes/gearCockpit4.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearCockpit5
            x: -0.254701
            y: 4.41646
            z: 8.11398
            source: "meshes/gearCockpit5.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearHouse1
            x: -3.05257
            y: 4.85957
            z: -4.22017
            source: "meshes/gearHouse1.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearHouse2
            x: 2.21052
            y: 6.16118
            z: -6.94937
            source: "meshes/gearHouse2.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearHouse3
            x: 1.54733
            y: 5.93442
            z: -7.40772
            source: "meshes/gearHouse3.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: gearLarge
            x: -0.941462
            y: -0.136389
            z: -10.3761
            source: "meshes/gearLarge.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: propeler4
            x: -10.1482
            y: 9.04872
            z: 10.2263
            source: "meshes/propellerDemo.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: propeller1
            x: 10.2263
            y: 9.04872
            z: 10.1482
            source: "meshes/propellerDemo.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: propeller2
            x: 10.1482
            y: 9.04872
            z: -10.2263
            source: "meshes/propellerDemo.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: propeller3
            x: -10.2263
            y: 9.04872
            z: -10.1482
            source: "meshes/propellerDemo.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: windMill
            x: -5.63152
            y: 6.5377
            z: -9.72354
            source: "meshes/windMill.mesh"
            materials: [
                parts_material
            ]
        }

        Model {
            id: windTurbine
            x: 0.506419
            y: 8.47825
            z: -5.6325
            source: "meshes/windTurbine.mesh"
            materials: [
                parts_material
            ]
        }
    }

    Timeline {
        id: timeline0
        startFrame: 0
        endFrame: 16667
        enabled: true
        animations: [
            TimelineAnimation {
                duration: 5000
                from: 0
                to: 16667
                running: true
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: propeler4
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, -2880, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: propeller1
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 2880, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: propeller2
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, -2880, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: propeller3
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 2880, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: windTurbine
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 720, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearLarge
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 360, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearHouse3
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, -1440, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearHouse2
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 1440, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: windMill
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 0, -720)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearHouse1
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(720, 0, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearCockpit5
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 1440, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearCockpit4
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, -1440, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearCockpit3
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(1440, 0, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: factoryPropellers
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 3600, 0)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearCockpit2
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 0, 720)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gearCockpit1
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 0, -720)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: gyro1
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(-89.9802, 180, -180)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-90, 82.7174, -82.7175)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-89.9802, 82.1308, -82.131)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-90, 82.0844, -82.1161)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-90, 82.0667, -82.1113)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-89.972, 82.0599, -82.1283)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-89.9558, 82.0503, -82.1453)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-89.9374, 82.0531, -82.1809)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-89.9138, 82.0498, -82.2164)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-89.8899, 82.0424, -82.2529)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-89.8601, 82.039, -82.3015)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-89.8321, 82.0377, -82.3542)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-89.7983, 82.0325, -82.4085)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-89.7659, 82.0316, -82.4742)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-89.7266, 82.0301, -82.5438)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-89.686, 82.0279, -82.6175)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-89.6434, 82.0272, -82.6979)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-89.597, 82.0255, -82.7828)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-89.5489, 82.0241, -82.8733)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-89.4976, 82.0229, -82.9689)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-89.444, 82.0214, -83.0695)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-89.3867, 82.0183, -83.1731)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(-89.328, 82.0173, -83.284)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(-89.2656, 82.0146, -83.3977)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(-89.2016, 82.0126, -83.5173)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(-89.1348, 82.0105, -83.641)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(-89.0656, 82.008, -83.7694)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(-88.9946, 82.006, -83.9025)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(-88.9212, 82.0042, -84.0404)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(-88.8453, 82.0017, -84.1816)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-88.7673, 81.9997, -84.3278)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-88.6873, 81.9978, -84.4778)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-88.6052, 81.995, -84.6309)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-88.5212, 81.9929, -84.7884)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-88.4358, 81.9911, -84.9499)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-88.3484, 81.9886, -85.1141)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-88.2598, 81.9867, -85.2821)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-88.1691, 81.9849, -85.4532)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-88.0772, 81.9828, -85.627)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-87.9838, 81.9803, -85.803)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-87.8895, 81.9786, -85.9824)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-87.7939, 81.9766, -86.1638)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-87.6974, 81.9748, -86.3475)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-87.6, 81.9729, -86.5328)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-87.5019, 81.9713, -86.7202)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-87.4031, 81.9696, -86.9089)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-87.3038, 81.968, -87.0989)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-87.204, 81.9662, -87.2896)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-87.104, 81.9646, -87.4813)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-87.004, 81.9634, -87.6739)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-86.9037, 81.9618, -87.8664)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-86.8037, 81.9608, -88.0594)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-86.7039, 81.9595, -88.252)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-86.6044, 81.9586, -88.4445)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-86.5053, 81.9576, -88.6362)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-86.4069, 81.9568, -88.8272)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-86.3093, 81.9559, -89.017)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-86.2122, 81.9552, -89.2055)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-86.1163, 81.9547, -89.3927)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-86.0212, 81.9539, -89.5778)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-85.9275, 81.9536, -89.7612)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-85.835, 81.9533, -89.9424)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-85.7436, 81.9528, -90.121)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-85.6539, 81.9526, -90.2972)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-85.5657, 81.9524, -90.4706)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-85.479, 81.9524, -90.6411)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-85.3941, 81.9522, -90.8081)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-85.3109, 81.9522, -90.972)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-85.2298, 81.9524, -91.1326)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-85.1505, 81.9526, -91.2893)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-85.0733, 81.9528, -91.4422)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-84.9982, 81.953, -91.5912)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-84.9251, 81.9532, -91.7359)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-84.8544, 81.9535, -91.8766)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-84.7859, 81.9539, -92.0128)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-84.7198, 81.9544, -92.1448)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-84.656, 81.9548, -92.272)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-84.5945, 81.9551, -92.3943)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-84.5355, 81.9555, -92.5121)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-84.479, 81.956, -92.625)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-84.4251, 81.9565, -92.7331)
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(-84.3737, 81.957, -92.836)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(-84.3248, 81.9573, -92.9338)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(-84.2786, 81.9578, -93.0266)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(-84.235, 81.9583, -93.1143)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(-84.194, 81.9588, -93.1966)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(-84.1555, 81.9591, -93.2736)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(-84.1199, 81.9596, -93.3456)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-84.0867, 81.9599, -93.4122)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(-84.0563, 81.9603, -93.4734)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(-84.0286, 81.9607, -93.5293)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(-84.0035, 81.961, -93.5798)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(-83.981, 81.9613, -93.625)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(-83.9613, 81.9615, -93.6648)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(-83.9443, 81.9618, -93.6993)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(-83.9298, 81.962, -93.7284)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(-83.918, 81.9621, -93.7521)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(-83.9089, 81.9623, -93.7707)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(-83.9023, 81.9623, -93.7837)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(-83.8984, 81.9624, -93.7916)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(-83.8971, 81.9624, -93.7942)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.vector3d(-83.8983, 81.9608, -93.7901)
            }
            Keyframe {
                frame: 4250
                value: Qt.vector3d(-83.9017, 81.9564, -93.7778)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.vector3d(-83.9075, 81.949, -93.7574)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(-83.9155, 81.9385, -93.7287)
            }
            Keyframe {
                frame: 4375
                value: Qt.vector3d(-83.9258, 81.925, -93.6916)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.vector3d(-83.9384, 81.9083, -93.6461)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.vector3d(-83.9533, 81.8885, -93.5921)
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(-83.9706, 81.8657, -93.5298)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.vector3d(-83.9903, 81.8395, -93.4589)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.vector3d(-84.0122, 81.8101, -93.3794)
            }
            Keyframe {
                frame: 4625
                value: Qt.vector3d(-84.0364, 81.7772, -93.2911)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(-84.063, 81.7409, -93.1941)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.vector3d(-84.0919, 81.7012, -93.0884)
            }
            Keyframe {
                frame: 4750
                value: Qt.vector3d(-84.1233, 81.658, -92.9739)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.vector3d(-84.1567, 81.6108, -92.8501)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(-84.1927, 81.56, -92.7172)
            }
            Keyframe {
                frame: 4875
                value: Qt.vector3d(-84.2309, 81.5053, -92.5753)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.vector3d(-84.2713, 81.4466, -92.424)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.vector3d(-84.3141, 81.3836, -92.2633)
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(-84.3592, 81.3164, -92.0932)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.vector3d(-84.4065, 81.2447, -91.9134)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.vector3d(-84.456, 81.1682, -91.7236)
            }
            Keyframe {
                frame: 5125
                value: Qt.vector3d(-84.5077, 81.087, -91.5241)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(-84.5617, 81.0008, -91.3144)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.vector3d(-84.6179, 80.9094, -91.0947)
            }
            Keyframe {
                frame: 5250
                value: Qt.vector3d(-84.6762, 80.8126, -90.8645)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.vector3d(-84.7367, 80.7102, -90.6237)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(-84.7992, 80.6017, -90.3722)
            }
            Keyframe {
                frame: 5375
                value: Qt.vector3d(-84.8638, 80.4869, -90.1095)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.vector3d(-84.9304, 80.3656, -89.8356)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.vector3d(-84.999, 80.2375, -89.5503)
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(-85.0696, 80.1022, -89.2533)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.vector3d(-85.1421, 79.9593, -88.9442)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.vector3d(-85.2164, 79.8083, -88.6227)
            }
            Keyframe {
                frame: 5625
                value: Qt.vector3d(-85.2927, 79.6488, -88.2885)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(-85.3706, 79.4806, -87.9413)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.vector3d(-85.4504, 79.3026, -87.5805)
            }
            Keyframe {
                frame: 5750
                value: Qt.vector3d(-85.5316, 79.1147, -87.2058)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.vector3d(-85.6145, 78.9159, -86.8164)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(-85.699, 78.7058, -86.412)
            }
            Keyframe {
                frame: 5875
                value: Qt.vector3d(-85.7851, 78.4838, -85.9922)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.vector3d(-85.8724, 78.2488, -85.556)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.vector3d(-85.9612, 77.9999, -85.1027)
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(-86.0511, 77.7359, -84.6311)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.vector3d(-86.1425, 77.4567, -84.1415)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.vector3d(-86.2347, 77.1598, -83.6314)
            }
            Keyframe {
                frame: 6125
                value: Qt.vector3d(-86.3281, 76.8449, -83.1006)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(-86.4223, 76.5101, -82.5474)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.vector3d(-86.5177, 76.1541, -81.9708)
            }
            Keyframe {
                frame: 6250
                value: Qt.vector3d(-86.6135, 75.7748, -81.3689)
            }
            Keyframe {
                frame: 6291.67
                value: Qt.vector3d(-86.7103, 75.3705, -80.7399)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.vector3d(-86.8075, 74.939, -80.082)
            }
            Keyframe {
                frame: 6375
                value: Qt.vector3d(-86.9054, 74.4776, -79.3927)
            }
            Keyframe {
                frame: 6416.67
                value: Qt.vector3d(-87.0034, 73.9838, -78.6696)
            }
            Keyframe {
                frame: 6458.33
                value: Qt.vector3d(-87.1019, 73.4548, -77.9101)
            }
            Keyframe {
                frame: 6500
                value: Qt.vector3d(-87.2004, 72.8867, -77.1105)
            }
            Keyframe {
                frame: 6541.67
                value: Qt.vector3d(-87.2991, 72.2762, -76.2678)
            }
            Keyframe {
                frame: 6583.33
                value: Qt.vector3d(-87.3978, 71.6184, -75.3772)
            }
            Keyframe {
                frame: 6625
                value: Qt.vector3d(-87.4962, 70.9083, -74.4338)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.vector3d(-87.5944, 70.141, -73.433)
            }
            Keyframe {
                frame: 6708.33
                value: Qt.vector3d(-87.6921, 69.3095, -72.3682)
            }
            Keyframe {
                frame: 6750
                value: Qt.vector3d(-87.7893, 68.4067, -71.2322)
            }
            Keyframe {
                frame: 6791.67
                value: Qt.vector3d(-87.8857, 67.4238, -70.0164)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.vector3d(-87.9811, 66.3516, -68.712)
            }
            Keyframe {
                frame: 6875
                value: Qt.vector3d(-88.0756, 65.1789, -67.3079)
            }
            Keyframe {
                frame: 6916.67
                value: Qt.vector3d(-88.1687, 63.8929, -65.7913)
            }
            Keyframe {
                frame: 6958.33
                value: Qt.vector3d(-88.2604, 62.479, -64.1482)
            }
            Keyframe {
                frame: 7000
                value: Qt.vector3d(-88.3505, 60.9202, -62.3615)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.vector3d(-88.4388, 59.1971, -60.412)
            }
            Keyframe {
                frame: 7083.33
                value: Qt.vector3d(-88.5246, 57.287, -58.2774)
            }
            Keyframe {
                frame: 7125
                value: Qt.vector3d(-88.6082, 55.1644, -55.932)
            }
            Keyframe {
                frame: 7166.67
                value: Qt.vector3d(-88.689, 52.8011, -53.3482)
            }
            Keyframe {
                frame: 7208.33
                value: Qt.vector3d(-88.766, 50.1639, -50.4927)
            }
            Keyframe {
                frame: 7250
                value: Qt.vector3d(-88.84, 47.2198, -47.3329)
            }
            Keyframe {
                frame: 7291.67
                value: Qt.vector3d(-88.9093, 43.9314, -43.8312)
            }
            Keyframe {
                frame: 7333.33
                value: Qt.vector3d(-88.9742, 40.2635, -39.9529)
            }
            Keyframe {
                frame: 7375
                value: Qt.vector3d(-89.0327, 36.1865, -35.6685)
            }
            Keyframe {
                frame: 7416.67
                value: Qt.vector3d(-89.0857, 31.6793, -30.9569)
            }
            Keyframe {
                frame: 7458.33
                value: Qt.vector3d(-89.132, 26.7401, -25.8165)
            }
            Keyframe {
                frame: 7500
                value: Qt.vector3d(-89.1701, 21.3914, -20.2702)
            }
            Keyframe {
                frame: 7541.67
                value: Qt.vector3d(-89.1994, 15.6889, -14.3735)
            }
            Keyframe {
                frame: 7583.33
                value: Qt.vector3d(-89.2212, 9.72521, -8.21932)
            }
            Keyframe {
                frame: 7625
                value: Qt.vector3d(-89.2333, 3.62246, -1.92978)
            }
            Keyframe {
                frame: 7666.67
                value: Qt.vector3d(-89.2372, -2.47804, 4.35354)
            }
            Keyframe {
                frame: 7708.33
                value: Qt.vector3d(-89.232, -8.43546, 10.4897)
            }
            Keyframe {
                frame: 7750
                value: Qt.vector3d(-89.2197, -14.127, 16.3559)
            }
            Keyframe {
                frame: 7791.67
                value: Qt.vector3d(-89.2006, -19.4618, 21.8612)
            }
            Keyframe {
                frame: 7833.33
                value: Qt.vector3d(-89.175, -24.3831, 26.9485)
            }
            Keyframe {
                frame: 7875
                value: Qt.vector3d(-89.1459, -28.8698, 31.5969)
            }
            Keyframe {
                frame: 7916.67
                value: Qt.vector3d(-89.1118, -32.9221, 35.8063)
            }
            Keyframe {
                frame: 7958.33
                value: Qt.vector3d(-89.0759, -36.5627, 39.5992)
            }
            Keyframe {
                frame: 8000
                value: Qt.vector3d(-89.0371, -39.821, 43.0054)
            }
            Keyframe {
                frame: 8041.67
                value: Qt.vector3d(-88.9971, -42.7321, 46.0595)
            }
            Keyframe {
                frame: 8083.33
                value: Qt.vector3d(-88.9566, -45.3332, 48.7988)
            }
            Keyframe {
                frame: 8125
                value: Qt.vector3d(-88.9154, -47.6569, 51.2559)
            }
            Keyframe {
                frame: 8166.67
                value: Qt.vector3d(-88.8741, -49.736, 53.4632)
            }
            Keyframe {
                frame: 8208.33
                value: Qt.vector3d(-88.8337, -51.6, 55.4505)
            }
            Keyframe {
                frame: 8250
                value: Qt.vector3d(-88.7934, -53.2727, 57.2415)
            }
            Keyframe {
                frame: 8291.67
                value: Qt.vector3d(-88.7543, -54.7776, 58.8596)
            }
            Keyframe {
                frame: 8333.33
                value: Qt.vector3d(-88.716, -56.1337, 60.3236)
            }
            Keyframe {
                frame: 8375
                value: Qt.vector3d(-88.6791, -57.3576, 61.6505)
            }
            Keyframe {
                frame: 8416.67
                value: Qt.vector3d(-88.6438, -58.4642, 62.8546)
            }
            Keyframe {
                frame: 8458.33
                value: Qt.vector3d(-88.6096, -59.4653, 63.9481)
            }
            Keyframe {
                frame: 8500
                value: Qt.vector3d(-88.5771, -60.3723, 64.9424)
            }
            Keyframe {
                frame: 8541.67
                value: Qt.vector3d(-88.5465, -61.1949, 65.8469)
            }
            Keyframe {
                frame: 8583.33
                value: Qt.vector3d(-88.5179, -61.9411, 66.6696)
            }
            Keyframe {
                frame: 8625
                value: Qt.vector3d(-88.4908, -62.6179, 67.4176)
            }
            Keyframe {
                frame: 8666.67
                value: Qt.vector3d(-88.4658, -63.2311, 68.0967)
            }
            Keyframe {
                frame: 8708.33
                value: Qt.vector3d(-88.4429, -63.7868, 68.713)
            }
            Keyframe {
                frame: 8750
                value: Qt.vector3d(-88.4218, -64.2885, 69.2702)
            }
            Keyframe {
                frame: 8791.67
                value: Qt.vector3d(-88.4026, -64.741, 69.7726)
            }
            Keyframe {
                frame: 8833.33
                value: Qt.vector3d(-88.3858, -65.1478, 70.224)
            }
            Keyframe {
                frame: 8875
                value: Qt.vector3d(-88.3707, -65.5115, 70.627)
            }
            Keyframe {
                frame: 8916.67
                value: Qt.vector3d(-88.3578, -65.835, 70.9847)
            }
            Keyframe {
                frame: 8958.33
                value: Qt.vector3d(-88.3468, -66.1204, 71.2989)
            }
            Keyframe {
                frame: 9000
                value: Qt.vector3d(-88.3385, -66.3704, 71.5724)
            }
            Keyframe {
                frame: 9041.67
                value: Qt.vector3d(-88.332, -66.5849, 71.8051)
            }
            Keyframe {
                frame: 9083.33
                value: Qt.vector3d(-88.3278, -66.7665, 71.9997)
            }
            Keyframe {
                frame: 9125
                value: Qt.vector3d(-88.3254, -66.9158, 72.1567)
            }
            Keyframe {
                frame: 9166.67
                value: Qt.vector3d(-88.3254, -67.0339, 72.2773)
            }
            Keyframe {
                frame: 9208.33
                value: Qt.vector3d(-88.3264, -67.1354, 72.3774)
            }
            Keyframe {
                frame: 9250
                value: Qt.vector3d(-88.3274, -67.2356, 72.4733)
            }
            Keyframe {
                frame: 9291.67
                value: Qt.vector3d(-88.3291, -67.3346, 72.5651)
            }
            Keyframe {
                frame: 9333.33
                value: Qt.vector3d(-88.3308, -67.4319, 72.652)
            }
            Keyframe {
                frame: 9375
                value: Qt.vector3d(-88.3328, -67.5286, 72.7355)
            }
            Keyframe {
                frame: 9416.67
                value: Qt.vector3d(-88.3352, -67.6234, 72.8142)
            }
            Keyframe {
                frame: 9458.33
                value: Qt.vector3d(-88.3375, -67.7164, 72.8883)
            }
            Keyframe {
                frame: 9500
                value: Qt.vector3d(-88.3402, -67.809, 72.9588)
            }
            Keyframe {
                frame: 9541.67
                value: Qt.vector3d(-88.3434, -67.9, 73.0249)
            }
            Keyframe {
                frame: 9583.33
                value: Qt.vector3d(-88.3467, -67.9892, 73.0862)
            }
            Keyframe {
                frame: 9625
                value: Qt.vector3d(-88.3499, -68.0771, 73.1432)
            }
            Keyframe {
                frame: 9666.67
                value: Qt.vector3d(-88.3538, -68.1641, 73.1964)
            }
            Keyframe {
                frame: 9708.33
                value: Qt.vector3d(-88.3577, -68.2494, 73.2449)
            }
            Keyframe {
                frame: 9750
                value: Qt.vector3d(-88.3621, -68.3336, 73.2895)
            }
            Keyframe {
                frame: 9791.67
                value: Qt.vector3d(-88.3665, -68.4163, 73.3296)
            }
            Keyframe {
                frame: 9833.33
                value: Qt.vector3d(-88.3714, -68.4982, 73.3658)
            }
            Keyframe {
                frame: 9875
                value: Qt.vector3d(-88.3762, -68.5781, 73.3973)
            }
            Keyframe {
                frame: 9916.67
                value: Qt.vector3d(-88.3815, -68.6576, 73.4254)
            }
            Keyframe {
                frame: 9958.33
                value: Qt.vector3d(-88.3871, -68.735, 73.4487)
            }
            Keyframe {
                frame: 10000
                value: Qt.vector3d(-88.3929, -68.8118, 73.4684)
            }
            Keyframe {
                frame: 10041.7
                value: Qt.vector3d(-88.399, -68.8869, 73.4837)
            }
            Keyframe {
                frame: 10083.3
                value: Qt.vector3d(-88.4053, -68.9606, 73.4946)
            }
            Keyframe {
                frame: 10125
                value: Qt.vector3d(-88.4121, -69.0335, 73.5023)
            }
            Keyframe {
                frame: 10166.7
                value: Qt.vector3d(-88.4188, -69.1052, 73.506)
            }
            Keyframe {
                frame: 10208.3
                value: Qt.vector3d(-88.426, -69.1756, 73.5055)
            }
            Keyframe {
                frame: 10250
                value: Qt.vector3d(-88.4335, -69.2448, 73.5014)
            }
            Keyframe {
                frame: 10291.7
                value: Qt.vector3d(-88.4414, -69.3126, 73.4934)
            }
            Keyframe {
                frame: 10333.3
                value: Qt.vector3d(-88.4492, -69.379, 73.4813)
            }
            Keyframe {
                frame: 10375
                value: Qt.vector3d(-88.4577, -69.4448, 73.4663)
            }
            Keyframe {
                frame: 10416.7
                value: Qt.vector3d(-88.4662, -69.5089, 73.4471)
            }
            Keyframe {
                frame: 10458.3
                value: Qt.vector3d(-88.4749, -69.5721, 73.4247)
            }
            Keyframe {
                frame: 10500
                value: Qt.vector3d(-88.4839, -69.634, 73.3987)
            }
            Keyframe {
                frame: 10541.7
                value: Qt.vector3d(-88.4932, -69.6945, 73.3694)
            }
            Keyframe {
                frame: 10583.3
                value: Qt.vector3d(-88.5026, -69.7541, 73.3367)
            }
            Keyframe {
                frame: 10625
                value: Qt.vector3d(-88.5123, -69.8121, 73.3007)
            }
            Keyframe {
                frame: 10666.7
                value: Qt.vector3d(-88.5224, -69.8694, 73.2618)
            }
            Keyframe {
                frame: 10708.3
                value: Qt.vector3d(-88.533, -69.9254, 73.2201)
            }
            Keyframe {
                frame: 10750
                value: Qt.vector3d(-88.5433, -69.9804, 73.1753)
            }
            Keyframe {
                frame: 10791.7
                value: Qt.vector3d(-88.5542, -70.034, 73.1276)
            }
            Keyframe {
                frame: 10833.3
                value: Qt.vector3d(-88.565, -70.0867, 73.0774)
            }
            Keyframe {
                frame: 10875
                value: Qt.vector3d(-88.5765, -70.1383, 73.0249)
            }
            Keyframe {
                frame: 10916.7
                value: Qt.vector3d(-88.5876, -70.1884, 72.9694)
            }
            Keyframe {
                frame: 10958.3
                value: Qt.vector3d(-88.5992, -70.2378, 72.912)
            }
            Keyframe {
                frame: 11000
                value: Qt.vector3d(-88.6115, -70.2864, 72.8526)
            }
            Keyframe {
                frame: 11041.7
                value: Qt.vector3d(-88.6231, -70.3327, 72.79)
            }
            Keyframe {
                frame: 11083.3
                value: Qt.vector3d(-88.6354, -70.3791, 72.7266)
            }
            Keyframe {
                frame: 11125
                value: Qt.vector3d(-88.648, -70.4245, 72.6615)
            }
            Keyframe {
                frame: 11166.7
                value: Qt.vector3d(-88.6603, -70.4684, 72.5941)
            }
            Keyframe {
                frame: 11208.3
                value: Qt.vector3d(-88.6732, -70.5112, 72.5253)
            }
            Keyframe {
                frame: 11250
                value: Qt.vector3d(-88.6861, -70.5532, 72.4553)
            }
            Keyframe {
                frame: 11291.7
                value: Qt.vector3d(-88.6994, -70.5943, 72.384)
            }
            Keyframe {
                frame: 11333.3
                value: Qt.vector3d(-88.7123, -70.634, 72.3113)
            }
            Keyframe {
                frame: 11375
                value: Qt.vector3d(-88.7261, -70.6736, 72.2385)
            }
            Keyframe {
                frame: 11416.7
                value: Qt.vector3d(-88.7392, -70.7111, 72.1638)
            }
            Keyframe {
                frame: 11458.3
                value: Qt.vector3d(-88.7527, -70.7484, 72.0889)
            }
            Keyframe {
                frame: 11500
                value: Qt.vector3d(-88.7665, -70.7849, 72.0135)
            }
            Keyframe {
                frame: 11541.7
                value: Qt.vector3d(-88.7803, -70.8213, 71.9388)
            }
            Keyframe {
                frame: 11583.3
                value: Qt.vector3d(-88.7941, -70.8556, 71.8626)
            }
            Keyframe {
                frame: 11625
                value: Qt.vector3d(-88.8081, -70.8897, 71.787)
            }
            Keyframe {
                frame: 11666.7
                value: Qt.vector3d(-88.8221, -70.923, 71.7114)
            }
            Keyframe {
                frame: 11708.3
                value: Qt.vector3d(-88.8358, -70.9553, 71.6358)
            }
            Keyframe {
                frame: 11750
                value: Qt.vector3d(-88.8502, -70.9871, 71.5608)
            }
            Keyframe {
                frame: 11791.7
                value: Qt.vector3d(-88.8643, -71.0184, 71.4864)
            }
            Keyframe {
                frame: 11833.3
                value: Qt.vector3d(-88.8783, -71.0489, 71.4126)
            }
            Keyframe {
                frame: 11875
                value: Qt.vector3d(-88.8931, -71.0798, 71.3409)
            }
            Keyframe {
                frame: 11916.7
                value: Qt.vector3d(-88.9068, -71.1086, 71.2682)
            }
            Keyframe {
                frame: 11958.3
                value: Qt.vector3d(-88.9213, -71.1377, 71.1977)
            }
            Keyframe {
                frame: 12000
                value: Qt.vector3d(-88.9352, -71.1663, 71.1284)
            }
            Keyframe {
                frame: 12041.7
                value: Qt.vector3d(-88.9497, -71.195, 71.0611)
            }
            Keyframe {
                frame: 12083.3
                value: Qt.vector3d(-88.9637, -71.2227, 70.9947)
            }
            Keyframe {
                frame: 12125
                value: Qt.vector3d(-88.9776, -71.2498, 70.9299)
            }
            Keyframe {
                frame: 12166.7
                value: Qt.vector3d(-88.9915, -71.2774, 70.8674)
            }
            Keyframe {
                frame: 12208.3
                value: Qt.vector3d(-89.0057, -71.3043, 70.8066)
            }
            Keyframe {
                frame: 12250
                value: Qt.vector3d(-89.0196, -71.3313, 70.748)
            }
            Keyframe {
                frame: 12291.7
                value: Qt.vector3d(-89.0337, -71.3584, 70.6918)
            }
            Keyframe {
                frame: 12333.3
                value: Qt.vector3d(-89.0476, -71.3851, 70.6377)
            }
            Keyframe {
                frame: 12375
                value: Qt.vector3d(-89.061, -71.4118, 70.5861)
            }
            Keyframe {
                frame: 12416.7
                value: Qt.vector3d(-89.0746, -71.4391, 70.5375)
            }
            Keyframe {
                frame: 12458.3
                value: Qt.vector3d(-89.0879, -71.4656, 70.4906)
            }
            Keyframe {
                frame: 12500
                value: Qt.vector3d(-89.1017, -71.4937, 70.4482)
            }
            Keyframe {
                frame: 12541.7
                value: Qt.vector3d(-89.1146, -71.5213, 70.4076)
            }
            Keyframe {
                frame: 12583.3
                value: Qt.vector3d(-89.1275, -71.5493, 70.3702)
            }
            Keyframe {
                frame: 12625
                value: Qt.vector3d(-89.1407, -71.5781, 70.3363)
            }
            Keyframe {
                frame: 12666.7
                value: Qt.vector3d(-89.154, -71.6075, 70.3059)
            }
            Keyframe {
                frame: 12708.3
                value: Qt.vector3d(-89.1665, -71.6371, 70.2784)
            }
            Keyframe {
                frame: 12750
                value: Qt.vector3d(-89.1791, -71.6678, 70.255)
            }
            Keyframe {
                frame: 12791.7
                value: Qt.vector3d(-89.1913, -71.6984, 70.2343)
            }
            Keyframe {
                frame: 12833.3
                value: Qt.vector3d(-89.204, -71.7304, 70.2181)
            }
            Keyframe {
                frame: 12875
                value: Qt.vector3d(-89.2159, -71.7632, 70.2053)
            }
            Keyframe {
                frame: 12916.7
                value: Qt.vector3d(-89.2277, -71.7978, 70.1973)
            }
            Keyframe {
                frame: 12958.3
                value: Qt.vector3d(-89.2402, -71.8336, 70.1933)
            }
            Keyframe {
                frame: 13000
                value: Qt.vector3d(-89.2514, -71.869, 70.1921)
            }
            Keyframe {
                frame: 13041.7
                value: Qt.vector3d(-89.263, -71.9071, 70.1963)
            }
            Keyframe {
                frame: 13083.3
                value: Qt.vector3d(-89.275, -71.9459, 70.2042)
            }
            Keyframe {
                frame: 13125
                value: Qt.vector3d(-89.2856, -71.9868, 70.2173)
            }
            Keyframe {
                frame: 13166.7
                value: Qt.vector3d(-89.2972, -72.03, 70.2357)
            }
            Keyframe {
                frame: 13208.3
                value: Qt.vector3d(-89.3076, -72.073, 70.2566)
            }
            Keyframe {
                frame: 13250
                value: Qt.vector3d(-89.3184, -72.119, 70.2836)
            }
            Keyframe {
                frame: 13291.7
                value: Qt.vector3d(-89.3286, -72.1664, 70.3148)
            }
            Keyframe {
                frame: 13333.3
                value: Qt.vector3d(-89.3391, -72.2155, 70.3507)
            }
            Keyframe {
                frame: 13375
                value: Qt.vector3d(-89.3493, -72.2676, 70.3927)
            }
            Keyframe {
                frame: 13416.7
                value: Qt.vector3d(-89.359, -72.3209, 70.439)
            }
            Keyframe {
                frame: 13458.3
                value: Qt.vector3d(-89.3685, -72.3777, 70.4913)
            }
            Keyframe {
                frame: 13500
                value: Qt.vector3d(-89.3788, -72.4375, 70.5494)
            }
            Keyframe {
                frame: 13541.7
                value: Qt.vector3d(-89.3883, -72.4971, 70.6099)
            }
            Keyframe {
                frame: 13583.3
                value: Qt.vector3d(-89.3983, -72.5565, 70.6714)
            }
            Keyframe {
                frame: 13625
                value: Qt.vector3d(-89.4075, -72.6151, 70.7334)
            }
            Keyframe {
                frame: 13666.7
                value: Qt.vector3d(-89.4172, -72.6732, 70.7964)
            }
            Keyframe {
                frame: 13708.3
                value: Qt.vector3d(-89.4277, -72.7313, 70.8613)
            }
            Keyframe {
                frame: 13750
                value: Qt.vector3d(-89.438, -72.7898, 70.9275)
            }
            Keyframe {
                frame: 13791.7
                value: Qt.vector3d(-89.4482, -72.8459, 70.9933)
            }
            Keyframe {
                frame: 13833.3
                value: Qt.vector3d(-89.4586, -72.9027, 71.0608)
            }
            Keyframe {
                frame: 13875
                value: Qt.vector3d(-89.4692, -72.9596, 71.13)
            }
            Keyframe {
                frame: 13916.7
                value: Qt.vector3d(-89.48, -73.014, 71.1983)
            }
            Keyframe {
                frame: 13958.3
                value: Qt.vector3d(-89.4914, -73.0717, 71.2713)
            }
            Keyframe {
                frame: 14000
                value: Qt.vector3d(-89.5023, -73.1268, 71.3429)
            }
            Keyframe {
                frame: 14041.7
                value: Qt.vector3d(-89.5134, -73.1814, 71.4158)
            }
            Keyframe {
                frame: 14083.3
                value: Qt.vector3d(-89.524, -73.2346, 71.4888)
            }
            Keyframe {
                frame: 14125
                value: Qt.vector3d(-89.5356, -73.2881, 71.5634)
            }
            Keyframe {
                frame: 14166.7
                value: Qt.vector3d(-89.5472, -73.3432, 71.6405)
            }
            Keyframe {
                frame: 14208.3
                value: Qt.vector3d(-89.5585, -73.3957, 71.7167)
            }
            Keyframe {
                frame: 14250
                value: Qt.vector3d(-89.5707, -73.4476, 71.794)
            }
            Keyframe {
                frame: 14291.7
                value: Qt.vector3d(-89.5804, -73.4967, 71.8693)
            }
            Keyframe {
                frame: 14333.3
                value: Qt.vector3d(-89.5917, -73.5497, 71.9498)
            }
            Keyframe {
                frame: 14375
                value: Qt.vector3d(-89.6049, -73.6008, 72.0302)
            }
            Keyframe {
                frame: 14416.7
                value: Qt.vector3d(-89.6159, -73.6516, 72.1108)
            }
            Keyframe {
                frame: 14458.3
                value: Qt.vector3d(-89.6278, -73.7014, 72.1917)
            }
            Keyframe {
                frame: 14500
                value: Qt.vector3d(-89.6401, -73.7513, 72.2744)
            }
            Keyframe {
                frame: 14541.7
                value: Qt.vector3d(-89.6506, -73.7984, 72.3549)
            }
            Keyframe {
                frame: 14583.3
                value: Qt.vector3d(-89.662, -73.8485, 72.4389)
            }
            Keyframe {
                frame: 14625
                value: Qt.vector3d(-89.6749, -73.8969, 72.5228)
            }
            Keyframe {
                frame: 14666.7
                value: Qt.vector3d(-89.6866, -73.945, 72.6073)
            }
            Keyframe {
                frame: 14708.3
                value: Qt.vector3d(-89.6961, -73.9891, 72.6881)
            }
            Keyframe {
                frame: 14750
                value: Qt.vector3d(-89.7086, -74.0351, 72.7717)
            }
            Keyframe {
                frame: 14791.7
                value: Qt.vector3d(-89.7202, -74.0839, 72.8593)
            }
            Keyframe {
                frame: 14833.3
                value: Qt.vector3d(-89.7331, -74.129, 72.9431)
            }
            Keyframe {
                frame: 14875
                value: Qt.vector3d(-89.7436, -74.1727, 73.0267)
            }
            Keyframe {
                frame: 14916.7
                value: Qt.vector3d(-89.7537, -74.2155, 73.1086)
            }
            Keyframe {
                frame: 14958.3
                value: Qt.vector3d(-89.7651, -74.2613, 73.1951)
            }
            Keyframe {
                frame: 15000
                value: Qt.vector3d(-89.7745, -74.3004, 73.2749)
            }
            Keyframe {
                frame: 15041.7
                value: Qt.vector3d(-89.786, -74.3441, 73.3592)
            }
            Keyframe {
                frame: 15083.3
                value: Qt.vector3d(-89.7983, -74.3873, 73.443)
            }
            Keyframe {
                frame: 15125
                value: Qt.vector3d(-89.8092, -74.43, 73.5262)
            }
            Keyframe {
                frame: 15166.7
                value: Qt.vector3d(-89.8165, -74.4676, 73.6042)
            }
            Keyframe {
                frame: 15208.3
                value: Qt.vector3d(-89.8253, -74.5089, 73.6866)
            }
            Keyframe {
                frame: 15250
                value: Qt.vector3d(-89.8357, -74.545, 73.7624)
            }
            Keyframe {
                frame: 15291.7
                value: Qt.vector3d(-89.8455, -74.5843, 73.8408)
            }
            Keyframe {
                frame: 15333.3
                value: Qt.vector3d(-89.8546, -74.6231, 73.9205)
            }
            Keyframe {
                frame: 15375
                value: Qt.vector3d(-89.8644, -74.6607, 73.9968)
            }
            Keyframe {
                frame: 15416.7
                value: Qt.vector3d(-89.8749, -74.7021, 74.0757)
            }
            Keyframe {
                frame: 15458.3
                value: Qt.vector3d(-89.8813, -74.7378, 74.1488)
            }
            Keyframe {
                frame: 15500
                value: Qt.vector3d(-89.8916, -74.7741, 74.2236)
            }
            Keyframe {
                frame: 15541.7
                value: Qt.vector3d(-89.8991, -74.8062, 74.2922)
            }
            Keyframe {
                frame: 15583.3
                value: Qt.vector3d(-89.9072, -74.8458, 74.365)
            }
            Keyframe {
                frame: 15625
                value: Qt.vector3d(-89.9138, -74.8737, 74.4286)
            }
            Keyframe {
                frame: 15666.7
                value: Qt.vector3d(-89.9234, -74.9225, 74.511)
            }
            Keyframe {
                frame: 15708.3
                value: Qt.vector3d(-89.9234, -74.9399, 74.5616)
            }
            Keyframe {
                frame: 15750
                value: Qt.vector3d(-89.9315, -74.9753, 74.6267)
            }
            Keyframe {
                frame: 15791.7
                value: Qt.vector3d(-89.9374, -75.0073, 74.6892)
            }
            Keyframe {
                frame: 15833.3
                value: Qt.vector3d(-89.9477, -75.0414, 74.7515)
            }
            Keyframe {
                frame: 15875
                value: Qt.vector3d(-89.9515, -75.0709, 74.8091)
            }
            Keyframe {
                frame: 15916.7
                value: Qt.vector3d(-89.9558, -75.1106, 74.8765)
            }
            Keyframe {
                frame: 15958.3
                value: Qt.vector3d(-89.9657, -75.1402, 74.9278)
            }
            Keyframe {
                frame: 16000
                value: Qt.vector3d(-89.972, -75.1763, 74.9872)
            }
            Keyframe {
                frame: 16041.7
                value: Qt.vector3d(-89.972, -75.2206, 75.0568)
            }
            Keyframe {
                frame: 16083.3
                value: Qt.vector3d(-89.9657, -75.2188, 75.0754)
            }
            Keyframe {
                frame: 16125
                value: Qt.vector3d(-90, -75.2606, 75.1376)
            }
            Keyframe {
                frame: 16166.7
                value: Qt.vector3d(-90, -75.3105, 75.1972)
            }
            Keyframe {
                frame: 16208.3
                value: Qt.vector3d(-90, -75.3461, 75.2594)
            }
            Keyframe {
                frame: 16250
                value: Qt.vector3d(-90, -75.3947, 75.3338)
            }
            Keyframe {
                frame: 16291.7
                value: Qt.vector3d(-89.9802, -75.3898, 75.3337)
            }
            Keyframe {
                frame: 16333.3
                value: Qt.vector3d(-90, -75.4559, 75.4085)
            }
            Keyframe {
                frame: 16375
                value: Qt.vector3d(-90, -75.4787, 75.4473)
            }
            Keyframe {
                frame: 16416.7
                value: Qt.vector3d(-90, -75.549, 75.5473)
            }
            Keyframe {
                frame: 16458.3
                value: Qt.vector3d(-89.9802, -75.5368, 75.4779)
            }
            Keyframe {
                frame: 16500
                value: Qt.vector3d(-89.9802, -75.5217, 75.5209)
            }
            Keyframe {
                frame: 16541.7
                value: Qt.vector3d(-90, -75.9483, 75.9479)
            }
            Keyframe {
                frame: 16583.3
                value: Qt.vector3d(-89.9802, -75.8376, 75.8374)
            }
            Keyframe {
                frame: 16625
                value: Qt.vector3d(-89.9802, -76.1372, 76.1372)
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(-89.9802, 180, -180)
            }
        }

        KeyframeGroup {
            target: gyro2
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0, 0)
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(0.00600652, -9.14833e-05, 5.4534e-05)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(0.0240665, -0.000366479, 0.000218503)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(0.0542361, -0.000825638, 0.000492418)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(0.0965655, -0.00146937, 0.000876734)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(0.151098, -0.00229786, 0.00137185)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(0.217871, -0.00331101, 0.0019781)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(0.296913, -0.0045085, 0.00269575)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(0.388245, -0.00588971, 0.00352501)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(0.491878, -0.00745377, 0.004466)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(0.607817, -0.0091995, 0.00551878)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(0.736056, -0.0111255, 0.00668331)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(0.876577, -0.0132299, 0.0079595)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(1.02935, -0.0155108, 0.00934715)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(1.19434, -0.0179657, 0.010846)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(1.3715, -0.0205921, 0.0124556)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(1.56076, -0.0233869, 0.0141757)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(1.76205, -0.0263467, 0.0160055)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(1.97527, -0.0294681, 0.0179445)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(2.20033, -0.032747, 0.0199918)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(2.4371, -0.0361792, 0.0221468)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(2.68544, -0.0397601, 0.0244084)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(2.94522, -0.0434848, 0.0267755)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(3.21626, -0.047348, 0.029247)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(3.49839, -0.0513443, 0.0318217)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(3.79139, -0.0554679, 0.0344981)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(4.09506, -0.0597125, 0.0372748)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(4.40915, -0.0640719, 0.0401502)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(4.73343, -0.0685393, 0.0431226)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(5.06761, -0.0731079, 0.0461901)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(5.4114, -0.0777703, 0.0493508)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(5.7645, -0.0825193, 0.0526028)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(6.12658, -0.0873473, 0.0559437)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(6.49731, -0.0922463, 0.0593714)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(6.8763, -0.0972085, 0.0628834)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(7.2632, -0.102226, 0.0664771)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(7.65759, -0.10729, 0.0701501)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(8.05907, -0.112393, 0.0738994)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(8.46721, -0.117525, 0.0777223)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(8.88155, -0.12268, 0.0816156)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(9.30164, -0.127847, 0.0855763)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(9.727, -0.13302, 0.0896011)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(10.1571, -0.138189, 0.0936867)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(10.5916, -0.143346, 0.0978295)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(11.0298, -0.148482, 0.102026)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(11.4713, -0.153591, 0.106272)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(11.9154, -0.158664, 0.110565)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(12.3618, -0.163693, 0.114899)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(12.8098, -0.168671, 0.119271)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(13.259, -0.17359, 0.123677)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(13.7086, -0.178444, 0.128112)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(14.1583, -0.183227, 0.132573)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(14.6074, -0.187931, 0.137053)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(15.0555, -0.192551, 0.14155)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(15.5018, -0.197082, 0.146057)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(15.946, -0.201518, 0.15057)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(16.3875, -0.205854, 0.155085)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(16.8257, -0.210086, 0.159596)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(17.2601, -0.214211, 0.164097)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(17.6902, -0.218224, 0.168585)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(18.1156, -0.222123, 0.173053)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(18.5357, -0.225904, 0.177497)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(18.95, -0.229567, 0.18191)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(19.3582, -0.233108, 0.186288)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(19.7596, -0.236527, 0.190626)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(20.154, -0.239822, 0.194917)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(20.5409, -0.242994, 0.199157)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(20.9199, -0.246041, 0.20334)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(21.2906, -0.248964, 0.207461)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(21.6527, -0.251763, 0.211514)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(22.0058, -0.25444, 0.215495)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(22.3496, -0.256995, 0.219398)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(22.6838, -0.25943, 0.223217)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(23.008, -0.261747, 0.226948)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(23.3221, -0.263946, 0.230587)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(23.6258, -0.266032, 0.234127)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(23.9188, -0.268005, 0.237566)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(24.2009, -0.269869, 0.240897)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(24.4719, -0.271625, 0.244116)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(24.7317, -0.273277, 0.24722)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(24.98, -0.274827, 0.250205)
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(25.2168, -0.276278, 0.253066)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(25.4418, -0.277633, 0.255799)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(25.6551, -0.278895, 0.258402)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(25.8563, -0.280067, 0.260872)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(26.0456, -0.28115, 0.263204)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(26.2227, -0.28215, 0.265396)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(26.3877, -0.283066, 0.267447)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(26.5405, -0.283904, 0.269352)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(26.681, -0.284663, 0.271111)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(26.8093, -0.285348, 0.272722)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(26.9252, -0.285961, 0.274182)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(27.0288, -0.286503, 0.275491)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(27.1202, -0.286976, 0.276647)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(27.1992, -0.287381, 0.27765)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(27.266, -0.287722, 0.278498)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(27.3205, -0.287999, 0.279193)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(27.3628, -0.288212, 0.279732)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(27.393, -0.288364, 0.280117)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(27.411, -0.288454, 0.280347)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(27.4171, -0.288485, 0.280424)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.vector3d(27.417, -0.288477, 0.280417)
            }
            Keyframe {
                frame: 4250
                value: Qt.vector3d(27.417, -0.288456, 0.280396)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.vector3d(27.417, -0.288419, 0.28036)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(27.4169, -0.288368, 0.28031)
            }
            Keyframe {
                frame: 4375
                value: Qt.vector3d(27.4167, -0.288303, 0.280245)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.vector3d(27.4165, -0.288222, 0.280165)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.vector3d(27.4162, -0.288127, 0.280069)
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(27.4158, -0.288016, 0.279958)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.vector3d(27.4152, -0.287891, 0.279832)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.vector3d(27.4145, -0.28775, 0.27969)
            }
            Keyframe {
                frame: 4625
                value: Qt.vector3d(27.4136, -0.287594, 0.279531)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(27.4125, -0.287424, 0.279357)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.vector3d(27.4113, -0.287237, 0.279166)
            }
            Keyframe {
                frame: 4750
                value: Qt.vector3d(27.4097, -0.287036, 0.278958)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.vector3d(27.408, -0.286819, 0.278733)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(27.4059, -0.286587, 0.278492)
            }
            Keyframe {
                frame: 4875
                value: Qt.vector3d(27.4036, -0.286339, 0.278233)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.vector3d(27.4009, -0.286076, 0.277956)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.vector3d(27.3979, -0.285798, 0.277663)
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(27.3946, -0.285504, 0.277351)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.vector3d(27.3908, -0.285196, 0.277021)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.vector3d(27.3866, -0.284871, 0.276673)
            }
            Keyframe {
                frame: 5125
                value: Qt.vector3d(27.3819, -0.284532, 0.276307)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(27.3768, -0.284177, 0.275923)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.vector3d(27.3711, -0.283807, 0.27552)
            }
            Keyframe {
                frame: 5250
                value: Qt.vector3d(27.3649, -0.283422, 0.275098)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.vector3d(27.3582, -0.283021, 0.274657)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(27.3508, -0.282606, 0.274198)
            }
            Keyframe {
                frame: 5375
                value: Qt.vector3d(27.3428, -0.282176, 0.273719)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.vector3d(27.3342, -0.281731, 0.273221)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.vector3d(27.3249, -0.281272, 0.272704)
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(27.3148, -0.280798, 0.272167)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.vector3d(27.304, -0.280309, 0.271612)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.vector3d(27.2924, -0.279806, 0.271036)
            }
            Keyframe {
                frame: 5625
                value: Qt.vector3d(27.28, -0.279289, 0.270441)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(27.2667, -0.278759, 0.269827)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.vector3d(27.2526, -0.278214, 0.269193)
            }
            Keyframe {
                frame: 5750
                value: Qt.vector3d(27.2375, -0.277656, 0.26854)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.vector3d(27.2215, -0.277084, 0.267867)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(27.2045, -0.2765, 0.267174)
            }
            Keyframe {
                frame: 5875
                value: Qt.vector3d(27.1864, -0.275902, 0.266462)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.vector3d(27.1673, -0.275292, 0.265731)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.vector3d(27.1471, -0.274669, 0.264981)
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(27.1258, -0.274034, 0.264211)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.vector3d(27.1033, -0.273387, 0.263422)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.vector3d(27.0796, -0.272729, 0.262615)
            }
            Keyframe {
                frame: 6125
                value: Qt.vector3d(27.0547, -0.272059, 0.261788)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(27.0285, -0.271378, 0.260943)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.vector3d(27.0011, -0.270686, 0.26008)
            }
            Keyframe {
                frame: 6250
                value: Qt.vector3d(26.9723, -0.269984, 0.259199)
            }
            Keyframe {
                frame: 6291.67
                value: Qt.vector3d(26.9422, -0.269271, 0.258299)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.vector3d(26.9107, -0.268549, 0.257382)
            }
            Keyframe {
                frame: 6375
                value: Qt.vector3d(26.8778, -0.267817, 0.256447)
            }
            Keyframe {
                frame: 6416.67
                value: Qt.vector3d(26.8434, -0.267076, 0.255496)
            }
            Keyframe {
                frame: 6458.33
                value: Qt.vector3d(26.8075, -0.266327, 0.254527)
            }
            Keyframe {
                frame: 6500
                value: Qt.vector3d(26.7702, -0.265568, 0.253542)
            }
            Keyframe {
                frame: 6541.67
                value: Qt.vector3d(26.7313, -0.264802, 0.252541)
            }
            Keyframe {
                frame: 6583.33
                value: Qt.vector3d(26.6909, -0.264028, 0.251523)
            }
            Keyframe {
                frame: 6625
                value: Qt.vector3d(26.649, -0.263246, 0.250491)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.vector3d(26.6054, -0.262458, 0.249443)
            }
            Keyframe {
                frame: 6708.33
                value: Qt.vector3d(26.5602, -0.261662, 0.248381)
            }
            Keyframe {
                frame: 6750
                value: Qt.vector3d(26.5133, -0.260861, 0.247304)
            }
            Keyframe {
                frame: 6791.67
                value: Qt.vector3d(26.4648, -0.260053, 0.246214)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.vector3d(26.4147, -0.259239, 0.24511)
            }
            Keyframe {
                frame: 6875
                value: Qt.vector3d(26.3628, -0.258421, 0.243993)
            }
            Keyframe {
                frame: 6916.67
                value: Qt.vector3d(26.3092, -0.257597, 0.242863)
            }
            Keyframe {
                frame: 6958.33
                value: Qt.vector3d(26.254, -0.256769, 0.241722)
            }
            Keyframe {
                frame: 7000
                value: Qt.vector3d(26.1969, -0.255936, 0.240569)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.vector3d(26.1381, -0.2551, 0.239404)
            }
            Keyframe {
                frame: 7083.33
                value: Qt.vector3d(26.0776, -0.25426, 0.23823)
            }
            Keyframe {
                frame: 7125
                value: Qt.vector3d(26.0153, -0.253417, 0.237045)
            }
            Keyframe {
                frame: 7166.67
                value: Qt.vector3d(25.9513, -0.252571, 0.23585)
            }
            Keyframe {
                frame: 7208.33
                value: Qt.vector3d(25.8854, -0.251722, 0.234646)
            }
            Keyframe {
                frame: 7250
                value: Qt.vector3d(25.8178, -0.250871, 0.233434)
            }
            Keyframe {
                frame: 7291.67
                value: Qt.vector3d(25.7484, -0.250019, 0.232214)
            }
            Keyframe {
                frame: 7333.33
                value: Qt.vector3d(25.6772, -0.249164, 0.230986)
            }
            Keyframe {
                frame: 7375
                value: Qt.vector3d(25.6042, -0.248308, 0.229751)
            }
            Keyframe {
                frame: 7416.67
                value: Qt.vector3d(25.5294, -0.247451, 0.228509)
            }
            Keyframe {
                frame: 7458.33
                value: Qt.vector3d(25.4528, -0.246594, 0.227261)
            }
            Keyframe {
                frame: 7500
                value: Qt.vector3d(25.3745, -0.245735, 0.226008)
            }
            Keyframe {
                frame: 7541.67
                value: Qt.vector3d(25.2944, -0.244877, 0.224749)
            }
            Keyframe {
                frame: 7583.33
                value: Qt.vector3d(25.2125, -0.244018, 0.223486)
            }
            Keyframe {
                frame: 7625
                value: Qt.vector3d(25.1288, -0.24316, 0.222219)
            }
            Keyframe {
                frame: 7666.67
                value: Qt.vector3d(25.0434, -0.242302, 0.220948)
            }
            Keyframe {
                frame: 7708.33
                value: Qt.vector3d(24.9563, -0.241445, 0.219675)
            }
            Keyframe {
                frame: 7750
                value: Qt.vector3d(24.8674, -0.240589, 0.218398)
            }
            Keyframe {
                frame: 7791.67
                value: Qt.vector3d(24.7768, -0.239734, 0.217119)
            }
            Keyframe {
                frame: 7833.33
                value: Qt.vector3d(24.6844, -0.23888, 0.215839)
            }
            Keyframe {
                frame: 7875
                value: Qt.vector3d(24.5904, -0.238028, 0.214557)
            }
            Keyframe {
                frame: 7916.67
                value: Qt.vector3d(24.4947, -0.237177, 0.213274)
            }
            Keyframe {
                frame: 7958.33
                value: Qt.vector3d(24.3973, -0.236329, 0.211991)
            }
            Keyframe {
                frame: 8000
                value: Qt.vector3d(24.2982, -0.235482, 0.210707)
            }
            Keyframe {
                frame: 8041.67
                value: Qt.vector3d(24.1975, -0.234638, 0.209424)
            }
            Keyframe {
                frame: 8083.33
                value: Qt.vector3d(24.0951, -0.233795, 0.208142)
            }
            Keyframe {
                frame: 8125
                value: Qt.vector3d(23.9912, -0.232956, 0.206861)
            }
            Keyframe {
                frame: 8166.67
                value: Qt.vector3d(23.8856, -0.232119, 0.205581)
            }
            Keyframe {
                frame: 8208.33
                value: Qt.vector3d(23.7785, -0.231285, 0.204304)
            }
            Keyframe {
                frame: 8250
                value: Qt.vector3d(23.6698, -0.230453, 0.203028)
            }
            Keyframe {
                frame: 8291.67
                value: Qt.vector3d(23.5596, -0.229625, 0.201755)
            }
            Keyframe {
                frame: 8333.33
                value: Qt.vector3d(23.4478, -0.228799, 0.200485)
            }
            Keyframe {
                frame: 8375
                value: Qt.vector3d(23.3346, -0.227977, 0.199218)
            }
            Keyframe {
                frame: 8416.67
                value: Qt.vector3d(23.2198, -0.227159, 0.197954)
            }
            Keyframe {
                frame: 8458.33
                value: Qt.vector3d(23.1036, -0.226343, 0.196695)
            }
            Keyframe {
                frame: 8500
                value: Qt.vector3d(22.986, -0.225531, 0.195439)
            }
            Keyframe {
                frame: 8541.67
                value: Qt.vector3d(22.8669, -0.224722, 0.194187)
            }
            Keyframe {
                frame: 8583.33
                value: Qt.vector3d(22.7464, -0.223917, 0.192941)
            }
            Keyframe {
                frame: 8625
                value: Qt.vector3d(22.6246, -0.223116, 0.191699)
            }
            Keyframe {
                frame: 8666.67
                value: Qt.vector3d(22.5013, -0.222319, 0.190462)
            }
            Keyframe {
                frame: 8708.33
                value: Qt.vector3d(22.3768, -0.221525, 0.18923)
            }
            Keyframe {
                frame: 8750
                value: Qt.vector3d(22.2508, -0.220735, 0.188004)
            }
            Keyframe {
                frame: 8791.67
                value: Qt.vector3d(22.1236, -0.219948, 0.186783)
            }
            Keyframe {
                frame: 8833.33
                value: Qt.vector3d(21.9951, -0.219166, 0.185569)
            }
            Keyframe {
                frame: 8875
                value: Qt.vector3d(21.8654, -0.218388, 0.18436)
            }
            Keyframe {
                frame: 8916.67
                value: Qt.vector3d(21.7344, -0.217613, 0.183158)
            }
            Keyframe {
                frame: 8958.33
                value: Qt.vector3d(21.6022, -0.216843, 0.181962)
            }
            Keyframe {
                frame: 9000
                value: Qt.vector3d(21.4687, -0.216077, 0.180773)
            }
            Keyframe {
                frame: 9041.67
                value: Qt.vector3d(21.3341, -0.215314, 0.17959)
            }
            Keyframe {
                frame: 9083.33
                value: Qt.vector3d(21.1983, -0.214556, 0.178414)
            }
            Keyframe {
                frame: 9125
                value: Qt.vector3d(21.0614, -0.213802, 0.177246)
            }
            Keyframe {
                frame: 9166.67
                value: Qt.vector3d(20.9233, -0.213052, 0.176084)
            }
            Keyframe {
                frame: 9208.33
                value: Qt.vector3d(20.7808, -0.212307, 0.174917)
            }
            Keyframe {
                frame: 9250
                value: Qt.vector3d(20.6304, -0.211568, 0.173734)
            }
            Keyframe {
                frame: 9291.67
                value: Qt.vector3d(20.472, -0.210834, 0.172534)
            }
            Keyframe {
                frame: 9333.33
                value: Qt.vector3d(20.3057, -0.210104, 0.171317)
            }
            Keyframe {
                frame: 9375
                value: Qt.vector3d(20.1315, -0.209377, 0.170085)
            }
            Keyframe {
                frame: 9416.67
                value: Qt.vector3d(19.9494, -0.208654, 0.168837)
            }
            Keyframe {
                frame: 9458.33
                value: Qt.vector3d(19.7594, -0.207933, 0.167574)
            }
            Keyframe {
                frame: 9500
                value: Qt.vector3d(19.5614, -0.207213, 0.166296)
            }
            Keyframe {
                frame: 9541.67
                value: Qt.vector3d(19.3556, -0.206493, 0.165004)
            }
            Keyframe {
                frame: 9583.33
                value: Qt.vector3d(19.1418, -0.205774, 0.163699)
            }
            Keyframe {
                frame: 9625
                value: Qt.vector3d(18.9203, -0.205053, 0.16238)
            }
            Keyframe {
                frame: 9666.67
                value: Qt.vector3d(18.6909, -0.204331, 0.161048)
            }
            Keyframe {
                frame: 9708.33
                value: Qt.vector3d(18.4537, -0.203606, 0.159705)
            }
            Keyframe {
                frame: 9750
                value: Qt.vector3d(18.2089, -0.202877, 0.158349)
            }
            Keyframe {
                frame: 9791.67
                value: Qt.vector3d(17.9564, -0.202145, 0.156983)
            }
            Keyframe {
                frame: 9833.33
                value: Qt.vector3d(17.6963, -0.201406, 0.155605)
            }
            Keyframe {
                frame: 9875
                value: Qt.vector3d(17.4286, -0.200662, 0.154218)
            }
            Keyframe {
                frame: 9916.67
                value: Qt.vector3d(17.1536, -0.199911, 0.152822)
            }
            Keyframe {
                frame: 9958.33
                value: Qt.vector3d(16.8712, -0.199153, 0.151416)
            }
            Keyframe {
                frame: 10000
                value: Qt.vector3d(16.5816, -0.198385, 0.150002)
            }
            Keyframe {
                frame: 10041.7
                value: Qt.vector3d(16.2849, -0.197608, 0.14858)
            }
            Keyframe {
                frame: 10083.3
                value: Qt.vector3d(15.9812, -0.196821, 0.147152)
            }
            Keyframe {
                frame: 10125
                value: Qt.vector3d(15.6706, -0.196023, 0.145717)
            }
            Keyframe {
                frame: 10166.7
                value: Qt.vector3d(15.3534, -0.195213, 0.144275)
            }
            Keyframe {
                frame: 10208.3
                value: Qt.vector3d(15.0295, -0.194389, 0.142829)
            }
            Keyframe {
                frame: 10250
                value: Qt.vector3d(14.6993, -0.193553, 0.141378)
            }
            Keyframe {
                frame: 10291.7
                value: Qt.vector3d(14.3629, -0.192702, 0.139923)
            }
            Keyframe {
                frame: 10333.3
                value: Qt.vector3d(14.0205, -0.191836, 0.138464)
            }
            Keyframe {
                frame: 10375
                value: Qt.vector3d(13.6723, -0.190954, 0.137003)
            }
            Keyframe {
                frame: 10416.7
                value: Qt.vector3d(13.3185, -0.190055, 0.135539)
            }
            Keyframe {
                frame: 10458.3
                value: Qt.vector3d(12.9593, -0.189139, 0.134073)
            }
            Keyframe {
                frame: 10500
                value: Qt.vector3d(12.5949, -0.188206, 0.132607)
            }
            Keyframe {
                frame: 10541.7
                value: Qt.vector3d(12.2257, -0.187253, 0.13114)
            }
            Keyframe {
                frame: 10583.3
                value: Qt.vector3d(11.8519, -0.186282, 0.129673)
            }
            Keyframe {
                frame: 10625
                value: Qt.vector3d(11.4737, -0.185291, 0.128206)
            }
            Keyframe {
                frame: 10666.7
                value: Qt.vector3d(11.0914, -0.18428, 0.126741)
            }
            Keyframe {
                frame: 10708.3
                value: Qt.vector3d(10.7053, -0.183249, 0.125277)
            }
            Keyframe {
                frame: 10750
                value: Qt.vector3d(10.3158, -0.182196, 0.123815)
            }
            Keyframe {
                frame: 10791.7
                value: Qt.vector3d(9.92311, -0.181122, 0.122356)
            }
            Keyframe {
                frame: 10833.3
                value: Qt.vector3d(9.52756, -0.180026, 0.1209)
            }
            Keyframe {
                frame: 10875
                value: Qt.vector3d(9.12948, -0.178908, 0.119448)
            }
            Keyframe {
                frame: 10916.7
                value: Qt.vector3d(8.72924, -0.177768, 0.118)
            }
            Keyframe {
                frame: 10958.3
                value: Qt.vector3d(8.32716, -0.176605, 0.116556)
            }
            Keyframe {
                frame: 11000
                value: Qt.vector3d(7.92359, -0.17542, 0.115117)
            }
            Keyframe {
                frame: 11041.7
                value: Qt.vector3d(7.51891, -0.174212, 0.113684)
            }
            Keyframe {
                frame: 11083.3
                value: Qt.vector3d(7.11347, -0.172982, 0.112256)
            }
            Keyframe {
                frame: 11125
                value: Qt.vector3d(6.70764, -0.171729, 0.110834)
            }
            Keyframe {
                frame: 11166.7
                value: Qt.vector3d(6.30179, -0.170453, 0.109419)
            }
            Keyframe {
                frame: 11208.3
                value: Qt.vector3d(5.8963, -0.169155, 0.10801)
            }
            Keyframe {
                frame: 11250
                value: Qt.vector3d(5.49154, -0.167834, 0.106608)
            }
            Keyframe {
                frame: 11291.7
                value: Qt.vector3d(5.08789, -0.166491, 0.105213)
            }
            Keyframe {
                frame: 11333.3
                value: Qt.vector3d(4.68574, -0.165127, 0.103826)
            }
            Keyframe {
                frame: 11375
                value: Qt.vector3d(4.28545, -0.16374, 0.102447)
            }
            Keyframe {
                frame: 11416.7
                value: Qt.vector3d(3.88741, -0.162333, 0.101076)
            }
            Keyframe {
                frame: 11458.3
                value: Qt.vector3d(3.49198, -0.160905, 0.0997125)
            }
            Keyframe {
                frame: 11500
                value: Qt.vector3d(3.09953, -0.159456, 0.0983578)
            }
            Keyframe {
                frame: 11541.7
                value: Qt.vector3d(2.71042, -0.157988, 0.0970117)
            }
            Keyframe {
                frame: 11583.3
                value: Qt.vector3d(2.32503, -0.156501, 0.0956743)
            }
            Keyframe {
                frame: 11625
                value: Qt.vector3d(1.94369, -0.154994, 0.0943459)
            }
            Keyframe {
                frame: 11666.7
                value: Qt.vector3d(1.56675, -0.15347, 0.0930265)
            }
            Keyframe {
                frame: 11708.3
                value: Qt.vector3d(1.19455, -0.151928, 0.0917162)
            }
            Keyframe {
                frame: 11750
                value: Qt.vector3d(0.82742, -0.150369, 0.0904152)
            }
            Keyframe {
                frame: 11791.7
                value: Qt.vector3d(0.46568, -0.148795, 0.0891235)
            }
            Keyframe {
                frame: 11833.3
                value: Qt.vector3d(0.109635, -0.147204, 0.0878413)
            }
            Keyframe {
                frame: 11875
                value: Qt.vector3d(-0.240412, -0.1456, 0.0865686)
            }
            Keyframe {
                frame: 11916.7
                value: Qt.vector3d(-0.584176, -0.143981, 0.0853056)
            }
            Keyframe {
                frame: 11958.3
                value: Qt.vector3d(-0.921373, -0.142349, 0.0840521)
            }
            Keyframe {
                frame: 12000
                value: Qt.vector3d(-1.25174, -0.140705, 0.0828084)
            }
            Keyframe {
                frame: 12041.7
                value: Qt.vector3d(-1.57503, -0.139049, 0.0815744)
            }
            Keyframe {
                frame: 12083.3
                value: Qt.vector3d(-1.891, -0.137383, 0.0803502)
            }
            Keyframe {
                frame: 12125
                value: Qt.vector3d(-2.19941, -0.135707, 0.0791359)
            }
            Keyframe {
                frame: 12166.7
                value: Qt.vector3d(-2.50006, -0.134022, 0.0779314)
            }
            Keyframe {
                frame: 12208.3
                value: Qt.vector3d(-2.79273, -0.132329, 0.0767368)
            }
            Keyframe {
                frame: 12250
                value: Qt.vector3d(-3.07723, -0.130628, 0.0755521)
            }
            Keyframe {
                frame: 12291.7
                value: Qt.vector3d(-3.3534, -0.128921, 0.0743773)
            }
            Keyframe {
                frame: 12333.3
                value: Qt.vector3d(-3.62106, -0.127209, 0.0732125)
            }
            Keyframe {
                frame: 12375
                value: Qt.vector3d(-3.88005, -0.125491, 0.0720576)
            }
            Keyframe {
                frame: 12416.7
                value: Qt.vector3d(-4.13024, -0.12377, 0.0709127)
            }
            Keyframe {
                frame: 12458.3
                value: Qt.vector3d(-4.37149, -0.122046, 0.0697778)
            }
            Keyframe {
                frame: 12500
                value: Qt.vector3d(-4.60369, -0.120319, 0.0686529)
            }
            Keyframe {
                frame: 12541.7
                value: Qt.vector3d(-4.82674, -0.118591, 0.0675381)
            }
            Keyframe {
                frame: 12583.3
                value: Qt.vector3d(-5.04053, -0.116862, 0.0664332)
            }
            Keyframe {
                frame: 12625
                value: Qt.vector3d(-5.24499, -0.115134, 0.0653384)
            }
            Keyframe {
                frame: 12666.7
                value: Qt.vector3d(-5.44004, -0.113406, 0.0642537)
            }
            Keyframe {
                frame: 12708.3
                value: Qt.vector3d(-5.62562, -0.11168, 0.063179)
            }
            Keyframe {
                frame: 12750
                value: Qt.vector3d(-5.80167, -0.109956, 0.0621144)
            }
            Keyframe {
                frame: 12791.7
                value: Qt.vector3d(-5.96816, -0.108235, 0.0610599)
            }
            Keyframe {
                frame: 12833.3
                value: Qt.vector3d(-6.12504, -0.106518, 0.0600154)
            }
            Keyframe {
                frame: 12875
                value: Qt.vector3d(-6.2723, -0.104806, 0.0589811)
            }
            Keyframe {
                frame: 12916.7
                value: Qt.vector3d(-6.40991, -0.103098, 0.0579569)
            }
            Keyframe {
                frame: 12958.3
                value: Qt.vector3d(-6.53787, -0.101397, 0.0569429)
            }
            Keyframe {
                frame: 13000
                value: Qt.vector3d(-6.65617, -0.0997018, 0.055939)
            }
            Keyframe {
                frame: 13041.7
                value: Qt.vector3d(-6.76482, -0.0980137, 0.0549453)
            }
            Keyframe {
                frame: 13083.3
                value: Qt.vector3d(-6.86383, -0.0963332, 0.0539617)
            }
            Keyframe {
                frame: 13125
                value: Qt.vector3d(-6.95323, -0.0946609, 0.0529883)
            }
            Keyframe {
                frame: 13166.7
                value: Qt.vector3d(-7.03304, -0.0929973, 0.052025)
            }
            Keyframe {
                frame: 13208.3
                value: Qt.vector3d(-7.10328, -0.091343, 0.051072)
            }
            Keyframe {
                frame: 13250
                value: Qt.vector3d(-7.164, -0.0896984, 0.0501292)
            }
            Keyframe {
                frame: 13291.7
                value: Qt.vector3d(-7.21524, -0.0880641, 0.0491966)
            }
            Keyframe {
                frame: 13333.3
                value: Qt.vector3d(-7.25704, -0.0864405, 0.0482742)
            }
            Keyframe {
                frame: 13375
                value: Qt.vector3d(-7.28945, -0.0848281, 0.0473621)
            }
            Keyframe {
                frame: 13416.7
                value: Qt.vector3d(-7.31252, -0.0832273, 0.0464601)
            }
            Keyframe {
                frame: 13458.3
                value: Qt.vector3d(-7.32632, -0.0816385, 0.0455684)
            }
            Keyframe {
                frame: 13500
                value: Qt.vector3d(-7.33092, -0.080062, 0.0446869)
            }
            Keyframe {
                frame: 13541.7
                value: Qt.vector3d(-7.32813, -0.078487, 0.0438087)
            }
            Keyframe {
                frame: 13583.3
                value: Qt.vector3d(-7.31976, -0.0769027, 0.0429271)
            }
            Keyframe {
                frame: 13625
                value: Qt.vector3d(-7.30577, -0.0753097, 0.0420423)
            }
            Keyframe {
                frame: 13666.7
                value: Qt.vector3d(-7.28613, -0.0737087, 0.0411547)
            }
            Keyframe {
                frame: 13708.3
                value: Qt.vector3d(-7.26082, -0.0721005, 0.0402645)
            }
            Keyframe {
                frame: 13750
                value: Qt.vector3d(-7.22983, -0.0704857, 0.039372)
            }
            Keyframe {
                frame: 13791.7
                value: Qt.vector3d(-7.19315, -0.0688652, 0.0384775)
            }
            Keyframe {
                frame: 13833.3
                value: Qt.vector3d(-7.15076, -0.0672398, 0.0375815)
            }
            Keyframe {
                frame: 13875
                value: Qt.vector3d(-7.10269, -0.0656104, 0.0366843)
            }
            Keyframe {
                frame: 13916.7
                value: Qt.vector3d(-7.04893, -0.0639779, 0.0357862)
            }
            Keyframe {
                frame: 13958.3
                value: Qt.vector3d(-6.98954, -0.0623432, 0.0348878)
            }
            Keyframe {
                frame: 14000
                value: Qt.vector3d(-6.92452, -0.0607074, 0.0339894)
            }
            Keyframe {
                frame: 14041.7
                value: Qt.vector3d(-6.85393, -0.0590714, 0.0330915)
            }
            Keyframe {
                frame: 14083.3
                value: Qt.vector3d(-6.77781, -0.0574364, 0.0321946)
            }
            Keyframe {
                frame: 14125
                value: Qt.vector3d(-6.69624, -0.0558036, 0.0312992)
            }
            Keyframe {
                frame: 14166.7
                value: Qt.vector3d(-6.60929, -0.0541739, 0.0304058)
            }
            Keyframe {
                frame: 14208.3
                value: Qt.vector3d(-6.51706, -0.0525487, 0.029515)
            }
            Keyframe {
                frame: 14250
                value: Qt.vector3d(-6.41965, -0.0509292, 0.0286274)
            }
            Keyframe {
                frame: 14291.7
                value: Qt.vector3d(-6.31716, -0.0493165, 0.0277434)
            }
            Keyframe {
                frame: 14333.3
                value: Qt.vector3d(-6.20975, -0.0477121, 0.0268638)
            }
            Keyframe {
                frame: 14375
                value: Qt.vector3d(-6.09754, -0.0461171, 0.0259891)
            }
            Keyframe {
                frame: 14416.7
                value: Qt.vector3d(-5.9807, -0.0445331, 0.02512)
            }
            Keyframe {
                frame: 14458.3
                value: Qt.vector3d(-5.85939, -0.0429612, 0.0242571)
            }
            Keyframe {
                frame: 14500
                value: Qt.vector3d(-5.73383, -0.0414028, 0.0234011)
            }
            Keyframe {
                frame: 14541.7
                value: Qt.vector3d(-5.60419, -0.0398593, 0.0225526)
            }
            Keyframe {
                frame: 14583.3
                value: Qt.vector3d(-5.47071, -0.0383322, 0.0217124)
            }
            Keyframe {
                frame: 14625
                value: Qt.vector3d(-5.3336, -0.0368227, 0.0208811)
            }
            Keyframe {
                frame: 14666.7
                value: Qt.vector3d(-5.19313, -0.0353322, 0.0200593)
            }
            Keyframe {
                frame: 14708.3
                value: Qt.vector3d(-5.04955, -0.0338621, 0.0192479)
            }
            Keyframe {
                frame: 14750
                value: Qt.vector3d(-4.90312, -0.0324136, 0.0184473)
            }
            Keyframe {
                frame: 14791.7
                value: Qt.vector3d(-4.75414, -0.0309881, 0.0176584)
            }
            Keyframe {
                frame: 14833.3
                value: Qt.vector3d(-4.60289, -0.0295869, 0.0168817)
            }
            Keyframe {
                frame: 14875
                value: Qt.vector3d(-4.44969, -0.0282111, 0.016118)
            }
            Keyframe {
                frame: 14916.7
                value: Qt.vector3d(-4.29484, -0.026862, 0.0153678)
            }
            Keyframe {
                frame: 14958.3
                value: Qt.vector3d(-4.13866, -0.0255407, 0.0146318)
            }
            Keyframe {
                frame: 15000
                value: Qt.vector3d(-3.98149, -0.0242482, 0.0139106)
            }
            Keyframe {
                frame: 15041.7
                value: Qt.vector3d(-3.82364, -0.0229855, 0.0132047)
            }
            Keyframe {
                frame: 15083.3
                value: Qt.vector3d(-3.66546, -0.0217537, 0.0125146)
            }
            Keyframe {
                frame: 15125
                value: Qt.vector3d(-3.50728, -0.0205535, 0.011841)
            }
            Keyframe {
                frame: 15166.7
                value: Qt.vector3d(-3.34943, -0.0193858, 0.0111842)
            }
            Keyframe {
                frame: 15208.3
                value: Qt.vector3d(-3.19226, -0.0182513, 0.0105447)
            }
            Keyframe {
                frame: 15250
                value: Qt.vector3d(-3.03608, -0.0171507, 0.00992299)
            }
            Keyframe {
                frame: 15291.7
                value: Qt.vector3d(-2.88123, -0.0160845, 0.00931938)
            }
            Keyframe {
                frame: 15333.3
                value: Qt.vector3d(-2.72802, -0.0150531, 0.00873423)
            }
            Keyframe {
                frame: 15375
                value: Qt.vector3d(-2.57678, -0.0140571, 0.00816783)
            }
            Keyframe {
                frame: 15416.7
                value: Qt.vector3d(-2.4278, -0.0130967, 0.00762044)
            }
            Keyframe {
                frame: 15458.3
                value: Qt.vector3d(-2.28137, -0.0121721, 0.0070923)
            }
            Keyframe {
                frame: 15500
                value: Qt.vector3d(-2.13779, -0.0112837, 0.00658359)
            }
            Keyframe {
                frame: 15541.7
                value: Qt.vector3d(-1.99731, -0.0104313, 0.00609445)
            }
            Keyframe {
                frame: 15583.3
                value: Qt.vector3d(-1.86021, -0.00961511, 0.00562501)
            }
            Keyframe {
                frame: 15625
                value: Qt.vector3d(-1.72673, -0.00883503, 0.00517532)
            }
            Keyframe {
                frame: 15666.7
                value: Qt.vector3d(-1.59709, -0.00809094, 0.00474544)
            }
            Keyframe {
                frame: 15708.3
                value: Qt.vector3d(-1.47152, -0.00738267, 0.00433535)
            }
            Keyframe {
                frame: 15750
                value: Qt.vector3d(-1.35022, -0.00671, 0.00394503)
            }
            Keyframe {
                frame: 15791.7
                value: Qt.vector3d(-1.23338, -0.00607263, 0.00357442)
            }
            Keyframe {
                frame: 15833.3
                value: Qt.vector3d(-1.12117, -0.00547024, 0.00322343)
            }
            Keyframe {
                frame: 15875
                value: Qt.vector3d(-1.01375, -0.00490244, 0.00289194)
            }
            Keyframe {
                frame: 15916.7
                value: Qt.vector3d(-0.91127, -0.00436882, 0.0025798)
            }
            Keyframe {
                frame: 15958.3
                value: Qt.vector3d(-0.813853, -0.00386893, 0.00228685)
            }
            Keyframe {
                frame: 16000
                value: Qt.vector3d(-0.721622, -0.00340229, 0.0020129)
            }
            Keyframe {
                frame: 16041.7
                value: Qt.vector3d(-0.634674, -0.00296837, 0.00175773)
            }
            Keyframe {
                frame: 16083.3
                value: Qt.vector3d(-0.553107, -0.00256666, 0.00152112)
            }
            Keyframe {
                frame: 16125
                value: Qt.vector3d(-0.476992, -0.0021966, 0.00130281)
            }
            Keyframe {
                frame: 16166.7
                value: Qt.vector3d(-0.4064, -0.00185762, 0.00110256)
            }
            Keyframe {
                frame: 16208.3
                value: Qt.vector3d(-0.341379, -0.00154915, 0.000920083)
            }
            Keyframe {
                frame: 16250
                value: Qt.vector3d(-0.281978, -0.0012706, 0.000755097)
            }
            Keyframe {
                frame: 16291.7
                value: Qt.vector3d(-0.228231, -0.00102136, 0.00060732)
            }
            Keyframe {
                frame: 16333.3
                value: Qt.vector3d(-0.180157, -0.000800852, 0.000476438)
            }
            Keyframe {
                frame: 16375
                value: Qt.vector3d(-0.137772, -0.000608483, 0.000362147)
            }
            Keyframe {
                frame: 16416.7
                value: Qt.vector3d(-0.101084, -0.000443635, 0.000264133)
            }
            Keyframe {
                frame: 16458.3
                value: Qt.vector3d(-0.0700888, -0.000305724, 0.000182085)
            }
            Keyframe {
                frame: 16500
                value: Qt.vector3d(-0.0447804, -0.000194179, 0.000115676)
            }
            Keyframe {
                frame: 16541.7
                value: Qt.vector3d(-0.0251428, -0.000108394, 6.4585e-05)
            }
            Keyframe {
                frame: 16583.3
                value: Qt.vector3d(-0.0111511, -4.78102e-05, 2.84939e-05)
            }
            Keyframe {
                frame: 16625
                value: Qt.vector3d(-0.00278245, -1.18615e-05, 7.07115e-06)
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(0, 0, 0)
            }
        }
    }
}
