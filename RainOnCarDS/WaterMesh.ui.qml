import QtQuick3D 1.15
import QtQuick 2.15
import QtQuick.Timeline 1.0

Model {
    id: waterMesh
    position.x: -7
    position.y: -5
    position.z: -6
    eulerRotation.y: 125
    scale.x: 0.0405
    scale.y: 0.0405
    scale.z: 0.0405
    source: "../models/WaterMeshRover/meshes/polySurface1.mesh"

    DefaultMaterial {
        id: waterMaterial
        opacity: 0.25
        diffuseMap: rainTexture

        Texture {
            id: rainTexture
            positionV: 1
            source: "rain.png"
            scaleU: 8
            scaleV: 10
            tilingModeHorizontal: Texture.Repeat
            tilingModeVertical: Texture.Repeat
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                loops: -1
                to: 1000
                duration: 2500
                from: 0
                running: viewSettingsPanel.demoActive
            }
        ]
        enabled: true
        startFrame: 0
        endFrame: 1000

        KeyframeGroup {
            target: rainTexture
            property: "positionV"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                frame: 1000
                value: 1
            }
        }
    }
    materials: [waterMaterial]
}

/*##^##
Designer {
    D{i:0;3d-active-scene:0}D{i:3}
}
##^##*/

