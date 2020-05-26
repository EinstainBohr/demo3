import QtQuick3D 1.15

DefaultMaterial {
    id: materials_lights_u24593
    diffuseColor: "#ff666666"
    diffuseMap: materials_lights_u24593_u59641
    indexOfRefraction: 1.5
    specularRoughness: 9.41177
    bumpAmount: 0.5
    translucentFalloff: 1
    displacementAmount: 20

    Texture {
        id: materials_lights_u24593_u59641
        source: "../maps/lights_AO.jpg"
    }
}
