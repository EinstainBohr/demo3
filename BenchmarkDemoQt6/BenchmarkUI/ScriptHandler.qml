import QtQuick
import FileHelper

Item {
    property url source: ""
    property string script: ""
    property var jsonScript: ""
    readonly property int testSets: jsonScript.length
    property int currentTestSet: -1

    function parseScript() {
        fileReader.source = source;
        script = fileReader.read();
        jsonScript = JSON.parse(script);
        console.log("Test set file contains " + testSets + " test sets.");
    }

    function getNextTest() {
        if (++currentTestSet == testSets - 1) {
            // This is the last set, indicate we need to quit after
            commands.scriptModeEnabled = false;
        }
        var testname = jsonScript[currentTestSet].name;
        // Clear effect list and special cases
        benchmarkRoot.effectList = [];
        effectMotionBlur.checked = false;
        // Fill in the next test set features
        // If there's a missing feature, we keep the previous setting for it
        if (jsonScript[currentTestSet].modelIndex !== undefined)
            benchmarkRoot.modelIndex = jsonScript[currentTestSet].modelIndex;
        if (jsonScript[currentTestSet].modelInstanceCount !== undefined)
            benchmarkRoot.modelInstanceCount = jsonScript[currentTestSet].modelInstanceCount;
        if (jsonScript[currentTestSet].lightTypeIndex !== undefined)
            benchmarkRoot.lightTypeIndex = jsonScript[currentTestSet].lightTypeIndex;
        if (jsonScript[currentTestSet].lightInstanceCount !== undefined)
            benchmarkRoot.lightInstanceCount = jsonScript[currentTestSet].lightInstanceCount;
        if (jsonScript[currentTestSet].shadowsEnabled !== undefined)
            benchmarkRoot.shadowsEnabled = jsonScript[currentTestSet].shadowsEnabled;
        if (jsonScript[currentTestSet].iblEnabled !== undefined)
            benchmarkRoot.iblEnabled = jsonScript[currentTestSet].iblEnabled;
        if (jsonScript[currentTestSet].aoEnabled !== undefined)
            benchmarkRoot.aoEnabled = jsonScript[currentTestSet].aoEnabled;
        if (jsonScript[currentTestSet].skyboxEnabled !== undefined)
            benchmarkRoot.skyboxEnabled = jsonScript[currentTestSet].skyboxEnabled;
        if (jsonScript[currentTestSet].texturesEnabled !== undefined)
            benchmarkRoot.texturesEnabled = jsonScript[currentTestSet].texturesEnabled;
        if (jsonScript[currentTestSet].textureSizeIndex !== undefined)
            benchmarkRoot.textureSizeIndex = jsonScript[currentTestSet].textureSizeIndex;
        if (jsonScript[currentTestSet].msaaQualityIndex !== undefined)
            benchmarkRoot.msaaQualityIndex = jsonScript[currentTestSet].msaaQualityIndex;
        if (jsonScript[currentTestSet].materialIndex !== undefined)
            benchmarkRoot.materialIndex = jsonScript[currentTestSet].materialIndex;
        // Render mode
        if (jsonScript[currentTestSet].renderMode !== undefined) {
            renderModeCB.currentIndex = ((jsonScript[currentTestSet].renderMode === "Underlay")
                                         ? 1 : (jsonScript[currentTestSet].renderMode === "Overlay")
                                           ? 2 : 0);
            renderModeCB.onActivated(renderModeCB.currentIndex);
        }
        // Temporal AA
        if (jsonScript[currentTestSet].temporalAA !== undefined) {
            temporalAA.checked = jsonScript[currentTestSet].temporalAA;
            temporalAA.onClicked();
        }
        // Effects
        if (jsonScript[currentTestSet].effects) {
            for (var effectIdx = 0; effectIdx < jsonScript[currentTestSet].effects.length;
                 ++effectIdx) {
                var effect = jsonScript[currentTestSet].effects[effectIdx];
                switch (effect) {
                case "AdditiveColorGradient":
                    benchmarkRoot.effectList.push(effectInstanceAdditiveColorGradient);
                    break;
                case "Blur":
                    benchmarkRoot.effectList.push(effectInstanceBlur);
                    break;
                case "BrushStrokes":
                    benchmarkRoot.effectList.push(effectInstanceBrushStrokes);
                    break;
                case "ChromaticAberration":
                    benchmarkRoot.effectList.push(effectInstanceChromaticAberration);
                    break;
                case "ColorMaster":
                    benchmarkRoot.effectList.push(effectInstanceColorMaster);
                    break;
                case "DepthOfFieldHQBlur":
                    benchmarkRoot.effectList.push(effectInstanceDepthOfFieldHQBlur);
                    break;
                case "Desaturate":
                    benchmarkRoot.effectList.push(effectInstanceDesaturate);
                    break;
                case "DistortionRipple":
                    benchmarkRoot.effectList.push(effectInstanceDistortionRipple);
                    break;
                case "DistortionSphere":
                    benchmarkRoot.effectList.push(effectInstanceDistortionSphere);
                    break;
                case "DistortionSpiral":
                    benchmarkRoot.effectList.push(effectInstanceDistortionSpiral);
                    break;
                case "EdgeDetect":
                    benchmarkRoot.effectList.push(effectInstanceEdgeDetect);
                    break;
                case "Emboss":
                    benchmarkRoot.effectList.push(effectInstanceEmboss);
                    break;
                case "Flip":
                    benchmarkRoot.effectList.push(effectInstanceFlip);
                    break;
                case "Fxaa":
                    benchmarkRoot.effectList.push(effectInstanceFXAA);
                    break;
                case "GaussianBlur":
                    benchmarkRoot.effectList.push(effectInstanceGaussianBlur);
                    break;
                case "HDRBloomTonemap":
                    benchmarkRoot.effectList.push(effectInstanceHDRBloomTonemap);
                    break;
                case "MotionBlur":
                    benchmarkRoot.effectList.push(effectInstanceMotionBlur);
                    // Clearmode needs to be changed too, so trigger it
                    effectMotionBlur.checked = true;
                    break;
                case "Scatter":
                    benchmarkRoot.effectList.push(effectInstanceScatter);
                    break;
                case "SCurveTonemap":
                    benchmarkRoot.effectList.push(effectInstanceSCurveTonemap);
                    break;
                case "TiltShift":
                    benchmarkRoot.effectList.push(effectInstanceTiltShift);
                    break;
                case "Vignette":
                    benchmarkRoot.effectList.push(effectInstanceVignette);
                    break;
                default:
                    console.warn("Unknown effect: " + effect);
                    break;
                }
            }
        }
        return testname ? testname : "";
    }

    FileIO {
        id: fileReader
    }
}
