import QtQuick3D 1.15

DefaultMaterial {
    id: materials_Glass_u62188
    diffuseColor: "#ff000000"
    specularReflectionMap: materials_Glass_u62188_u45298
    indexOfRefraction: 1.5
    specularAmount: 1
    specularRoughness: 0.06094
    opacity: 0.66
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_Glass_u62188_u45298
        source: "../maps/OpenfootageNET_lowerAustria01-512.hdr"
        mappingMode: Texture.Environment
    }
}
