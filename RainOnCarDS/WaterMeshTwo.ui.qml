import QtQuick3D 1.15
import QtQuick 2.15
import QtQuick.Timeline 1.0

Model {
    id: waterMesh2
    position.x: -7
    position.y: -5
    position.z: -6
    eulerRotation.y: 125
    scale.x: 0.0405
    scale.y: 0.0405
    scale.z: 0.0405
    source: "models/WaterMeshRover/meshes/polySurface1.mesh"

    DefaultMaterial {
        id: rainMaterial2
        opacity: 0.25
        diffuseMap: rainTexture2

        Texture {
            id: rainTexture2
            positionV: 1
            source: "rain.png"
            scaleU: 0.01
            scaleV: 1
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
                duration: 5000
                from: 0
                running: viewSettingsPanel.demoActive
            }
        ]
        enabled: true
        startFrame: 0
        endFrame: 1000

        KeyframeGroup {
            target: rainTexture2
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
    materials: [rainMaterial2]
}

/*##^##
Designer {
    D{i:0;3d-active-scene:0}D{i:3}
}
##^##*/

