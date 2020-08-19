import QtQuick 2.12

Item {
    property int currentModelIndex: benchmarkRoot.modelIndex
    property int currentModelCount: benchmarkRoot.modelInstanceCount
    property int currentLightIndex: benchmarkRoot.lightTypeIndex
    property int currentLightCount: benchmarkRoot.lightInstanceCount
    property bool currentTexturesEnabled: benchmarkRoot.texturesEnabled

    readonly property var modelCountList: [ 1, 10, 50, 100, 250, 500, 1000 ]
    property int modelListIndex: 0

    // Maximums based on preset level
    readonly property int maxModelCount: commands.presetEntrylevel ? 100
                                                                   : commands.presetMidrange ? 500
                                                                                             : 1000
    readonly property int maxModelIndex: commands.presetEntrylevel ? 2
                                                                   : commands.presetMidrange ? 3
                                                                                             : 4
    readonly property int maxLightCount: commands.presetEntrylevel ? 4 : 7
    readonly property int maxLightIndex: 3
    readonly property int maxTextureIndex: commands.presetEntrylevel ? 2 : 4

    function update(autoModel, autoModelCount, autoLight, autoLightCount, autoTexture) {
        currentModelIndex = benchmarkRoot.modelIndex;
        currentModelCount = benchmarkRoot.modelInstanceCount;
        currentLightIndex = benchmarkRoot.lightTypeIndex;
        currentLightCount = benchmarkRoot.lightInstanceCount;
        currentTexturesEnabled = benchmarkRoot.texturesEnabled;

        // Model
        if (autoModel && currentModelIndex < maxModelIndex) {
            if (!autoModelCount || (autoModelCount && currentModelCount == maxModelCount)) {
                ++benchmarkRoot.modelIndex;
                if (autoModelCount) {
                    // Model index was updated, reset model count
                    console.log("reset model count");
                    benchmarkRoot.modelInstanceCount = 1;
                    modelListIndex = 0;
                }
            }
        }

        if (autoModel && benchmarkRoot.modelIndex == maxModelIndex)
            autoModel = false;

        // Model count
        if (autoModelCount && currentModelCount < maxModelCount) {
            if (!autoModel || (autoModel && currentModelIndex == benchmarkRoot.modelIndex)) {
                // Model index was not updated, increase model count
                benchmarkRoot.modelInstanceCount = modelCountList[++modelListIndex];
            }
        }

        if (!autoModel && benchmarkRoot.modelInstanceCount == maxModelCount)
            autoModelCount = false;

        // Light type
        if (autoLight && currentLightIndex < maxLightIndex) {
            if (!autoLightCount || (autoLightCount && currentLightCount == maxLightCount)) {
                ++benchmarkRoot.lightTypeIndex;
                if (autoLightCount) {
                    console.log("reset light count");
                    benchmarkRoot.lightInstanceCount = 1;
                }
            }
        }

        if (autoLight && benchmarkRoot.lightTypeIndex == maxLightIndex)
            autoLight = false;

        // Light count
        if (autoLightCount && currentLightCount < maxLightCount) {
            if (!autoLight || (autoLight && currentLightIndex == benchmarkRoot.lightTypeIndex)) {
                // Light index was not updated, increase light count
                ++benchmarkRoot.lightInstanceCount;
            }
        }

        if (!autoLight && benchmarkRoot.lightInstanceCount == maxLightCount)
            autoLightCount = false;

        // Textures
        if (autoTexture) {
            if (!currentTexturesEnabled)
                benchmarkRoot.texturesEnabled = true;
            else
                ++benchmarkRoot.textureSizeIndex;

            if (benchmarkRoot.textureSizeIndex == maxTextureIndex)
                autoTexture = false;
        }

        // Check if that was the final update
        commands.autoModeEnabled
                = autoModel || autoModelCount || autoLight || autoLightCount || autoTexture;
    }
}
