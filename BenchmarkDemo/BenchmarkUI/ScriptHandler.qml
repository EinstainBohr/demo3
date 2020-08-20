import QtQuick 2.12
import FileHelper 1.0

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
        // Fill in the next test set features
        // TODO: Pass test name to logger, so that it can be written to log as well
        console.log(jsonScript[currentTestSet].name);
        // TODO: If there's a missing feature, should we keep the previous setting,
        // or print an error (or both)?
        benchmarkRoot.modelIndex = jsonScript[currentTestSet].modelIndex;
        benchmarkRoot.modelInstanceCount = jsonScript[currentTestSet].modelInstanceCount;
        benchmarkRoot.lightTypeIndex = jsonScript[currentTestSet].lightTypeIndex;
        benchmarkRoot.lightInstanceCount = jsonScript[currentTestSet].lightInstanceCount;
        benchmarkRoot.shadowsEnabled = jsonScript[currentTestSet].shadowsEnabled;
        benchmarkRoot.iblEnabled = jsonScript[currentTestSet].iblEnabled;
        benchmarkRoot.aoEnabled = jsonScript[currentTestSet].aoEnabled;
        benchmarkRoot.skyboxEnabled = jsonScript[currentTestSet].skyboxEnabled;
        benchmarkRoot.texturesEnabled = jsonScript[currentTestSet].texturesEnabled;
        benchmarkRoot.textureSizeIndex = jsonScript[currentTestSet].textureSizeIndex;
        benchmarkRoot.msaaQualityIndex = jsonScript[currentTestSet].msaaQualityIndex;
        benchmarkRoot.materialIndex = jsonScript[currentTestSet].materialIndex;
        // TODO: Fill in the effect list
        if (jsonScript[currentTestSet].effects) {
            for (var effectIdx = 0; effectIdx < jsonScript[currentTestSet].effects.length;
                 ++effectIdx) {
                console.log(jsonScript[currentTestSet].effects[effectIdx]);
                //benchmarkRoot.effectList = jsonScript[currentTestSet].effects;
            }
        }
    }

    FileIO {
        id: fileReader
    }
}
