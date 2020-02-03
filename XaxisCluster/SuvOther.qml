import QtQuick3D 1.15
import QtQuick 2.12

Model {
    property alias matOpacity: suvOtherMaterial.opacity
    eulerRotation.x: -90
    eulerRotation.y: 90
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
