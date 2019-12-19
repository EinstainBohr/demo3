import QtQuick3D 1.12
import QtQuick 2.12

Model {
    property alias matOpacity: suvOtherMaterial.opacity
    rotation.x: -90
    rotation.y: 90
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
    source: "meshes/SuvOther.mesh"

    DefaultMaterial {
        id: suvOtherMaterial
        diffuseMap: Texture {
            source: "maps/SuvOther.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        suvOtherMaterial
    ]
}
