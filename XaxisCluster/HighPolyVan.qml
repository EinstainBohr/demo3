import QtQuick3D 1.15
import QtQuick 2.12

Model {
    property alias matOpacity: defaultMaterial_material.opacity
    id: body_24
    eulerRotation.y: 180
    source: "meshes/HighPolyVan.mesh"

    DefaultMaterial {
        id: defaultMaterial_material
        diffuseColor: "#666666"
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        defaultMaterial_material
    ]
}
