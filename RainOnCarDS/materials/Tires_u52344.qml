import QtQuick3D 1.15

DefaultMaterial {
    id: materials_tires_u52344
    diffuseColor: "#ff373737"
    indexOfRefraction: 1.5
    specularRoughness: 9.41177
    bumpAmount: 1
    normalMap: materials_tires_u52344_u24383
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_tires_u52344_u24383
        source: "../maps/tires_bump.jpg"
    }
}
