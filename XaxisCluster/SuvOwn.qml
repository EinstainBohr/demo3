import QtQuick3D 1.15
import QtQuick 2.12

Model {
    eulerRotation.x: -90
    eulerRotation.y: 90
    source: "meshes/SuvOwn.mesh"

    DefaultMaterial {
        id: suvOwnMaterial
        diffuseMap: Texture {
            source: "maps/SuvOwn.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        suvOwnMaterial
    ]
}
