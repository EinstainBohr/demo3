import QtQuick3D 1.15
import QtQuick 2.12

Model {
    id: lowpolyCar
    eulerRotation.x: -90
    source: "qrc:/meshes/LowPolySUV.mesh"

    DefaultMaterial {
        id: phong1SG_material
        diffuseMap: Texture {
            //source: "qrc:/maps/LowPolySUV.ktx" // Something wrong with the ktx?
            source: "qrc:/maps/LowPolySUV.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        phong1SG_material
    ]
}
