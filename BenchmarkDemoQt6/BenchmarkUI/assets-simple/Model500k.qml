import QtQuick3D
import QtQuick

Node {
    id: rootNode
    property Material materials
    property var instancing
    property bool useExternalMaterial: false

    DefaultMaterial {
        id: defaultMaterial
        diffuseColor: "red"
        specularAmount: 0.15
    }

    onUseExternalMaterialChanged: {
        model.materials = useExternalMaterial
                ? [ materials ] : [ defaultMaterial ]
    }

    Model {
        id: model
        source: "meshes/500k.mesh"
        instancing: rootNode.instancing
        materials: [ defaultMaterial ]
    }
}
