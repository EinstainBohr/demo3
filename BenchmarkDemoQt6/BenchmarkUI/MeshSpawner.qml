import QtQuick 2.12
import QtQuick3D 1.15

Node {
    id: shapeSpawner
    property bool demomode: false;
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
        for (var i = instances.length; i < instanceCount; ++i) {
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

                let instance = meshComponent.createObject(
                        shapeSpawner, { "x": xPos, "y": yPos, "z": zPos,
                            "scale": Qt.vector3d(instanceScale, instanceScale, instanceScale),
                            "eulerRotation": Qt.vector3d(Math.random() * xPos / 20,
                                                         Math.random() * yPos / 20,
                                                         Math.random() * zPos / 20),
                            "materials": shapeSpawner.material,
                            "useExternalMaterial": !shapeSpawner.useInternalMaterial,
                            "textureSize": textureSize });
                instances.push(instance);
            }
        }
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
}

/*##^##
Designer {
    D{i:0;3d-view:false}
}
##^##*/
