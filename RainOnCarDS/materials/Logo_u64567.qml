import QtQuick3D 1.15

DefaultMaterial {
    id: materials_logo_u64567
    diffuseMap: materials_logo_u64567_u43160
    indexOfRefraction: 1.5
    specularRoughness: 9.41177
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_logo_u64567_u43160
        source: "../maps/logo.jpg"
        tilingModeHorizontal: Texture.Repeat
        tilingModeVertical: Texture.Repeat
        pivotU: 0.5
        pivotV: 0.5
    }
}
