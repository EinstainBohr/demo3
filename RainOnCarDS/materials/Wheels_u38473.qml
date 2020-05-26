import QtQuick3D 1.15

DefaultMaterial {
    id: materials_Wheels_u38473
    diffuseMap: materials_Wheels_u38473_u7774
    indexOfRefraction: 1.5
    specularAmount: 0.1
    specularRoughness: 20
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_Wheels_u38473_u7774
        source: "../maps/wheel_AO.jpg"
        tilingModeHorizontal: Texture.Repeat
        tilingModeVertical: Texture.Repeat
        pivotU: 0.5
        pivotV: 0.5
    }
}
