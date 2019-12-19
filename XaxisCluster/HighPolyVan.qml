import QtQuick3D 1.12
import QtQuick 2.12

Model {
    property alias matOpacity: defaultMaterial_material.opacity
    id: body_24
    rotation.y: 180
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
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
