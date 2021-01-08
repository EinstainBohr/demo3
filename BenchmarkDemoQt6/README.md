# BenchmarkDemoQt6

QtQuick3D for Qt 6 benchmark demo application. The demo is based on QtQuick3D 6.0, and requires Qt 6.0 to work without having to hack things manually.

The application contains UI for controlling all (or very near all) features supported by QtQuick3D. This allows quick testing of the capabilities of your hardware.

Running
-------
The demo can be started in different operating modes with command line arguents. If no arguments are given, the demo will run in normal mode with midrange settings for desktop target.

Usage: `BenchmarkDemoQt6 <argument> <value>`

For example: `BenchmarkDemoQt6 --mode demo`

Supported arguments:

```
--help, -?  Prints out this help.
--mode      The startup mode. Can be one of: [ normal, demo, benchmark ].
            Mode is 'normal' by default.
            Normal mode will run with the configuration UI enabled.
            Demo mode will run continuously in the demo mode and will not generate benchmark
            log file. It also has the configuration UI disabled. Demo mode runs with
            highest settings if both '--target desktop' and '--preset highend' are set. There are
            no separate 'entrylevel' settings available, it will run as 'midrange' at the minimum.
            Benchmark mode will run the benchmark measurement in the given preset and
            target configuration. It also has the configuration UI disabled.
--preset    A preset for a certain level HW. Can be one of: [ entrylevel, midrange, highend ].
            Preset is 'midrange' by default.
--target    The target environment. Can be one of: [ embedded, desktop ].
            Target is 'desktop' by default.
--speed     Only used in demo mode. Determines the speed at which the animation loop is run.
            Can be one of: [ slow, normal, fast, veryfast ]. Speed is 'normal' by default.
--scene     Demo mode scene. Can be one of: [ flythrough, cockpit ].
            Preset is 'flythrough' by default.
--automatic Only used in benchmark mode. Defines a set of benchmarks to be run one after
            another. Can be one of: [ model, modelcount, instancing, light, lightcount, texture ].
            model, modelcount, and instancing can be specified at the same time
            [ --automatic model --automatic modelcount --automatic instancing ], as well as
            light and lightcount [ --automatic light --automatic lightcount ]. instancing
            cannot be used by itself. Preset affects the maximum model complexity, as well
            as the maximum number of lights and models.
            Cannot be used together with 'testset'.
--testset   Only used in benchmark mode. Value is a path to the JSON file containing the
            tests to be run. For example [ --testset /testscripts/exampletestset.json ]. Cannot
            be used together with 'automatic'.
--report    Only used in benchmark mode. Determines the report file style, either combining
            each test result into a single file, or saving each one into a separate file.
            'single' style filename begins with the test script filename.
            Can be one of: [ single, multi ]. Report is 'single' by default.
```

Keyboard input
--------------
Currently the only keyboard input supported is switching between cockpit scene and flythrough scene in the demo mode. You can toggle between these two by pressing the space bar.

Using simplified asset set
--------------------------
In case you want to run a strictly simplified version of the application, you will need to take the assets-simple.qrc resource file into use instead of using the default assets.qrc resource file.
You can do that by changing the comments in BenchmarkDemoQt6.pro as follows:
```
# Define this if you want to benchmark with very simple one-mesh models
CONFIG += SIMPLE_ASSET_MODE
```
With the simple asset set each model contains exactly one mesh and one material, and the triangle count is almost exactly what is shown in the UI. The difference in triangle count is between +1.2% (for the 1k model), and -0.2% (for the 10k model). For the larger models triangle count is so close it does not really matter at all.

Optionally you can build simple asset version using the BenchmarkDemoQt6Simple.pro project file. It does not include demo mode assets at all, so it will only run in normal and benchmark modes.

Problems with too large executable
----------------------------------
If the executable size is too large for your target, first try building with the BenchmarkDemoQt6Simple.pro project file.

If the executable size is still too large, you can consider removing the largest textures from the resource file (assets-simple.qrc):
```
<!--        <file>maps/4096x4096/basecolor.jpg</file>
        <file>maps/4096x4096/metallic.jpg</file>
        <file>maps/4096x4096/normal.jpg</file>
        <file>maps/4096x4096/roughness.jpg</file>-->
```
After doing so selecting the `4096x4096` texture size option in the UI results in untextured models.

Another option is to remove the most complex model file:
```
<!--        <file>meshes/500k.mesh</file>-->
```
After doing so selecting the `Very High (500k)` mesh option in the UI will fail.

Using your own assets
---------------------
It is possible to replace the assets used in the application with your own. You will have to follow these steps:

1. Create a new subfolder under BenchmarkUI folder, for example "myAssets"
```
    BenchmarkDemoQt6
    |_ BenchmarkUI
        |_ assets
        |_ fonts
        |_ imports
        |_ lightprobe
        |_ myAssets  <--
```

2. Convert your assets (model) using the balsam tool from QtQuick3D tools
    - Make sure the scale of your assets is normalized. If it is not, you will have to adjust the scale in application code (MeshSpawner.qml / instanceScale)
    - Use the following command-line arguments when converting the model: --removeRedundantMaterials --findInstances --optimizeMeshes --optimizeGraph
    - If you don't get all the materials you should get, for example, you can try converting just with --optimizeGraph

    For example: `balsam --removeRedundantMaterials --findInstances --optimizeMeshes --optimizeGraph /tmp/MyCoolModel.fbx -o /tmp/convertedOutput`

3. Copy the output of balsam to "myAssets" folder, for example: `cp -rf /tmp/convertedOutput/* <path_to>/BenchmarkDemoQt6/BenchmarkUI/myAssets`

4. Create a resource file into "myAssets" folder, for example "myAssets.qrc"

5. Add the contents of the "myAssets" folder into the resource file, excluding "myAssets.qrc" itself

6. Add an alias for your model file name. The following aliases are supported (as these are the original models in the application):
    - Model1k.qml, Model10k.qml, Model50k.qml, Model100k.qml, Model500k.qml
    - Your qrc file should look something like this:
```
        <RCC>
            <qresource prefix="/">
                <file alias="Model100k.qml">MyCoolModel.qml</file>
                <file>meshes/_MergedNode_0.mesh</file>
                <file>meshes/cube_003.mesh</file>
                <file>meshes/cube_004.mesh</file>
                <file>meshes/cube_006.mesh</file>
            </qresource>
        </RCC>
```

7. Replace the original resource file with your qrc file in the BenchmarkDemoQt6.pro -file:
```
    RESOURCES += qml.qrc \
        #BenchmarkUI/assets/assets.qrc \
        BenchmarkUI/test/myAssets.qrc \
        $$files(BenchmarkUI/*.qml)
```

All done.

Note: When using your own assets changing instancing, texture size, texture config option, or material does not work. To get them working will require manual modification of the generated balsam output. You can compare the generated balsam output to the original assets in the demo if you want to do that.


