import QtQuick3D 1.15
import QtQuick 2.12

Model {
    eulerRotation.x: -90
    eulerRotation.y: 90
    source: "meshes/MainCar.mesh"

    DefaultMaterial {
        id: mainCar_material
        diffuseMap: Texture {
            source: "maps/MainCar.jpg"
        }
        lighting: DefaultMaterial.NoLighting
    }

    DefaultMaterial {
        id: mainCar_diffuse_material
        lighting: DefaultMaterial.NoLighting
    }
    materials: [
        mainCar_material,
        mainCar_diffuse_material
    ]
}
