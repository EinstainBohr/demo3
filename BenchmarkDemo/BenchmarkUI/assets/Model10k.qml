import QtQuick3D 1.15
import QtQuick 2.15

Node {
    id: rootNode
    property Material materials
    property bool useExternalMaterial: false
    property string textureSize: "1024x1024"

    onUseExternalMaterialChanged: {
        smallMachine.materials = useExternalMaterial
                ? [ materials ] : [ smallMachine_material ]
        propeller1.materials = useExternalMaterial
                ? [ materials ] : [ smallMachine_material ]
        propeller2.materials = useExternalMaterial
                ? [ materials ] : [ smallMachine_material ]
        propeller3.materials = useExternalMaterial
                ? [ materials ] : [ smallMachine_material ]
        propeller4.materials = useExternalMaterial
                ? [ materials ] : [ smallMachine_material ]
    }

    PrincipledMaterial {
        id: smallMachine_material
        baseColorMap: Texture {
            source: "maps/" + textureSize + "/SmallMachine_Diffuse.png"
        }
        normalMap: Texture {
            source: "maps/" + textureSize + "/SmallMachine_Normal.png"
        }
        specularMap: Texture {
            source: "maps/" + textureSize + "/SmallMachine_Specular.png"
        }
        metalness: 0.2
        specularAmount: 0.25
    }

    Model {
        id: smallMachine
        source: "meshes/ship10.mesh"
        scale: Qt.vector3d(0.5, 0.5, 0.5)
        eulerRotation.x: 90

        materials: [
            smallMachine_material
        ]
    }

    Node {
        id: rootNode_1
        scale: Qt.vector3d(0.5, 0.5, 0.5)
        property real propellerRotation: 0

        Model {
            id: propeller4
            x: -6.00498
            y: 6.00003
            z: -5.01082
            eulerRotation.y: -rootNode_1.propellerRotation
            eulerRotation.x: 90
            source: "meshes/propeller_ship.mesh"
            materials: [
                smallMachine_material
            ]
        }

        Model {
            id: propeller3
            x: 5.98832
            y: 6.00002
            z: -4.99438
            eulerRotation.y: rootNode_1.propellerRotation
            eulerRotation.x: 90
            source: "meshes/propeller_ship.mesh"
            materials: [
                smallMachine_material
            ]
        }

        Model {
            id: propeller2
            x: 6.00662
            y: 6.00002
            z: 5.0125
            eulerRotation.y: -rootNode_1.propellerRotation
            eulerRotation.x: 90
            source: "meshes/propeller_ship.mesh"
            materials: [
                smallMachine_material
            ]
        }

        Model {
            id: propeller1
            x: -6.01134
            y: 6.00002
            z: 5.00359
            eulerRotation.y: rootNode_1.propellerRotation
            eulerRotation.x: 90
            source: "meshes/propeller_ship.mesh"
            materials: [
                smallMachine_material
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
