import QtQuick3D 1.12
import QtQuick 2.12

Model {
    property alias matOpacity: phong1SG_material.opacity
    id: lowpolyCar
    rotation.x: -90
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
    source: "qrc:/meshes/lowpolyCar.mesh"

    DefaultMaterial {
        id: phong1SG_material
        diffuseMap: Texture {
            //source: "qrc:/maps/LowPolySUVBW.ktx" // Something wrong with the ktx?
            source: "qrc:/maps/LowPolySUVBW.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        phong1SG_material
    ]
}

