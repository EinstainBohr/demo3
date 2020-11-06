import QtQuick3D 1.15
import QtQuick 2.15

Node {
    id: rootNode
    property Material materials
    property bool useExternalMaterial: false
    property string textureSize: "1024x1024"

    onUseExternalMaterialChanged: {
        city50.materials = useExternalMaterial
                ? [ materials,
                   materials,
                   materials,
                   materials,
                   materials,
                   materials,
                   materials,
                   materials,
                   materials,
                   materials ]
                : [ house_material,
                   power_material,
                   parts_material,
                   cockpit_material,
                   gyro_material,
                   propeller_material,
                   engine_material,
                   base_material,
                   frame_material,
                   electric_material ]
        propeller1.materials = useExternalMaterial
                ? [ materials ] : [ propeller_material ]
        propeller2.materials = useExternalMaterial
                ? [ materials ] : [ propeller_material ]
        propeller3.materials = useExternalMaterial
                ? [ materials ] : [ propeller_material ]
        propeller4.materials = useExternalMaterial
                ? [ materials ] : [ propeller_material ]
    }

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
        id: city50
        eulerRotation.x: 90
        scale: Qt.vector3d(0.2, 0.2, 0.2)
        source: "meshes/city50.mesh"

        materials: [
            house_material,
            power_material,
            parts_material,
            cockpit_material,
            gyro_material,
            propeller_material,
            engine_material,
            base_material,
            frame_material,
            electric_material
        ]
    }

    Node {
        id: rootNode_1
        scale: Qt.vector3d(0.2, 0.2, 0.2)
        property real propellerRotation: 0

        Model {
            id: propeller3
            x: -10.2263
            y: 9.04872
            z: -10.1482
            eulerRotation.x: 90

            eulerRotation.y: rootNode_1.propellerRotation
            source: "meshes/propeller.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: propeller2
            x: 10.1482
            y: 9.04872
            z: -10.2263
            eulerRotation.x: 90
            eulerRotation.y: -rootNode_1.propellerRotation
            source: "meshes/propeller.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: propeller1
            x: 10.2263
            y: 9.04872
            z: 10.1482
            eulerRotation.x: 90
            eulerRotation.y: rootNode_1.propellerRotation
            source: "meshes/propeller.mesh"
            materials: [
                propeller_material
            ]
        }

        Model {
            id: propeller4
            x: -10.1482
            y: 9.04872
            z: 10.2263
            eulerRotation.x: 90
            eulerRotation.y: -rootNode_1.propellerRotation
            source: "meshes/propeller.mesh"
            materials: [
                propeller_material
            ]
        }

        PropertyAnimation on propellerRotation {
            from: 0
            to: 180
            duration: 250
            loops: Animation.Infinite
            running: true
        }
    }
}
