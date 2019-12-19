import QtQuick3D 1.12
import QtQuick 2.12

Model {
    id: lowpolyCar2_002
    property alias matOpacity: material_005_material.opacity
    rotation.x: -90
    rotation.y: 90
    scale.x: 100
    scale.y: 100
    scale.z: 100
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
    source: "meshes/SuvOther.mesh"

    DefaultMaterial {
        id: material_005_material
        diffuseMap: Texture {
            source: "maps/SuvOther.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        material_005_material
    ]
}
