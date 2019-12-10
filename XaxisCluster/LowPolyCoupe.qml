import QtQuick3D 1.12
import QtQuick 2.12
import QtQuick.Timeline 1.0

Model {
    property alias matOpacity: lowpolyCoupe.opacity
    position.y: -50
    rotation.y: 180
    rotationOrder: Node.XYZr
    orientation: Node.RightHanded
    source: "qrc:/models/lowPolyCar/meshes/polySurface3.mesh"

    DefaultMaterial {
        id: lowpolyCoupe
        lighting: DefaultMaterial.NoLighting
        diffuseMap: Texture {
            //source: "qrc:/models/lowPolyCar/maps/Low_lowpolyCoupe_Diffuse.ktx" // Something wrong with the ktx?
            source: "qrc:/models/lowPolyCar/maps/Low_lowpolyCoupe_Diffuse.jpg"
            tilingModeHorizontal: Texture.Repeat
            tilingModeVertical: Texture.Repeat
            pivotU: 0.5
            pivotV: 0.5
        }
    }

    materials: [lowpolyCoupe]
}
