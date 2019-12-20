import QtQuick3D 1.12
import QtQuick 2.12

Model {
    rotation.x: -90
    rotation.y: 90
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
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
