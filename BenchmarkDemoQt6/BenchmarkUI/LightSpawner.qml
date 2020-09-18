import QtQuick 2.12
import QtQuick3D 1.15

Node {
    id: lightSpawner
    property real range: 200
    property var instances: []
    property string light: "qrc:/BenchmarkUI/LightContainer.qml"
    property int instanceCount: 1
    property int lightType: 0
    property real brightness: 2.5
    property bool shadowsEnabled: false
    property bool demomode: false

    function remove(clearAll) {
        var endCount = clearAll ? 0 : instanceCount;
        while (instances.length > endCount) {
            let instance = instances.pop();
            instance.destroy();
        }
    }

    function create(randomize) {
        // Add instances
        if (demomode) {
            var lightComponent = Qt.createComponent(light);
            let instance = lightComponent.createObject(
                    lightSpawner, {
                        "instancePosition": Qt.vector3d(-15, 30, 0),
                        "lightType": lightSpawner.lightType,
                        "brightness": lightSpawner.brightness,
                        "shadowsEnabled": lightSpawner.shadowsEnabled,
                        "demomode": true });
            instances.push(instance);
        } else {
            for (var i = instances.length; i < instanceCount; ++i) {
                var xPos = (instanceCount > 1 && randomize) ? (2 * Math.random() * range) - range
                                                            : 600;
                var yPos = (instanceCount > 1 && randomize) ? (2 * Math.random() * range) - range
                                                            : 150;
                var zPos = (instanceCount > 1 && randomize) ? -(3 * Math.random() * range)
                                                            : 0;
                var rot = (instanceCount > 1 && randomize)
                        ? Qt.vector3d(xPos * 1.8, yPos * 1.8, zPos * 1.8)
                        : Qt.vector3d(-45, 45, 0)
                var lightComponent2 = Qt.createComponent(light);
                let instance = lightComponent2.createObject(
                        lightSpawner, {
                            "instancePosition": Qt.vector3d(xPos, yPos, zPos),
                            "instanceRotation": rot,
                            "lightType": lightSpawner.lightType,
                            "brightness": lightSpawner.brightness,
                            "shadowsEnabled": lightSpawner.shadowsEnabled,
                            "demomode": false });
                instances.push(instance);
            }
        }
    }

    onInstanceCountChanged: {
        if (!visible)
            return;
        lightSpawner.remove(false)
        lightSpawner.create(true)
    }

    onLightTypeChanged: {
        if (!visible)
            return;
        lightSpawner.remove(true)
        lightSpawner.create(true)
    }

    onBrightnessChanged: {
        if (!visible)
            return;
        lightSpawner.remove(true)
        lightSpawner.create(true)
    }

    onShadowsEnabledChanged: {
        if (!visible)
            return;
        lightSpawner.remove(true)
        lightSpawner.create(true)
    }

    Component.onCompleted: {
        if (!visible || instances.length > 0)
            return;
        // Create 1 instance to get started
        lightSpawner.create(instanceCount > 1);
    }
}

/*##^##
Designer {
    D{i:0;3d-view:false}
}
##^##*/
