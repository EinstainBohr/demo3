
# BenchmarkDemo Test Scripts

## Using Scripts to Run Tests in Bulk

Usage: `BenchmarkDemo --mode benchmark --testset <scriptname.json>`

For example: `BenchmarkDemo --mode benchmark --testset testscripts/effects.json`

## Script Format
Test scripts are JSON, and follow the normal JSON notation. Tests are added into the file as a list, and are run one after the other, generating test report from each individual test.
For example:

    [
        {
            "name":"Directional light, shadows OFF",
            "lightTypeIndex":0,
            "lightInstanceCount":1,
            "shadowsEnabled":false,
            "msaaQualityIndex":0
        },
        {
            "name":"Directional light, shadows ON",
            "lightTypeIndex":0,
            "lightInstanceCount":1,
            "shadowsEnabled":true,
            "msaaQualityIndex":0
        }
    ]
If a value is not set in the following test sets, it will remain at the value set in the previous set. The only exception for this are the effects, which are always reset between tests. The previous example could be done like this to keep it short:

    [
        {
            "name":"Directional light, shadows OFF",
            "lightTypeIndex":0,
            "lightInstanceCount":1,
            "shadowsEnabled":false,
            "msaaQualityIndex":0
        },
        {
            "name":"Directional light, shadows ON",
            "shadowsEnabled":true
        }
    ]

## Supported Names and Their Values
|Name|Format|Values|
|--|--|--|
|name|string|name of the test set|
|modelIndex|integer|0: 1k model<br> 1: 10k model<br> 2: 50k model<br> 3: 100k model<br> 4: 500k model|
|modelInstanceCount|integer|0...1000|
|instancingEnabled|boolean|true<br>false|
|lightTypeIndex|integer|0: Directional<br> 1: Spot<br> 2: Point<br> 3: Area|
|lightInstanceCount|integer|0...7|
|shadowsEnabled|boolean|true<br>false|
|iblEnabled|boolean|true<br>false|
|aoEnabled|boolean|true<br>false|
|skyboxEnabled|boolean|true<br>false|
|texturesEnabled|boolean|true<br>false|
|textureSizeIndex|integer|0: 256x256<br> 1: 512x512<br> 2: 1024x1024<br> 3: 2048x2048<br> 4:4096x4096|
|msaaQualityIndex|integer|0: OFF<br> 1: Medium (2X)<br> 2: High (4X)<br> 3: Very High (8X)|
|materialIndex|integer|0: Default Material<br> 1: Principled Material - Metal<br> 2: Principled Material - Dielectric<br> 3: Copper [overrides texture setting]<br> 4: Red Plastic [overrides texture setting]<br> 5: Glass [overrides texture setting]<br> 6: Original Material|
|renderMode|string|"Offscreen"<br>"Underlay"<br>"Overlay"|
|temporalAA|boolean|true<br>false|
|effects|list|see the effects section|
## Supported Effects
Effects are given in a list, and are strings. For example:

    "effects":[
                "HDRBloomTonemap",
                "DepthOfFieldHQBlur"
    ]

The following effect strings are supported.

 - AdditiveColorGradient
 - Blur
 - BrushStrokes
 - ChromaticAberration
 - ColorMaster
 - DepthOfFieldHQBlur
 - Desaturate
 - DistortionRipple
 - DistortionSphere
 - DistortionSpiral
 - EdgeDetect
 - Emboss
 - Flip
 - Fxaa
 - GaussianBlur
 - HDRBloomTonemap
 - MotionBlur
 - Scatter
 - SCurveTonemap
 - TiltShift
 - Vignette

