import QtQuick3D 1.15

DefaultMaterial {
    id: materials_wheel_color_u52844
    diffuseColor: "#ff7e7e7e"
    diffuseMap: materials_wheel_color_u52844_u10536
    specularReflectionMap: materials_wheel_color_u52844_u57882
    indexOfRefraction: 1.5
    specularAmount: 2
    specularRoughness: 0.47053
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_wheel_color_u52844_u10536
        source: "../maps/disc_AO.jpg"
        tilingModeHorizontal: Texture.Repeat
        tilingModeVertical: Texture.Repeat
        pivotU: 0.5
        pivotV: 0.5
    }

    Texture {
        id: materials_wheel_color_u52844_u57882
        source: "../maps/OpenfootageNET_lowerAustria01-512.hdr"
        mappingMode: Texture.Environment
    }
}
