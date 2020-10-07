import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick3D 1.15
import QtQuick3D.Helpers 1.15
import QtQuick3D.Effects 1.15
import QtQuick.Layouts 1.3
import QtQuick.Timeline 1.0

Item {
    id: benchmarkRoot
    anchors.fill: parent
    visible: false

    property alias androidMode: commands.androidMode

    property var effectList: []
    property string baseColorImage: "qrc:/maps/" + textureSize + "/basecolor.jpg"
    property string metalnessImage: "qrc:/maps/" + textureSize + "/metallic.jpg"
    property string roughnessImage: "qrc:/maps/" + textureSize + "/roughness.jpg"
    property string normalImage: "qrc:/maps/" + textureSize + "/normal.jpg"
    property string iblImage: "qrc:/BenchmarkUI/lightprobe/IBL.hdr"
    property string textureSize: "1024x1024"

    // Additional properties to control from commandlineparser
    property alias aoEnabled: aoCB.checked
    property alias skyboxEnabled: skyboxCB.checked
    property alias iblEnabled: iblLighting.checked
    property alias shadowsEnabled: shadows.checked
    property alias texturesEnabled: textures.checked
    property alias textureSizeIndex: textureSizeCB.currentIndex
    property alias materialIndex: materialsCB.currentIndex
    property alias msaaQualityIndex: multisampleAACB.currentIndex
    property alias modelIndex: modelCB.currentIndex
    property alias modelInstanceCount: modelCount.text
    property alias lightTypeIndex: lightTypeCB.currentIndex
    property alias lightInstanceCount: lightCount.value

    AdditiveColorGradient {
        id: effectInstanceAdditiveColorGradient
    }

    Blur {
        id: effectInstanceBlur
        amount: 0.002
    }

    BrushStrokes {
        id: effectInstanceBrushStrokes
    }

    ChromaticAberration {
        id: effectInstanceChromaticAberration
    }

    ColorMaster {
        id: effectInstanceColorMaster
    }

    DepthOfFieldHQBlur {
        id: effectInstanceDepthOfFieldHQBlur
        blurAmount: 8
        focusDistance: 200
        focusRange: 200
    }

    Desaturate {
        id: effectInstanceDesaturate
    }

    DistortionRipple {
        id: effectInstanceDistortionRipple
    }

    DistortionSphere {
        id: effectInstanceDistortionSphere
    }

    DistortionSpiral {
        id: effectInstanceDistortionSpiral
    }

    EdgeDetect {
        id: effectInstanceEdgeDetect
    }

    Emboss {
        id: effectInstanceEmboss
    }

    Flip {
        id: effectInstanceFlip
    }

    Fxaa {
        id: effectInstanceFXAA
    }

    GaussianBlur {
        id: effectInstanceGaussianBlur
    }

    HDRBloomTonemap {
        id: effectInstanceHDRBloomTonemap
    }

    MotionBlur {
        id: effectInstanceMotionBlur
        fadeAmount: 0.4
        blurQuality: 0.5
    }

    Scatter {
        id: effectInstanceScatter
    }

    SCurveTonemap {
        id: effectInstanceSCurveTonemap
    }

    TiltShift {
        id: effectInstanceTiltShift
        focusPosition: 0.1
    }

    Vignette {
        id: effectInstanceVignette
    }

    DefaultMaterial {
        id: matDefaultTextured
        diffuseMap: Texture {
            source: baseColorImage
        }
        bumpMap: Texture {
            source: normalImage
        }
        specularMap: Texture {
            source: roughnessImage
        }
        bumpAmount: 1.0
        specularAmount: 0.25
    }

    DefaultMaterial {
        id: matDefault
        diffuseColor: "red"
        specularAmount: 0.5
    }

    PrincipledMaterial {
        id: matPrincipledMetalTextured
        baseColorMap: Texture {
            source: baseColorImage
        }
        metalnessMap: Texture {
            source: metalnessImage
        }
        roughnessMap: Texture {
            source: roughnessImage
        }
        normalMap: Texture {
            source: normalImage
        }
        roughness: 1.0
    }

    PrincipledMaterial {
        id: matPrincipledMetal
        baseColor: "#eeeeee"
        metalness: 1.0
        roughness: 0.0
    }

    PrincipledMaterial {
        id: matPrincipledDielectricTextured
        baseColorMap: Texture {
            source: baseColorImage
        }
        metalness: 0.0
        roughness: 1.0
        roughnessMap: Texture {
            source: roughnessImage
        }
        normalMap: Texture {
            source: normalImage
        }
    }

    PrincipledMaterial {
        id: matPrincipledDielectric
        baseColor: "#41cd52"
        metalness: 0.0
        roughness: 0.0
    }

    // Hack versions of the material library materials in 5.15
    PrincipledMaterial {
        id: matCopper
        baseColor: "#b87333"
        metalness: 0.8
        roughness: 0.1
        specularAmount: 1.0
    }

    // TODO: Not even close yet, needs a lot of tweaking
    PrincipledMaterial {
        id: matPlastic
        baseColor: "#730a08"
        normalStrength: 1.0
        normalMap: Texture {
            source: "qrc:/maps/1024x1024/normal.jpg"
            scaleU: 5
            scaleV: 5
        }
        metalness: 0.25
        roughness: 0.25
        specularAmount: 0.75
    }

    // TODO: Needs to be replaced with a CustomMaterial
    PrincipledMaterial {
        id: matGlass
        baseColor: "#a8ccd7"
        //cullMode: Material.NoCulling
        metalness: 0.8
        roughness: 0.0
        //opacity: 0.5
    }

    SceneEnvironment {
        id: sceneEnvironmentIBL
        aoStrength: aoEnabled ? 100 : 0
        probeExposure: lightBrightness.value
        backgroundMode: skyboxEnabled ? SceneEnvironment.SkyBox : effectMotionBlur.checked
                                        ? SceneEnvironment.Transparent : SceneEnvironment.Color
        lightProbe: Texture {
            source: iblImage
            mappingMode: Texture.LightProbe
        }
        //tonemapMode: SceneEnvironment.TonemapModeAces
        clearColor: "#cccccc"
    }

    SceneEnvironment {
        id: sceneEnvironment
        aoStrength: aoEnabled ? 100 : 0
        backgroundMode: effectMotionBlur.checked ? SceneEnvironment.Transparent
                                                 : SceneEnvironment.Color
        //tonemapMode: SceneEnvironment.TonemapModeAces
        clearColor: "#cccccc"
    }

    View3D {
        id: view3D
        anchors.fill: parent
        visible: benchmarkRoot.visible
        renderMode: View3D.Offscreen

        Node {
            LightSpawner {
                id: lightSpawner
                visible: benchmarkRoot.visible
            }

            PerspectiveCamera {
                id: camera
                z: 600
                clipFar: 1200
                clipNear: 1
            }

            MeshSpawner {
                id: modelSpawner
                visible: benchmarkRoot.visible
            }

            MeshSpawner {
                id: demoContentLoader
                x: 5
                z: 1.5
                visible: false
            }
        }
    }

    Logger {
        id: logger
        enabled: false
        androidMode: commands.androidMode
    }

    CommandlineParser {
        id: commands
    }

    AutoMode {
        id: automode
        enabled: false
    }

    ScriptHandler {
        id: scripthandler
        enabled: false
    }

    DebugView {
        id: debugView
        anchors.left: parent.left
        anchors.top: parent.top
        source: view3D
    }

    Button {
        id: measureButton
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        text: "Start Measuring"
    }

    SwipeView {
        id: swipeView
        x: 0
        width: 500
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0

        Item {
            id: emptyPage

            Image {
                id: imageEmpty
                anchors.right: parent.right
                anchors.rightMargin: 0
                y: (benchmarkRoot.height - height) / 2
                source: "dragIcon.png"
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: swipeMouse
                    anchors.fill: parent
                }
            }
        }

        Flickable {
            id: configPage
            width: 500
            contentHeight: 1240

            Rectangle {
                anchors.fill: parent
                color: "#dddddd"
            }

            Image {
                id: imageConfig
                anchors.right: parent.right
                anchors.rightMargin: 0
                y: (benchmarkRoot.height - height) / 2
                source: "dragIcon.png"
                fillMode: Image.PreserveAspectFit
            }

            Column {
                id: configColumn
                anchors.fill: parent
                anchors.margins: 10
                spacing: 10

                Label {
                    id: modelLabel
                    text: qsTr("Model Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                ComboBox {
                    id: modelCB
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    displayText: "Model: " + model[currentIndex]
                    currentIndex: 3
                    textRole: "Model"
                    model: [qsTr("Very Low (1k)"), qsTr("Low (10k)"), qsTr("Medium (50k)"),
                        qsTr("High (100k)"), qsTr("Very High (500k)")]

                    delegate: ItemDelegate {
                        id: modelDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                RowLayout {
                    id: modelCountRow
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0

                    Text {
                        id: modelCountText
                        text: qsTr("# of models")
                        font.family: "Tahoma"
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 16
                    }

                    TextField {
                        id: modelCount
                        text: "1"
                        Layout.rightMargin: 5
                        Layout.fillWidth: true
                        validator: IntValidator {
                            bottom: 1
                            top: 1000
                        }
                    }
                }

                Label {
                    id: lightLabel
                    text: qsTr("Light Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                ComboBox {
                    id: lightTypeCB
                    displayText: "Light Type: " + model[currentIndex]
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    textRole: "LightType"
                    anchors.rightMargin: 0
                    model: [qsTr("Directional"), qsTr("Point"), qsTr("Spot")]

                    delegate: ItemDelegate {
                        id: lightDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                RowLayout {
                    id: lightBrightnessRow
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0

                    Text {
                        id: lightBrightnessText
                        text: qsTr("Brightness")
                        font.family: "Tahoma"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: 16
                    }

                    Slider {
                        id: lightBrightness
                        stepSize: 0.25
                        Layout.fillWidth: true
                        live: false
                        to: 10
                        value: 2.5
                    }

                    Text {
                        id: lightBrightnessNumber
                        text: lightBrightness.value
                        font.family: "Tahoma"
                        Layout.rightMargin: 5
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 16
                    }
                }

                RowLayout {
                    id: lightCountRow
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0

                    Text {
                        id: lightCountText
                        text: qsTr("# of lights")
                        font.family: "Tahoma"
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: 16
                    }

                    Slider {
                        id: lightCount
                        stepSize: 1
                        Layout.fillWidth: true
                        live: false
                        to: 7
                        value: 1
                    }

                    Text {
                        id: lightCountNumber
                        text: lightCount.value
                        font.family: "Tahoma"
                        Layout.rightMargin: 5
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 16
                    }
                }

                CheckBox {
                    id: shadows
                    text: qsTr("Shadows")
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }

                CheckBox {
                    id: iblLighting
                    text: qsTr("IBL lighting")
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }

                Label {
                    id: modeLabel
                    text: qsTr("Render Mode Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                ComboBox {
                    id: renderModeCB
                    displayText: "Render Mode: " + model[currentIndex]
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    textRole: "RenderMode"
                    anchors.rightMargin: 0
                    currentIndex: 0
                    model: [qsTr("Offscreen"), qsTr("Underlay"), qsTr(
                            "Overlay [renders over config panel]")]

                    delegate: ItemDelegate {
                        id: modeDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                Label {
                    id: aoLabel
                    text: qsTr("Environment Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: aoCB
                    text: qsTr("Ambient Occlusion")
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }

                CheckBox {
                    id: skyboxCB
                    text: qsTr("Skybox")
                    enabled: iblLighting.checked
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }

                Label {
                    id: antialiasLabel
                    text: qsTr("Anti-Aliasing Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                ComboBox {
                    id: multisampleAACB
                    displayText: "Multisample AA: " + model[currentIndex]
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    enabled: renderModeCB.currentIndex === 0
                    textRole: "MSAA"
                    anchors.rightMargin: 0
                    model: [qsTr("None"), qsTr("Medium"), qsTr("High"), qsTr("Very High")]

                    delegate: ItemDelegate {
                        id: msaaDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                ComboBox {
                    id: progressiveAACB
                    displayText: "Progressive AA: " + model[currentIndex]
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    textRole: "PAA"
                    anchors.rightMargin: 0
                    model: [qsTr("None"), qsTr("Medium"), qsTr("High"), qsTr("Very High")]

                    delegate: ItemDelegate {
                        id: paaDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                CheckBox {
                    id: temporalAA
                    text: qsTr("Temporal AA")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                Label {
                    id: textureLabel
                    text: qsTr("Texture Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: textures
                    text: qsTr("Textures")
                    enabled: false
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }

                ComboBox {
                    id: textureSizeCB
                    displayText: "Texture Size: " + model[currentIndex]
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    textRole: "TextureSize"
                    anchors.rightMargin: 0
                    currentIndex: 2
                    model: [qsTr("256x256"), qsTr("512x512"), qsTr(
                            "1024x1024"), qsTr("2048x2048"), qsTr("4096x4096")]

                    delegate: ItemDelegate {
                        id: textureDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                Label {
                    id: materialLabel
                    text: qsTr("Material Options")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                ComboBox {
                    id: materialsCB
                    displayText: "Material: " + model[currentIndex]
                    anchors.leftMargin: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    textRole: "MaterialType"
                    anchors.rightMargin: 0
                    currentIndex: 6
                    model: [qsTr("Default Material"), qsTr(
                            "Principled Material - Metal"), qsTr(
                            "Principled Material - Dielectric"), qsTr(
                            "Copper [overrides texture setting]"), qsTr(
                            "Red Plastic [overrides texture setting]"), qsTr(
                            "Glass [overrides texture setting]"), qsTr(
                            "Original Material")]

                    delegate: ItemDelegate {
                        id: materialDelegate
                        text: modelData
                        anchors.left: parent.left
                        anchors.right: parent.right
                    }
                }

                Label {
                    id: effectsLabel
                    text: qsTr("Effect Options >")
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 14
                    font.family: "Tahoma"
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }
            }
        }

        Item {
            id: effectsPage

            // TODO: Current ones are all we have in Qt3DStudio, but all of them are not going
            // to be added
            Rectangle {
                anchors.fill: parent
                color: "#dfdfdf"
            }

            Column {
                id: effectsColumn1
                width: 250
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                spacing: 10

                CheckBox {
                    id: effectAdditiveColor
                    text: qsTr("Additive Color Gradient")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

//                CheckBox {
//                    id: effectBloom
//                    text: qsTr("Bloom")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

                CheckBox {
                    id: effectBlur
                    text: qsTr("Blur")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectBrushStrokes
                    text: qsTr("Brush Strokes")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectChromaticAberration
                    text: qsTr("Chromatic Aberration")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectColorMaster
                    text: qsTr("Color Master")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

//                CheckBox {
//                    id: effectCorona
//                    text: qsTr("Corona")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

//                CheckBox {
//                    id: effectDepthOfFieldBokeh
//                    text: qsTr("Depth of Field Bokeh")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

                CheckBox {
                    id: effectDepthOfFieldHQBlur
                    text: qsTr("Depth of Field HQ Blur")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectDesaturate
                    text: qsTr("Desaturate")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectDistortionRipple
                    text: qsTr("Distortion Ripple")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectDistortionSphere
                    text: qsTr("Distortion Sphere")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectDistortionSpiral
                    text: qsTr("Distortion Spiral")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectEdgeDetect
                    text: qsTr("Edge Detect")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }
            }

            Column {
                id: effectsColumn2
                spacing: 10
                width: 250
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.right: parent.right

                CheckBox {
                    id: effectEmboss
                    text: qsTr("Emboss")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectFlip
                    text: qsTr("Flip")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

//                CheckBox {
//                    id: effectFullscreenTextureOverlay
//                    text: qsTr("FullScreen Texture Overlay")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

                CheckBox {
                    id: effectFXAA
                    text: qsTr("FXAA")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectGaussianBlur
                    text: qsTr("Gaussian Blur")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectHDRBloomToneMap
                    text: qsTr("HDR Bloom Tone Map")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

//                CheckBox {
//                    id: effectLightTable
//                    text: qsTr("Light Table")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

                CheckBox {
                    id: effectMotionBlur
                    text: qsTr("Motion Blur")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    enabled: !skyboxEnabled
                }

                CheckBox {
                    id: effectScatter
                    text: qsTr("Scatter")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

//                CheckBox {
//                    id: effectScreenSpaceAO
//                    text: qsTr("Screen Space Ambient Occlusion")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

                CheckBox {
                    id: effectSCurveToneMap
                    text: qsTr("SCurve Tone Map")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

//                CheckBox {
//                    id: effectSepia
//                    text: qsTr("Sepia")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

//                CheckBox {
//                    id: effectSMAA
//                    text: qsTr("SMAA 1X")
//                    anchors.right: parent.right
//                    anchors.rightMargin: 0
//                    anchors.left: parent.left
//                    anchors.leftMargin: 0
//                    enabled: false
//                }

                CheckBox {
                    id: effectTiltShift
                    text: qsTr("Tilt Shift")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }

                CheckBox {
                    id: effectVignette
                    text: qsTr("Vignette")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }
            }
        }
    }

    Connections {
        target: renderModeCB
        function onActivated(index) {
            view3D.renderMode = index
        }
    }

    Connections {
        target: swipeMouse
        function onClicked() {
            if (swipeView.currentItem === configPage)
                swipeView.currentIndex = 0
            else if (swipeView.currentItem === emptyPage)
                swipeView.currentIndex = 1
        }
    }

    Connections {
        target: multisampleAACB
        function onActivated(index) {
            var env = iblLighting.checked ? sceneEnvironmentIBL : sceneEnvironment
            env.antialiasingMode = index > 0 ? SceneEnvironment.MSAA
                                             : SceneEnvironment.NoAA
            progressiveAACB.enabled = (index === 0)
            switch (index) {
            case 0:
                env.antialiasingQuality = 0
                break
            case 1:
                env.antialiasingQuality = SceneEnvironment.Medium
                break
            case 2:
                env.antialiasingQuality = SceneEnvironment.High
                break
            case 3:
                env.antialiasingQuality = SceneEnvironment.VeryHigh
                break
            }
            // Copy antialiasing quality to the other sceneEnvironment too
            if (iblLighting.checked) {
                sceneEnvironment.antialiasingMode = env.antialiasingMode;
                sceneEnvironment.antialiasingQuality = env.antialiasingQuality;
            } else {
                sceneEnvironmentIBL.antialiasingMode = env.antialiasingMode;
                sceneEnvironmentIBL.antialiasingQuality = env.antialiasingQuality;
            }
        }
    }

    Connections {
        target: progressiveAACB
        function onActivated(index) {
            var env = iblLighting.checked ? sceneEnvironmentIBL : sceneEnvironment
            env.antialiasingMode = index > 0 ? SceneEnvironment.ProgressiveAA
                                             : SceneEnvironment.NoAA
            multisampleAACB.enabled = (index === 0)
            switch (index) {
            case 0:
                env.antialiasingQuality = 0
                break
            case 1:
                env.antialiasingQuality = SceneEnvironment.Medium
                break
            case 2:
                env.antialiasingQuality = SceneEnvironment.High
                break
            case 3:
                env.antialiasingQuality = SceneEnvironment.VeryHigh
                break
            }
            // Copy antialiasing quality to the other sceneEnvironment too
            if (iblLighting.checked) {
                sceneEnvironment.antialiasingMode = env.antialiasingMode;
                sceneEnvironment.antialiasingQuality = env.antialiasingQuality;
            } else {
                sceneEnvironmentIBL.antialiasingMode = env.antialiasingMode;
                sceneEnvironmentIBL.antialiasingQuality = env.antialiasingQuality;
            }
        }
    }

    Connections {
        target: temporalAA
        function onClicked() {
            sceneEnvironmentIBL.temporalAAEnabled = temporalAA.checked
            sceneEnvironment.temporalAAEnabled = temporalAA.checked
        }
    }

    Connections {
        target: shadows
        function onClicked() {
            lightSpawner.shadowsEnabled = shadows.checked
        }
    }

    Connections {
        target: iblLighting
        function onClicked() {
            if (iblLighting.checked)
                view3D.environment = sceneEnvironmentIBL
            else
                view3D.environment = sceneEnvironment
            view3D.environment.effects = effectList
        }
    }

    Connections {
        target: modelCB
        function onActivated(index) {
            switch (index) {
            case 0:
                modelSpawner.model = "qrc:/Model1k.qml"
                break
            case 1:
                modelSpawner.model = "qrc:/Model10k.qml"
                break
            case 2:
                modelSpawner.model = "qrc:/Model50k.qml"
                break
            case 3:
                modelSpawner.model = "qrc:/Model100k.qml"
                break
            case 4:
                modelSpawner.model = "qrc:/Model500k.qml"
                break
            }
        }
    }

    Connections {
        target: modelCount
        function onEditingFinished() {
            modelSpawner.instanceCount = modelCount.text ? modelCount.text : 1
        }
    }

    Connections {
        target: lightCount
        function onValueChanged() {
            lightSpawner.instanceCount = lightCount.value
        }
    }

    Connections {
        target: lightBrightness
        function onValueChanged() {
            lightSpawner.brightness = lightBrightness.value * 2.0
        }
    }

    Connections {
        target: lightTypeCB
        function onActivated(index) {
            lightSpawner.lightType = index
        }
    }

    Connections {
        target: materialsCB
        function onActivated(index) {
            textures.enabled = index < 3
            modelSpawner.useInternalMaterial = index === 6
            switch (index) {
            case 0:
                modelSpawner.material = textures.checked ? matDefaultTextured : matDefault
                break
            case 1:
                modelSpawner.material
                        = textures.checked ? matPrincipledMetalTextured : matPrincipledMetal
                break
            case 2:
                modelSpawner.material = textures.checked ? matPrincipledDielectricTextured
                                                         : matPrincipledDielectric
                break
            case 3:
                modelSpawner.material = matCopper
                break
            case 4:
                modelSpawner.material = matPlastic
                break
            case 5:
                modelSpawner.material = matGlass
                break
            }
        }
    }

    Connections {
        target: textures
        function onClicked() {
            switch (materialsCB.currentIndex) {
            case 0:
                modelSpawner.material = textures.checked ? matDefaultTextured : matDefault
                break
            case 1:
                modelSpawner.material
                        = textures.checked ? matPrincipledMetalTextured : matPrincipledMetal
                break
            case 2:
                modelSpawner.material = textures.checked ? matPrincipledDielectricTextured
                                                         : matPrincipledDielectric
                break
            }
        }
    }

    Connections {
        target: textureSizeCB
        function onActivated(index) {
            textureSize = textureSizeCB.currentValue
            modelSpawner.textureSize = textureSize
        }
    }

    Connections {
        target: effectAdditiveColor
        function onClicked() {
            if (effectAdditiveColor.checked) {
                effectList.push(effectInstanceAdditiveColorGradient)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceAdditiveColorGradient), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

//    Connections {
//        target: effectBloom
//        function onClicked() {

//        }
//    }

    Connections {
        target: effectBlur
        function onClicked() {
            if (effectBlur.checked) {
                effectList.push(effectInstanceBlur)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceBlur), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectBrushStrokes
        function onClicked() {
            if (effectBrushStrokes.checked) {
                effectList.push(effectInstanceBrushStrokes)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceBrushStrokes), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectChromaticAberration
        function onClicked() {
            if (effectChromaticAberration.checked) {
                effectList.push(effectInstanceChromaticAberration)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceChromaticAberration), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectColorMaster
        function onClicked() {
            if (effectColorMaster.checked) {
                effectList.push(effectInstanceColorMaster)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceColorMaster), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

//    Connections {
//        target: effectCorona
//        function onClicked() {

//        }
//    }

//    Connections {
//        target: effectDepthOfFieldBokeh
//        function onClicked() {

//        }
//    }

    Connections {
        target: effectDepthOfFieldHQBlur
        function onClicked() {
            if (effectDepthOfFieldHQBlur.checked) {
                effectList.push(effectInstanceDepthOfFieldHQBlur)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceDepthOfFieldHQBlur), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectDesaturate
        function onClicked() {
            if (effectDesaturate.checked) {
                effectList.push(effectInstanceDesaturate)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceDesaturate), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectDistortionRipple
        function onClicked() {
            if (effectDistortionRipple.checked) {
                effectList.push(effectInstanceDistortionRipple)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceDistortionRipple), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectDistortionSphere
        function onClicked() {
            if (effectDistortionSphere.checked) {
                effectList.push(effectInstanceDistortionSphere)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceDistortionSphere), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectDistortionSpiral
        function onClicked() {
            if (effectDistortionSpiral.checked) {
                effectList.push(effectInstanceDistortionSpiral)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceDistortionSpiral), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectEdgeDetect
        function onClicked() {
            if (effectEdgeDetect.checked) {
                effectList.push(effectInstanceEdgeDetect)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceEdgeDetect), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectEmboss
        function onClicked() {
            if (effectEmboss.checked) {
                effectList.push(effectInstanceEmboss)
            } else {
                effectList.splice(effectList.indexOf(effectInstanceEmboss), 1)
            }
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectFlip
        function onClicked() {
            if (effectFlip.checked)
                effectList.push(effectInstanceFlip)
            else
                effectList.splice(effectList.indexOf(effectInstanceFlip), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectFXAA
        function onClicked() {
            if (effectFXAA.checked)
                effectList.push(effectInstanceFXAA)
            else
                effectList.splice(effectList.indexOf(effectInstanceFXAA), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

//    Connections {
//        target: effectFullscreenTextureOverlay
//        function onClicked() {

//        }
//    }

    Connections {
        target: effectGaussianBlur
        function onClicked() {
            if (effectGaussianBlur.checked)
                effectList.push(effectInstanceGaussianBlur)
            else
                effectList.splice(effectList.indexOf(effectInstanceGaussianBlur), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectHDRBloomToneMap
        function onClicked() {
            if (effectHDRBloomToneMap.checked)
                effectList.push(effectInstanceHDRBloomTonemap)
            else
                effectList.splice(effectList.indexOf(effectInstanceHDRBloomTonemap), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

//    Connections {
//        target: effectLightTable
//        function onClicked() {

//        }
//    }

    Connections {
        target: effectMotionBlur
        function onClicked() {
            if (effectMotionBlur.checked)
                effectList.push(effectInstanceMotionBlur)
            else
                effectList.splice(effectList.indexOf(effectInstanceMotionBlur), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectScatter
        function onClicked() {
            if (effectScatter.checked)
                effectList.push(effectInstanceScatter)
            else
                effectList.splice(effectList.indexOf(effectInstanceScatter), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectSCurveToneMap
        function onClicked() {
            if (effectSCurveToneMap.checked)
                effectList.push(effectInstanceSCurveTonemap)
            else
                effectList.splice(effectList.indexOf(effectInstanceSCurveTonemap), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

//    Connections {
//        target: effectSMAA
//        function onClicked() {

//        }
//    }

//    Connections {
//        target: effectScreenSpaceAO
//        function onClicked() {

//        }
//    }

//    Connections {
//        target: effectSepia
//        function onClicked() {

//        }
//    }

    Connections {
        target: effectTiltShift
        function onClicked() {
            if (effectTiltShift.checked)
                effectList.push(effectInstanceTiltShift)
            else
                effectList.splice(effectList.indexOf(effectInstanceTiltShift), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: effectVignette
        function onClicked() {
            if (effectVignette.checked)
                effectList.push(effectInstanceVignette)
            else
                effectList.splice(effectList.indexOf(effectInstanceVignette), 1)
            sceneEnvironmentIBL.effects = effectList
            sceneEnvironment.effects = effectList
        }
    }

    Connections {
        target: measureButton
        function onClicked() {
            measureButton.visible = false
            debugView.visible = false
            swipeView.visible = false
            logger.quitAfter = commands.quitAfter && !commands.autoModeEnabled
                    && !commands.scriptModeEnabled
            logger.enabled = true
            logger.config = [// Model
                             "Model: " + modelCB.currentValue + " (#" + modelCount.text + ")",
                             // Light
                             "Light Type: " + lightTypeCB.currentValue + " [brightness "
                             + lightBrightnessNumber.text + "] (#" + lightCountNumber.text + ")",
                             // Shadows
                             shadows.checked ? "Shadows: ON" : "Shadows: OFF",
                             // IBL
                             iblLighting.checked ? "IBL lighting: ON" : "IBL lighting: OFF",
                             // Render mode
                             "Render Mode: " + renderModeCB.currentValue,
                             // Ambient Occlusion
                             aoCB.checked ? "Ambient Occlusion: ON" : "Ambient Occlusion: OFF",
                             // Skybox
                             skyboxEnabled ? "Skybox: ON" : "Skybox: OFF",
                             // Antialiasing mode and quality
                             "Antialiasing: "
                             + (multisampleAACB.currentIndex
                                > 0 ? "Multisample AA" : progressiveAACB.currentIndex
                                      > 0 ? "Progressive AA" : "OFF") + " ("
                             + (multisampleAACB.currentIndex
                                > 0 ? multisampleAACB.currentValue : progressiveAACB.currentIndex
                                      > 0 ? progressiveAACB.currentValue : "None") + ")",
                             // Temporal antialiasing
                             temporalAA.checked ? "Temporal AA: ON" : "Temporal AA: OFF",
                             // Forced textures
                             "Textures: "
                             + (textures.enabled
                                && textures.checked ? "ON" : materialsCB.currentIndex
                                                      < 6 ? "OFF" : "Original Material"),
                             // Texture size
                             "Texture Size: " + (((textures.checked
                                                   && materialsCB.currentIndex < 3)
                                                  || materialsCB.currentIndex === 6)
                                                 ? textureSizeCB.currentValue : !textures.enabled
                                                   ? "Overridden by Custom Material" : "Not Used"),
                             // Material
                             "Material: " + materialsCB.currentValue,
                             // Effects
                             "Effects: " + (effectList.length ? effectList.toString(
                                                                    ) : "None")]
            if (!commands.modeBenchmark)
                logger.start(view3D)
        }
    }

    Connections {
        target: logger
        function onMeasurementDone() {
            if (!commands.autoModeEnabled && !commands.scriptModeEnabled) {
                measureButton.visible = true;
                debugView.visible = true;
                swipeView.visible = true;
                return;
            } else if (commands.autoModeEnabled) {
                // Update auto mode benchmark settings and run again
                automode.enabled = true;
                automode.update(commands.autoModel, commands.autoModelCount, commands.autoLight,
                                commands.autoLightCount, commands.autoTexture);
            } else {
                // Update script mode settings and run again
                var previousTexturesEnabled = texturesEnabled;
                logger.testName = scripthandler.getNextTest();
                if (previousTexturesEnabled !== texturesEnabled)
                    textures.onClicked();
                // Set the correct SceneEnvironment
                view3D.environment = iblEnabled ? sceneEnvironmentIBL : sceneEnvironment
                // Trigger material change; needed for original material
                materialsCB.onActivated(materialIndex);
                // Trigger msaa change
                multisampleAACB.onActivated(msaaQualityIndex);
                // Update effect list
                view3D.environment.effects = effectList;
                // Shadow settings
                lightSpawner.shadowsEnabled = shadowsEnabled;
            }
            lightSpawner.instanceCount = lightCount.value;
            modelSpawner.instanceCount = modelInstanceCount;
            if (texturesEnabled)
                textures.onClicked();
            textureSizeCB.onActivated(textureSizeIndex);
            // Respawn models
            modelCB.onActivated(modelIndex);
            // Respawn lights
            lightTypeCB.onActivated(lightTypeIndex);
            // Re-run measurements
            measureButton.onClicked();
            logger.start(view3D);
        }
    }

    Connections {
        target: commands
        function onParsingDone() {
            // If in benchmark test set mode, get the initial test settings
            if (commands.modeBenchmark && commands.scriptModeEnabled) {
                // Parse test sets
                scripthandler.enabled = true;
                scripthandler.source = commands.scriptFile;
                scripthandler.parseScript();
                var previousTexturesEnabled = texturesEnabled;
                logger.testName = scripthandler.getNextTest();
                if (commands.reportSingle) {
                    // Trim the script file name from full path
                    var splitPath = commands.scriptFile.toString().split("/");
                    splitPath = splitPath[splitPath.length - 1].split(".")
                    var scriptFinalName = splitPath[0].replace(" ", "_");
                    logger.scriptName = scriptFinalName;
                }
                // Handle texture state
                if (previousTexturesEnabled !== texturesEnabled)
                    textures.onClicked();
                // Set the correct SceneEnvironment
                view3D.environment = iblEnabled ? sceneEnvironmentIBL : sceneEnvironment
                // Trigger material change; needed for original material
                materialsCB.onActivated(materialIndex);
                // Update effect list
                view3D.environment.effects = effectList;
            }

            if (commands.modeBenchmark)
                logger.singleReportMode = commands.reportSingle;

            // Force changing the env once to enable all state changed (bit unclear why this is needed, though)
            view3D.environment = sceneEnvironmentIBL;
            // Set the correct SceneEnvironment
            view3D.environment = iblEnabled ? sceneEnvironmentIBL : sceneEnvironment

            // Set config values that do not get transferred directly from commands
            // (mostly to the spawners)
            if (commands.modeDemo) {
                iblImage = (benchmarkRoot.textureSizeIndex >= 3)
                        ? "qrc:/../lightprobe/DemoModeIBL.hdr"
                        : "qrc:/../lightprobe/DemoModeIBL_small.hdr"
                if (benchmarkRoot.aoEnabled) {
                    lightSpawner.brightness = 3.5;
                    sceneEnvironmentIBL.probeExposure = 1.5;//2;
                } else {
                    lightSpawner.brightness = 3.5;//2.5;
                    sceneEnvironmentIBL.probeExposure = 1;//1.25;
                }
                lightSpawner.demomode = true;
                modelSpawner.demomode = true;
                demoContentLoader.demomode = true;
                demoContentLoader.instanceCount = 1;
            }
            lightSpawner.instanceCount = lightCount.value
            lightSpawner.shadowsEnabled = shadows.checked
            modelSpawner.instanceCount = modelInstanceCount
            materialsCB.onActivated(materialIndex)
            multisampleAACB.onActivated(msaaQualityIndex)
            textureSizeCB.onActivated(textureSizeIndex)

            // After this modelSpawner and lightSpawner start spawning on changes
            benchmarkRoot.visible = true
            // Respawn models
            if (!commands.demomode)
                modelCB.onActivated(modelIndex)
            // Respawn lights
            lightTypeCB.onActivated(lightTypeIndex)

            // Start demo if in demo mode and benchmarking if benchmark mode
            if (commands.modeBenchmark) {
                measureButton.onClicked() // In script mode, do this after script has been parsed
            } else if (commands.modeDemo) {
                // Demo mode
                modelSpawner.model = "qrc:/DemoCity.qml";
                demoContentLoader.visible = true;
                demoContentLoader.model = "qrc:/FlyingSmallShip.qml";
                measureButton.visible = false
                debugView.visible = false
                swipeView.visible = false
                // Enable some select effects
                effectInstanceDepthOfFieldHQBlur.focusDistance = 10;
                effectInstanceDepthOfFieldHQBlur.blurAmount = 3;
                effectInstanceDepthOfFieldHQBlur.focusRange = 7.5;
                effectList.push(effectInstanceDepthOfFieldHQBlur)
                effectInstanceHDRBloomTonemap.bloomThreshold = 0.95;
//                effectInstanceHDRBloomTonemap.blurFalloff = 10;
                effectList.push(effectInstanceHDRBloomTonemap)
                view3D.environment.effects = effectList
                // Set tonemapMode
                view3D.environment.tonemapMode = SceneEnvironment.TonemapModeAces
                // Camera startup position
                camera.position = Qt.vector3d(-32.3353, 21.3145, -16.3025);
                camera.eulerRotation = Qt.vector3d(-90 + 63.5292, -114.546, 0.000302634);
                camera.clipFar = 170;
                camera.clipNear = 0.1;
                camera.fieldOfView = 50;
            }
        }

        function onStartBenchmark() {
            logger.start(view3D)
        }
    }

    // Demo mode camera animation
    Timeline {
        id: timeline_camera
        startFrame: 0
        endFrame: 16667
        enabled: commands.modeDemo
        animations: [
            TimelineAnimation {
                duration: commands.demoSpeed
                from: 0
                to: 16667
                running: commands.modeDemo
                loops: Animation.Infinite
                onDurationChanged: restart()
            }
        ]

        KeyframeGroup {
            target: camera
            property: "position"

            Keyframe {
                frame: 0
                value: Qt.vector3d(-32.3353, 21.3145, -16.3025)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-32.3337, 21.3124, -16.301)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-32.3289, 21.3061, -16.2963)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-32.3209, 21.2957, -16.2884)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-32.3097, 21.281, -16.2774)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-32.2952, 21.2622, -16.2631)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-32.2774, 21.2391, -16.2457)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-32.2563, 21.2117, -16.2252)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-32.2318, 21.1801, -16.2014)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-32.204, 21.1443, -16.1744)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-32.1729, 21.1041, -16.1442)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-32.1383, 21.0597, -16.1108)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-32.1003, 21.0111, -16.0742)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-32.0589, 20.9581, -16.0343)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-32.0141, 20.9009, -15.9913)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-31.9658, 20.8394, -15.945)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-31.914, 20.7736, -15.8955)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-31.8587, 20.7035, -15.8428)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-31.7998, 20.6292, -15.787)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-31.7375, 20.5506, -15.7279)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-31.6716, 20.4678, -15.6656)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-31.6022, 20.3807, -15.6002)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(-31.5292, 20.2894, -15.5316)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(-31.4527, 20.1939, -15.4598)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(-31.3726, 20.0942, -15.385)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(-31.2889, 19.9904, -15.307)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(-31.2016, 19.8824, -15.2259)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(-31.1108, 19.7703, -15.1417)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(-31.0163, 19.6541, -15.0545)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(-30.9183, 19.5339, -14.9642)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-30.8167, 19.4096, -14.871)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-30.7115, 19.2814, -14.7748)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-30.6028, 19.1492, -14.6756)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-30.4905, 19.0131, -14.5736)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-30.3746, 18.8732, -14.4687)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-30.2552, 18.7295, -14.3609)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-30.1323, 18.582, -14.2504)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-30.0058, 18.4309, -14.1371)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-29.8759, 18.2761, -14.0212)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-29.7425, 18.1177, -13.9026)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-29.6056, 17.9559, -13.7813)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-29.4653, 17.7906, -13.6576)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-29.3216, 17.6219, -13.5313)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-29.1745, 17.4499, -13.4026)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-29.0241, 17.2748, -13.2716)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-28.8704, 17.0965, -13.1382)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-28.7134, 16.9151, -13.0026)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-28.5531, 16.7308, -12.8648)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-28.3897, 16.5436, -12.7249)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-28.2232, 16.3537, -12.583)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-28.0535, 16.161, -12.4391)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-27.8807, 15.9658, -12.2933)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-27.705, 15.7681, -12.1458)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-27.5263, 15.5681, -11.9965)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-27.3447, 15.3657, -11.8455)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-27.1603, 15.1613, -11.6931)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-26.9731, 14.9548, -11.5391)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-26.7832, 14.7463, -11.3838)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-26.5906, 14.5361, -11.2271)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-26.3954, 14.3242, -11.0693)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-26.1977, 14.1107, -10.9104)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-25.9975, 13.8958, -10.7505)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-25.795, 13.6796, -10.5897)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-25.5902, 13.4622, -10.428)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-25.3831, 13.2438, -10.2657)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-25.1739, 13.0244, -10.1027)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-24.9626, 12.8042, -9.93922)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-24.7493, 12.5834, -9.77533)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-24.5341, 12.3621, -9.61113)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-24.3171, 12.1404, -9.44673)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-24.0983, 11.9185, -9.28223)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-23.8778, 11.6964, -9.11772)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-23.6558, 11.4743, -8.95332)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-23.4323, 11.2524, -8.78913)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-23.2074, 11.0308, -8.62524)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-22.9812, 10.8096, -8.46176)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-22.7537, 10.589, -8.2988)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-22.5252, 10.3691, -8.13644)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-22.2955, 10.15, -7.9748)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-22.0649, 9.93182, -7.81397)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-21.8335, 9.71474, -7.65405)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(-21.6012, 9.49887, -7.49513)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(-21.3683, 9.28434, -7.33732)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(-21.1347, 9.07127, -7.18069)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(-20.9007, 8.85978, -7.02536)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(-20.6662, 8.64999, -6.87141)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(-20.4313, 8.44202, -6.71892)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(-20.1962, 8.23599, -6.56798)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-19.9609, 8.03201, -6.41869)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(-19.7255, 7.83018, -6.27112)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(-19.4902, 7.63062, -6.12535)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(-19.2549, 7.43344, -5.98146)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(-19.0197, 7.23872, -5.83953)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(-18.7847, 7.04658, -5.69964)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(-18.5501, 6.85711, -5.56185)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(-18.3159, 6.6704, -5.42624)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(-18.0821, 6.48654, -5.29288)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(-17.8488, 6.30563, -5.16182)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(-17.6161, 6.12773, -5.03314)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(-17.3841, 5.95294, -4.90688)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(-17.1528, 5.78133, -4.78312)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4208.33
                value: Qt.vector3d(-16.9224, 5.61298, -4.66191)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4250
                value: Qt.vector3d(-16.6927, 5.44795, -4.54329)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4291.67
                value: Qt.vector3d(-16.464, 5.28632, -4.42732)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(-16.2363, 5.12815, -4.31405)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4375
                value: Qt.vector3d(-16.0097, 4.97349, -4.20352)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4416.67
                value: Qt.vector3d(-15.7841, 4.82242, -4.09578)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4458.33
                value: Qt.vector3d(-15.5597, 4.67498, -3.99086)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(-15.3365, 4.53123, -3.88881)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4541.67
                value: Qt.vector3d(-15.1145, 4.39121, -3.78967)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4583.33
                value: Qt.vector3d(-14.8939, 4.25497, -3.69346)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4625
                value: Qt.vector3d(-14.6746, 4.12256, -3.60021)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(-14.4567, 3.99402, -3.50997)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4708.33
                value: Qt.vector3d(-14.2402, 3.86938, -3.42276)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4750
                value: Qt.vector3d(-14.0252, 3.74868, -3.33859)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4791.67
                value: Qt.vector3d(-13.8118, 3.63195, -3.2575)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(-13.5999, 3.51923, -3.1795)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4875
                value: Qt.vector3d(-13.3896, 3.41052, -3.10462)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4916.67
                value: Qt.vector3d(-13.1809, 3.30588, -3.03288)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 4958.33
                value: Qt.vector3d(-12.9739, 3.2053, -2.96428)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(-12.7686, 3.10881, -2.89884)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5041.67
                value: Qt.vector3d(-12.565, 3.01644, -2.83657)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5083.33
                value: Qt.vector3d(-12.3632, 2.92819, -2.7775)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5125
                value: Qt.vector3d(-12.1631, 2.84409, -2.72161)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(-11.9649, 2.76412, -2.66893)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5208.33
                value: Qt.vector3d(-11.7684, 2.68832, -2.61945)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5250
                value: Qt.vector3d(-11.5738, 2.61669, -2.57319)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5291.67
                value: Qt.vector3d(-11.3811, 2.54922, -2.53013)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(-11.1903, 2.48593, -2.4903)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5375
                value: Qt.vector3d(-11.0014, 2.42681, -2.45368)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5416.67
                value: Qt.vector3d(-10.8144, 2.37186, -2.42027)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5458.33
                value: Qt.vector3d(-10.6294, 2.32109, -2.39007)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(-10.4463, 2.27449, -2.36308)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5541.67
                value: Qt.vector3d(-10.2651, 2.23205, -2.3393)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5583.33
                value: Qt.vector3d(-10.086, 2.19377, -2.31871)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5625
                value: Qt.vector3d(-9.90881, 2.15965, -2.30132)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(-9.73364, 2.12966, -2.28711)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5708.33
                value: Qt.vector3d(-9.56048, 2.1038, -2.27607)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5750
                value: Qt.vector3d(-9.38933, 2.08207, -2.2682)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5791.67
                value: Qt.vector3d(-9.22021, 2.06444, -2.26349)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(-9.05311, 2.05091, -2.26192)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5875
                value: Qt.vector3d(-8.88586, 2.03944, -2.26219)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5916.67
                value: Qt.vector3d(-8.71625, 2.02802, -2.26302)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 5958.33
                value: Qt.vector3d(-8.54431, 2.01666, -2.26439)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(-8.37003, 2.00536, -2.26631)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6041.67
                value: Qt.vector3d(-8.19344, 1.99412, -2.26878)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6083.33
                value: Qt.vector3d(-8.01454, 1.98296, -2.2718)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6125
                value: Qt.vector3d(-7.83335, 1.97189, -2.27536)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(-7.64988, 1.96089, -2.27947)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6208.33
                value: Qt.vector3d(-7.46416, 1.95, -2.28412)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6250
                value: Qt.vector3d(-7.2762, 1.93921, -2.28931)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6291.67
                value: Qt.vector3d(-7.08603, 1.92853, -2.29503)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6333.33
                value: Qt.vector3d(-6.89366, 1.91797, -2.3013)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6375
                value: Qt.vector3d(-6.69913, 1.90753, -2.30809)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6416.67
                value: Qt.vector3d(-6.50247, 1.89724, -2.31542)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6458.33
                value: Qt.vector3d(-6.30369, 1.88709, -2.32326)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6500
                value: Qt.vector3d(-6.10285, 1.87711, -2.33163)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6541.67
                value: Qt.vector3d(-5.89997, 1.86729, -2.34051)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6583.33
                value: Qt.vector3d(-5.69508, 1.85764, -2.3499)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6625
                value: Qt.vector3d(-5.48824, 1.84819, -2.35978)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6666.67
                value: Qt.vector3d(-5.27948, 1.83894, -2.37017)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6708.33
                value: Qt.vector3d(-5.06884, 1.8299, -2.38104)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6750
                value: Qt.vector3d(-4.85639, 1.82109, -2.3924)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6791.67
                value: Qt.vector3d(-4.64215, 1.81252, -2.40422)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6833.33
                value: Qt.vector3d(-4.4262, 1.80419, -2.41651)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6875
                value: Qt.vector3d(-4.20858, 1.79614, -2.42926)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6916.67
                value: Qt.vector3d(-3.98936, 1.78836, -2.44245)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 6958.33
                value: Qt.vector3d(-3.76859, 1.78088, -2.45607)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7000
                value: Qt.vector3d(-3.54634, 1.77371, -2.47011)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7041.67
                value: Qt.vector3d(-3.32268, 1.76687, -2.48457)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7083.33
                value: Qt.vector3d(-3.09768, 1.76036, -2.49942)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7125
                value: Qt.vector3d(-2.87142, 1.75422, -2.51466)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7166.67
                value: Qt.vector3d(-2.64396, 1.74845, -2.53027)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7208.33
                value: Qt.vector3d(-2.4154, 1.74308, -2.54624)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7250
                value: Qt.vector3d(-2.1858, 1.73812, -2.56255)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7291.67
                value: Qt.vector3d(-1.95526, 1.73358, -2.57918)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7333.33
                value: Qt.vector3d(-1.72387, 1.7295, -2.59613)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7375
                value: Qt.vector3d(-1.49171, 1.72589, -2.61337)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7416.67
                value: Qt.vector3d(-1.25888, 1.72277, -2.63089)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7458.33
                value: Qt.vector3d(-1.02548, 1.72015, -2.64867)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7500
                value: Qt.vector3d(-0.791598, 1.71807, -2.66668)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7541.67
                value: Qt.vector3d(-0.557346, 1.71654, -2.68492)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7583.33
                value: Qt.vector3d(-0.322822, 1.71558, -2.70336)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7625
                value: Qt.vector3d(-0.0881338, 1.71521, -2.72198)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7666.67
                value: Qt.vector3d(0.146609, 1.71546, -2.74075)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7708.33
                value: Qt.vector3d(0.381299, 1.71635, -2.75967)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7750
                value: Qt.vector3d(0.615824, 1.7179, -2.77871)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7791.67
                value: Qt.vector3d(0.850069, 1.72013, -2.79784)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7833.33
                value: Qt.vector3d(1.08392, 1.72307, -2.81704)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7875
                value: Qt.vector3d(1.31726, 1.72673, -2.83629)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7916.67
                value: Qt.vector3d(1.54997, 1.73115, -2.85557)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 7958.33
                value: Qt.vector3d(1.78194, 1.73633, -2.87485)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8000
                value: Qt.vector3d(2.01304, 1.74231, -2.89411)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8041.67
                value: Qt.vector3d(2.24315, 1.74911, -2.91332)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8083.33
                value: Qt.vector3d(2.47215, 1.75674, -2.93246)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8125
                value: Qt.vector3d(2.69993, 1.76523, -2.95152)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8166.67
                value: Qt.vector3d(2.92636, 1.77459, -2.97045)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8208.33
                value: Qt.vector3d(3.15133, 1.78486, -2.98924)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8250
                value: Qt.vector3d(3.3747, 1.79604, -3.00786)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8291.67
                value: Qt.vector3d(3.59638, 1.80815, -3.02629)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8333.33
                value: Qt.vector3d(3.81623, 1.82121, -3.0445)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8375
                value: Qt.vector3d(4.03414, 1.83524, -3.06248)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8416.67
                value: Qt.vector3d(4.25, 1.85026, -3.08018)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8458.33
                value: Qt.vector3d(4.46369, 1.86627, -3.09761)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8500
                value: Qt.vector3d(4.67511, 1.88329, -3.11471)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8541.67
                value: Qt.vector3d(4.88413, 1.90134, -3.13149)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8583.33
                value: Qt.vector3d(5.09067, 1.92042, -3.1479)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8625
                value: Qt.vector3d(5.2946, 1.94054, -3.16394)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8666.67
                value: Qt.vector3d(5.49583, 1.96171, -3.17957)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8708.33
                value: Qt.vector3d(5.69426, 1.98394, -3.19478)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8750
                value: Qt.vector3d(5.8898, 2.00723, -3.20954)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8791.67
                value: Qt.vector3d(6.08235, 2.03159, -3.22384)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8833.33
                value: Qt.vector3d(6.27182, 2.05702, -3.23765)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8875
                value: Qt.vector3d(6.45812, 2.08352, -3.25095)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8916.67
                value: Qt.vector3d(6.64117, 2.11109, -3.26373)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 8958.33
                value: Qt.vector3d(6.8209, 2.13972, -3.27597)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9000
                value: Qt.vector3d(6.99722, 2.16943, -3.28765)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9041.67
                value: Qt.vector3d(7.17006, 2.20019, -3.29875)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9083.33
                value: Qt.vector3d(7.33935, 2.23201, -3.30925)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9125
                value: Qt.vector3d(7.50504, 2.26488, -3.31915)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9166.67
                value: Qt.vector3d(7.66705, 2.29879, -3.32843)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9208.33
                value: Qt.vector3d(7.82533, 2.33373, -3.33707)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9250
                value: Qt.vector3d(7.97983, 2.3697, -3.34506)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9291.67
                value: Qt.vector3d(8.1305, 2.40667, -3.35238)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9333.33
                value: Qt.vector3d(8.27729, 2.44464, -3.35903)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9375
                value: Qt.vector3d(8.42015, 2.48359, -3.365)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9416.67
                value: Qt.vector3d(8.55905, 2.52351, -3.37027)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9458.33
                value: Qt.vector3d(8.69396, 2.56438, -3.37483)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9500
                value: Qt.vector3d(8.82483, 2.60619, -3.37868)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9541.67
                value: Qt.vector3d(8.95166, 2.64893, -3.3818)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9583.33
                value: Qt.vector3d(9.0744, 2.69257, -3.3842)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9625
                value: Qt.vector3d(9.19304, 2.7371, -3.38585)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9666.67
                value: Qt.vector3d(9.30756, 2.7825, -3.38677)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9708.33
                value: Qt.vector3d(9.41794, 2.82875, -3.38693)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9750
                value: Qt.vector3d(9.52418, 2.87584, -3.38634)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9791.67
                value: Qt.vector3d(9.62626, 2.92374, -3.385)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9833.33
                value: Qt.vector3d(9.72418, 2.97244, -3.38289)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9875
                value: Qt.vector3d(9.81793, 3.02192, -3.38002)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9916.67
                value: Qt.vector3d(9.90752, 3.07215, -3.37638)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 9958.33
                value: Qt.vector3d(9.99295, 3.12313, -3.37197)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10000
                value: Qt.vector3d(10.0742, 3.17482, -3.36679)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10041.7
                value: Qt.vector3d(10.1513, 3.22722, -3.36084)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10083.3
                value: Qt.vector3d(10.2243, 3.28031, -3.35411)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10125
                value: Qt.vector3d(10.2931, 3.33405, -3.34662)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10166.7
                value: Qt.vector3d(10.3578, 3.38845, -3.33835)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10208.3
                value: Qt.vector3d(10.4185, 3.44347, -3.32931)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10250
                value: Qt.vector3d(10.475, 3.49911, -3.31951)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10291.7
                value: Qt.vector3d(10.5274, 3.55533, -3.30893)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10333.3
                value: Qt.vector3d(10.5758, 3.61214, -3.29759)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10375
                value: Qt.vector3d(10.6202, 3.6695, -3.28549)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10416.7
                value: Qt.vector3d(10.6606, 3.7274, -3.27263)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10458.3
                value: Qt.vector3d(10.697, 3.78583, -3.25901)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10500
                value: Qt.vector3d(10.7294, 3.84477, -3.24463)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10541.7
                value: Qt.vector3d(10.7579, 3.9042, -3.2295)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10583.3
                value: Qt.vector3d(10.7826, 3.96411, -3.21363)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10625
                value: Qt.vector3d(10.8033, 4.02448, -3.19702)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10666.7
                value: Qt.vector3d(10.8202, 4.0853, -3.17966)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10708.3
                value: Qt.vector3d(10.8333, 4.14655, -3.16158)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10750
                value: Qt.vector3d(10.8426, 4.20823, -3.14276)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10791.7
                value: Qt.vector3d(10.8482, 4.27031, -3.12322)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10833.3
                value: Qt.vector3d(10.85, 4.33278, -3.10296)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10875
                value: Qt.vector3d(10.8437, 4.39587, -3.07517)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10916.7
                value: Qt.vector3d(10.8246, 4.45982, -3.0325)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 10958.3
                value: Qt.vector3d(10.7925, 4.5247, -2.97417)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11000
                value: Qt.vector3d(10.7471, 4.59055, -2.89936)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11041.7
                value: Qt.vector3d(10.6882, 4.65745, -2.80724)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11083.3
                value: Qt.vector3d(10.6157, 4.72545, -2.69693)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11125
                value: Qt.vector3d(10.5292, 4.79463, -2.5676)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11166.7
                value: Qt.vector3d(10.4286, 4.86507, -2.4184)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11208.3
                value: Qt.vector3d(10.3138, 4.93684, -2.24852)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11250
                value: Qt.vector3d(10.1847, 5.01004, -2.05725)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11291.7
                value: Qt.vector3d(10.0412, 5.08477, -1.84394)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11333.3
                value: Qt.vector3d(9.88322, 5.16114, -1.60812)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11375
                value: Qt.vector3d(9.71074, 5.23926, -1.3495)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11416.7
                value: Qt.vector3d(9.5238, 5.31927, -1.06805)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11458.3
                value: Qt.vector3d(9.3225, 5.4013, -0.764054)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11500
                value: Qt.vector3d(9.10695, 5.4855, -0.438143)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11541.7
                value: Qt.vector3d(8.87733, 5.57204, -0.0913759)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11583.3
                value: Qt.vector3d(8.63388, 5.6611, 0.274752)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11625
                value: Qt.vector3d(8.37689, 5.75288, 0.658286)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11666.7
                value: Qt.vector3d(8.10671, 5.84759, 1.05684)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11708.3
                value: Qt.vector3d(7.82375, 5.94545, 1.46766)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11750
                value: Qt.vector3d(7.52847, 6.04671, 1.88769)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11791.7
                value: Qt.vector3d(7.22141, 6.15163, 2.31368)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11833.3
                value: Qt.vector3d(6.90315, 6.26049, 2.74235)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11875
                value: Qt.vector3d(6.57431, 6.37358, 3.17046)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11916.7
                value: Qt.vector3d(6.23559, 6.49119, 3.59499)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 11958.3
                value: Qt.vector3d(5.88771, 6.61363, 4.01317)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12000
                value: Qt.vector3d(5.53145, 6.74118, 4.42259)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12041.7
                value: Qt.vector3d(5.16759, 6.87412, 4.82121)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12083.3
                value: Qt.vector3d(4.79696, 7.0127, 5.20739)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12125
                value: Qt.vector3d(4.42042, 7.15711, 5.57983)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12166.7
                value: Qt.vector3d(4.03881, 7.30748, 5.93761)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12208.3
                value: Qt.vector3d(3.653, 7.46385, 6.28009)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12250
                value: Qt.vector3d(3.26385, 7.62615, 6.60688)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12291.7
                value: Qt.vector3d(2.87219, 7.7942, 6.91783)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12333.3
                value: Qt.vector3d(2.47887, 7.9677, 7.21296)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12375
                value: Qt.vector3d(2.08468, 8.14622, 7.49241)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12416.7
                value: Qt.vector3d(1.69041, 8.32923, 7.75645)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12458.3
                value: Qt.vector3d(1.29682, 8.51611, 8.00542)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12500
                value: Qt.vector3d(0.904601, 8.7062, 8.23972)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12541.7
                value: Qt.vector3d(0.514434, 8.8988, 8.45979)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12583.3
                value: Qt.vector3d(0.126951, 9.09323, 8.66608)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12625
                value: Qt.vector3d(-0.257259, 9.28885, 8.85908)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12666.7
                value: Qt.vector3d(-0.637657, 9.48507, 9.03926)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12708.3
                value: Qt.vector3d(-1.01374, 9.68137, 9.20712)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12750
                value: Qt.vector3d(-1.38505, 9.8773, 9.3631)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12791.7
                value: Qt.vector3d(-1.75117, 10.0725, 9.50768)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12833.3
                value: Qt.vector3d(-2.11174, 10.2666, 9.64132)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12875
                value: Qt.vector3d(-2.46642, 10.4595, 9.76442)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12916.7
                value: Qt.vector3d(-2.81492, 10.6509, 9.87742)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 12958.3
                value: Qt.vector3d(-3.15699, 10.8407, 9.98072)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13000
                value: Qt.vector3d(-3.4924, 11.0288, 10.0747)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13041.7
                value: Qt.vector3d(-3.82096, 11.2152, 10.1597)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13083.3
                value: Qt.vector3d(-4.14251, 11.3997, 10.2361)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13125
                value: Qt.vector3d(-4.45693, 11.5824, 10.3042)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13166.7
                value: Qt.vector3d(-4.76411, 11.7633, 10.3643)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13208.3
                value: Qt.vector3d(-5.07136, 11.9435, 10.4168)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13250
                value: Qt.vector3d(-5.38605, 12.1238, 10.4619)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13291.7
                value: Qt.vector3d(-5.70815, 12.3043, 10.4999)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13333.3
                value: Qt.vector3d(-6.03762, 12.4849, 10.531)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13375
                value: Qt.vector3d(-6.37441, 12.6655, 10.5555)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13416.7
                value: Qt.vector3d(-6.71848, 12.8461, 10.5737)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13458.3
                value: Qt.vector3d(-7.06975, 13.0265, 10.5857)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13500
                value: Qt.vector3d(-7.42814, 13.2068, 10.5917)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13541.7
                value: Qt.vector3d(-7.79356, 13.3867, 10.592)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13583.3
                value: Qt.vector3d(-8.16592, 13.5664, 10.5842)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13625
                value: Qt.vector3d(-8.54508, 13.7456, 10.5654)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13666.7
                value: Qt.vector3d(-8.93092, 13.9243, 10.5353)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13708.3
                value: Qt.vector3d(-9.32329, 14.1025, 10.4934)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13750
                value: Qt.vector3d(-9.72203, 14.28, 10.4394)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13791.7
                value: Qt.vector3d(-10.127, 14.4568, 10.3729)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13833.3
                value: Qt.vector3d(-10.5379, 14.6327, 10.2934)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13875
                value: Qt.vector3d(-10.9546, 14.8078, 10.2005)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13916.7
                value: Qt.vector3d(-11.3769, 14.9819, 10.0936)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 13958.3
                value: Qt.vector3d(-11.8045, 15.1549, 9.9723)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14000
                value: Qt.vector3d(-12.2372, 15.3268, 9.83609)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14041.7
                value: Qt.vector3d(-12.6746, 15.4975, 9.68441)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14083.3
                value: Qt.vector3d(-13.1165, 15.6669, 9.5167)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14125
                value: Qt.vector3d(-13.5625, 15.8349, 9.3324)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14166.7
                value: Qt.vector3d(-14.0124, 16.0014, 9.13091)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14208.3
                value: Qt.vector3d(-14.4657, 16.1664, 8.91162)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14250
                value: Qt.vector3d(-14.9221, 16.3298, 8.67391)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14291.7
                value: Qt.vector3d(-15.3812, 16.4915, 8.41716)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14333.3
                value: Qt.vector3d(-15.8426, 16.6514, 8.14071)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14375
                value: Qt.vector3d(-16.3058, 16.8094, 7.84394)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14416.7
                value: Qt.vector3d(-16.7705, 16.9655, 7.5262)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14458.3
                value: Qt.vector3d(-17.2361, 17.1197, 7.18688)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14500
                value: Qt.vector3d(-17.7023, 17.2717, 6.82537)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14541.7
                value: Qt.vector3d(-18.1685, 17.4216, 6.4411)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14583.3
                value: Qt.vector3d(-18.6342, 17.5693, 6.03357)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14625
                value: Qt.vector3d(-19.099, 17.7147, 5.60232)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14666.7
                value: Qt.vector3d(-19.5623, 17.8577, 5.14699)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14708.3
                value: Qt.vector3d(-20.0236, 17.9984, 4.66734)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14750
                value: Qt.vector3d(-20.4824, 18.1366, 4.16326)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14791.7
                value: Qt.vector3d(-20.9382, 18.2723, 3.63481)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14833.3
                value: Qt.vector3d(-21.3905, 18.4054, 3.08224)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14875
                value: Qt.vector3d(-21.8388, 18.5359, 2.50605)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14916.7
                value: Qt.vector3d(-22.2825, 18.6636, 1.90702)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 14958.3
                value: Qt.vector3d(-22.7211, 18.7887, 1.2862)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15000
                value: Qt.vector3d(-23.1542, 18.911, 0.645008)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15041.7
                value: Qt.vector3d(-23.5812, 19.0305, -0.0148115)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15083.3
                value: Qt.vector3d(-24.0017, 19.1471, -0.691143)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15125
                value: Qt.vector3d(-24.4152, 19.2608, -1.3815)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15166.7
                value: Qt.vector3d(-24.8213, 19.3717, -2.08307)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15208.3
                value: Qt.vector3d(-25.2194, 19.4795, -2.79272)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15250
                value: Qt.vector3d(-25.6093, 19.5844, -3.50707)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15291.7
                value: Qt.vector3d(-25.9906, 19.6862, -4.22256)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15333.3
                value: Qt.vector3d(-26.3627, 19.785, -4.93554)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15375
                value: Qt.vector3d(-26.7255, 19.8808, -5.64234)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15416.7
                value: Qt.vector3d(-27.0784, 19.9735, -6.33941)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15458.3
                value: Qt.vector3d(-27.4213, 20.0631, -7.02335)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15500
                value: Qt.vector3d(-27.7539, 20.1496, -7.69103)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15541.7
                value: Qt.vector3d(-28.0758, 20.2329, -8.33964)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15583.3
                value: Qt.vector3d(-28.3869, 20.3132, -8.96671)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15625
                value: Qt.vector3d(-28.6868, 20.3903, -9.57019)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15666.7
                value: Qt.vector3d(-28.9755, 20.4642, -10.1484)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15708.3
                value: Qt.vector3d(-29.2527, 20.535, -10.7)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15750
                value: Qt.vector3d(-29.5183, 20.6027, -11.2241)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15791.7
                value: Qt.vector3d(-29.7721, 20.6672, -11.7201)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15833.3
                value: Qt.vector3d(-30.0141, 20.7286, -12.1876)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15875
                value: Qt.vector3d(-30.244, 20.7868, -12.6266)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15916.7
                value: Qt.vector3d(-30.462, 20.842, -13.0372)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 15958.3
                value: Qt.vector3d(-30.6678, 20.894, -13.4199)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16000
                value: Qt.vector3d(-30.8616, 20.9428, -13.7749)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16041.7
                value: Qt.vector3d(-31.0431, 20.9886, -14.1029)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16083.3
                value: Qt.vector3d(-31.2126, 21.0313, -14.4047)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16125
                value: Qt.vector3d(-31.3698, 21.0709, -14.6808)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16166.7
                value: Qt.vector3d(-31.515, 21.1075, -14.9322)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16208.3
                value: Qt.vector3d(-31.648, 21.141, -15.1595)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16250
                value: Qt.vector3d(-31.769, 21.1715, -15.3636)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16291.7
                value: Qt.vector3d(-31.8781, 21.199, -15.5454)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16333.3
                value: Qt.vector3d(-31.9752, 21.2234, -15.7056)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16375
                value: Qt.vector3d(-32.0606, 21.245, -15.845)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16416.7
                value: Qt.vector3d(-32.1342, 21.2636, -15.9645)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16458.3
                value: Qt.vector3d(-32.1961, 21.2792, -16.0647)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16500
                value: Qt.vector3d(-32.2466, 21.292, -16.1465)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16541.7
                value: Qt.vector3d(-32.2856, 21.3018, -16.2105)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16583.3
                value: Qt.vector3d(-32.3133, 21.3089, -16.2574)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16625
                value: Qt.vector3d(-32.3298, 21.3131, -16.2879)
                easing.type: Easing.Linear
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(-32.3353, 21.3145, -16.3025)
                easing.type: Easing.Linear
            }
        }

        KeyframeGroup {
            target: camera
            property: "eulerRotation"

            Keyframe {
                frame: 0
                value: Qt.vector3d(-35, -115, 0)
                easing.type: Easing.InOutSine
            }
            Keyframe {
                frame: 3333
                value: Qt.vector3d(-20, -115, 10)
                easing.type: Easing.InOutSine
            }
            Keyframe {
                frame: 6666
                value: Qt.vector3d(0, -100, 40)
                easing.type: Easing.InOutSine
            }
            Keyframe {
                frame: 10000
                value: Qt.vector3d(0, 115, 0)
                easing.type: Easing.InOutSine
            }
            Keyframe {
                frame: 13333
                value: Qt.vector3d(-45, -20, -45)
                easing.type: Easing.InOutSine
            }
            Keyframe {
                frame: 16667
                value: Qt.vector3d(-35, -115, 0)
                easing.type: Easing.InOutSine
            }
        }
    }
}
