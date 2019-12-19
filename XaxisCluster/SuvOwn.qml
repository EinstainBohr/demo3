import QtQuick3D 1.12
import QtQuick 2.12

Model {
    rotation.x: -90
    rotation.y: 90
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
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
