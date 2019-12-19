import QtQuick3D 1.12
import QtQuick 2.12

Model {
    property alias matOpacity: vanMaterial.opacity
    rotation.x: -90
    rotation.y: 90
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
    source: "meshes/Van.mesh"

    DefaultMaterial {
        id: vanMaterial
        diffuseMap: Texture {
            source: "maps/Van.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        vanMaterial
    ]
}
