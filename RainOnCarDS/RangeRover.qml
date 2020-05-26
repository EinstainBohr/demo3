import QtQuick3D 1.15
import QtQuick 2.15
import "./materials"

Node {
    id: rover_u41958
    property alias carPaint: paint1_u48499.diffuseColor
    position.x: -7
    position.y: -5
    position.z: -6
    eulerRotation.y: 125
    scale.x: 0.04
    scale.y: 0.04
    scale.z: 0.04
    
    Model {
        id: tire_001_u28978
        x: -0
        y: -0
        pickable: false
        z: 1035.32
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "models/Rover_001/meshes/tire.001.mesh"
        edgeTessellation: 4
        innerTessellation: 4

        Tires_u52344 {
            id: tires_u14204
        }

        Wheel_color_u52844 {
            id: wheel_color_u39140
        }

        Wheels_u38473 {
            id: wheels_u23122
        }
        materials: [tires_u14204, wheel_color_u39140, wheels_u23122]
    }
    
    Model {
        id: interior_u13541
        pickable: false
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "models/Rover_001/meshes/interior.mesh"
        edgeTessellation: 4
        innerTessellation: 4

        Int_u43145 {
            id: int_u56858
        }

        Lambert52_u7360 {
            id: lambert52_u59704
        }

        Bottom_u49188 {
            id: bottom_u18562
        }

        Mesh_u62029 {
            id: mesh_u8619
        }

        Ext_black_plastic_u18956 {
            id: ext_black_plastic_u58287
        }

        Black_metal_u58683 {
            id: black_metal_u25291
        }

        Seats_u41022 {
            id: seats_u54980
        }

        Lights_u24593 {
            id: lights_u11463
        }

        Chrome_u42488 {
            id: chrome_u4517
        }

        Roof_u9618 {
            id: roof_u12457
        }

        Logo_u64567 {
            id: logo_u40331
        }

        Paint1_u35289 {
            id: paint1_u48499
        }

        Mirror_u20770 {
            id: mirror_u7469
        }

        Door_light_u33841 {
            id: door_light_u63367
        }
        materials: [int_u56858, lambert52_u59704, bottom_u18562, mesh_u8619, ext_black_plastic_u58287, black_metal_u25291, seats_u54980, lights_u11463, chrome_u4517, roof_u12457, logo_u40331, paint1_u48499, mirror_u7469, door_light_u63367]
    }
    
    Model {
        id: back_lights_u5559
        pickable: false
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "models/Rover_001/meshes/back_lights_glass.mesh"
        edgeTessellation: 4
        innerTessellation: 4

        Red_lights_u60525 {
            id: red_lights_u5391
        }

        Fr_lights_u34903 {
            id: fr_lights_u64406
        }

        Glass_u62188 {
            id: glass_u57994
        }
        materials: [red_lights_u5391, fr_lights_u64406, glass_u57994]
    }
}

/*##^##
Designer {
    D{i:0;3d-active-scene:0}
}
##^##*/
