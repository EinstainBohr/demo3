import QtQuick3D 1.15
import QtQuick 2.12

Model {
    property alias matOpacity: phong1SG_material.opacity
    id: lowpolyCar
    eulerRotation.x: -90
    source: "qrc:/meshes/LowPolySUV.mesh"

    DefaultMaterial {
        id: phong1SG_material
        diffuseColor: "#666666"
//        diffuseMap: Texture {
//            //source: "qrc:/maps/LowPolySUVBW.ktx" // Something wrong with the ktx?
//            source: "qrc:/maps/LowPolySUVBW.jpg"
//        }
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        phong1SG_material
    ]
}

