import QtQuick3D 1.15

DefaultMaterial {
    id: materials_int_u43145
    diffuseMap: materials_int_u43145_u60121
    indexOfRefraction: 1.5
    specularRoughness: 9.41177
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_int_u43145_u60121
        source: "../maps/int_AO.jpg"
        tilingModeHorizontal: Texture.Repeat
        tilingModeVertical: Texture.Repeat
        pivotU: 0.5
        pivotV: 0.5
    }
}
