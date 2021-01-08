import QtQuick
import QtQuick3D
import QtQuick3D.Helpers

Node {
    id: shapeSpawner
    property bool demomode: false;
    property bool useInstancing: false;
    property var instances: []
    property string model: "qrc:/Model1k.qml"
    property Material material: DefaultMaterial {
        id: defaultMaterial
        diffuseColor: "red"
        specularAmount: 0.5
    }
    property string textureSize: "1024x1024"
    property bool useInternalMaterial: true
    property int instanceCount: 1
    property real instanceScale: instanceCount > 50
                                 ? 10 : instanceCount > 25
                                   ? 20 : instanceCount > 5
                                     ? 30 : instanceCount === 1
                                       ? 100 : 40;
    property real range: 200
    property real minRange: 0

    function remove(clearAll) {
        var endCount = clearAll ? 0 : instanceCount;
        while (instances.length > endCount) {
            let instance = instances.pop();
            instance.destroy();
        }
    }

    function create(randomize) {
        // Add instances
        for (var i = instances.length; i < (useInstancing ? 1 : instanceCount); ++i) {
            var meshComponent = Qt.createComponent(model);
            if (demomode) {
                let instance = meshComponent.createObject(
                        shapeSpawner, { "textureSize": textureSize });
                instances.push(instance);
            } else {
                var xPos = (instanceCount > 1 && randomize)
                        ? 2 * ((2 * Math.random() * range) - range)
                        : 0;
                var yPos = (instanceCount > 1 && randomize)
                        ? (2 * Math.random() * range) - range
                        : -150;
                var zPos = (instanceCount > 1 && randomize)
                        ? (2 * Math.random() * range) - range
                        : 0;

                if (Math.abs(xPos) < minRange)
                    xPos += (xPos > 0 ? minRange : -minRange);
                if (Math.abs(zPos) < minRange)
                    zPos += (zPos > 0 ? minRange : -minRange);

                if (useInstancing) {
                    let instance = meshComponent.createObject(
                            shapeSpawner, {
                                "scale": Qt.vector3d(instanceScale, instanceScale, instanceScale),
                                "materials": shapeSpawner.material,
                                "useExternalMaterial": !shapeSpawner.useInternalMaterial,
                                "textureSize": textureSize,
                                "instancing": randomInstancing });
                    instances.push(instance);
                } else {
                    let instance = meshComponent.createObject(
                            shapeSpawner, {
                                "x": xPos, "y": yPos, "z": zPos,
                                "scale": Qt.vector3d(instanceScale, instanceScale, instanceScale),
                                "eulerRotation": Qt.vector3d(Math.random() * xPos / 20,
                                                             Math.random() * yPos / 20,
                                                             Math.random() * zPos / 20),
                                "materials": shapeSpawner.material,
                                "useExternalMaterial": !shapeSpawner.useInternalMaterial,
                                "textureSize": textureSize,
                                "instancing": null });
                    instances.push(instance);
                }
            }
        }
    }

    onUseInstancingChanged: {
        if (!visible)
            return;
        shapeSpawner.remove(true);
        shapeSpawner.create(true);
    }

    onInstanceCountChanged: {
        if (!visible)
            return;
        instanceScale = instanceCount > 50
                ? 10 : instanceCount > 25
                  ? 20 : instanceCount > 5
                    ? 30 : instanceCount === 1
                      ? 100 : 40;
        shapeSpawner.remove(true);
        shapeSpawner.create(true);
    }

    onMaterialChanged: {
        if (!visible)
            return;
        shapeSpawner.remove(true);
        shapeSpawner.create(true);
    }

    onTextureSizeChanged: {
        if (!visible || !useInternalMaterial)
            return;
        shapeSpawner.remove(true);
        shapeSpawner.create(true);
    }

    onUseInternalMaterialChanged: {
        if (!visible)
            return;
        shapeSpawner.remove(true);
        shapeSpawner.create(true);
    }

    onModelChanged: {
        if (!visible)
            return;

        // Hack to test mesh count vs. triangle count
        /*
        switch (model) {
            case "qrc:/Model1k.qml":
            instanceCount = 1000;
            break;
            case "qrc:/Model10k.qml":
            instanceCount = 100;
            break;
            case "qrc:/Model50k.qml":
            instanceCount = 20;
            break;
            case "qrc:/Model100k.qml":
            instanceCount = 10;
            break;
            case "qrc:/Model500k.qml":
            instanceCount = 2;
            break;
        }
        */
        shapeSpawner.remove(true);
        shapeSpawner.create(true);
    }

    Component.onCompleted: {
        if (!visible || instances.length > 0)
            return;
        // Create 1 instance to get started
        shapeSpawner.create(instanceCount > 1);
    }

    PropertyAnimation on eulerRotation.y {
        from: 0
        to: 360
        duration: 60000
        running: !demomode
        loops: Animation.Infinite
    }

    RandomInstancing {
        id: randomInstancing
        instanceCount: shapeSpawner.instanceCount

        position: InstanceRange {
            from: Qt.vector3d(-range * 2, -range, -range)
            to: Qt.vector3d(range * 2, range, range)
        }
        rotation: InstanceRange {
            from: Qt.vector3d(-range / 20, -range / 20, -range / 20)
            to: Qt.vector3d(range / 20, range / 20, range / 20)
        }
    }
}

/*##^##
Designer {
    D{i:0;3d-view:false}
}
##^##*/
