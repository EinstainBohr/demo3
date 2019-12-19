import QtQuick3D 1.12
import QtQuick 2.12

Model {
    id: pCylinder6
    property alias matOpacity: blinn1SG_material.opacity
    rotation.x: -90
    rotation.y: 90
    scale.x: 100
    scale.y: 100
    scale.z: 100
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
    source: "meshes/Van.mesh"

    DefaultMaterial {
        id: blinn1SG_material
        diffuseMap: Texture {
            source: "maps/Van.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        blinn1SG_material
    ]
}
