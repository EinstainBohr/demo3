import QtQuick3D 1.15
import QtQuick 2.15

Node {
    id: rootNode
    property Material materials
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
        materials: [ defaultMaterial ]
    }
}
