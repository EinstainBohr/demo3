import QtQuick3D 1.15

DefaultMaterial {
    id: materials_fr_lights_u34903
    diffuseColor: "#ffa5a5a5"
    specularReflectionMap: materials_fr_lights_u34903_u32567
    indexOfRefraction: 1.5
    specularAmount: 1
    specularRoughness: 9.41177
    opacity: 0.529031982421875
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_fr_lights_u34903_u32567
        source: "../maps/OpenfootageNET_lowerAustria01-512.hdr"
        mappingMode: Texture.Environment
    }
}
