import QtQuick3D 1.15

DefaultMaterial {
    id: materials_chrome_u42488
    diffuseColor: "#ff666666"
    specularReflectionMap: materials_chrome_u42488_u15788
    indexOfRefraction: 1.5
    specularAmount: 1
    specularRoughness: 9.41177
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_chrome_u42488_u15788
        source: "../maps/OpenfootageNET_lowerAustria01-512.hdr"
        mappingMode: Texture.Environment
    }
}
