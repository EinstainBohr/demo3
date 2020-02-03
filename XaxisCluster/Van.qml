import QtQuick3D 1.15
import QtQuick 2.12

Model {
    property alias matOpacity: vanMaterial.opacity
    eulerRotation.x: -90
    eulerRotation.y: 90
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
