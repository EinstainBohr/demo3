import QtQuick3D 1.15

DefaultMaterial {
    id: materials_red_lights_u60525
    diffuseColor: "#ff8f0000"
    specularReflectionMap: materials_red_lights_u60525_u64293
    indexOfRefraction: 1.5
    specularAmount: 1
    specularRoughness: 9.41177
    opacity: 0.5974029922485352
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_red_lights_u60525_u64293
        source: "../maps/OpenfootageNET_lowerAustria01-512.hdr"
        mappingMode: Texture.Environment
    }
}
