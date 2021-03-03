import QtQuick 2.15
import QtQuick3D 1.15
import QtQuick.Timeline 1.0
import QtQuick3D.Particles3D

Node {
    id: rangeRover
    eulerRotation.x: 90
    scale: Qt.vector3d(5, 5, 5)

    Model {
        id: body
        source: "qrc:/RangeRover/meshes/body.mesh"

        PrincipledMaterial {
            id: bottom_mat_material
            baseColor: "#ff4c4c4c"
            metalness: 0
            roughness: 0.5
        }

        PrincipledMaterial {
            id: lambert5_material
            opacity: 0.8
            specularAmount: 1.0
            baseColor: "#ff808080"
            metalness: 1.0
            roughness: 0.1
        }

        PrincipledMaterial {
            id: fr_lights_glass1_material
            opacity: 0.25
            specularAmount: 1.0
            baseColor: "#ff808080"
            metalness: 1.0
            roughness: 0
        }

        PrincipledMaterial {
            id: glass_Mat_material
            opacity: 0.75
            cullMode: Material.NoCulling
            specularAmount: 1.0
            baseColor: "#ff132341"
            metalness: 1.0
            roughness: 0
        }

        PrincipledMaterial {
            id: mesh_mat_material
            specularAmount: 1.0
            baseColor: "#ff717171"
            metalness: 0.7
            roughness: 0.2
        }

        PrincipledMaterial {
            id: ext_black_plastic_mat_material
            specularAmount: 0.2
            baseColor: "#ff4b4b4b"
            metalness: 0
            roughness: 0.6
        }

        PrincipledMaterial {
            id: black_metal_mat_material
            specularAmount: 1.0
            baseColor: "#ff3f3f3f"
            metalness: 1.0
            roughness: 0.2
        }

        PrincipledMaterial {
            id: wheels_mat_material
            specularAmount: 1.0
            metalness: 1.0
            roughness: 0.1
        }

        PrincipledMaterial {
            id: int_mat_material
            metalness: 0
            roughness: 0.5
        }

        PrincipledMaterial {
            id: seats_mat_material
            baseColor: "#ffffedd3"
            metalness: 0
            roughness: 0.5
        }

        PrincipledMaterial {
            id: lights_mat_material
            opacity: 0.75
            specularAmount: 1.0
            baseColor: "#ff808080"
            metalness: 0.5
            roughness: 0
        }

        PrincipledMaterial {
            id: red_lights_mat_material
            opacity: 0.6
            specularAmount: 0.75
            baseColor: "#ffb30000"
            metalness: 0.5
            roughness: 0.2
        }

        PrincipledMaterial {
            id: number_mat_material
            metalness: 0.5
            roughness: 0.5
        }

        PrincipledMaterial {
            id: chrome_mat_material
            specularAmount: 1.0
            baseColor: "#ff808080"
            metalness: 1.0
            roughness: 0
        }

        PrincipledMaterial {
            id: roof_mat_material
            specularAmount: 0.5
            baseColor: "#ff808080"
            metalness: 0.5
            roughness: 0.5
        }

        PrincipledMaterial {
            id: logo_mat_material
            metalness: 0.5
            roughness: 0.5
        }

        PrincipledMaterial {
            id: paint1_mat_material
            specularAmount: 1.0
            baseColor: "#ffff0c0a"
            metalness: 0.5
            roughness: 0.1
        }

        PrincipledMaterial {
            id: mirror_mat_material
            specularAmount: 1.0
            baseColor: "#ff808080"
            metalness: 1.0
            roughness: 0
        }

        PrincipledMaterial {
            id: door_light_ma_material
            specularAmount: 1.0
            baseColor: "#e57644"
            metalness: 0.2
            roughness: 0
        }
        materials: [
            bottom_mat_material,
            lambert5_material,
            fr_lights_glass1_material,
            glass_Mat_material,
            mesh_mat_material,
            ext_black_plastic_mat_material,
            black_metal_mat_material,
            wheels_mat_material,
            int_mat_material,
            seats_mat_material,
            lights_mat_material,
            red_lights_mat_material,
            number_mat_material,
            chrome_mat_material,
            roof_mat_material,
            logo_mat_material,
            paint1_mat_material,
            mirror_mat_material,
            door_light_ma_material
        ]
    }

    ParticleSystem3D {
        id: psystem

        property real dustEmitRate: 0
        property real smokeEmitRate: 0

        SpriteParticle3D {
            id: smokeParticle
            sprite: Texture {
                source: "../images/smoke_sprite.png"
            }
            maxAmount: 50
            frameCount: 15
            interpolate: true
            blendMode: SpriteParticle3D.Screen
            color: "#ffffff"
            colorVariation: Qt.vector4d(0.0, 0.0, 0.0, 0.8)
            fadeInEffect: Particle3D.FadeScale
            fadeInDuration: 100
            fadeOutEffect: Particle3D.FadeOpacity
            fadeOutDuration: 1500
        }

        ParticleEmitter3D {
            id: smokeEmitterFL
            particle: smokeParticle
            position: Qt.vector3d(wheelFL.position.x-1, wheelFL.position.y-2, wheelFL.position.z+1)
            particleScale: 15
            particleScaleVariation: 8
            particleEndScale: 40
            particleRotation: Qt.vector3d(0, 45, 0)
            particleRotationVariation: Qt.vector3d(0, 0, 180)
            particleRotationVelocityVariation: Qt.vector3d(0, 0, 40)
            emitRate: psystem.smokeEmitRate
            lifeSpan: 1500
            lifeSpanVariation: 1000
            velocity: VectorDirection3D {
                direction: Qt.vector3d(0, 10, -6)
                directionVariation: Qt.vector3d(0, 5, 2)
            }
        }

        ParticleEmitter3D {
            id: smokeEmitterRL
            particle: smokeParticle
            position: Qt.vector3d(wheelRL.position.x-1, wheelRL.position.y-2, wheelRL.position.z+1)
            particleScale: 15
            particleScaleVariation: 8
            particleEndScale: 40
            particleRotation: Qt.vector3d(0, 45, 0)
            particleRotationVariation: Qt.vector3d(0, 0, 180)
            particleRotationVelocityVariation: Qt.vector3d(0, 0, 40)
            emitRate: psystem.smokeEmitRate
            lifeSpan: 1500
            lifeSpanVariation: 1000
            velocity: VectorDirection3D {
                direction: Qt.vector3d(0, 10, -6)
                directionVariation: Qt.vector3d(0, 5, 2)
            }
        }

        SpriteParticle3D {
            id: dustParticle
            sprite: Texture {
                source: "../images/dust.png"
            }
            maxAmount: 2000
            color: "#ffffff"
            colorVariation: Qt.vector4d(0.2, 0.2, 0.2, 0.2)
            unifiedColorVariation: true
            billboard: true
            fadeInDuration: 0
            fadeOutDuration: 500
            fadeInEffect: SpriteParticle3D.FadeScale
            fadeOutEffect: SpriteParticle3D.FadeOpacity
        }

        ParticleEmitter3D {
            id: dustEmitterFL
            particle: dustParticle
            position: Qt.vector3d(wheelFL.position.x+0, wheelFL.position.y-2, wheelFL.position.z+4)
            emitRate: psystem.dustEmitRate
            lifeSpan: 1000
            lifeSpanVariation: 800
            particleScale: 0.1
            particleEndScale: 8.0
            particleScaleVariation: 1.0
            particleRotationVariation: Qt.vector3d(40, 40, 180)
            particleRotationVelocityVariation: Qt.vector3d(0, 0, 100)
            velocity: VectorDirection3D {
                direction: Qt.vector3d(0, 1 + psystem.dustEmitRate * 0.06, -6)
            }
        }
        ParticleEmitter3D {
            id: dustEmitterRL
            particle: dustParticle
            position: Qt.vector3d(wheelRL.position.x+0, wheelRL.position.y-2, wheelRL.position.z+4)
            emitRate: psystem.dustEmitRate
            lifeSpan: 1000
            lifeSpanVariation: 800
            particleScale: 0.1
            particleEndScale: 8.0
            particleScaleVariation: 1.0
            particleRotationVariation: Qt.vector3d(40, 40, 180)
            particleRotationVelocityVariation: Qt.vector3d(0, 0, 100)
            velocity: VectorDirection3D {
                direction: Qt.vector3d(0, 1 + psystem.dustEmitRate * 0.06, -8)
            }
        }

        Gravity3D {
            id: gravity
            direction: Qt.vector3d(0, 0, 1)
            magnitude: 4.0
        }

        Wander3D {
            uniqueAmount: Qt.vector3d(0, 1.0, 1.0)
            uniqueAmountVariation: 0.8
            uniquePace: Qt.vector3d(0.0, 0.5, 0.5)
            uniquePaceVariation: 0.8
        }
    }

    Node {
        id: wheels

        Model {
            id: wheelFL
            x: -9.25133
            y: -16.7501
            z: -4.05908
            source: "qrc:/RangeRover/meshes/wheelLeft.mesh"

            PrincipledMaterial {
                id: wheel_shadow_mat_material
                specularAmount: 1.0
                baseColor: "#000000"
                metalness: 0
                roughness: 0.5
            }

            PrincipledMaterial {
                id: wheel_color_mat_material
                specularAmount: 1.0
                baseColor: "#193148"
                metalness: 0.8
            }

            PrincipledMaterial {
                id: tires_mat_material
                specularAmount: 1.0
                baseColor: "#c2c2c2"
                metalness: 1.0
            }
            materials: [
                wheels_mat_material,
                wheel_shadow_mat_material,
                wheel_color_mat_material,
                tires_mat_material
            ]
        }

        Model {
            id: wheelFR
            x: 9.25136
            y: -16.7501
            z: -4.05908
            source: "qrc:/RangeRover/meshes/wheelRight.mesh"
            materials: [
                wheels_mat_material,
                wheel_shadow_mat_material,
                wheel_color_mat_material,
                tires_mat_material
            ]
        }

        Model {
            id: wheelRL
            x: -9.25136
            y: 14.2499
            z: -4.05908
            source: "qrc:/RangeRover/meshes/wheelLeft.mesh"
            materials: [
                wheels_mat_material,
                wheel_shadow_mat_material,
                wheel_color_mat_material,
                tires_mat_material
            ]
        }

        Model {
            id: wheelRR
            x: 9.25136
            y: 14.2499
            z: -4.05908
            source: "qrc:/RangeRover/meshes/wheelRight.mesh"
            materials: [
                wheels_mat_material,
                wheel_shadow_mat_material,
                wheel_color_mat_material,
                tires_mat_material
            ]
        }
    }

    Timeline {
        id: timeline_car
        animations: [
            TimelineAnimation {
                id: timelineAnimation_car
                running: true
                loops: 1
                duration: 40000
                to: 1800
                from: 0
            }
        ]
        enabled: true
        endFrame: 1800
        startFrame: 0

        KeyframeGroup {
            target: wheelFL
            property: "eulerRotation.x"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 400
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 800
                value: -18000
            }

            Keyframe {
                frame: 1800
                value: -54000
            }
        }

        KeyframeGroup {
            target: wheelFR
            property: "eulerRotation.x"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 400
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 800
                value: -18000
            }

            Keyframe {
                frame: 1800
                value: -54000
            }
        }

        KeyframeGroup {
            target: wheelRL
            property: "eulerRotation.x"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 400
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 800
                value: -18000
            }

            Keyframe {
                frame: 1800
                value: -54000
            }
        }

        KeyframeGroup {
            target: wheelRR
            property: "eulerRotation.x"
            Keyframe {
                frame: 0
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 400
                value: 0
            }

            Keyframe {
                easing.bezierCurve: [0.55,0.055,0.675,0.19,1,1]
                frame: 800
                value: -18000
            }

            Keyframe {
                frame: 1800
                value: -54000
            }
        }
        KeyframeGroup {
            target: psystem
            property: "dustEmitRate"
            Keyframe {
                frame: 0
                value: 0
            }
            Keyframe {
                frame: 360
                value: 0
            }
            Keyframe {
                frame: 450
                value: 200
            }
            Keyframe {
                frame: 700
                value: 200
            }
            Keyframe {
                frame: 800
                value: 500
            }
            Keyframe {
                frame: 1800
                value: 0
            }
        }
        KeyframeGroup {
            target: dustParticle
            property: "color"
            Keyframe {
                frame: 0
                value: "#ffffff"
            }
            Keyframe {
                frame: 1000
                value: "#ffffff"
            }
            Keyframe {
                frame: 1100
                value: "lightblue"
            }
            Keyframe {
                frame: 1400
                value: "lightblue"
            }
            Keyframe {
                frame: 1500
                value: "#222222"
            }
        }
        KeyframeGroup {
            target: dustParticle
            property: "particleScale"
            Keyframe {
                frame: 0
                value: 8.0
            }
            Keyframe {
                frame: 900
                value: 8.0
            }
            Keyframe {
                frame: 1100
                value: 4.0
            }
            Keyframe {
                frame: 1400
                value: 4.0
            }
            Keyframe {
                frame: 1600
                value: 8.0
            }
        }
        KeyframeGroup {
            target: psystem
            property: "smokeEmitRate"
            Keyframe {
                frame: 0
                value: 0
            }
            Keyframe {
                frame: 1550
                value: 0
            }
            Keyframe {
                frame: 1600
                value: 10
            }
            Keyframe {
                frame: 1800
                value: 0
            }
        }
        KeyframeGroup {
            target: gravity
            property: "magnitude"
            Keyframe {
                frame: 0
                value: 4.0
            }
            Keyframe {
                frame: 900
                value: 4.0
            }
            Keyframe {
                frame: 1100
                value: 8.0
            }
        }
    }
}
