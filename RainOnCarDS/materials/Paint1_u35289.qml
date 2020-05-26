import QtQuick3D 1.15

DefaultMaterial {
    id: materials_Paint1_u35289
    diffuseColor: "#ffff0004"
    diffuseMap: materials_Paint1_u35289_u63217
    specularReflectionMap: materials_Paint1_u35289_u31644
    specularTint: "#ff757575"
    indexOfRefraction: 1.5
    specularAmount: 0.5
    specularRoughness: 0.73027
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_Paint1_u35289_u63217
        source: "../models/Rover_001/maps/ext_AO.jpg"
        tilingModeHorizontal: Texture.Repeat
        tilingModeVertical: Texture.Repeat
        pivotU: 0.5
        pivotV: 0.5
    }

    Texture {
        id: materials_Paint1_u35289_u31644
        source: "../maps/OpenfootageNET_lowerAustria01-512.hdr"
        mappingMode: Texture.Environment
    }
}
