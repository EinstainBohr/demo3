import QtQuick
import QtQuick3D
Node {
    id: cockpit

    PrincipledMaterial {
        id: gaugecombo_material
        baseColorMap: Texture {
            source: "maps/gaugecombo/Multigauges_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/gaugecombo/Multigauges_Normal.png"
        }
        metalnessMap: Texture {
            source: "maps/gaugecombo/Multigauges_Metalness.png"
        }
        roughnessMap: Texture {
            source: "maps/gaugecombo/Multigauges_Roughness.png"
        }
        roughness: 1.0
        metalness: 1.0
    }

    PrincipledMaterial {
        id: gauge_material
        baseColorMap: Texture {
            source: "maps/gauge/gauge_Albedo_rpm0.png"
        }
        normalMap: Texture {
            source: "maps/gauge/gauge_Normal.png"
        }
        metalnessMap: Texture {
            source: "maps/gauge/gauge_Metalness.png"
        }
        roughnessMap: Texture {
            source: "maps/gauge/gauge_Roughness.png"
        }
        roughness: 1.0
        metalness: 1.0
    }

    PrincipledMaterial {
        id: base_material
        baseColorMap: Texture {
            source: "maps/cockpitInterior/finalcockpit_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/cockpitInterior/finalcockpit_Normal.png"
        }
        metalnessMap: Texture {
            source: "maps/cockpitInterior/finalcockpit_Metalness.png"
        }
        roughnessMap: Texture {
            source: "maps/cockpitInterior/finalcockpit_Roughness.png"
        }
        roughness: 1.0
        metalness: 1.0
    }

    PrincipledMaterial {
        id: smallgauge_heading_material
        baseColorMap: Texture {
            // To be changed
            source: "maps/gaugecombo/Multigauges_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/gaugecombo/Multigauges_Normal.png"
        }
        metalnessMap: Texture {
            source: "maps/gaugecombo/Multigauges_Metalness.png"
        }
        roughnessMap: Texture {
            source: "maps/gaugecombo/Multigauges_Roughness.png"
        }
        roughness: 1.0
        metalness: 1.0
    }

    PrincipledMaterial {
        id: smallgauge_bank_material
        baseColorMap: Texture {
            // To be changed
            source: "maps/gaugecombo/Multigauges_Albedo.png"
        }
        normalMap: Texture {
            source: "maps/gaugecombo/Multigauges_Normal.png"
        }
        metalnessMap: Texture {
            source: "maps/gaugecombo/Multigauges_Metalness.png"
        }
        roughnessMap: Texture {
            source: "maps/gaugecombo/Multigauges_Roughness.png"
        }
        roughness: 1.0
        metalness: 1.0
    }

    PrincipledMaterial {
        id: window_material
        metalness: 0.5
        roughness: 0.3
        opacity: 0.2
        baseColorMap: Texture {
            source: "maps/cockpitInterior/windows.png"
        }
        normalMap: Texture {
            source: "maps/cockpitInterior/windows_Normal.png"
        }
    }

    PrincipledMaterial {
        id: lamp_warn_material
        metalness: 1.0
        roughness: 0.3
        opacity: 0.7
        baseColor: "red"
        emissiveColor: "red"
    }

    PrincipledMaterial {
        id: lamp_ok_material
        metalness: 1.0
        roughness: 0.3
        opacity: 0.7
        baseColor: "green"
        emissiveColor: "green"
    }

    PrincipledMaterial {
        id: lamp_off_material
        metalness: 1.0
        roughness: 0.3
        opacity: 0.2
        baseColor: "gray"
    }

    // Base
    Model {
        id: base
        source: "meshes/base.mesh"
        materials: [
            base_material
        ]
    }

    // RPM gauges
    Model {
        id: bigGauge_RearLeftEngine
        x: -5.65119
        y: 9.82176
        z: -1.30879
        rotation: Qt.quaternion(0.917134, 0.39858, 0, 0)
        source: "meshes/bigGauge.mesh"
        materials: [
            gauge_material
        ]
    }
    Node {
        eulerRotation.x: 250
        x: -5.66712
        y: 10.1075
        z: -0.197026

        Model {
            id: gaugeNeedle_RearLeftEngine
            eulerRotation.y: -camera.eulerRotation.x - camera.eulerRotation.z
                             - (camera.eulerRotation.y / 10) + 45
            source: "meshes/gaugeNeedle0.mesh"
            materials: [
                gauge_material
            ]
        }
    }

    Model {
        id: bigGauge_FrontLeftEngine
        x: -2.93144
        y: 9.82176
        z: -1.30879
        rotation: Qt.quaternion(0.917134, 0.39858, 0, 0)
        source: "meshes/bigGauge.mesh"
        materials: [
            gauge_material
        ]
    }
    Node {
        eulerRotation.x: 250
        x: -2.94737
        y: 10.1075
        z: -0.197026

        Model {
            id: gaugeNeedle_FrontLeftEngine
            eulerRotation.y: camera.eulerRotation.x - camera.eulerRotation.z
                             + (camera.eulerRotation.y / 10) + 45
            source: "meshes/gaugeNeedle0.mesh"
            materials: [
                gauge_material
            ]
        }
    }

    Model {
        id: bigGauge_FrontRightEngine
        x: 2.91549
        y: 9.82176
        z: -1.30879
        rotation: Qt.quaternion(0.917134, 0.39858, 0, 0)
        source: "meshes/bigGauge.mesh"
        materials: [
            gauge_material
        ]
    }
    Node {
        eulerRotation.x: 250
        x: 2.89956
        y: 10.1075
        z: -0.197026

        Model {
            id: gaugeNeedle_FrontRightEngine
            eulerRotation.y: camera.eulerRotation.x + camera.eulerRotation.z
                             - (camera.eulerRotation.y / 10) + 45
            source: "meshes/gaugeNeedle0.mesh"
            materials: [
                gauge_material
            ]
        }
    }

    Model {
        id: bigGauge_RearRightEngine
        x: 5.63524
        y: 9.82176
        z: -1.30879
        rotation: Qt.quaternion(0.917134, 0.39858, 0, 0)
        source: "meshes/bigGauge.mesh"
        materials: [
            gauge_material
        ]
    }
    Node {
        eulerRotation.x: 250
        x: 5.6193
        y: 10.1075
        z: -0.197026

        Model {
            id: gaugeNeedle_RearRightEngine
            eulerRotation.y: -camera.eulerRotation.x + camera.eulerRotation.z
                             + (camera.eulerRotation.y / 10) + 45
            source: "meshes/gaugeNeedle0.mesh"
            materials: [
                gauge_material
            ]
        }
    }

    // Small gauges; heading & bank
    Model {
        id: gauge_heading
        x: -1.41437
        y: 6.26922
        z: 0.628698
        rotation: Qt.quaternion(0.971193, 0.238295, 0, 0)
        source: "meshes/gauge1.mesh"
        materials: [
            smallgauge_heading_material
        ]
    }
    Node {
        eulerRotation.x: 27.7
        x: -1.41723
        y: 6.36183
        z: 0.677256

        Model {
            id: smallGaugeneedle_Heading
            eulerRotation.y: camera.eulerRotation.y
            source: "meshes/smallGaugeneedle1.mesh"
            materials: [
                gaugecombo_material
            ]
        }
    }

    Model {
        id: gauge_bank
        x: 0.344403
        y: 6.26922
        z: 0.628698
        rotation: Qt.quaternion(0.971193, 0.238295, 0, 0)
        source: "meshes/gauge1.mesh"
        materials: [
            smallgauge_bank_material
        ]
    }
    Node {
        eulerRotation.x: 27.7
        x: 0.32572
        y: 6.36183
        z: 0.677256

        Model {
            id: smallGaugeneedle_Bank
            eulerRotation.y: -Math.max(Math.abs(camera.eulerRotation.x),
                                       Math.abs(camera.eulerRotation.z)) * 4 // 90 degrees would give 360
            source: "meshes/smallGaugeneedle1.mesh"

            materials: [
                gaugecombo_material
            ]
        }
    }

    // Compass
    Model {
        id: compassBall
        x: -3.91548
        y: 6.4
        z: 0.580916
        eulerRotation.x: camera.eulerRotation.z
        eulerRotation.y: -camera.eulerRotation.y
        eulerRotation.z: -camera.eulerRotation.x
        source: "meshes/compassBall.mesh"
        materials: [
            gaugecombo_material
        ]
    }

    // Switches
    Model {
        id: switchbase
        x: -1.73613
        y: 7.14017
        z: -1.03927
        rotation: Qt.quaternion(0.971193, 0.238295, 0, 0)
        source: "meshes/switchbase.mesh"
        materials: [
            gaugecombo_material
        ]
    }
    Model {
        id: switch_001
        x: -2.60414
        y: 7.18336
        z: -1.03541
        rotation: (camera.eulerRotation.x + camera.eulerRotation.z) < 0
                  ? Qt.quaternion(0.994218, -0.107383, 0, 0)
                  : Qt.quaternion(0.82771, 0.561156, 0, 0)
        source: "meshes/switch.mesh"
        materials: [
            gaugecombo_material
        ]
    }
    Model {
        id: switch_002
        x: -3.46272
        y: 7.18336
        z: -1.03541
        rotation: camera.eulerRotation.z < 0 ? Qt.quaternion(0.994218, -0.107383, 0, 0)
                                             : Qt.quaternion(0.82771, 0.561156, 0, 0)
        source: "meshes/switch.mesh"
        materials: [
            gaugecombo_material
        ]
    }
    Model {
        id: switch_003
        x: -4.2729
        y: 7.18336
        z: -1.03541
        rotation: camera.eulerRotation.x > -20 ? Qt.quaternion(0.994218, -0.107383, 0, 0)
                                               : Qt.quaternion(0.82771, 0.561156, 0, 0)
        source: "meshes/switch.mesh"
        materials: [
            gaugecombo_material
        ]
    }
    Model {
        id: switch_004
        x: -1.73304
        y: 7.18336
        z: -1.03541
        rotation: camera.eulerRotation.y < 0 ? Qt.quaternion(0.994218, -0.107383, 0, 0)
                                             : Qt.quaternion(0.82771, 0.561156, 0, 0)
        source: "meshes/switch.mesh"
        materials: [
            gaugecombo_material
        ]
    }

    // Windows
    Model {
        id: windows
        source: "meshes/windows.mesh"

        materials: [
            window_material
        ]
    }

    // Lamps
    property bool leftWarn: ((gaugeNeedle_RearRightEngine.eulerRotation.y < -25)
                             || (gaugeNeedle_RearLeftEngine.eulerRotation.y < -25)
                             || (gaugeNeedle_FrontRightEngine.eulerRotation.y < -25)
                             || (gaugeNeedle_FrontLeftEngine.eulerRotation.y < -25));
    property bool rightWarn: Math.abs(smallGaugeneedle_Bank.eulerRotation.y) > 90;

    Model {
        id: lampLeft
        x: 3.24831
        y: 7.07789
        z: -0.444125
        eulerRotation.x: -63.2943
        scale.x: 0.2
        scale.z: 0.2
        source: "meshes/lamp.mesh"

        materials: [
            leftWarn ? lamp_warn_material : lamp_off_material
        ]
    }

    Model {
        id: lampMiddle
        x: 4.232
        y: 7.07789
        z: -0.444125
        eulerRotation.x: -63.2943
        scale.x: 0.2
        scale.z: 0.2
        source: "meshes/lamp.mesh"

        materials: [
            (leftWarn && rightWarn) ? lamp_warn_material
                                    : ((!leftWarn && !rightWarn)
                                       ? lamp_ok_material
                                       : lamp_off_material)
        ]
    }

    Model {
        id: lampRight
        x: 5.20684
        y: 7.07789
        z: -0.444125
        eulerRotation.x: -63.2943
        scale.x: 0.2
        scale.z: 0.2
        source: "meshes/lamp.mesh"

        materials: [
            rightWarn ? lamp_warn_material : lamp_off_material
        ]
    }
}
