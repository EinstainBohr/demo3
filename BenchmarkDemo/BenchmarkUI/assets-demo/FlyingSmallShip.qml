import QtQuick3D 1.15
import QtQuick 2.15
import QtQuick.Timeline 1.0

Node {
    id: flyingsmallship
    x: -11.4311
    y: 0.371851
    z: -0.329138
    eulerRotation.y: 90
    scale.x: 0.25
    scale.y: 0.25
    scale.z: 0.25

    Model10k {
    }

    Timeline {
        id: timeline0
        startFrame: 0
        endFrame: 41709
        currentFrame: 0
        enabled: true
        animations: [
            TimelineAnimation {
                duration: 41709
                from: 0
                to: 41709
                running: true
                loops: Animation.Infinite
            }
        ]

        KeyframeGroup {
            target: flyingsmallship
            property: "position"

            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-11.4311, 0.371851, -0.329138)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-11.4317, 0.371851, -0.329126)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-11.4323, 0.371851, -0.329114)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-11.433, 0.371851, -0.329103)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-11.4336, 0.371851, -0.329091)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-11.4342, 0.371851, -0.329079)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-11.4348, 0.371851, -0.329067)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-11.4355, 0.371851, -0.329056)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-11.4361, 0.371851, -0.329044)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-11.4367, 0.371851, -0.329032)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-11.4374, 0.371851, -0.329021)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-11.438, 0.371851, -0.329009)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-11.4386, 0.371851, -0.328997)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-11.4393, 0.371851, -0.328985)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-11.4399, 0.371851, -0.328974)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-11.4405, 0.371851, -0.328962)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-11.4411, 0.371851, -0.32895)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-11.4418, 0.371851, -0.328939)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-11.4424, 0.371851, -0.328927)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-11.443, 0.371851, -0.328915)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-11.4437, 0.371851, -0.328903)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(-11.4443, 0.371851, -0.328892)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(-11.4449, 0.371851, -0.32888)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(-11.4456, 0.371851, -0.328868)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(-11.4462, 0.371851, -0.328857)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(-11.4468, 0.371851, -0.328845)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(-11.4474, 0.371851, -0.328833)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(-11.4481, 0.371851, -0.328821)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(-11.4487, 0.371851, -0.32881)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-11.4493, 0.371851, -0.328798)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-11.45, 0.371851, -0.328786)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-11.4506, 0.371851, -0.328775)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-11.4512, 0.371851, -0.328763)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-11.4519, 0.371851, -0.328751)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-11.4525, 0.371851, -0.328739)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-11.4531, 0.371851, -0.328728)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-11.4537, 0.371851, -0.328716)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-11.4544, 0.371851, -0.328704)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-11.455, 0.371851, -0.328693)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-11.4556, 0.371851, -0.328681)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-11.4563, 0.371851, -0.328669)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-11.4569, 0.371851, -0.328657)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-11.4575, 0.371851, -0.328646)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-11.4581, 0.371851, -0.328634)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-11.4588, 0.371851, -0.328622)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-11.4594, 0.371851, -0.328611)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-11.4752, 0.371851, -0.328599)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-11.4909, 0.371851, -0.328587)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-11.5119, 0.371851, -0.328575)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-11.5366, 0.371851, -0.328564)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-11.5651, 0.371851, -0.328552)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-11.5973, 0.371851, -0.32854)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-11.6331, 0.371851, -0.328529)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-11.6723, 0.371851, -0.328517)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-11.7145, 0.371851, -0.328505)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-11.7596, 0.371851, -0.328493)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-11.807, 0.371851, -0.328482)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-11.8566, 0.371851, -0.32847)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-11.9078, 0.371851, -0.328458)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-11.9605, 0.371851, -0.328446)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-12.0143, 0.371851, -0.328435)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-12.069, 0.371851, -0.328423)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-12.126, 0.376889, -0.328411)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-12.187, 0.392274, -0.3284)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-12.252, 0.418327, -0.328388)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-12.3212, 0.455209, -0.328376)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-12.3944, 0.502866, -0.328364)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-12.4715, 0.560972, -0.328353)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-12.5523, 0.628872, -0.328341)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-12.6364, 0.705554, -0.328329)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-12.7232, 0.789655, -0.328318)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-12.812, 0.879501, -0.328306)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-12.9021, 0.973198, -0.328294)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-12.9927, 1.06875, -0.328282)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-13.0831, 1.16419, -0.328271)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-13.1726, 1.2577, -0.328259)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-13.2605, 1.34769, -0.328247)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-13.3464, 1.43288, -0.328236)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-13.43, 1.51227, -0.328224)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-13.5108, 1.58517, -0.328212)
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(-13.5889, 1.6511, -0.3282)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(-13.664, 1.70984, -0.328189)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(-13.7365, 1.76548, -0.328177)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(-13.8066, 1.82217, -0.328165)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(-13.8742, 1.87985, -0.328154)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(-13.9396, 1.93846, -0.328142)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(-14.0027, 1.99792, -0.32813)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-14.0635, 2.05814, -0.327347)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(-14.1223, 2.11902, -0.326215)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(-14.179, 2.18043, -0.324656)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(-14.2339, 2.24225, -0.322585)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(-14.2871, 2.30431, -0.319913)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(-14.3388, 2.36645, -0.316546)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(-14.3893, 2.42849, -0.312387)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(-14.4387, 2.49023, -0.307335)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(-14.4874, 2.55145, -0.30129)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(-14.5357, 2.61194, -0.294149)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(-14.5838, 2.67147, -0.285813)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(-14.6321, 2.7298, -0.276187)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(-14.681, 2.78671, -0.26518)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.vector3d(-14.7308, 2.84197, -0.25271)
            }
            Keyframe {
                frame: 4250
                value: Qt.vector3d(-14.7819, 2.89536, -0.238703)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.vector3d(-14.8345, 2.94667, -0.223096)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(-14.8891, 2.9957, -0.205837)
            }
            Keyframe {
                frame: 4375
                value: Qt.vector3d(-14.9459, 3.04229, -0.186887)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.vector3d(-15.0052, 3.08628, -0.166219)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.vector3d(-15.0673, 3.12754, -0.143819)
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(-15.1325, 3.16598, -0.119685)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.vector3d(-15.2008, 3.2015, -0.0938278)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.vector3d(-15.2725, 3.23405, -0.0662665)
            }
            Keyframe {
                frame: 4625
                value: Qt.vector3d(-15.3476, 3.2636, -0.0370308)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(-15.4264, 3.29013, -0.00615859)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.vector3d(-15.5089, 3.31365, 0.0263058)
            }
            Keyframe {
                frame: 4750
                value: Qt.vector3d(-15.5951, 3.33418, 0.0603124)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.vector3d(-15.685, 3.35176, 0.0958073)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(-15.7786, 3.36644, 0.132733)
            }
            Keyframe {
                frame: 4875
                value: Qt.vector3d(-15.876, 3.37829, 0.171031)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.vector3d(-15.977, 3.38736, 0.210641)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.vector3d(-16.0817, 3.39244, 0.251502)
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(-16.1898, 3.39751, 0.293556)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.vector3d(-16.3015, 3.39751, 0.336741)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.vector3d(-16.4181, 3.39751, 0.381455)
            }
            Keyframe {
                frame: 5125
                value: Qt.vector3d(-16.5414, 3.39751, 0.428191)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(-16.6711, 3.39752, 0.477042)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.vector3d(-16.8075, 3.39752, 0.528101)
            }
            Keyframe {
                frame: 5250
                value: Qt.vector3d(-16.9503, 3.39752, 0.581467)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.vector3d(-17.0996, 3.39752, 0.63724)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(-17.2552, 3.39752, 0.695522)
            }
            Keyframe {
                frame: 5375
                value: Qt.vector3d(-17.4172, 3.39752, 0.756416)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.vector3d(-17.5853, 3.39752, 0.820028)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.vector3d(-17.7595, 3.39753, 0.886465)
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(-17.9396, 3.39753, 0.955833)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.vector3d(-18.1254, 3.39753, 1.02824)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.vector3d(-18.3167, 3.39753, 1.10379)
            }
            Keyframe {
                frame: 5625
                value: Qt.vector3d(-18.5133, 3.39753, 1.18259)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(-18.7148, 3.39753, 1.26475)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.vector3d(-18.9211, 3.39753, 1.35036)
            }
            Keyframe {
                frame: 5750
                value: Qt.vector3d(-19.1318, 3.39754, 1.43952)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.vector3d(-19.3464, 3.39754, 1.53233)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(-19.5647, 3.39754, 1.62887)
            }
            Keyframe {
                frame: 5875
                value: Qt.vector3d(-19.7863, 3.39754, 1.72922)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.vector3d(-20.0106, 3.39754, 1.83346)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.vector3d(-20.2372, 3.39754, 1.94165)
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(-20.4656, 3.39755, 2.05385)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.vector3d(-20.6954, 3.39755, 2.17011)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.vector3d(-20.9259, 3.39755, 2.29047)
            }
            Keyframe {
                frame: 6125
                value: Qt.vector3d(-21.1567, 3.39755, 2.41494)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(-21.3871, 3.39755, 2.54354)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.vector3d(-21.6166, 3.39755, 2.67629)
            }
            Keyframe {
                frame: 6250
                value: Qt.vector3d(-21.8446, 3.39755, 2.81315)
            }
            Keyframe {
                frame: 6291.67
                value: Qt.vector3d(-22.0705, 3.39756, 2.95412)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.vector3d(-22.2938, 3.39756, 3.09915)
            }
            Keyframe {
                frame: 6375
                value: Qt.vector3d(-22.5139, 3.39756, 3.24821)
            }
            Keyframe {
                frame: 6416.67
                value: Qt.vector3d(-22.7302, 3.39756, 3.40122)
            }
            Keyframe {
                frame: 6458.33
                value: Qt.vector3d(-22.9422, 3.39756, 3.55812)
            }
            Keyframe {
                frame: 6500
                value: Qt.vector3d(-23.1493, 3.39756, 3.71883)
            }
            Keyframe {
                frame: 6541.67
                value: Qt.vector3d(-23.3512, 3.39756, 3.88326)
            }
            Keyframe {
                frame: 6583.33
                value: Qt.vector3d(-23.5472, 3.39757, 4.05131)
            }
            Keyframe {
                frame: 6625
                value: Qt.vector3d(-23.7371, 3.39757, 4.22287)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.vector3d(-23.9203, 3.39757, 4.39783)
            }
            Keyframe {
                frame: 6708.33
                value: Qt.vector3d(-24.0964, 3.39757, 4.57606)
            }
            Keyframe {
                frame: 6750
                value: Qt.vector3d(-24.2652, 3.39757, 4.75745)
            }
            Keyframe {
                frame: 6791.67
                value: Qt.vector3d(-24.4263, 3.39757, 4.94186)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.vector3d(-24.5795, 3.39758, 5.12916)
            }
            Keyframe {
                frame: 6875
                value: Qt.vector3d(-24.7245, 3.39758, 5.31922)
            }
            Keyframe {
                frame: 6916.67
                value: Qt.vector3d(-24.8611, 3.39758, 5.51191)
            }
            Keyframe {
                frame: 6958.33
                value: Qt.vector3d(-24.9891, 3.39758, 5.70709)
            }
            Keyframe {
                frame: 7000
                value: Qt.vector3d(-25.1084, 3.39758, 5.90463)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.vector3d(-25.2189, 3.39758, 6.10441)
            }
            Keyframe {
                frame: 7083.33
                value: Qt.vector3d(-25.3204, 3.39758, 6.30628)
            }
            Keyframe {
                frame: 7125
                value: Qt.vector3d(-25.413, 3.39759, 6.51013)
            }
            Keyframe {
                frame: 7166.67
                value: Qt.vector3d(-25.4966, 3.39759, 6.71583)
            }
            Keyframe {
                frame: 7208.33
                value: Qt.vector3d(-25.5711, 3.39759, 6.92326)
            }
            Keyframe {
                frame: 7250
                value: Qt.vector3d(-25.6367, 3.39759, 7.13232)
            }
            Keyframe {
                frame: 7291.67
                value: Qt.vector3d(-25.6932, 3.39759, 7.34288)
            }
            Keyframe {
                frame: 7333.33
                value: Qt.vector3d(-25.7365, 3.39759, 7.55483)
            }
            Keyframe {
                frame: 7375
                value: Qt.vector3d(-25.7797, 3.3976, 7.76809)
            }
            Keyframe {
                frame: 7416.67
                value: Qt.vector3d(-25.801, 3.3976, 7.98254)
            }
            Keyframe {
                frame: 7458.33
                value: Qt.vector3d(-25.8223, 3.3976, 8.19811)
            }
            Keyframe {
                frame: 7500
                value: Qt.vector3d(-25.8436, 3.3976, 8.41468)
            }
            Keyframe {
                frame: 7541.67
                value: Qt.vector3d(-25.8329, 3.3976, 8.63219)
            }
            Keyframe {
                frame: 7583.33
                value: Qt.vector3d(-25.8222, 3.3976, 8.85465)
            }
            Keyframe {
                frame: 7625
                value: Qt.vector3d(-25.8114, 3.3976, 9.08611)
            }
            Keyframe {
                frame: 7666.67
                value: Qt.vector3d(-25.8007, 3.39761, 9.32659)
            }
            Keyframe {
                frame: 7708.33
                value: Qt.vector3d(-25.7899, 3.39761, 9.57607)
            }
            Keyframe {
                frame: 7750
                value: Qt.vector3d(-25.7792, 3.39761, 9.83452)
            }
            Keyframe {
                frame: 7791.67
                value: Qt.vector3d(-25.7451, 3.39761, 10.1019)
            }
            Keyframe {
                frame: 7833.33
                value: Qt.vector3d(-25.711, 3.39761, 10.3782)
            }
            Keyframe {
                frame: 7875
                value: Qt.vector3d(-25.6644, 3.39761, 10.6633)
            }
            Keyframe {
                frame: 7916.67
                value: Qt.vector3d(-25.6177, 3.39761, 10.9571)
            }
            Keyframe {
                frame: 7958.33
                value: Qt.vector3d(-25.5614, 3.39762, 11.2596)
            }
            Keyframe {
                frame: 8000
                value: Qt.vector3d(-25.4983, 3.39762, 11.5706)
            }
            Keyframe {
                frame: 8041.67
                value: Qt.vector3d(-25.4284, 3.39762, 11.8901)
            }
            Keyframe {
                frame: 8083.33
                value: Qt.vector3d(-25.3515, 3.39762, 12.2178)
            }
            Keyframe {
                frame: 8125
                value: Qt.vector3d(-25.2676, 3.39762, 12.5536)
            }
            Keyframe {
                frame: 8166.67
                value: Qt.vector3d(-25.1763, 3.39762, 12.8974)
            }
            Keyframe {
                frame: 8208.33
                value: Qt.vector3d(-25.0777, 3.39763, 13.2489)
            }
            Keyframe {
                frame: 8250
                value: Qt.vector3d(-24.9715, 3.39763, 13.6079)
            }
            Keyframe {
                frame: 8291.67
                value: Qt.vector3d(-24.8577, 3.39763, 13.9741)
            }
            Keyframe {
                frame: 8333.33
                value: Qt.vector3d(-24.7361, 3.39763, 14.3473)
            }
            Keyframe {
                frame: 8375
                value: Qt.vector3d(-24.6066, 3.39763, 14.7272)
            }
            Keyframe {
                frame: 8416.67
                value: Qt.vector3d(-24.4691, 3.39763, 15.1135)
            }
            Keyframe {
                frame: 8458.33
                value: Qt.vector3d(-24.3236, 3.39763, 15.5058)
            }
            Keyframe {
                frame: 8500
                value: Qt.vector3d(-24.1698, 3.39764, 15.9039)
            }
            Keyframe {
                frame: 8541.67
                value: Qt.vector3d(-24.0078, 3.39764, 16.3072)
            }
            Keyframe {
                frame: 8583.33
                value: Qt.vector3d(-23.8374, 3.39764, 16.7154)
            }
            Keyframe {
                frame: 8625
                value: Qt.vector3d(-23.6586, 3.39764, 17.1281)
            }
            Keyframe {
                frame: 8666.67
                value: Qt.vector3d(-23.4713, 3.39764, 17.5448)
            }
            Keyframe {
                frame: 8708.33
                value: Qt.vector3d(-23.2756, 3.39764, 17.9651)
            }
            Keyframe {
                frame: 8750
                value: Qt.vector3d(-23.0713, 3.39764, 18.3884)
            }
            Keyframe {
                frame: 8791.67
                value: Qt.vector3d(-22.8584, 3.39765, 18.8142)
            }
            Keyframe {
                frame: 8833.33
                value: Qt.vector3d(-22.637, 3.39765, 19.2421)
            }
            Keyframe {
                frame: 8875
                value: Qt.vector3d(-22.4071, 3.39765, 19.6715)
            }
            Keyframe {
                frame: 8916.67
                value: Qt.vector3d(-22.1686, 3.39765, 20.1018)
            }
            Keyframe {
                frame: 8958.33
                value: Qt.vector3d(-21.9217, 3.39765, 20.5324)
            }
            Keyframe {
                frame: 9000
                value: Qt.vector3d(-21.6663, 3.39765, 20.9628)
            }
            Keyframe {
                frame: 9041.67
                value: Qt.vector3d(-21.4026, 3.39766, 21.3923)
            }
            Keyframe {
                frame: 9083.33
                value: Qt.vector3d(-21.1307, 3.39766, 21.8205)
            }
            Keyframe {
                frame: 9125
                value: Qt.vector3d(-20.8506, 3.39766, 22.2466)
            }
            Keyframe {
                frame: 9166.67
                value: Qt.vector3d(-20.5624, 3.39766, 22.6701)
            }
            Keyframe {
                frame: 9208.33
                value: Qt.vector3d(-20.2663, 3.39766, 23.0904)
            }
            Keyframe {
                frame: 9250
                value: Qt.vector3d(-19.9625, 3.39766, 23.5068)
            }
            Keyframe {
                frame: 9291.67
                value: Qt.vector3d(-19.651, 3.39766, 23.9189)
            }
            Keyframe {
                frame: 9333.33
                value: Qt.vector3d(-19.3321, 3.39767, 24.326)
            }
            Keyframe {
                frame: 9375
                value: Qt.vector3d(-19.006, 3.39767, 24.7275)
            }
            Keyframe {
                frame: 9416.67
                value: Qt.vector3d(-18.6727, 3.39767, 25.1229)
            }
            Keyframe {
                frame: 9458.33
                value: Qt.vector3d(-18.3326, 3.39767, 25.5117)
            }
            Keyframe {
                frame: 9500
                value: Qt.vector3d(-17.9858, 3.39767, 25.8932)
            }
            Keyframe {
                frame: 9541.67
                value: Qt.vector3d(-17.6325, 3.39767, 26.2672)
            }
            Keyframe {
                frame: 9583.33
                value: Qt.vector3d(-17.2731, 3.39768, 26.6329)
            }
            Keyframe {
                frame: 9625
                value: Qt.vector3d(-16.9076, 3.39768, 26.9901)
            }
            Keyframe {
                frame: 9666.67
                value: Qt.vector3d(-16.5363, 3.39768, 27.3382)
            }
            Keyframe {
                frame: 9708.33
                value: Qt.vector3d(-16.1596, 3.39768, 27.6768)
            }
            Keyframe {
                frame: 9750
                value: Qt.vector3d(-15.7775, 3.39768, 28.0056)
            }
            Keyframe {
                frame: 9791.67
                value: Qt.vector3d(-15.3905, 3.39768, 28.3242)
            }
            Keyframe {
                frame: 9833.33
                value: Qt.vector3d(-14.9986, 3.39768, 28.6323)
            }
            Keyframe {
                frame: 9875
                value: Qt.vector3d(-14.6021, 3.39769, 28.9295)
            }
            Keyframe {
                frame: 9916.67
                value: Qt.vector3d(-14.2014, 3.39769, 29.2157)
            }
            Keyframe {
                frame: 9958.33
                value: Qt.vector3d(-13.7966, 3.39769, 29.4904)
            }
            Keyframe {
                frame: 10000
                value: Qt.vector3d(-13.3879, 3.39769, 29.7536)
            }
            Keyframe {
                frame: 10041.7
                value: Qt.vector3d(-12.9757, 3.39769, 30.005)
            }
            Keyframe {
                frame: 10083.3
                value: Qt.vector3d(-12.56, 3.39769, 30.2444)
            }
            Keyframe {
                frame: 10125
                value: Qt.vector3d(-12.1413, 3.39769, 30.4717)
            }
            Keyframe {
                frame: 10166.7
                value: Qt.vector3d(-11.7196, 3.3977, 30.6868)
            }
            Keyframe {
                frame: 10208.3
                value: Qt.vector3d(-11.2952, 3.3977, 30.8895)
            }
            Keyframe {
                frame: 10250
                value: Qt.vector3d(-10.8682, 3.3977, 31.0798)
            }
            Keyframe {
                frame: 10291.7
                value: Qt.vector3d(-10.439, 3.3977, 31.2577)
            }
            Keyframe {
                frame: 10333.3
                value: Qt.vector3d(-10.0077, 3.3977, 31.423)
            }
            Keyframe {
                frame: 10375
                value: Qt.vector3d(-9.57449, 3.3977, 31.5757)
            }
            Keyframe {
                frame: 10416.7
                value: Qt.vector3d(-9.13954, 3.39771, 31.7159)
            }
            Keyframe {
                frame: 10458.3
                value: Qt.vector3d(-8.70302, 3.39771, 31.8436)
            }
            Keyframe {
                frame: 10500
                value: Qt.vector3d(-8.26513, 3.39771, 31.9588)
            }
            Keyframe {
                frame: 10541.7
                value: Qt.vector3d(-7.826, 3.39771, 32.0615)
            }
            Keyframe {
                frame: 10583.3
                value: Qt.vector3d(-7.38582, 3.39771, 32.1518)
            }
            Keyframe {
                frame: 10625
                value: Qt.vector3d(-6.94471, 3.39771, 32.2297)
            }
            Keyframe {
                frame: 10666.7
                value: Qt.vector3d(-6.50283, 3.39771, 32.2954)
            }
            Keyframe {
                frame: 10708.3
                value: Qt.vector3d(-6.0603, 3.39772, 32.3429)
            }
            Keyframe {
                frame: 10750
                value: Qt.vector3d(-5.61726, 3.39772, 32.3904)
            }
            Keyframe {
                frame: 10791.7
                value: Qt.vector3d(-5.17383, 3.39772, 32.39)
            }
            Keyframe {
                frame: 10833.3
                value: Qt.vector3d(-4.73013, 3.39772, 32.3897)
            }
            Keyframe {
                frame: 10875
                value: Qt.vector3d(-4.28626, 3.39772, 32.3894)
            }
            Keyframe {
                frame: 10916.7
                value: Qt.vector3d(-3.83917, 3.39772, 32.3891)
            }
            Keyframe {
                frame: 10958.3
                value: Qt.vector3d(-3.3857, 3.39772, 32.3887)
            }
            Keyframe {
                frame: 11000
                value: Qt.vector3d(-2.92587, 3.39773, 32.3884)
            }
            Keyframe {
                frame: 11041.7
                value: Qt.vector3d(-2.45967, 3.39773, 32.3881)
            }
            Keyframe {
                frame: 11083.3
                value: Qt.vector3d(-1.9871, 3.39773, 32.3878)
            }
            Keyframe {
                frame: 11125
                value: Qt.vector3d(-1.50817, 3.39773, 32.3874)
            }
            Keyframe {
                frame: 11166.7
                value: Qt.vector3d(-1.02286, 3.39773, 32.3871)
            }
            Keyframe {
                frame: 11208.3
                value: Qt.vector3d(-0.531187, 3.39773, 32.3868)
            }
            Keyframe {
                frame: 11250
                value: Qt.vector3d(-0.0331512, 3.39774, 32.3865)
            }
            Keyframe {
                frame: 11291.7
                value: Qt.vector3d(0.471244, 3.39774, 32.3862)
            }
            Keyframe {
                frame: 11333.3
                value: Qt.vector3d(0.981994, 3.39774, 32.3858)
            }
            Keyframe {
                frame: 11375
                value: Qt.vector3d(1.49909, 3.39774, 32.3855)
            }
            Keyframe {
                frame: 11416.7
                value: Qt.vector3d(2.02254, 3.39774, 32.3852)
            }
            Keyframe {
                frame: 11458.3
                value: Qt.vector3d(2.55232, 3.39774, 32.3849)
            }
            Keyframe {
                frame: 11500
                value: Qt.vector3d(3.08843, 3.39774, 32.3845)
            }
            Keyframe {
                frame: 11541.7
                value: Qt.vector3d(3.63085, 3.39775, 32.3842)
            }
            Keyframe {
                frame: 11583.3
                value: Qt.vector3d(4.17959, 3.39775, 32.3839)
            }
            Keyframe {
                frame: 11625
                value: Qt.vector3d(4.73462, 3.39775, 32.3836)
            }
            Keyframe {
                frame: 11666.7
                value: Qt.vector3d(5.29594, 3.39775, 32.3832)
            }
            Keyframe {
                frame: 11708.3
                value: Qt.vector3d(5.86352, 3.39775, 32.3829)
            }
            Keyframe {
                frame: 11750
                value: Qt.vector3d(6.43737, 3.39775, 32.3826)
            }
            Keyframe {
                frame: 11791.7
                value: Qt.vector3d(7.01746, 3.39776, 32.3823)
            }
            Keyframe {
                frame: 11833.3
                value: Qt.vector3d(7.60377, 3.39776, 32.382)
            }
            Keyframe {
                frame: 11875
                value: Qt.vector3d(8.19629, 3.39776, 32.3816)
            }
            Keyframe {
                frame: 11916.7
                value: Qt.vector3d(8.795, 3.39776, 32.3813)
            }
            Keyframe {
                frame: 11958.3
                value: Qt.vector3d(9.39987, 3.39776, 32.381)
            }
            Keyframe {
                frame: 12000
                value: Qt.vector3d(10.0109, 3.39776, 32.3807)
            }
            Keyframe {
                frame: 12041.7
                value: Qt.vector3d(10.628, 3.39776, 32.3803)
            }
            Keyframe {
                frame: 12083.3
                value: Qt.vector3d(11.2513, 3.39777, 32.38)
            }
            Keyframe {
                frame: 12125
                value: Qt.vector3d(11.8806, 3.39777, 32.3797)
            }
            Keyframe {
                frame: 12166.7
                value: Qt.vector3d(12.516, 3.39777, 32.3794)
            }
            Keyframe {
                frame: 12208.3
                value: Qt.vector3d(13.1573, 3.39777, 32.3791)
            }
            Keyframe {
                frame: 12250
                value: Qt.vector3d(13.8047, 3.39777, 32.3787)
            }
            Keyframe {
                frame: 12291.7
                value: Qt.vector3d(14.458, 3.39777, 32.3784)
            }
            Keyframe {
                frame: 12333.3
                value: Qt.vector3d(15.1173, 3.39777, 32.3781)
            }
            Keyframe {
                frame: 12375
                value: Qt.vector3d(15.7824, 3.39778, 32.3778)
            }
            Keyframe {
                frame: 12416.7
                value: Qt.vector3d(16.4535, 3.39778, 32.3774)
            }
            Keyframe {
                frame: 12458.3
                value: Qt.vector3d(17.1303, 3.39778, 32.3771)
            }
            Keyframe {
                frame: 12500
                value: Qt.vector3d(17.8129, 3.39778, 32.3768)
            }
            Keyframe {
                frame: 12541.7
                value: Qt.vector3d(18.5013, 3.39778, 32.3765)
            }
            Keyframe {
                frame: 12583.3
                value: Qt.vector3d(19.1953, 3.39778, 32.3761)
            }
            Keyframe {
                frame: 12625
                value: Qt.vector3d(19.895, 3.39779, 32.3758)
            }
            Keyframe {
                frame: 12666.7
                value: Qt.vector3d(20.6004, 3.39779, 32.3755)
            }
            Keyframe {
                frame: 12708.3
                value: Qt.vector3d(21.3113, 3.39779, 32.3752)
            }
            Keyframe {
                frame: 12750
                value: Qt.vector3d(22.0277, 3.39779, 32.3749)
            }
            Keyframe {
                frame: 12791.7
                value: Qt.vector3d(22.7496, 3.39779, 32.3745)
            }
            Keyframe {
                frame: 12833.3
                value: Qt.vector3d(23.4769, 3.39779, 32.3742)
            }
            Keyframe {
                frame: 12875
                value: Qt.vector3d(24.2096, 3.39779, 32.3739)
            }
            Keyframe {
                frame: 12916.7
                value: Qt.vector3d(24.9476, 3.3978, 32.3736)
            }
            Keyframe {
                frame: 12958.3
                value: Qt.vector3d(25.6909, 3.3978, 32.3732)
            }
            Keyframe {
                frame: 13000
                value: Qt.vector3d(26.4394, 3.3978, 32.3729)
            }
            Keyframe {
                frame: 13041.7
                value: Qt.vector3d(27.193, 3.3978, 32.3726)
            }
            Keyframe {
                frame: 13083.3
                value: Qt.vector3d(27.9517, 3.3978, 32.3723)
            }
            Keyframe {
                frame: 13125
                value: Qt.vector3d(28.7154, 3.3978, 32.3719)
            }
            Keyframe {
                frame: 13166.7
                value: Qt.vector3d(29.4841, 3.3978, 32.3716)
            }
            Keyframe {
                frame: 13208.3
                value: Qt.vector3d(30.2576, 3.39781, 32.3713)
            }
            Keyframe {
                frame: 13250
                value: Qt.vector3d(31.036, 3.39781, 32.371)
            }
            Keyframe {
                frame: 13291.7
                value: Qt.vector3d(31.8191, 3.39781, 32.3707)
            }
            Keyframe {
                frame: 13333.3
                value: Qt.vector3d(32.6069, 3.39781, 32.3703)
            }
            Keyframe {
                frame: 13375
                value: Qt.vector3d(33.3994, 3.39781, 32.37)
            }
            Keyframe {
                frame: 13416.7
                value: Qt.vector3d(34.1963, 3.39781, 32.3697)
            }
            Keyframe {
                frame: 13458.3
                value: Qt.vector3d(34.9977, 3.39782, 32.3694)
            }
            Keyframe {
                frame: 13500
                value: Qt.vector3d(35.8035, 3.39782, 32.369)
            }
            Keyframe {
                frame: 13541.7
                value: Qt.vector3d(36.6135, 3.39782, 32.3687)
            }
            Keyframe {
                frame: 13583.3
                value: Qt.vector3d(37.4278, 3.39782, 32.3684)
            }
            Keyframe {
                frame: 13625
                value: Qt.vector3d(38.2462, 3.39782, 32.3681)
            }
            Keyframe {
                frame: 13666.7
                value: Qt.vector3d(39.0686, 3.39782, 32.3677)
            }
            Keyframe {
                frame: 13708.3
                value: Qt.vector3d(39.895, 3.39782, 32.3674)
            }
            Keyframe {
                frame: 13750
                value: Qt.vector3d(40.7252, 3.39783, 32.3671)
            }
            Keyframe {
                frame: 13791.7
                value: Qt.vector3d(41.5593, 3.39783, 32.3668)
            }
            Keyframe {
                frame: 13833.3
                value: Qt.vector3d(42.3969, 3.39783, 32.3665)
            }
            Keyframe {
                frame: 13875
                value: Qt.vector3d(43.2382, 3.39783, 32.3661)
            }
            Keyframe {
                frame: 13916.7
                value: Qt.vector3d(44.083, 3.39783, 32.3658)
            }
            Keyframe {
                frame: 13958.3
                value: Qt.vector3d(44.9311, 3.39783, 32.3655)
            }
            Keyframe {
                frame: 14000
                value: Qt.vector3d(45.7825, 3.39784, 32.3652)
            }
            Keyframe {
                frame: 14041.7
                value: Qt.vector3d(46.6371, 3.39784, 32.3648)
            }
            Keyframe {
                frame: 14083.3
                value: Qt.vector3d(47.4948, 3.39784, 32.3645)
            }
            Keyframe {
                frame: 14125
                value: Qt.vector3d(48.3554, 3.39784, 32.3642)
            }
            Keyframe {
                frame: 14166.7
                value: Qt.vector3d(49.2189, 3.39784, 32.3639)
            }
            Keyframe {
                frame: 14208.3
                value: Qt.vector3d(50.0852, 3.39784, 32.3635)
            }
            Keyframe {
                frame: 14250
                value: Qt.vector3d(50.9541, 3.39784, 32.3632)
            }
            Keyframe {
                frame: 14291.7
                value: Qt.vector3d(51.8255, 3.39785, 32.3629)
            }
            Keyframe {
                frame: 14333.3
                value: Qt.vector3d(52.6994, 3.39785, 32.3626)
            }
            Keyframe {
                frame: 14375
                value: Qt.vector3d(53.5755, 3.39785, 32.3623)
            }
            Keyframe {
                frame: 14416.7
                value: Qt.vector3d(54.4539, 3.39785, 32.3619)
            }
            Keyframe {
                frame: 14458.3
                value: Qt.vector3d(55.3343, 3.39785, 32.3616)
            }
            Keyframe {
                frame: 14500
                value: Qt.vector3d(56.2166, 3.39785, 32.3613)
            }
            Keyframe {
                frame: 14541.7
                value: Qt.vector3d(57.1008, 3.39785, 32.361)
            }
            Keyframe {
                frame: 14583.3
                value: Qt.vector3d(57.9866, 3.39786, 32.3606)
            }
            Keyframe {
                frame: 14625
                value: Qt.vector3d(58.8741, 3.39786, 32.3603)
            }
            Keyframe {
                frame: 14666.7
                value: Qt.vector3d(59.7629, 3.39786, 32.36)
            }
            Keyframe {
                frame: 14708.3
                value: Qt.vector3d(60.6531, 3.39786, 32.3597)
            }
            Keyframe {
                frame: 14750
                value: Qt.vector3d(61.5445, 3.39786, 32.3594)
            }
            Keyframe {
                frame: 14791.7
                value: Qt.vector3d(62.437, 3.39786, 32.359)
            }
            Keyframe {
                frame: 14833.3
                value: Qt.vector3d(63.3304, 3.39786, 32.3587)
            }
            Keyframe {
                frame: 14875
                value: Qt.vector3d(64.2246, 3.39787, 32.3584)
            }
            Keyframe {
                frame: 14916.7
                value: Qt.vector3d(65.1195, 3.39787, 32.3581)
            }
            Keyframe {
                frame: 14958.3
                value: Qt.vector3d(66.0149, 3.39787, 32.3577)
            }
            Keyframe {
                frame: 15000
                value: Qt.vector3d(66.9107, 3.39787, 32.3574)
            }
            Keyframe {
                frame: 15041.7
                value: Qt.vector3d(67.8068, 3.39787, 32.3571)
            }
            Keyframe {
                frame: 15083.3
                value: Qt.vector3d(68.703, 3.39787, 32.3568)
            }
            Keyframe {
                frame: 15125
                value: Qt.vector3d(69.5992, 3.39788, 32.3564)
            }
            Keyframe {
                frame: 15166.7
                value: Qt.vector3d(70.4952, 3.39788, 32.3561)
            }
            Keyframe {
                frame: 15208.3
                value: Qt.vector3d(71.391, 3.39788, 32.3558)
            }
            Keyframe {
                frame: 15250
                value: Qt.vector3d(72.2863, 3.39788, 32.3555)
            }
            Keyframe {
                frame: 15291.7
                value: Qt.vector3d(73.1811, 3.39788, 32.3552)
            }
            Keyframe {
                frame: 15333.3
                value: Qt.vector3d(74.0752, 3.39788, 32.3548)
            }
            Keyframe {
                frame: 15375
                value: Qt.vector3d(74.9684, 3.39788, 32.3545)
            }
            Keyframe {
                frame: 15416.7
                value: Qt.vector3d(75.8607, 3.39789, 32.3542)
            }
            Keyframe {
                frame: 15458.3
                value: Qt.vector3d(76.7518, 3.39789, 32.3539)
            }
            Keyframe {
                frame: 15500
                value: Qt.vector3d(77.6417, 3.39789, 32.3535)
            }
            Keyframe {
                frame: 15541.7
                value: Qt.vector3d(78.5302, 3.39789, 32.3532)
            }
            Keyframe {
                frame: 15583.3
                value: Qt.vector3d(79.4171, 3.39789, 32.3529)
            }
            Keyframe {
                frame: 15625
                value: Qt.vector3d(80.3023, 3.39789, 32.3526)
            }
            Keyframe {
                frame: 15666.7
                value: Qt.vector3d(81.1857, 3.3979, 32.3522)
            }
            Keyframe {
                frame: 15708.3
                value: Qt.vector3d(82.0672, 3.3979, 32.3519)
            }
            Keyframe {
                frame: 15750
                value: Qt.vector3d(82.9465, 3.3979, 32.3516)
            }
            Keyframe {
                frame: 15791.7
                value: Qt.vector3d(83.8236, 3.3979, 32.3513)
            }
            Keyframe {
                frame: 15833.3
                value: Qt.vector3d(84.6982, 3.3979, 32.351)
            }
            Keyframe {
                frame: 15875
                value: Qt.vector3d(85.5704, 3.3979, 32.3506)
            }
            Keyframe {
                frame: 15916.7
                value: Qt.vector3d(86.4399, 3.3979, 32.3503)
            }
            Keyframe {
                frame: 15958.3
                value: Qt.vector3d(87.3065, 3.39791, 32.35)
            }
            Keyframe {
                frame: 16000
                value: Qt.vector3d(88.1702, 3.39791, 32.3497)
            }
            Keyframe {
                frame: 16041.7
                value: Qt.vector3d(89.0309, 3.39791, 32.3493)
            }
            Keyframe {
                frame: 16083.3
                value: Qt.vector3d(89.8883, 3.39791, 32.349)
            }
            Keyframe {
                frame: 16125
                value: Qt.vector3d(90.7423, 3.39791, 32.3487)
            }
            Keyframe {
                frame: 16166.7
                value: Qt.vector3d(91.5929, 3.39791, 32.3484)
            }
            Keyframe {
                frame: 16208.3
                value: Qt.vector3d(92.4398, 3.39791, 32.348)
            }
            Keyframe {
                frame: 16250
                value: Qt.vector3d(93.283, 3.39792, 32.3477)
            }
            Keyframe {
                frame: 16291.7
                value: Qt.vector3d(94.1222, 3.39792, 32.3474)
            }
            Keyframe {
                frame: 16333.3
                value: Qt.vector3d(94.9575, 3.39792, 32.3471)
            }
            Keyframe {
                frame: 16375
                value: Qt.vector3d(95.7886, 3.39792, 32.3468)
            }
            Keyframe {
                frame: 16416.7
                value: Qt.vector3d(96.6153, 3.39792, 32.3464)
            }
            Keyframe {
                frame: 16458.3
                value: Qt.vector3d(97.4377, 3.39792, 32.3461)
            }
            Keyframe {
                frame: 16500
                value: Qt.vector3d(98.2556, 3.39793, 32.3458)
            }
            Keyframe {
                frame: 16541.7
                value: Qt.vector3d(99.0687, 3.39793, 32.3455)
            }
            Keyframe {
                frame: 16583.3
                value: Qt.vector3d(99.8771, 3.39793, 32.3451)
            }
            Keyframe {
                frame: 16625
                value: Qt.vector3d(100.681, 3.39793, 32.3448)
            }
            Keyframe {
                frame: 16666.7
                value: Qt.vector3d(101.479, 3.39793, 32.3445)
            }
            Keyframe {
                frame: 16708.3
                value: Qt.vector3d(102.272, 3.39793, 32.3442)
            }
            Keyframe {
                frame: 16750
                value: Qt.vector3d(103.06, 3.39793, 32.3439)
            }
            Keyframe {
                frame: 16791.7
                value: Qt.vector3d(103.843, 3.39794, 32.3435)
            }
            Keyframe {
                frame: 16833.3
                value: Qt.vector3d(104.62, 3.39794, 32.3432)
            }
            Keyframe {
                frame: 16875
                value: Qt.vector3d(105.392, 3.39794, 32.3429)
            }
            Keyframe {
                frame: 16916.7
                value: Qt.vector3d(106.157, 3.39794, 32.3426)
            }
            Keyframe {
                frame: 16958.3
                value: Qt.vector3d(106.917, 3.39794, 32.3422)
            }
            Keyframe {
                frame: 17000
                value: Qt.vector3d(107.671, 3.39794, 32.3419)
            }
            Keyframe {
                frame: 17041.7
                value: Qt.vector3d(108.419, 3.39794, 32.3416)
            }
            Keyframe {
                frame: 17083.3
                value: Qt.vector3d(109.161, 3.39795, 32.3413)
            }
            Keyframe {
                frame: 17125
                value: Qt.vector3d(109.897, 3.39795, 32.3409)
            }
            Keyframe {
                frame: 17166.7
                value: Qt.vector3d(110.626, 3.39795, 32.3406)
            }
            Keyframe {
                frame: 17208.3
                value: Qt.vector3d(111.349, 3.39795, 32.3403)
            }
            Keyframe {
                frame: 17250
                value: Qt.vector3d(112.065, 3.39795, 32.34)
            }
            Keyframe {
                frame: 17291.7
                value: Qt.vector3d(112.774, 3.39795, 32.3397)
            }
            Keyframe {
                frame: 17333.3
                value: Qt.vector3d(113.477, 3.39796, 32.3393)
            }
            Keyframe {
                frame: 17375
                value: Qt.vector3d(114.173, 3.39796, 32.339)
            }
            Keyframe {
                frame: 17416.7
                value: Qt.vector3d(114.863, 3.39796, 32.3387)
            }
            Keyframe {
                frame: 17458.3
                value: Qt.vector3d(115.545, 3.39796, 32.3384)
            }
            Keyframe {
                frame: 17500
                value: Qt.vector3d(116.22, 3.39796, 32.338)
            }
            Keyframe {
                frame: 17541.7
                value: Qt.vector3d(116.888, 3.39796, 32.3377)
            }
            Keyframe {
                frame: 17583.3
                value: Qt.vector3d(117.548, 3.39796, 32.3374)
            }
            Keyframe {
                frame: 17625
                value: Qt.vector3d(118.202, 3.39797, 32.3371)
            }
            Keyframe {
                frame: 17666.7
                value: Qt.vector3d(118.848, 3.39797, 32.3367)
            }
            Keyframe {
                frame: 17708.3
                value: Qt.vector3d(119.486, 3.39797, 32.3364)
            }
            Keyframe {
                frame: 17750
                value: Qt.vector3d(120.117, 3.39797, 32.3361)
            }
            Keyframe {
                frame: 17791.7
                value: Qt.vector3d(120.741, 3.39797, 32.3358)
            }
            Keyframe {
                frame: 17833.3
                value: Qt.vector3d(121.356, 3.39797, 32.3355)
            }
            Keyframe {
                frame: 17875
                value: Qt.vector3d(121.964, 3.39797, 32.3351)
            }
            Keyframe {
                frame: 17916.7
                value: Qt.vector3d(122.565, 3.39798, 32.3348)
            }
            Keyframe {
                frame: 17958.3
                value: Qt.vector3d(123.157, 3.39798, 32.3345)
            }
            Keyframe {
                frame: 18000
                value: Qt.vector3d(123.741, 3.39798, 32.3342)
            }
            Keyframe {
                frame: 18041.7
                value: Qt.vector3d(124.318, 3.39798, 32.3338)
            }
            Keyframe {
                frame: 18083.3
                value: Qt.vector3d(124.886, 3.39798, 32.3335)
            }
            Keyframe {
                frame: 18125
                value: Qt.vector3d(125.447, 3.39798, 32.3332)
            }
            Keyframe {
                frame: 18166.7
                value: Qt.vector3d(125.999, 3.39799, 32.3329)
            }
            Keyframe {
                frame: 18208.3
                value: Qt.vector3d(126.543, 3.39799, 32.3325)
            }
            Keyframe {
                frame: 18250
                value: Qt.vector3d(127.079, 3.39799, 32.3322)
            }
            Keyframe {
                frame: 18291.7
                value: Qt.vector3d(127.606, 3.39799, 32.3319)
            }
            Keyframe {
                frame: 18333.3
                value: Qt.vector3d(128.126, 3.39799, 32.3316)
            }
            Keyframe {
                frame: 18375
                value: Qt.vector3d(128.637, 3.39799, 32.3313)
            }
            Keyframe {
                frame: 18416.7
                value: Qt.vector3d(129.139, 3.39799, 32.3309)
            }
            Keyframe {
                frame: 18458.3
                value: Qt.vector3d(129.633, 3.398, 32.3306)
            }
            Keyframe {
                frame: 18500
                value: Qt.vector3d(130.119, 3.398, 32.3303)
            }
            Keyframe {
                frame: 18541.7
                value: Qt.vector3d(130.596, 3.398, 32.33)
            }
            Keyframe {
                frame: 18583.3
                value: Qt.vector3d(131.065, 3.398, 32.3296)
            }
            Keyframe {
                frame: 18625
                value: Qt.vector3d(131.525, 3.398, 32.3293)
            }
            Keyframe {
                frame: 18666.7
                value: Qt.vector3d(131.977, 3.398, 32.329)
            }
            Keyframe {
                frame: 18708.3
                value: Qt.vector3d(132.42, 3.39801, 32.3287)
            }
            Keyframe {
                frame: 18750
                value: Qt.vector3d(132.854, 3.39801, 32.3284)
            }
            Keyframe {
                frame: 18791.7
                value: Qt.vector3d(133.28, 3.39801, 32.328)
            }
            Keyframe {
                frame: 18833.3
                value: Qt.vector3d(133.697, 3.39801, 32.3277)
            }
            Keyframe {
                frame: 18875
                value: Qt.vector3d(134.105, 3.39801, 32.3274)
            }
            Keyframe {
                frame: 18916.7
                value: Qt.vector3d(134.505, 3.39801, 32.3271)
            }
            Keyframe {
                frame: 18958.3
                value: Qt.vector3d(134.896, 3.39801, 32.3267)
            }
            Keyframe {
                frame: 19000
                value: Qt.vector3d(135.278, 3.39802, 32.3264)
            }
            Keyframe {
                frame: 19041.7
                value: Qt.vector3d(135.651, 3.39802, 32.3261)
            }
            Keyframe {
                frame: 19083.3
                value: Qt.vector3d(136.016, 3.39802, 32.3258)
            }
            Keyframe {
                frame: 19125
                value: Qt.vector3d(136.372, 3.39802, 32.3254)
            }
            Keyframe {
                frame: 19166.7
                value: Qt.vector3d(136.719, 3.39802, 32.3251)
            }
            Keyframe {
                frame: 19208.3
                value: Qt.vector3d(137.058, 3.39802, 32.3248)
            }
            Keyframe {
                frame: 19250
                value: Qt.vector3d(137.388, 3.39802, 32.3245)
            }
            Keyframe {
                frame: 19291.7
                value: Qt.vector3d(137.709, 3.39803, 32.3242)
            }
            Keyframe {
                frame: 19333.3
                value: Qt.vector3d(138.021, 3.39803, 32.3238)
            }
            Keyframe {
                frame: 19375
                value: Qt.vector3d(138.324, 3.39803, 32.3235)
            }
            Keyframe {
                frame: 19416.7
                value: Qt.vector3d(138.619, 3.39803, 32.3232)
            }
            Keyframe {
                frame: 19458.3
                value: Qt.vector3d(138.905, 3.39803, 32.3229)
            }
            Keyframe {
                frame: 19500
                value: Qt.vector3d(139.177, 3.39803, 32.3225)
            }
            Keyframe {
                frame: 19541.7
                value: Qt.vector3d(139.45, 3.39804, 32.3222)
            }
            Keyframe {
                frame: 19583.3
                value: Qt.vector3d(139.705, 3.39804, 32.3219)
            }
            Keyframe {
                frame: 19625
                value: Qt.vector3d(139.96, 3.39804, 32.3216)
            }
            Keyframe {
                frame: 19666.7
                value: Qt.vector3d(140.198, 3.39804, 32.3212)
            }
            Keyframe {
                frame: 19708.3
                value: Qt.vector3d(140.435, 3.39804, 32.3209)
            }
            Keyframe {
                frame: 19750
                value: Qt.vector3d(140.656, 3.39804, 32.3206)
            }
            Keyframe {
                frame: 19791.7
                value: Qt.vector3d(140.876, 3.39804, 32.3203)
            }
            Keyframe {
                frame: 19833.3
                value: Qt.vector3d(141.079, 3.39805, 32.32)
            }
            Keyframe {
                frame: 19875
                value: Qt.vector3d(141.281, 3.39805, 32.3196)
            }
            Keyframe {
                frame: 19916.7
                value: Qt.vector3d(141.467, 3.39805, 32.3193)
            }
            Keyframe {
                frame: 19958.3
                value: Qt.vector3d(141.652, 3.39805, 32.319)
            }
            Keyframe {
                frame: 20000
                value: Qt.vector3d(141.82, 3.39805, 32.3187)
            }
            Keyframe {
                frame: 20041.7
                value: Qt.vector3d(141.989, 3.39805, 32.3183)
            }
            Keyframe {
                frame: 20083.3
                value: Qt.vector3d(142.139, 3.39806, 32.318)
            }
            Keyframe {
                frame: 20125
                value: Qt.vector3d(142.29, 3.39806, 32.3177)
            }
            Keyframe {
                frame: 20166.7
                value: Qt.vector3d(142.42, 3.39806, 32.3174)
            }
            Keyframe {
                frame: 20208.3
                value: Qt.vector3d(142.549, 3.39806, 32.317)
            }
            Keyframe {
                frame: 20250
                value: Qt.vector3d(142.679, 3.39806, 32.3167)
            }
            Keyframe {
                frame: 20291.7
                value: Qt.vector3d(142.783, 3.39806, 32.3164)
            }
            Keyframe {
                frame: 20333.3
                value: Qt.vector3d(142.887, 3.39806, 32.3161)
            }
            Keyframe {
                frame: 20375
                value: Qt.vector3d(142.991, 3.39807, 32.3158)
            }
            Keyframe {
                frame: 20416.7
                value: Qt.vector3d(143.065, 3.39807, 32.3154)
            }
            Keyframe {
                frame: 20458.3
                value: Qt.vector3d(143.14, 3.39807, 32.3151)
            }
            Keyframe {
                frame: 20500
                value: Qt.vector3d(143.214, 3.39807, 32.3148)
            }
            Keyframe {
                frame: 20541.7
                value: Qt.vector3d(143.289, 3.39807, 32.3145)
            }
            Keyframe {
                frame: 20583.3
                value: Qt.vector3d(143.272, 3.39807, 32.3141)
            }
            Keyframe {
                frame: 20625
                value: Qt.vector3d(143.255, 3.39807, 32.3138)
            }
            Keyframe {
                frame: 20666.7
                value: Qt.vector3d(143.238, 3.39808, 32.3135)
            }
            Keyframe {
                frame: 20708.3
                value: Qt.vector3d(143.221, 3.39808, 32.3132)
            }
            Keyframe {
                frame: 20750
                value: Qt.vector3d(143.205, 3.39808, 32.3129)
            }
            Keyframe {
                frame: 20791.7
                value: Qt.vector3d(143.188, 3.39808, 32.3125)
            }
            Keyframe {
                frame: 20833.3
                value: Qt.vector3d(143.171, 3.39808, 32.3122)
            }
            Keyframe {
                frame: 20875
                value: Qt.vector3d(143.154, 3.39808, 32.3119)
            }
            Keyframe {
                frame: 20916.7
                value: Qt.vector3d(143.137, 3.39809, 32.3116)
            }
            Keyframe {
                frame: 20958.3
                value: Qt.vector3d(143.121, 3.39809, 32.3112)
            }
            Keyframe {
                frame: 21000
                value: Qt.vector3d(143.104, 3.39809, 32.3109)
            }
            Keyframe {
                frame: 21041.7
                value: Qt.vector3d(143.087, 3.39809, 32.2362)
            }
            Keyframe {
                frame: 21083.3
                value: Qt.vector3d(143.07, 3.39809, 32.1447)
            }
            Keyframe {
                frame: 21125
                value: Qt.vector3d(143.053, 3.39809, 32.0364)
            }
            Keyframe {
                frame: 21166.7
                value: Qt.vector3d(143.037, 3.39809, 31.9111)
            }
            Keyframe {
                frame: 21208.3
                value: Qt.vector3d(143.02, 3.3981, 31.769)
            }
            Keyframe {
                frame: 21250
                value: Qt.vector3d(143.003, 3.3981, 31.6099)
            }
            Keyframe {
                frame: 21291.7
                value: Qt.vector3d(142.986, 3.3981, 31.4338)
            }
            Keyframe {
                frame: 21333.3
                value: Qt.vector3d(142.969, 3.3981, 31.2407)
            }
            Keyframe {
                frame: 21375
                value: Qt.vector3d(142.953, 3.3981, 31.0306)
            }
            Keyframe {
                frame: 21416.7
                value: Qt.vector3d(142.936, 3.3981, 30.8035)
            }
            Keyframe {
                frame: 21458.3
                value: Qt.vector3d(142.842, 3.3981, 30.5595)
            }
            Keyframe {
                frame: 21500
                value: Qt.vector3d(142.747, 3.39811, 30.2984)
            }
            Keyframe {
                frame: 21541.7
                value: Qt.vector3d(142.653, 3.39811, 30.0204)
            }
            Keyframe {
                frame: 21583.3
                value: Qt.vector3d(142.559, 3.39811, 29.7255)
            }
            Keyframe {
                frame: 21625
                value: Qt.vector3d(142.442, 3.39811, 29.4137)
            }
            Keyframe {
                frame: 21666.7
                value: Qt.vector3d(142.325, 3.39811, 29.0852)
            }
            Keyframe {
                frame: 21708.3
                value: Qt.vector3d(142.208, 3.39811, 28.74)
            }
            Keyframe {
                frame: 21750
                value: Qt.vector3d(142.07, 3.39812, 28.3781)
            }
            Keyframe {
                frame: 21791.7
                value: Qt.vector3d(141.933, 3.39812, 27.9997)
            }
            Keyframe {
                frame: 21833.3
                value: Qt.vector3d(141.796, 3.39812, 27.605)
            }
            Keyframe {
                frame: 21875
                value: Qt.vector3d(141.641, 3.39812, 27.1939)
            }
            Keyframe {
                frame: 21916.7
                value: Qt.vector3d(141.487, 3.39812, 26.7668)
            }
            Keyframe {
                frame: 21958.3
                value: Qt.vector3d(141.319, 3.39812, 26.3236)
            }
            Keyframe {
                frame: 22000
                value: Qt.vector3d(141.15, 3.39812, 25.8647)
            }
            Keyframe {
                frame: 22041.7
                value: Qt.vector3d(140.968, 3.39813, 25.3902)
            }
            Keyframe {
                frame: 22083.3
                value: Qt.vector3d(140.785, 3.39813, 24.9003)
            }
            Keyframe {
                frame: 22125
                value: Qt.vector3d(140.589, 3.39813, 24.3952)
            }
            Keyframe {
                frame: 22166.7
                value: Qt.vector3d(140.392, 3.39813, 23.8751)
            }
            Keyframe {
                frame: 22208.3
                value: Qt.vector3d(140.181, 3.39813, 23.3404)
            }
            Keyframe {
                frame: 22250
                value: Qt.vector3d(139.97, 3.39813, 22.7913)
            }
            Keyframe {
                frame: 22291.7
                value: Qt.vector3d(139.745, 3.39813, 22.228)
            }
            Keyframe {
                frame: 22333.3
                value: Qt.vector3d(139.519, 3.39814, 21.6509)
            }
            Keyframe {
                frame: 22375
                value: Qt.vector3d(139.28, 3.39814, 21.0603)
            }
            Keyframe {
                frame: 22416.7
                value: Qt.vector3d(139.04, 3.39814, 20.4565)
            }
            Keyframe {
                frame: 22458.3
                value: Qt.vector3d(138.786, 3.39814, 19.8399)
            }
            Keyframe {
                frame: 22500
                value: Qt.vector3d(138.532, 3.39814, 19.2109)
            }
            Keyframe {
                frame: 22541.7
                value: Qt.vector3d(138.263, 3.39814, 18.5698)
            }
            Keyframe {
                frame: 22583.3
                value: Qt.vector3d(137.995, 3.39815, 17.9171)
            }
            Keyframe {
                frame: 22625
                value: Qt.vector3d(137.716, 3.39815, 17.2531)
            }
            Keyframe {
                frame: 22666.7
                value: Qt.vector3d(137.43, 3.39815, 16.5784)
            }
            Keyframe {
                frame: 22708.3
                value: Qt.vector3d(137.137, 3.39815, 15.8933)
            }
            Keyframe {
                frame: 22750
                value: Qt.vector3d(136.837, 3.39815, 15.1983)
            }
            Keyframe {
                frame: 22791.7
                value: Qt.vector3d(136.529, 3.39815, 14.4939)
            }
            Keyframe {
                frame: 22833.3
                value: Qt.vector3d(136.216, 3.39815, 13.7807)
            }
            Keyframe {
                frame: 22875
                value: Qt.vector3d(135.895, 3.39816, 13.0591)
            }
            Keyframe {
                frame: 22916.7
                value: Qt.vector3d(135.567, 3.39816, 12.3296)
            }
            Keyframe {
                frame: 22958.3
                value: Qt.vector3d(135.233, 3.39816, 11.5928)
            }
            Keyframe {
                frame: 23000
                value: Qt.vector3d(134.892, 3.39816, 10.8492)
            }
            Keyframe {
                frame: 23041.7
                value: Qt.vector3d(134.545, 3.39816, 10.0994)
            }
            Keyframe {
                frame: 23083.3
                value: Qt.vector3d(134.191, 3.39816, 9.34391)
            }
            Keyframe {
                frame: 23125
                value: Qt.vector3d(133.831, 3.39817, 8.58338)
            }
            Keyframe {
                frame: 23166.7
                value: Qt.vector3d(133.465, 3.39817, 7.81835)
            }
            Keyframe {
                frame: 23208.3
                value: Qt.vector3d(133.093, 3.39817, 7.04942)
            }
            Keyframe {
                frame: 23250
                value: Qt.vector3d(132.714, 3.39817, 6.27719)
            }
            Keyframe {
                frame: 23291.7
                value: Qt.vector3d(132.33, 3.39817, 5.50226)
            }
            Keyframe {
                frame: 23333.3
                value: Qt.vector3d(131.94, 3.39817, 4.72522)
            }
            Keyframe {
                frame: 23375
                value: Qt.vector3d(131.544, 3.39817, 3.9467)
            }
            Keyframe {
                frame: 23416.7
                value: Qt.vector3d(131.143, 3.39818, 3.16728)
            }
            Keyframe {
                frame: 23458.3
                value: Qt.vector3d(130.737, 3.39818, 2.3876)
            }
            Keyframe {
                frame: 23500
                value: Qt.vector3d(130.325, 3.39818, 1.60824)
            }
            Keyframe {
                frame: 23541.7
                value: Qt.vector3d(129.908, 3.39818, 0.829828)
            }
            Keyframe {
                frame: 23583.3
                value: Qt.vector3d(129.486, 3.39818, 0.0529633)
            }
            Keyframe {
                frame: 23625
                value: Qt.vector3d(129.059, 3.39818, -0.721766)
            }
            Keyframe {
                frame: 23666.7
                value: Qt.vector3d(128.628, 3.39818, -1.49376)
            }
            Keyframe {
                frame: 23708.3
                value: Qt.vector3d(128.192, 3.39819, -2.26243)
            }
            Keyframe {
                frame: 23750
                value: Qt.vector3d(127.752, 3.39819, -3.02719)
            }
            Keyframe {
                frame: 23791.7
                value: Qt.vector3d(127.308, 3.39819, -3.78748)
            }
            Keyframe {
                frame: 23833.3
                value: Qt.vector3d(126.859, 3.39819, -4.54272)
            }
            Keyframe {
                frame: 23875
                value: Qt.vector3d(126.407, 3.39819, -5.29238)
            }
            Keyframe {
                frame: 23916.7
                value: Qt.vector3d(125.951, 3.39819, -6.0359)
            }
            Keyframe {
                frame: 23958.3
                value: Qt.vector3d(125.491, 3.3982, -6.77275)
            }
            Keyframe {
                frame: 24000
                value: Qt.vector3d(125.028, 3.3982, -7.50241)
            }
            Keyframe {
                frame: 24041.7
                value: Qt.vector3d(124.562, 3.3982, -8.22438)
            }
            Keyframe {
                frame: 24083.3
                value: Qt.vector3d(124.092, 3.3982, -8.93817)
            }
            Keyframe {
                frame: 24125
                value: Qt.vector3d(123.62, 3.3982, -9.6433)
            }
            Keyframe {
                frame: 24166.7
                value: Qt.vector3d(123.145, 3.3982, -10.3393)
            }
            Keyframe {
                frame: 24208.3
                value: Qt.vector3d(122.667, 3.3982, -11.0257)
            }
            Keyframe {
                frame: 24250
                value: Qt.vector3d(122.187, 3.39821, -11.7021)
            }
            Keyframe {
                frame: 24291.7
                value: Qt.vector3d(121.705, 3.39821, -12.3681)
            }
            Keyframe {
                frame: 24333.3
                value: Qt.vector3d(121.22, 3.39821, -13.0233)
            }
            Keyframe {
                frame: 24375
                value: Qt.vector3d(120.733, 3.39821, -13.6672)
            }
            Keyframe {
                frame: 24416.7
                value: Qt.vector3d(120.245, 3.39821, -14.2996)
            }
            Keyframe {
                frame: 24458.3
                value: Qt.vector3d(119.755, 3.39821, -14.9201)
            }
            Keyframe {
                frame: 24500
                value: Qt.vector3d(119.263, 3.39822, -15.5282)
            }
            Keyframe {
                frame: 24541.7
                value: Qt.vector3d(118.77, 3.39822, -16.1238)
            }
            Keyframe {
                frame: 24583.3
                value: Qt.vector3d(118.275, 3.39822, -16.7065)
            }
            Keyframe {
                frame: 24625
                value: Qt.vector3d(117.78, 3.39822, -17.276)
            }
            Keyframe {
                frame: 24666.7
                value: Qt.vector3d(117.283, 3.39822, -17.8321)
            }
            Keyframe {
                frame: 24708.3
                value: Qt.vector3d(116.786, 3.39822, -18.3744)
            }
            Keyframe {
                frame: 24750
                value: Qt.vector3d(116.287, 3.39822, -18.9029)
            }
            Keyframe {
                frame: 24791.7
                value: Qt.vector3d(115.788, 3.39823, -19.4171)
            }
            Keyframe {
                frame: 24833.3
                value: Qt.vector3d(115.289, 3.39823, -19.917)
            }
            Keyframe {
                frame: 24875
                value: Qt.vector3d(114.789, 3.39823, -20.4023)
            }
            Keyframe {
                frame: 24916.7
                value: Qt.vector3d(114.289, 3.39823, -20.8729)
            }
            Keyframe {
                frame: 24958.3
                value: Qt.vector3d(113.789, 3.39823, -21.3286)
            }
            Keyframe {
                frame: 25000
                value: Qt.vector3d(113.289, 3.39823, -21.7692)
            }
            Keyframe {
                frame: 25041.7
                value: Qt.vector3d(112.788, 3.39823, -22.1946)
            }
            Keyframe {
                frame: 25083.3
                value: Qt.vector3d(112.288, 3.39824, -22.6047)
            }
            Keyframe {
                frame: 25125
                value: Qt.vector3d(111.788, 3.39824, -22.9994)
            }
            Keyframe {
                frame: 25166.7
                value: Qt.vector3d(111.289, 3.39824, -23.3786)
            }
            Keyframe {
                frame: 25208.3
                value: Qt.vector3d(110.79, 3.39824, -23.7421)
            }
            Keyframe {
                frame: 25250
                value: Qt.vector3d(110.291, 3.39824, -24.09)
            }
            Keyframe {
                frame: 25291.7
                value: Qt.vector3d(109.793, 3.39824, -24.4221)
            }
            Keyframe {
                frame: 25333.3
                value: Qt.vector3d(109.296, 3.39825, -24.7385)
            }
            Keyframe {
                frame: 25375
                value: Qt.vector3d(108.799, 3.39825, -25.039)
            }
            Keyframe {
                frame: 25416.7
                value: Qt.vector3d(108.303, 3.39825, -25.3236)
            }
            Keyframe {
                frame: 25458.3
                value: Qt.vector3d(107.808, 3.39825, -25.5924)
            }
            Keyframe {
                frame: 25500
                value: Qt.vector3d(107.314, 3.39825, -25.8452)
            }
            Keyframe {
                frame: 25541.7
                value: Qt.vector3d(106.821, 3.39825, -26.0822)
            }
            Keyframe {
                frame: 25583.3
                value: Qt.vector3d(106.329, 3.39825, -26.3032)
            }
            Keyframe {
                frame: 25625
                value: Qt.vector3d(105.839, 3.39826, -26.5083)
            }
            Keyframe {
                frame: 25666.7
                value: Qt.vector3d(105.349, 3.39826, -26.6976)
            }
            Keyframe {
                frame: 25708.3
                value: Qt.vector3d(104.861, 3.39826, -26.871)
            }
            Keyframe {
                frame: 25750
                value: Qt.vector3d(104.374, 3.39826, -27.0287)
            }
            Keyframe {
                frame: 25791.7
                value: Qt.vector3d(103.889, 3.39826, -27.1705)
            }
            Keyframe {
                frame: 25833.3
                value: Qt.vector3d(103.405, 3.39826, -27.2966)
            }
            Keyframe {
                frame: 25875
                value: Qt.vector3d(102.922, 3.39826, -27.4071)
            }
            Keyframe {
                frame: 25916.7
                value: Qt.vector3d(102.438, 3.39827, -27.5092)
            }
            Keyframe {
                frame: 25958.3
                value: Qt.vector3d(101.952, 3.39827, -27.6104)
            }
            Keyframe {
                frame: 26000
                value: Qt.vector3d(101.462, 3.39827, -27.7105)
            }
            Keyframe {
                frame: 26041.7
                value: Qt.vector3d(100.969, 3.39827, -27.8095)
            }
            Keyframe {
                frame: 26083.3
                value: Qt.vector3d(100.472, 3.39827, -27.9075)
            }
            Keyframe {
                frame: 26125
                value: Qt.vector3d(99.9721, 3.39827, -28.0044)
            }
            Keyframe {
                frame: 26166.7
                value: Qt.vector3d(99.4688, 3.39828, -28.1002)
            }
            Keyframe {
                frame: 26208.3
                value: Qt.vector3d(98.962, 3.39828, -28.1949)
            }
            Keyframe {
                frame: 26250
                value: Qt.vector3d(98.4517, 3.39828, -28.2884)
            }
            Keyframe {
                frame: 26291.7
                value: Qt.vector3d(97.9379, 3.39828, -28.3807)
            }
            Keyframe {
                frame: 26333.3
                value: Qt.vector3d(97.4205, 3.39828, -28.4719)
            }
            Keyframe {
                frame: 26375
                value: Qt.vector3d(96.8996, 3.39828, -28.5618)
            }
            Keyframe {
                frame: 26416.7
                value: Qt.vector3d(96.3749, 3.39828, -28.6505)
            }
            Keyframe {
                frame: 26458.3
                value: Qt.vector3d(95.8466, 3.39829, -28.7379)
            }
            Keyframe {
                frame: 26500
                value: Qt.vector3d(95.3145, 3.39829, -28.824)
            }
            Keyframe {
                frame: 26541.7
                value: Qt.vector3d(94.7787, 3.39829, -28.9089)
            }
            Keyframe {
                frame: 26583.3
                value: Qt.vector3d(94.2391, 3.39829, -28.9924)
            }
            Keyframe {
                frame: 26625
                value: Qt.vector3d(93.6957, 3.39829, -29.0746)
            }
            Keyframe {
                frame: 26666.7
                value: Qt.vector3d(93.1484, 3.39829, -29.1554)
            }
            Keyframe {
                frame: 26708.3
                value: Qt.vector3d(92.5973, 3.39829, -29.2348)
            }
            Keyframe {
                frame: 26750
                value: Qt.vector3d(92.0423, 3.3983, -29.3129)
            }
            Keyframe {
                frame: 26791.7
                value: Qt.vector3d(91.4834, 3.3983, -29.3895)
            }
            Keyframe {
                frame: 26833.3
                value: Qt.vector3d(90.9206, 3.3983, -29.4647)
            }
            Keyframe {
                frame: 26875
                value: Qt.vector3d(90.3539, 3.3983, -29.5384)
            }
            Keyframe {
                frame: 26916.7
                value: Qt.vector3d(89.7832, 3.3983, -29.6106)
            }
            Keyframe {
                frame: 26958.3
                value: Qt.vector3d(89.2086, 3.3983, -29.6814)
            }
            Keyframe {
                frame: 27000
                value: Qt.vector3d(88.63, 3.39831, -29.7506)
            }
            Keyframe {
                frame: 27041.7
                value: Qt.vector3d(88.0475, 3.39831, -29.8184)
            }
            Keyframe {
                frame: 27083.3
                value: Qt.vector3d(87.4611, 3.39831, -29.8846)
            }
            Keyframe {
                frame: 27125
                value: Qt.vector3d(86.8707, 3.39831, -29.9492)
            }
            Keyframe {
                frame: 27166.7
                value: Qt.vector3d(86.2764, 3.39831, -30.0123)
            }
            Keyframe {
                frame: 27208.3
                value: Qt.vector3d(85.6782, 3.39831, -30.0739)
            }
            Keyframe {
                frame: 27250
                value: Qt.vector3d(85.0762, 3.39831, -30.1331)
            }
            Keyframe {
                frame: 27291.7
                value: Qt.vector3d(84.4703, 3.39832, -30.1922)
            }
            Keyframe {
                frame: 27333.3
                value: Qt.vector3d(83.8605, 3.39832, -30.2483)
            }
            Keyframe {
                frame: 27375
                value: Qt.vector3d(83.247, 3.39832, -30.3043)
            }
            Keyframe {
                frame: 27416.7
                value: Qt.vector3d(82.6298, 3.39832, -30.3572)
            }
            Keyframe {
                frame: 27458.3
                value: Qt.vector3d(82.0089, 3.39832, -30.41)
            }
            Keyframe {
                frame: 27500
                value: Qt.vector3d(81.3844, 3.39832, -30.4597)
            }
            Keyframe {
                frame: 27541.7
                value: Qt.vector3d(80.7562, 3.39833, -30.5094)
            }
            Keyframe {
                frame: 27583.3
                value: Qt.vector3d(80.1245, 3.39833, -30.5559)
            }
            Keyframe {
                frame: 27625
                value: Qt.vector3d(79.4894, 3.39833, -30.6024)
            }
            Keyframe {
                frame: 27666.7
                value: Qt.vector3d(78.8509, 3.39833, -30.6458)
            }
            Keyframe {
                frame: 27708.3
                value: Qt.vector3d(78.2091, 3.39833, -30.6892)
            }
            Keyframe {
                frame: 27750
                value: Qt.vector3d(77.5641, 3.39833, -30.7295)
            }
            Keyframe {
                frame: 27791.7
                value: Qt.vector3d(76.9159, 3.39833, -30.7698)
            }
            Keyframe {
                frame: 27833.3
                value: Qt.vector3d(76.2646, 3.39834, -30.8071)
            }
            Keyframe {
                frame: 27875
                value: Qt.vector3d(75.6104, 3.39834, -30.8443)
            }
            Keyframe {
                frame: 27916.7
                value: Qt.vector3d(74.9533, 3.39834, -30.8786)
            }
            Keyframe {
                frame: 27958.3
                value: Qt.vector3d(74.2934, 3.39834, -30.913)
            }
            Keyframe {
                frame: 28000
                value: Qt.vector3d(73.6308, 3.39834, -30.9444)
            }
            Keyframe {
                frame: 28041.7
                value: Qt.vector3d(72.9657, 3.39834, -30.9758)
            }
            Keyframe {
                frame: 28083.3
                value: Qt.vector3d(72.2981, 3.39834, -31.0038)
            }
            Keyframe {
                frame: 28125
                value: Qt.vector3d(71.6281, 3.39835, -31.0318)
            }
            Keyframe {
                frame: 28166.7
                value: Qt.vector3d(70.9559, 3.39835, -31.0598)
            }
            Keyframe {
                frame: 28208.3
                value: Qt.vector3d(70.2815, 3.39835, -31.0839)
            }
            Keyframe {
                frame: 28250
                value: Qt.vector3d(69.6052, 3.39835, -31.108)
            }
            Keyframe {
                frame: 28291.7
                value: Qt.vector3d(68.9269, 3.39835, -31.132)
            }
            Keyframe {
                frame: 28333.3
                value: Qt.vector3d(68.2468, 3.39835, -31.1519)
            }
            Keyframe {
                frame: 28375
                value: Qt.vector3d(67.5651, 3.39836, -31.1718)
            }
            Keyframe {
                frame: 28416.7
                value: Qt.vector3d(66.8818, 3.39836, -31.1917)
            }
            Keyframe {
                frame: 28458.3
                value: Qt.vector3d(66.1971, 3.39836, -31.2115)
            }
            Keyframe {
                frame: 28500
                value: Qt.vector3d(65.511, 3.39836, -31.2266)
            }
            Keyframe {
                frame: 28541.7
                value: Qt.vector3d(64.8237, 3.39836, -31.2417)
            }
            Keyframe {
                frame: 28583.3
                value: Qt.vector3d(64.1353, 3.39836, -31.2567)
            }
            Keyframe {
                frame: 28625
                value: Qt.vector3d(63.446, 3.39836, -31.2718)
            }
            Keyframe {
                frame: 28666.7
                value: Qt.vector3d(62.7557, 3.39837, -31.2869)
            }
            Keyframe {
                frame: 28708.3
                value: Qt.vector3d(62.0647, 3.39837, -31.2967)
            }
            Keyframe {
                frame: 28750
                value: Qt.vector3d(61.3731, 3.39837, -31.3066)
            }
            Keyframe {
                frame: 28791.7
                value: Qt.vector3d(60.6809, 3.39837, -31.3164)
            }
            Keyframe {
                frame: 28833.3
                value: Qt.vector3d(59.9882, 3.39837, -31.3262)
            }
            Keyframe {
                frame: 28875
                value: Qt.vector3d(59.2952, 3.39837, -31.3361)
            }
            Keyframe {
                frame: 28916.7
                value: Qt.vector3d(58.602, 3.39837, -31.3459)
            }
            Keyframe {
                frame: 28958.3
                value: Qt.vector3d(57.9086, 3.39838, -31.3557)
            }
            Keyframe {
                frame: 29000
                value: Qt.vector3d(57.2151, 3.39838, -31.3543)
            }
            Keyframe {
                frame: 29041.7
                value: Qt.vector3d(56.5217, 3.39838, -31.3529)
            }
            Keyframe {
                frame: 29083.3
                value: Qt.vector3d(55.8283, 3.39838, -31.3515)
            }
            Keyframe {
                frame: 29125
                value: Qt.vector3d(55.1352, 3.39838, -31.3501)
            }
            Keyframe {
                frame: 29166.7
                value: Qt.vector3d(54.4424, 3.39838, -31.3487)
            }
            Keyframe {
                frame: 29208.3
                value: Qt.vector3d(53.7499, 3.39839, -31.3473)
            }
            Keyframe {
                frame: 29250
                value: Qt.vector3d(53.0578, 3.39839, -31.3459)
            }
            Keyframe {
                frame: 29291.7
                value: Qt.vector3d(52.3662, 3.39839, -31.3445)
            }
            Keyframe {
                frame: 29333.3
                value: Qt.vector3d(51.6752, 3.39839, -31.3431)
            }
            Keyframe {
                frame: 29375
                value: Qt.vector3d(50.9848, 3.39839, -31.3417)
            }
            Keyframe {
                frame: 29416.7
                value: Qt.vector3d(50.2952, 3.39839, -31.3403)
            }
            Keyframe {
                frame: 29458.3
                value: Qt.vector3d(49.6062, 3.39839, -31.3389)
            }
            Keyframe {
                frame: 29500
                value: Qt.vector3d(48.9181, 3.3984, -31.3375)
            }
            Keyframe {
                frame: 29541.7
                value: Qt.vector3d(48.2309, 3.3984, -31.3361)
            }
            Keyframe {
                frame: 29583.3
                value: Qt.vector3d(47.5445, 3.3984, -31.3347)
            }
            Keyframe {
                frame: 29625
                value: Qt.vector3d(46.8591, 3.3984, -31.3333)
            }
            Keyframe {
                frame: 29666.7
                value: Qt.vector3d(46.1748, 3.3984, -31.3319)
            }
            Keyframe {
                frame: 29708.3
                value: Qt.vector3d(45.4914, 3.3984, -31.3305)
            }
            Keyframe {
                frame: 29750
                value: Qt.vector3d(44.8092, 3.39841, -31.3291)
            }
            Keyframe {
                frame: 29791.7
                value: Qt.vector3d(44.128, 3.39841, -31.3277)
            }
            Keyframe {
                frame: 29833.3
                value: Qt.vector3d(43.448, 3.39841, -31.3262)
            }
            Keyframe {
                frame: 29875
                value: Qt.vector3d(42.7693, 3.39841, -31.3248)
            }
            Keyframe {
                frame: 29916.7
                value: Qt.vector3d(42.0917, 3.39841, -31.3234)
            }
            Keyframe {
                frame: 29958.3
                value: Qt.vector3d(41.4154, 3.39841, -31.322)
            }
            Keyframe {
                frame: 30000
                value: Qt.vector3d(40.7403, 3.39841, -31.3206)
            }
            Keyframe {
                frame: 30041.7
                value: Qt.vector3d(40.0665, 3.39842, -31.3192)
            }
            Keyframe {
                frame: 30083.3
                value: Qt.vector3d(39.3893, 3.39842, -31.3178)
            }
            Keyframe {
                frame: 30125
                value: Qt.vector3d(38.7038, 3.39842, -31.3164)
            }
            Keyframe {
                frame: 30166.7
                value: Qt.vector3d(38.0101, 3.39842, -31.315)
            }
            Keyframe {
                frame: 30208.3
                value: Qt.vector3d(37.3083, 3.39842, -31.3136)
            }
            Keyframe {
                frame: 30250
                value: Qt.vector3d(36.5983, 3.39842, -31.3122)
            }
            Keyframe {
                frame: 30291.7
                value: Qt.vector3d(35.8802, 3.39842, -31.3108)
            }
            Keyframe {
                frame: 30333.3
                value: Qt.vector3d(35.1543, 3.39843, -31.3094)
            }
            Keyframe {
                frame: 30375
                value: Qt.vector3d(34.4205, 3.39843, -31.308)
            }
            Keyframe {
                frame: 30416.7
                value: Qt.vector3d(33.6791, 3.39843, -31.3066)
            }
            Keyframe {
                frame: 30458.3
                value: Qt.vector3d(32.9302, 3.39843, -31.3052)
            }
            Keyframe {
                frame: 30500
                value: Qt.vector3d(32.1741, 3.39843, -31.3038)
            }
            Keyframe {
                frame: 30541.7
                value: Qt.vector3d(31.411, 3.39843, -31.3024)
            }
            Keyframe {
                frame: 30583.3
                value: Qt.vector3d(30.6412, 3.39844, -31.301)
            }
            Keyframe {
                frame: 30625
                value: Qt.vector3d(29.8649, 3.39844, -31.2996)
            }
            Keyframe {
                frame: 30666.7
                value: Qt.vector3d(29.0826, 3.39844, -31.2982)
            }
            Keyframe {
                frame: 30708.3
                value: Qt.vector3d(28.2947, 3.39844, -31.2968)
            }
            Keyframe {
                frame: 30750
                value: Qt.vector3d(27.5015, 3.39844, -31.2954)
            }
            Keyframe {
                frame: 30791.7
                value: Qt.vector3d(26.7035, 3.39844, -31.294)
            }
            Keyframe {
                frame: 30833.3
                value: Qt.vector3d(25.9012, 3.39844, -31.2926)
            }
            Keyframe {
                frame: 30875
                value: Qt.vector3d(25.0952, 3.39845, -31.2912)
            }
            Keyframe {
                frame: 30916.7
                value: Qt.vector3d(24.286, 3.39845, -31.2898)
            }
            Keyframe {
                frame: 30958.3
                value: Qt.vector3d(23.4742, 3.39845, -31.2883)
            }
            Keyframe {
                frame: 31000
                value: Qt.vector3d(22.6605, 3.39845, -31.2869)
            }
            Keyframe {
                frame: 31041.7
                value: Qt.vector3d(21.8455, 3.39845, -31.2855)
            }
            Keyframe {
                frame: 31083.3
                value: Qt.vector3d(21.0299, 3.39845, -31.2642)
            }
            Keyframe {
                frame: 31125
                value: Qt.vector3d(20.2145, 3.39845, -31.2429)
            }
            Keyframe {
                frame: 31166.7
                value: Qt.vector3d(19.3998, 3.39846, -31.2215)
            }
            Keyframe {
                frame: 31208.3
                value: Qt.vector3d(18.5867, 3.39846, -31.2002)
            }
            Keyframe {
                frame: 31250
                value: Qt.vector3d(17.7759, 3.39846, -31.1719)
            }
            Keyframe {
                frame: 31291.7
                value: Qt.vector3d(16.9681, 3.39846, -31.1436)
            }
            Keyframe {
                frame: 31333.3
                value: Qt.vector3d(16.1642, 3.39846, -31.1153)
            }
            Keyframe {
                frame: 31375
                value: Qt.vector3d(15.3647, 3.39846, -31.0815)
            }
            Keyframe {
                frame: 31416.7
                value: Qt.vector3d(14.5704, 3.39847, -31.0477)
            }
            Keyframe {
                frame: 31458.3
                value: Qt.vector3d(13.7821, 3.39847, -31.0093)
            }
            Keyframe {
                frame: 31500
                value: Qt.vector3d(13.0004, 3.39847, -30.9709)
            }
            Keyframe {
                frame: 31541.7
                value: Qt.vector3d(12.2258, 3.39847, -30.9278)
            }
            Keyframe {
                frame: 31583.3
                value: Qt.vector3d(11.4591, 3.39847, -30.8846)
            }
            Keyframe {
                frame: 31625
                value: Qt.vector3d(10.7008, 3.39847, -30.8367)
            }
            Keyframe {
                frame: 31666.7
                value: Qt.vector3d(9.95148, 3.39847, -30.7888)
            }
            Keyframe {
                frame: 31708.3
                value: Qt.vector3d(9.21156, 3.39848, -30.736)
            }
            Keyframe {
                frame: 31750
                value: Qt.vector3d(8.48151, 3.39848, -30.6833)
            }
            Keyframe {
                frame: 31791.7
                value: Qt.vector3d(7.76176, 3.39848, -30.6258)
            }
            Keyframe {
                frame: 31833.3
                value: Qt.vector3d(7.05265, 3.39848, -30.5682)
            }
            Keyframe {
                frame: 31875
                value: Qt.vector3d(6.3545, 3.39848, -30.5072)
            }
            Keyframe {
                frame: 31916.7
                value: Qt.vector3d(5.66761, 3.39848, -30.4438)
            }
            Keyframe {
                frame: 31958.3
                value: Qt.vector3d(4.99219, 3.39848, -30.3781)
            }
            Keyframe {
                frame: 32000
                value: Qt.vector3d(4.32843, 3.39849, -30.3102)
            }
            Keyframe {
                frame: 32041.7
                value: Qt.vector3d(3.67651, 3.39849, -30.2401)
            }
            Keyframe {
                frame: 32083.3
                value: Qt.vector3d(3.03652, 3.39849, -30.1678)
            }
            Keyframe {
                frame: 32125
                value: Qt.vector3d(2.40855, 3.39849, -30.0933)
            }
            Keyframe {
                frame: 32166.7
                value: Qt.vector3d(1.79265, 3.39849, -30.0168)
            }
            Keyframe {
                frame: 32208.3
                value: Qt.vector3d(1.18883, 3.39849, -29.9383)
            }
            Keyframe {
                frame: 32250
                value: Qt.vector3d(0.597079, 3.3985, -29.8578)
            }
            Keyframe {
                frame: 32291.7
                value: Qt.vector3d(0.0173695, 3.3985, -29.7754)
            }
            Keyframe {
                frame: 32333.3
                value: Qt.vector3d(-0.550362, 3.3985, -29.6912)
            }
            Keyframe {
                frame: 32375
                value: Qt.vector3d(-1.1062, 3.3985, -29.6051)
            }
            Keyframe {
                frame: 32416.7
                value: Qt.vector3d(-1.65024, 3.3985, -29.5173)
            }
            Keyframe {
                frame: 32458.3
                value: Qt.vector3d(-2.1826, 3.3985, -29.4277)
            }
            Keyframe {
                frame: 32500
                value: Qt.vector3d(-2.70341, 3.3985, -29.3366)
            }
            Keyframe {
                frame: 32541.7
                value: Qt.vector3d(-3.21283, 3.39851, -29.2438)
            }
            Keyframe {
                frame: 32583.3
                value: Qt.vector3d(-3.71099, 3.39851, -29.1495)
            }
            Keyframe {
                frame: 32625
                value: Qt.vector3d(-4.20265, 3.39851, -29.053)
            }
            Keyframe {
                frame: 32666.7
                value: Qt.vector3d(-4.69237, 3.39851, -28.9537)
            }
            Keyframe {
                frame: 32708.3
                value: Qt.vector3d(-5.18001, 3.39851, -28.8516)
            }
            Keyframe {
                frame: 32750
                value: Qt.vector3d(-5.66543, 3.39851, -28.7466)
            }
            Keyframe {
                frame: 32791.7
                value: Qt.vector3d(-6.14848, 3.39852, -28.6386)
            }
            Keyframe {
                frame: 32833.3
                value: Qt.vector3d(-6.62901, 3.39852, -28.5277)
            }
            Keyframe {
                frame: 32875
                value: Qt.vector3d(-7.10686, 3.39852, -28.4138)
            }
            Keyframe {
                frame: 32916.7
                value: Qt.vector3d(-7.58188, 3.39852, -28.2968)
            }
            Keyframe {
                frame: 32958.3
                value: Qt.vector3d(-8.05389, 3.39852, -28.1767)
            }
            Keyframe {
                frame: 33000
                value: Qt.vector3d(-8.52271, 3.39852, -28.0534)
            }
            Keyframe {
                frame: 33041.7
                value: Qt.vector3d(-8.98817, 3.39852, -27.927)
            }
            Keyframe {
                frame: 33083.3
                value: Qt.vector3d(-9.45009, 3.39853, -27.7974)
            }
            Keyframe {
                frame: 33125
                value: Qt.vector3d(-9.90827, 3.39853, -27.6646)
            }
            Keyframe {
                frame: 33166.7
                value: Qt.vector3d(-10.3625, 3.39853, -27.5285)
            }
            Keyframe {
                frame: 33208.3
                value: Qt.vector3d(-10.8126, 3.39853, -27.3891)
            }
            Keyframe {
                frame: 33250
                value: Qt.vector3d(-11.2584, 3.39853, -27.2465)
            }
            Keyframe {
                frame: 33291.7
                value: Qt.vector3d(-11.6997, 3.39853, -27.1005)
            }
            Keyframe {
                frame: 33333.3
                value: Qt.vector3d(-12.1362, 3.39853, -26.9512)
            }
            Keyframe {
                frame: 33375
                value: Qt.vector3d(-12.5677, 3.39854, -26.7986)
            }
            Keyframe {
                frame: 33416.7
                value: Qt.vector3d(-12.994, 3.39854, -26.6427)
            }
            Keyframe {
                frame: 33458.3
                value: Qt.vector3d(-13.415, 3.39854, -26.4834)
            }
            Keyframe {
                frame: 33500
                value: Qt.vector3d(-13.8303, 3.39854, -26.3208)
            }
            Keyframe {
                frame: 33541.7
                value: Qt.vector3d(-14.2399, 3.39854, -26.1549)
            }
            Keyframe {
                frame: 33583.3
                value: Qt.vector3d(-14.6433, 3.39854, -25.9857)
            }
            Keyframe {
                frame: 33625
                value: Qt.vector3d(-15.0405, 3.39855, -25.8133)
            }
            Keyframe {
                frame: 33666.7
                value: Qt.vector3d(-15.4312, 3.39855, -25.6377)
            }
            Keyframe {
                frame: 33708.3
                value: Qt.vector3d(-15.8152, 3.39855, -25.4588)
            }
            Keyframe {
                frame: 33750
                value: Qt.vector3d(-16.1924, 3.39855, -25.2768)
            }
            Keyframe {
                frame: 33791.7
                value: Qt.vector3d(-16.5624, 3.39855, -25.0918)
            }
            Keyframe {
                frame: 33833.3
                value: Qt.vector3d(-16.9251, 3.39855, -24.9037)
            }
            Keyframe {
                frame: 33875
                value: Qt.vector3d(-17.2804, 3.39855, -24.7126)
            }
            Keyframe {
                frame: 33916.7
                value: Qt.vector3d(-17.628, 3.39856, -24.5186)
            }
            Keyframe {
                frame: 33958.3
                value: Qt.vector3d(-17.9677, 3.39856, -24.3219)
            }
            Keyframe {
                frame: 34000
                value: Qt.vector3d(-18.2995, 3.39856, -24.1224)
            }
            Keyframe {
                frame: 34041.7
                value: Qt.vector3d(-18.6231, 3.39856, -23.9202)
            }
            Keyframe {
                frame: 34083.3
                value: Qt.vector3d(-18.9385, 3.39856, -23.7155)
            }
            Keyframe {
                frame: 34125
                value: Qt.vector3d(-19.2454, 3.39856, -23.5084)
            }
            Keyframe {
                frame: 34166.7
                value: Qt.vector3d(-19.5438, 3.39857, -23.2989)
            }
            Keyframe {
                frame: 34208.3
                value: Qt.vector3d(-19.8336, 3.39857, -23.0872)
            }
            Keyframe {
                frame: 34250
                value: Qt.vector3d(-20.1147, 3.39857, -22.8734)
            }
            Keyframe {
                frame: 34291.7
                value: Qt.vector3d(-20.3871, 3.39857, -22.6576)
            }
            Keyframe {
                frame: 34333.3
                value: Qt.vector3d(-20.6506, 3.39857, -22.44)
            }
            Keyframe {
                frame: 34375
                value: Qt.vector3d(-20.9053, 3.39857, -22.2206)
            }
            Keyframe {
                frame: 34416.7
                value: Qt.vector3d(-21.151, 3.39857, -21.9995)
            }
            Keyframe {
                frame: 34458.3
                value: Qt.vector3d(-21.3879, 3.39858, -21.777)
            }
            Keyframe {
                frame: 34500
                value: Qt.vector3d(-21.616, 3.39858, -21.5532)
            }
            Keyframe {
                frame: 34541.7
                value: Qt.vector3d(-21.8351, 3.39858, -21.3281)
            }
            Keyframe {
                frame: 34583.3
                value: Qt.vector3d(-22.0455, 3.39858, -21.1019)
            }
            Keyframe {
                frame: 34625
                value: Qt.vector3d(-22.2471, 3.39858, -20.8748)
            }
            Keyframe {
                frame: 34666.7
                value: Qt.vector3d(-22.44, 3.39858, -20.6469)
            }
            Keyframe {
                frame: 34708.3
                value: Qt.vector3d(-22.6242, 3.39858, -20.4182)
            }
            Keyframe {
                frame: 34750
                value: Qt.vector3d(-22.7999, 3.39859, -20.1889)
            }
            Keyframe {
                frame: 34791.7
                value: Qt.vector3d(-22.9672, 3.39859, -19.9592)
            }
            Keyframe {
                frame: 34833.3
                value: Qt.vector3d(-23.1262, 3.39859, -19.7292)
            }
            Keyframe {
                frame: 34875
                value: Qt.vector3d(-23.277, 3.39859, -19.4989)
            }
            Keyframe {
                frame: 34916.7
                value: Qt.vector3d(-23.4197, 3.39859, -19.2686)
            }
            Keyframe {
                frame: 34958.3
                value: Qt.vector3d(-23.5545, 3.39859, -19.0382)
            }
            Keyframe {
                frame: 35000
                value: Qt.vector3d(-23.6815, 3.3986, -18.808)
            }
            Keyframe {
                frame: 35041.7
                value: Qt.vector3d(-23.8009, 3.3986, -18.5779)
            }
            Keyframe {
                frame: 35083.3
                value: Qt.vector3d(-23.9128, 3.3986, -18.3482)
            }
            Keyframe {
                frame: 35125
                value: Qt.vector3d(-24.0174, 3.3986, -18.1188)
            }
            Keyframe {
                frame: 35166.7
                value: Qt.vector3d(-24.1148, 3.3986, -17.89)
            }
            Keyframe {
                frame: 35208.3
                value: Qt.vector3d(-24.2053, 3.3986, -17.6617)
            }
            Keyframe {
                frame: 35250
                value: Qt.vector3d(-24.289, 3.3986, -17.4341)
            }
            Keyframe {
                frame: 35291.7
                value: Qt.vector3d(-24.366, 3.39861, -17.2072)
            }
            Keyframe {
                frame: 35333.3
                value: Qt.vector3d(-24.4366, 3.39861, -16.981)
            }
            Keyframe {
                frame: 35375
                value: Qt.vector3d(-24.5009, 3.39861, -16.7558)
            }
            Keyframe {
                frame: 35416.7
                value: Qt.vector3d(-24.5592, 3.39861, -16.5314)
            }
            Keyframe {
                frame: 35458.3
                value: Qt.vector3d(-24.6114, 3.39861, -16.3081)
            }
            Keyframe {
                frame: 35500
                value: Qt.vector3d(-24.6552, 3.39861, -16.0857)
            }
            Keyframe {
                frame: 35541.7
                value: Qt.vector3d(-24.6989, 3.39861, -15.8644)
            }
            Keyframe {
                frame: 35583.3
                value: Qt.vector3d(-24.7318, 3.39862, -15.6443)
            }
            Keyframe {
                frame: 35625
                value: Qt.vector3d(-24.7647, 3.39862, -15.4253)
            }
            Keyframe {
                frame: 35666.7
                value: Qt.vector3d(-24.785, 3.39862, -15.2075)
            }
            Keyframe {
                frame: 35708.3
                value: Qt.vector3d(-24.8053, 3.39862, -14.991)
            }
            Keyframe {
                frame: 35750
                value: Qt.vector3d(-24.8256, 3.39862, -14.7757)
            }
            Keyframe {
                frame: 35791.7
                value: Qt.vector3d(-24.8155, 3.39862, -14.5617)
            }
            Keyframe {
                frame: 35833.3
                value: Qt.vector3d(-24.8055, 3.39863, -14.349)
            }
            Keyframe {
                frame: 35875
                value: Qt.vector3d(-24.7955, 3.39863, -14.1376)
            }
            Keyframe {
                frame: 35916.7
                value: Qt.vector3d(-24.7855, 3.39863, -13.9232)
            }
            Keyframe {
                frame: 35958.3
                value: Qt.vector3d(-24.7754, 3.39863, -13.7013)
            }
            Keyframe {
                frame: 36000
                value: Qt.vector3d(-24.7654, 3.39863, -13.4719)
            }
            Keyframe {
                frame: 36041.7
                value: Qt.vector3d(-24.7554, 3.39863, -13.2352)
            }
            Keyframe {
                frame: 36083.3
                value: Qt.vector3d(-24.7047, 3.39863, -12.9912)
            }
            Keyframe {
                frame: 36125
                value: Qt.vector3d(-24.6427, 3.39864, -12.7401)
            }
            Keyframe {
                frame: 36166.7
                value: Qt.vector3d(-24.5693, 3.39864, -12.4818)
            }
            Keyframe {
                frame: 36208.3
                value: Qt.vector3d(-24.4846, 3.39864, -12.2167)
            }
            Keyframe {
                frame: 36250
                value: Qt.vector3d(-24.3885, 3.39864, -11.9448)
            }
            Keyframe {
                frame: 36291.7
                value: Qt.vector3d(-24.2813, 3.39864, -11.6665)
            }
            Keyframe {
                frame: 36333.3
                value: Qt.vector3d(-24.1631, 3.39864, -11.3818)
            }
            Keyframe {
                frame: 36375
                value: Qt.vector3d(-24.0339, 3.39864, -11.0912)
            }
            Keyframe {
                frame: 36416.7
                value: Qt.vector3d(-23.8941, 3.39865, -10.7949)
            }
            Keyframe {
                frame: 36458.3
                value: Qt.vector3d(-23.7437, 3.39865, -10.4932)
            }
            Keyframe {
                frame: 36500
                value: Qt.vector3d(-23.5832, 3.39865, -10.1865)
            }
            Keyframe {
                frame: 36541.7
                value: Qt.vector3d(-23.4129, 3.39865, -9.87525)
            }
            Keyframe {
                frame: 36583.3
                value: Qt.vector3d(-23.233, 3.39865, -9.55988)
            }
            Keyframe {
                frame: 36625
                value: Qt.vector3d(-23.0441, 3.39865, -9.24088)
            }
            Keyframe {
                frame: 36666.7
                value: Qt.vector3d(-22.8466, 3.39866, -8.91875)
            }
            Keyframe {
                frame: 36708.3
                value: Qt.vector3d(-22.641, 3.39866, -8.59405)
            }
            Keyframe {
                frame: 36750
                value: Qt.vector3d(-22.4278, 3.39866, -8.26737)
            }
            Keyframe {
                frame: 36791.7
                value: Qt.vector3d(-22.2078, 3.39866, -7.93932)
            }
            Keyframe {
                frame: 36833.3
                value: Qt.vector3d(-21.9814, 3.39866, -7.61054)
            }
            Keyframe {
                frame: 36875
                value: Qt.vector3d(-21.7495, 3.39866, -7.2817)
            }
            Keyframe {
                frame: 36916.7
                value: Qt.vector3d(-21.5126, 3.39866, -6.95348)
            }
            Keyframe {
                frame: 36958.3
                value: Qt.vector3d(-21.2717, 3.39867, -6.6266)
            }
            Keyframe {
                frame: 37000
                value: Qt.vector3d(-21.0274, 3.39867, -6.30176)
            }
            Keyframe {
                frame: 37041.7
                value: Qt.vector3d(-20.7807, 3.39867, -5.97968)
            }
            Keyframe {
                frame: 37083.3
                value: Qt.vector3d(-20.5322, 3.39867, -5.66109)
            }
            Keyframe {
                frame: 37125
                value: Qt.vector3d(-20.2829, 3.39867, -5.34671)
            }
            Keyframe {
                frame: 37166.7
                value: Qt.vector3d(-20.0335, 3.39867, -5.03725)
            }
            Keyframe {
                frame: 37208.3
                value: Qt.vector3d(-19.7851, 3.39868, -4.73341)
            }
            Keyframe {
                frame: 37250
                value: Qt.vector3d(-19.5383, 3.39868, -4.43585)
            }
            Keyframe {
                frame: 37291.7
                value: Qt.vector3d(-19.294, 3.39868, -4.14522)
            }
            Keyframe {
                frame: 37333.3
                value: Qt.vector3d(-19.0531, 3.39868, -3.86216)
            }
            Keyframe {
                frame: 37375
                value: Qt.vector3d(-18.8163, 3.39868, -3.58725)
            }
            Keyframe {
                frame: 37416.7
                value: Qt.vector3d(-18.5843, 3.39868, -3.32104)
            }
            Keyframe {
                frame: 37458.3
                value: Qt.vector3d(-18.358, 3.39868, -3.06404)
            }
            Keyframe {
                frame: 37500
                value: Qt.vector3d(-18.1379, 3.39869, -2.81673)
            }
            Keyframe {
                frame: 37541.7
                value: Qt.vector3d(-17.9247, 3.39869, -2.57953)
            }
            Keyframe {
                frame: 37583.3
                value: Qt.vector3d(-17.7191, 3.39869, -2.35283)
            }
            Keyframe {
                frame: 37625
                value: Qt.vector3d(-17.5216, 3.39869, -2.13697)
            }
            Keyframe {
                frame: 37666.7
                value: Qt.vector3d(-17.3327, 3.39869, -1.93223)
            }
            Keyframe {
                frame: 37708.3
                value: Qt.vector3d(-17.1529, 3.39869, -1.73889)
            }
            Keyframe {
                frame: 37750
                value: Qt.vector3d(-16.9825, 3.39869, -1.55714)
            }
            Keyframe {
                frame: 37791.7
                value: Qt.vector3d(-16.822, 3.3987, -1.38715)
            }
            Keyframe {
                frame: 37833.3
                value: Qt.vector3d(-16.6717, 3.3987, -1.22906)
            }
            Keyframe {
                frame: 37875
                value: Qt.vector3d(-16.5318, 3.3987, -1.08294)
            }
            Keyframe {
                frame: 37916.7
                value: Qt.vector3d(-16.4026, 3.3987, -0.948866)
            }
            Keyframe {
                frame: 37958.3
                value: Qt.vector3d(-16.2844, 3.3987, -0.826853)
            }
            Keyframe {
                frame: 38000
                value: Qt.vector3d(-16.1772, 3.3987, -0.7169)
            }
            Keyframe {
                frame: 38041.7
                value: Qt.vector3d(-16.0812, 3.39871, -0.618971)
            }
            Keyframe {
                frame: 38083.3
                value: Qt.vector3d(-15.9964, 3.39871, -0.533007)
            }
            Keyframe {
                frame: 38125
                value: Qt.vector3d(-15.923, 3.39871, -0.458926)
            }
            Keyframe {
                frame: 38166.7
                value: Qt.vector3d(-15.861, 3.39871, -0.396629)
            }
            Keyframe {
                frame: 38208.3
                value: Qt.vector3d(-15.8104, 3.39871, -0.345995)
            }
            Keyframe {
                frame: 38250
                value: Qt.vector3d(-15.771, 3.39871, -0.306887)
            }
            Keyframe {
                frame: 38291.7
                value: Qt.vector3d(-15.7487, 3.39871, -0.279158)
            }
            Keyframe {
                frame: 38333.3
                value: Qt.vector3d(-15.7263, 3.39872, -0.262649)
            }
            Keyframe {
                frame: 38375
                value: Qt.vector3d(-15.7243, 3.39872, -0.257183)
            }
            Keyframe {
                frame: 38416.7
                value: Qt.vector3d(-15.7223, 3.39872, -0.25719)
            }
            Keyframe {
                frame: 38458.3
                value: Qt.vector3d(-15.7203, 3.39872, -0.257196)
            }
            Keyframe {
                frame: 38500
                value: Qt.vector3d(-15.7183, 3.39872, -0.257203)
            }
            Keyframe {
                frame: 38541.7
                value: Qt.vector3d(-15.7163, 3.39872, -0.257209)
            }
            Keyframe {
                frame: 38583.3
                value: Qt.vector3d(-15.7143, 3.39872, -0.257216)
            }
            Keyframe {
                frame: 38625
                value: Qt.vector3d(-15.7123, 3.39873, -0.257222)
            }
            Keyframe {
                frame: 38666.7
                value: Qt.vector3d(-15.7103, 3.39873, -0.257229)
            }
            Keyframe {
                frame: 38708.3
                value: Qt.vector3d(-15.7083, 3.39873, -0.257235)
            }
            Keyframe {
                frame: 38750
                value: Qt.vector3d(-15.7063, 3.39873, -0.257242)
            }
            Keyframe {
                frame: 38791.7
                value: Qt.vector3d(-15.7043, 3.39873, -0.257248)
            }
            Keyframe {
                frame: 38833.3
                value: Qt.vector3d(-15.7023, 3.39873, -0.257255)
            }
            Keyframe {
                frame: 38875
                value: Qt.vector3d(-15.7003, 3.39874, -0.257261)
            }
            Keyframe {
                frame: 38916.7
                value: Qt.vector3d(-15.6983, 3.39874, -0.257268)
            }
            Keyframe {
                frame: 38958.3
                value: Qt.vector3d(-15.6962, 3.39874, -0.257274)
            }
            Keyframe {
                frame: 39000
                value: Qt.vector3d(-15.6942, 3.39874, -0.257281)
            }
            Keyframe {
                frame: 39041.7
                value: Qt.vector3d(-15.6922, 3.39874, -0.257287)
            }
            Keyframe {
                frame: 39083.3
                value: Qt.vector3d(-15.6902, 3.39874, -0.257294)
            }
            Keyframe {
                frame: 39125
                value: Qt.vector3d(-15.6882, 3.39874, -0.2573)
            }
            Keyframe {
                frame: 39166.7
                value: Qt.vector3d(-15.6862, 3.39875, -0.257307)
            }
            Keyframe {
                frame: 39208.3
                value: Qt.vector3d(-15.6842, 3.39875, -0.257313)
            }
            Keyframe {
                frame: 39250
                value: Qt.vector3d(-15.6822, 3.39154, -0.25732)
            }
            Keyframe {
                frame: 39291.7
                value: Qt.vector3d(-15.6802, 3.36947, -0.257326)
            }
            Keyframe {
                frame: 39333.3
                value: Qt.vector3d(-15.6282, 3.33196, -0.257333)
            }
            Keyframe {
                frame: 39375
                value: Qt.vector3d(-15.5542, 3.2787, -0.257339)
            }
            Keyframe {
                frame: 39416.7
                value: Qt.vector3d(-15.4581, 3.20971, -0.257346)
            }
            Keyframe {
                frame: 39458.3
                value: Qt.vector3d(-15.3406, 3.12542, -0.257352)
            }
            Keyframe {
                frame: 39500
                value: Qt.vector3d(-15.2027, 3.02682, -0.257359)
            }
            Keyframe {
                frame: 39541.7
                value: Qt.vector3d(-15.0466, 2.91543, -0.257365)
            }
            Keyframe {
                frame: 39583.3
                value: Qt.vector3d(-14.875, 2.79334, -0.257372)
            }
            Keyframe {
                frame: 39625
                value: Qt.vector3d(-14.6914, 2.66309, -0.257378)
            }
            Keyframe {
                frame: 39666.7
                value: Qt.vector3d(-14.4996, 2.52751, -0.257385)
            }
            Keyframe {
                frame: 39708.3
                value: Qt.vector3d(-14.3036, 2.38955, -0.257391)
            }
            Keyframe {
                frame: 39750
                value: Qt.vector3d(-14.1073, 2.25202, -0.257398)
            }
            Keyframe {
                frame: 39791.7
                value: Qt.vector3d(-13.9141, 2.11743, -0.257404)
            }
            Keyframe {
                frame: 39833.3
                value: Qt.vector3d(-13.7272, 1.98792, -0.257411)
            }
            Keyframe {
                frame: 39875
                value: Qt.vector3d(-13.5488, 1.86515, -0.257417)
            }
            Keyframe {
                frame: 39916.7
                value: Qt.vector3d(-13.3806, 1.75036, -0.257424)
            }
            Keyframe {
                frame: 39958.3
                value: Qt.vector3d(-13.224, 1.64436, -0.25743)
            }
            Keyframe {
                frame: 40000
                value: Qt.vector3d(-13.0796, 1.54764, -0.257437)
            }
            Keyframe {
                frame: 40041.7
                value: Qt.vector3d(-12.9318, 1.45292, -0.257443)
            }
            Keyframe {
                frame: 40083.3
                value: Qt.vector3d(-12.7661, 1.35312, -0.25745)
            }
            Keyframe {
                frame: 40125
                value: Qt.vector3d(-12.5852, 1.24931, -0.257456)
            }
            Keyframe {
                frame: 40166.7
                value: Qt.vector3d(-12.3941, 1.14323, -0.257463)
            }
            Keyframe {
                frame: 40208.3
                value: Qt.vector3d(-12.2003, 1.03733, -0.257469)
            }
            Keyframe {
                frame: 40250
                value: Qt.vector3d(-12.0128, 0.934558, -0.257476)
            }
            Keyframe {
                frame: 40291.7
                value: Qt.vector3d(-11.8414, 0.83799, -0.257482)
            }
            Keyframe {
                frame: 40333.3
                value: Qt.vector3d(-11.6945, 0.750238, -0.257489)
            }
            Keyframe {
                frame: 40375
                value: Qt.vector3d(-11.5782, 0.673071, -0.257495)
            }
            Keyframe {
                frame: 40416.7
                value: Qt.vector3d(-11.4957, 0.607291, -0.257502)
            }
            Keyframe {
                frame: 40458.3
                value: Qt.vector3d(-11.4473, 0.55287, -0.257508)
            }
            Keyframe {
                frame: 40500
                value: Qt.vector3d(-11.4467, 0.50922, -0.257515)
            }
            Keyframe {
                frame: 40541.7
                value: Qt.vector3d(-11.4462, 0.472909, -0.257521)
            }
            Keyframe {
                frame: 40583.3
                value: Qt.vector3d(-11.4456, 0.441724, -0.257528)
            }
            Keyframe {
                frame: 40625
                value: Qt.vector3d(-11.4451, 0.416559, -0.257534)
            }
            Keyframe {
                frame: 40666.7
                value: Qt.vector3d(-11.4446, 0.397927, -0.257541)
            }
            Keyframe {
                frame: 40708.3
                value: Qt.vector3d(-11.444, 0.385617, -0.257547)
            }
            Keyframe {
                frame: 40750
                value: Qt.vector3d(-11.4435, 0.378592, -0.257554)
            }
            Keyframe {
                frame: 40791.7
                value: Qt.vector3d(-11.4429, 0.37529, -0.25756)
            }
            Keyframe {
                frame: 40833.3
                value: Qt.vector3d(-11.4424, 0.374113, -0.257567)
            }
            Keyframe {
                frame: 40875
                value: Qt.vector3d(-11.4419, 0.373844, -0.257574)
            }
            Keyframe {
                frame: 40916.7
                value: Qt.vector3d(-11.4413, 0.373575, -0.25758)
            }
            Keyframe {
                frame: 40958.3
                value: Qt.vector3d(-11.4408, 0.373306, -0.258779)
            }
            Keyframe {
                frame: 41000
                value: Qt.vector3d(-11.4402, 0.373118, -0.260783)
            }
            Keyframe {
                frame: 41041.7
                value: Qt.vector3d(-11.4397, 0.37293, -0.263579)
            }
            Keyframe {
                frame: 41083.3
                value: Qt.vector3d(-11.4392, 0.372742, -0.267134)
            }
            Keyframe {
                frame: 41125
                value: Qt.vector3d(-11.4386, 0.372554, -0.271385)
            }
            Keyframe {
                frame: 41166.7
                value: Qt.vector3d(-11.4381, 0.372504, -0.276245)
            }
            Keyframe {
                frame: 41208.3
                value: Qt.vector3d(-11.4375, 0.372453, -0.281595)
            }
            Keyframe {
                frame: 41250
                value: Qt.vector3d(-11.437, 0.372403, -0.287289)
            }
            Keyframe {
                frame: 41291.7
                value: Qt.vector3d(-11.4365, 0.372353, -0.293161)
            }
            Keyframe {
                frame: 41333.3
                value: Qt.vector3d(-11.4359, 0.372303, -0.299032)
            }
            Keyframe {
                frame: 41375
                value: Qt.vector3d(-11.4354, 0.372253, -0.304726)
            }
            Keyframe {
                frame: 41416.7
                value: Qt.vector3d(-11.4348, 0.372203, -0.310076)
            }
            Keyframe {
                frame: 41458.3
                value: Qt.vector3d(-11.4343, 0.372152, -0.314936)
            }
            Keyframe {
                frame: 41500
                value: Qt.vector3d(-11.4338, 0.372102, -0.319188)
            }
            Keyframe {
                frame: 41541.7
                value: Qt.vector3d(-11.4332, 0.372052, -0.322742)
            }
            Keyframe {
                frame: 41583.3
                value: Qt.vector3d(-11.4327, 0.372002, -0.325538)
            }
            Keyframe {
                frame: 41625
                value: Qt.vector3d(-11.4321, 0.371952, -0.327543)
            }
            Keyframe {
                frame: 41666.7
                value: Qt.vector3d(-11.4316, 0.371901, -0.328741)
            }
            Keyframe {
                frame: 41708.3
                value: Qt.vector3d(-11.4311, 0.371851, -0.329138)
            }
        }

        KeyframeGroup {
            target: flyingsmallship
            property: "eulerRotation"

            Keyframe {
                frame: 41.6667
                value: Qt.vector3d(-9.33467e-06, 90, 0)
            }
            Keyframe {
                frame: 83.3333
                value: Qt.vector3d(-0.00328749, 89.9974, 0)
            }
            Keyframe {
                frame: 125
                value: Qt.vector3d(-0.00656565, 89.9948, 6.25323e-10)
            }
            Keyframe {
                frame: 166.667
                value: Qt.vector3d(-0.00984381, 89.9922, 0)
            }
            Keyframe {
                frame: 208.333
                value: Qt.vector3d(-0.013122, 89.9896, -4.16882e-10)
            }
            Keyframe {
                frame: 250
                value: Qt.vector3d(-0.0164001, 89.987, 0)
            }
            Keyframe {
                frame: 291.667
                value: Qt.vector3d(-0.0196783, 89.9844, -1.66753e-09)
            }
            Keyframe {
                frame: 333.333
                value: Qt.vector3d(-0.0229564, 89.9817, 0)
            }
            Keyframe {
                frame: 375
                value: Qt.vector3d(-0.0262346, 89.9791, -8.33763e-10)
            }
            Keyframe {
                frame: 416.667
                value: Qt.vector3d(-0.0295127, 89.9765, -3.33505e-09)
            }
            Keyframe {
                frame: 458.333
                value: Qt.vector3d(-0.0327909, 89.9739, 3.33505e-09)
            }
            Keyframe {
                frame: 500
                value: Qt.vector3d(-0.0360691, 89.9713, 0)
            }
            Keyframe {
                frame: 541.667
                value: Qt.vector3d(-0.0393472, 89.9687, -3.33505e-09)
            }
            Keyframe {
                frame: 583.333
                value: Qt.vector3d(-0.0426254, 89.9661, 3.33505e-09)
            }
            Keyframe {
                frame: 625
                value: Qt.vector3d(-0.0459035, 89.9634, 5.00258e-09)
            }
            Keyframe {
                frame: 666.667
                value: Qt.vector3d(-0.0491817, 89.9608, 1.66753e-09)
            }
            Keyframe {
                frame: 708.333
                value: Qt.vector3d(-0.0524599, 89.9582, 0)
            }
            Keyframe {
                frame: 750
                value: Qt.vector3d(-0.055738, 89.9556, 1.66753e-09)
            }
            Keyframe {
                frame: 791.667
                value: Qt.vector3d(-0.0590162, 89.953, 3.33506e-09)
            }
            Keyframe {
                frame: 833.333
                value: Qt.vector3d(-0.0622943, 89.9504, -6.67011e-09)
            }
            Keyframe {
                frame: 875
                value: Qt.vector3d(-0.0655725, 89.9478, 0)
            }
            Keyframe {
                frame: 916.667
                value: Qt.vector3d(-0.0688507, 89.9452, 0)
            }
            Keyframe {
                frame: 958.333
                value: Qt.vector3d(-0.0721288, 89.9426, 3.33506e-09)
            }
            Keyframe {
                frame: 1000
                value: Qt.vector3d(-0.075407, 89.9399, 0)
            }
            Keyframe {
                frame: 1041.67
                value: Qt.vector3d(-0.0786851, 89.9373, 0)
            }
            Keyframe {
                frame: 1083.33
                value: Qt.vector3d(-0.0819633, 89.9347, 3.33506e-09)
            }
            Keyframe {
                frame: 1125
                value: Qt.vector3d(-0.0852414, 89.9321, 6.67011e-09)
            }
            Keyframe {
                frame: 1166.67
                value: Qt.vector3d(-0.0885196, 89.9295, -3.33506e-09)
            }
            Keyframe {
                frame: 1208.33
                value: Qt.vector3d(-0.0917977, 89.9269, 6.67012e-09)
            }
            Keyframe {
                frame: 1250
                value: Qt.vector3d(-0.0950759, 89.9243, -6.67012e-09)
            }
            Keyframe {
                frame: 1291.67
                value: Qt.vector3d(-0.0983541, 89.9217, 0)
            }
            Keyframe {
                frame: 1333.33
                value: Qt.vector3d(-0.101632, 89.9191, 1.00052e-08)
            }
            Keyframe {
                frame: 1375
                value: Qt.vector3d(-0.10491, 89.9165, -1.33402e-08)
            }
            Keyframe {
                frame: 1416.67
                value: Qt.vector3d(-0.108189, 89.9139, -1.00052e-08)
            }
            Keyframe {
                frame: 1458.33
                value: Qt.vector3d(-0.111467, 89.9112, -3.33506e-09)
            }
            Keyframe {
                frame: 1500
                value: Qt.vector3d(-0.114745, 89.9086, 0)
            }
            Keyframe {
                frame: 1541.67
                value: Qt.vector3d(-0.118023, 89.906, 6.67012e-09)
            }
            Keyframe {
                frame: 1583.33
                value: Qt.vector3d(-0.121301, 89.9034, 2.00104e-08)
            }
            Keyframe {
                frame: 1625
                value: Qt.vector3d(-0.124579, 89.9008, 6.67012e-09)
            }
            Keyframe {
                frame: 1666.67
                value: Qt.vector3d(-0.127858, 89.8982, 0)
            }
            Keyframe {
                frame: 1708.33
                value: Qt.vector3d(-0.131136, 89.8955, 6.67012e-09)
            }
            Keyframe {
                frame: 1750
                value: Qt.vector3d(-0.134414, 89.8929, 0)
            }
            Keyframe {
                frame: 1791.67
                value: Qt.vector3d(-0.54066, 89.8903, -2.66816e-08)
            }
            Keyframe {
                frame: 1833.33
                value: Qt.vector3d(-1.2202, 89.8877, 5.3373e-08)
            }
            Keyframe {
                frame: 1875
                value: Qt.vector3d(-2.16948, 89.8851, 0)
            }
            Keyframe {
                frame: 1916.67
                value: Qt.vector3d(-3.37863, 89.8825, 0)
            }
            Keyframe {
                frame: 1958.33
                value: Qt.vector3d(-4.83003, 89.8799, 0)
            }
            Keyframe {
                frame: 2000
                value: Qt.vector3d(-6.49741, 89.8773, -2.14823e-07)
            }
            Keyframe {
                frame: 2041.67
                value: Qt.vector3d(-8.34543, 89.8747, 8.62911e-07)
            }
            Keyframe {
                frame: 2083.33
                value: Qt.vector3d(-10.33, 89.872, 0)
            }
            Keyframe {
                frame: 2125
                value: Qt.vector3d(-12.3998, 89.8694, -4.37083e-07)
            }
            Keyframe {
                frame: 2166.67
                value: Qt.vector3d(-14.4986, 89.8668, 8.81857e-07)
            }
            Keyframe {
                frame: 2208.33
                value: Qt.vector3d(-16.5684, 89.8642, -8.90758e-07)
            }
            Keyframe {
                frame: 2250
                value: Qt.vector3d(-18.553, 89.8616, 0)
            }
            Keyframe {
                frame: 2291.67
                value: Qt.vector3d(-20.401, 89.859, 9.1091e-07)
            }
            Keyframe {
                frame: 2333.33
                value: Qt.vector3d(-22.0684, 89.8564, 9.2127e-07)
            }
            Keyframe {
                frame: 2375
                value: Qt.vector3d(-23.5198, 89.8538, 3.72452e-06)
            }
            Keyframe {
                frame: 2416.67
                value: Qt.vector3d(-24.729, 89.8512, -1.87994e-06)
            }
            Keyframe {
                frame: 2458.33
                value: Qt.vector3d(-25.6782, 89.8485, -1.89466e-06)
            }
            Keyframe {
                frame: 2500
                value: Qt.vector3d(-26.3578, 89.8459, 1.90566e-06)
            }
            Keyframe {
                frame: 2541.67
                value: Qt.vector3d(-26.764, 89.8433, -9.56214e-07)
            }
            Keyframe {
                frame: 2583.33
                value: Qt.vector3d(-26.7655, 89.8407, 9.56226e-07)
            }
            Keyframe {
                frame: 2625
                value: Qt.vector3d(-26.7794, 89.8381, 4.11228e-05)
            }
            Keyframe {
                frame: 2666.67
                value: Qt.vector3d(-26.772, 89.8355, 9.56281e-06)
            }
            Keyframe {
                frame: 2708.33
                value: Qt.vector3d(-26.771, 89.6191, 9.56273e-06)
            }
            Keyframe {
                frame: 2750
                value: Qt.vector3d(-26.7716, 89.3041, 3.82511e-06)
            }
            Keyframe {
                frame: 2791.67
                value: Qt.vector3d(-26.7731, 88.8845, 8.60661e-06)
            }
            Keyframe {
                frame: 2833.33
                value: Qt.vector3d(-26.7742, 88.3555, 4.7815e-06)
            }
            Keyframe {
                frame: 2875
                value: Qt.vector3d(-26.7756, 87.7143, 4.78156e-06)
            }
            Keyframe {
                frame: 2916.67
                value: Qt.vector3d(-26.777, 86.9608, 6.69426e-06)
            }
            Keyframe {
                frame: 2958.33
                value: Qt.vector3d(-26.7784, 86.0975, 0)
            }
            Keyframe {
                frame: 3000
                value: Qt.vector3d(-26.7798, 85.1304, 2.86904e-06)
            }
            Keyframe {
                frame: 3041.67
                value: Qt.vector3d(-26.7813, 84.0684, 3.82544e-06)
            }
            Keyframe {
                frame: 3083.33
                value: Qt.vector3d(-26.7827, 82.9229, 4.78186e-06)
            }
            Keyframe {
                frame: 3125
                value: Qt.vector3d(-26.7841, 81.7071, 3.82553e-06)
            }
            Keyframe {
                frame: 3166.67
                value: Qt.vector3d(-26.7855, 80.4349, 0)
            }
            Keyframe {
                frame: 3208.33
                value: Qt.vector3d(-26.787, 79.12, 6.69485e-06)
            }
            Keyframe {
                frame: 3250
                value: Qt.vector3d(-26.7884, 77.7754, 8.60777e-06)
            }
            Keyframe {
                frame: 3291.67
                value: Qt.vector3d(-26.7898, 76.4128, 2.86929e-06)
            }
            Keyframe {
                frame: 3333.33
                value: Qt.vector3d(-26.7913, 75.0422, 9.56443e-07)
            }
            Keyframe {
                frame: 3375
                value: Qt.vector3d(-26.7927, 73.6718, 9.56455e-07)
            }
            Keyframe {
                frame: 3416.67
                value: Qt.vector3d(-26.7941, 72.3085, 2.8694e-06)
            }
            Keyframe {
                frame: 3458.33
                value: Qt.vector3d(-26.8639, 70.8823, 0.0265631)
            }
            Keyframe {
                frame: 3500
                value: Qt.vector3d(-26.7595, 69.3196, 0.106585)
            }
            Keyframe {
                frame: 3541.67
                value: Qt.vector3d(-26.5839, 67.6214, 0.240214)
            }
            Keyframe {
                frame: 3583.33
                value: Qt.vector3d(-26.3359, 65.7899, 0.427185)
            }
            Keyframe {
                frame: 3625
                value: Qt.vector3d(-26.0147, 63.8288, 0.666815)
            }
            Keyframe {
                frame: 3666.67
                value: Qt.vector3d(-25.6195, 61.7427, 0.957942)
            }
            Keyframe {
                frame: 3708.33
                value: Qt.vector3d(-25.15, 59.5381, 1.2989)
            }
            Keyframe {
                frame: 3750
                value: Qt.vector3d(-24.6065, 57.2228, 1.68761)
            }
            Keyframe {
                frame: 3791.67
                value: Qt.vector3d(-23.9894, 54.8063, 2.12144)
            }
            Keyframe {
                frame: 3833.33
                value: Qt.vector3d(-23.3001, 52.2995, 2.59742)
            }
            Keyframe {
                frame: 3875
                value: Qt.vector3d(-22.5404, 49.7148, 3.1121)
            }
            Keyframe {
                frame: 3916.67
                value: Qt.vector3d(-21.7129, 47.0661, 3.66169)
            }
            Keyframe {
                frame: 3958.33
                value: Qt.vector3d(-20.8209, 44.3685, 4.24209)
            }
            Keyframe {
                frame: 4000
                value: Qt.vector3d(-19.8685, 41.6381, 4.84896)
            }
            Keyframe {
                frame: 4041.67
                value: Qt.vector3d(-18.8606, 38.8919, 5.47775)
            }
            Keyframe {
                frame: 4083.33
                value: Qt.vector3d(-17.803, 36.1476, 6.12379)
            }
            Keyframe {
                frame: 4125
                value: Qt.vector3d(-16.7021, 33.423, 6.78235)
            }
            Keyframe {
                frame: 4166.67
                value: Qt.vector3d(-15.5646, 30.7359, 7.44866)
            }
            Keyframe {
                frame: 4208.33
                value: Qt.vector3d(-14.3982, 28.104, 8.11803)
            }
            Keyframe {
                frame: 4250
                value: Qt.vector3d(-13.2106, 25.5438, 8.78583)
            }
            Keyframe {
                frame: 4291.67
                value: Qt.vector3d(-12.0098, 23.0713, 9.44755)
            }
            Keyframe {
                frame: 4333.33
                value: Qt.vector3d(-10.8037, 20.7009, 10.0989)
            }
            Keyframe {
                frame: 4375
                value: Qt.vector3d(-9.60027, 18.4457, 10.7356)
            }
            Keyframe {
                frame: 4416.67
                value: Qt.vector3d(-8.40693, 16.3169, 11.3538)
            }
            Keyframe {
                frame: 4458.33
                value: Qt.vector3d(-7.23077, 14.3244, 11.9497)
            }
            Keyframe {
                frame: 4500
                value: Qt.vector3d(-6.07827, 12.4757, 12.5199)
            }
            Keyframe {
                frame: 4541.67
                value: Qt.vector3d(-4.95533, 10.7771, 13.0611)
            }
            Keyframe {
                frame: 4583.33
                value: Qt.vector3d(-3.86711, 9.2327, 13.5703)
            }
            Keyframe {
                frame: 4625
                value: Qt.vector3d(-2.81806, 7.84526, 14.0448)
            }
            Keyframe {
                frame: 4666.67
                value: Qt.vector3d(-1.81192, 6.61599, 14.4822)
            }
            Keyframe {
                frame: 4708.33
                value: Qt.vector3d(-0.851717, 5.54481, 14.8803)
            }
            Keyframe {
                frame: 4750
                value: Qt.vector3d(0.0601167, 4.63048, 15.2372)
            }
            Keyframe {
                frame: 4791.67
                value: Qt.vector3d(0.921802, 3.87086, 15.5513)
            }
            Keyframe {
                frame: 4833.33
                value: Qt.vector3d(1.73205, 3.26301, 15.8211)
            }
            Keyframe {
                frame: 4875
                value: Qt.vector3d(2.49005, 2.80339, 16.0457)
            }
            Keyframe {
                frame: 4916.67
                value: Qt.vector3d(3.19542, 2.48805, 16.2241)
            }
            Keyframe {
                frame: 4958.33
                value: Qt.vector3d(3.848, 2.31266, 16.3557)
            }
            Keyframe {
                frame: 5000
                value: Qt.vector3d(4.44801, 2.27275, 16.4402)
            }
            Keyframe {
                frame: 5041.67
                value: Qt.vector3d(4.99718, 2.36084, 16.4437)
            }
            Keyframe {
                frame: 5083.33
                value: Qt.vector3d(5.51539, 2.53202, 16.4475)
            }
            Keyframe {
                frame: 5125
                value: Qt.vector3d(6.02504, 2.73852, 16.4522)
            }
            Keyframe {
                frame: 5166.67
                value: Qt.vector3d(6.52588, 2.981, 16.4578)
            }
            Keyframe {
                frame: 5208.33
                value: Qt.vector3d(7.01761, 3.26014, 16.464)
            }
            Keyframe {
                frame: 5250
                value: Qt.vector3d(7.50187, 3.57237, 16.439)
            }
            Keyframe {
                frame: 5291.67
                value: Qt.vector3d(7.97729, 3.92061, 16.4049)
            }
            Keyframe {
                frame: 5333.33
                value: Qt.vector3d(8.44372, 4.30517, 16.3617)
            }
            Keyframe {
                frame: 5375
                value: Qt.vector3d(8.90101, 4.72636, 16.3092)
            }
            Keyframe {
                frame: 5416.67
                value: Qt.vector3d(9.34895, 5.18441, 16.2474)
            }
            Keyframe {
                frame: 5458.33
                value: Qt.vector3d(9.78738, 5.67952, 16.1762)
            }
            Keyframe {
                frame: 5500
                value: Qt.vector3d(10.2162, 6.21183, 16.0955)
            }
            Keyframe {
                frame: 5541.67
                value: Qt.vector3d(10.6351, 6.78143, 16.0054)
            }
            Keyframe {
                frame: 5583.33
                value: Qt.vector3d(11.0441, 7.38832, 15.9058)
            }
            Keyframe {
                frame: 5625
                value: Qt.vector3d(11.443, 8.03244, 15.7968)
            }
            Keyframe {
                frame: 5666.67
                value: Qt.vector3d(11.8316, 8.71365, 15.6785)
            }
            Keyframe {
                frame: 5708.33
                value: Qt.vector3d(12.2098, 9.43172, 15.5511)
            }
            Keyframe {
                frame: 5750
                value: Qt.vector3d(12.5776, 10.1863, 15.4146)
            }
            Keyframe {
                frame: 5791.67
                value: Qt.vector3d(12.9348, 10.9771, 15.2694)
            }
            Keyframe {
                frame: 5833.33
                value: Qt.vector3d(13.2813, 11.8034, 15.1156)
            }
            Keyframe {
                frame: 5875
                value: Qt.vector3d(13.6172, 12.6646, 14.9537)
            }
            Keyframe {
                frame: 5916.67
                value: Qt.vector3d(13.9424, 13.5601, 14.784)
            }
            Keyframe {
                frame: 5958.33
                value: Qt.vector3d(14.2568, 14.4889, 14.6068)
            }
            Keyframe {
                frame: 6000
                value: Qt.vector3d(14.5606, 15.45, 14.4227)
            }
            Keyframe {
                frame: 6041.67
                value: Qt.vector3d(14.8538, 16.4425, 14.2322)
            }
            Keyframe {
                frame: 6083.33
                value: Qt.vector3d(15.1365, 17.465, 14.0357)
            }
            Keyframe {
                frame: 6125
                value: Qt.vector3d(15.4087, 18.5162, 13.8339)
            }
            Keyframe {
                frame: 6166.67
                value: Qt.vector3d(15.6708, 19.5947, 13.6275)
            }
            Keyframe {
                frame: 6208.33
                value: Qt.vector3d(15.9229, 20.6991, 13.417)
            }
            Keyframe {
                frame: 6250
                value: Qt.vector3d(16.1651, 21.8276, 13.2031)
            }
            Keyframe {
                frame: 6291.67
                value: Qt.vector3d(16.3979, 22.9786, 12.9867)
            }
            Keyframe {
                frame: 6333.33
                value: Qt.vector3d(16.6213, 24.1504, 12.7683)
            }
            Keyframe {
                frame: 6375
                value: Qt.vector3d(16.8359, 25.3411, 12.5488)
            }
            Keyframe {
                frame: 6416.67
                value: Qt.vector3d(17.042, 26.5488, 12.3289)
            }
            Keyframe {
                frame: 6458.33
                value: Qt.vector3d(17.2398, 27.7717, 12.1093)
            }
            Keyframe {
                frame: 6500
                value: Qt.vector3d(17.4299, 29.0078, 11.8907)
            }
            Keyframe {
                frame: 6541.67
                value: Qt.vector3d(17.6126, 30.2551, 11.6739)
            }
            Keyframe {
                frame: 6583.33
                value: Qt.vector3d(17.7884, 31.5119, 11.4596)
            }
            Keyframe {
                frame: 6625
                value: Qt.vector3d(17.9578, 32.7762, 11.2485)
            }
            Keyframe {
                frame: 6666.67
                value: Qt.vector3d(18.1211, 34.046, 11.0412)
            }
            Keyframe {
                frame: 6708.33
                value: Qt.vector3d(18.2789, 35.3197, 10.8383)
            }
            Keyframe {
                frame: 6750
                value: Qt.vector3d(18.4316, 36.5954, 10.6405)
            }
            Keyframe {
                frame: 6791.67
                value: Qt.vector3d(18.5796, 37.8715, 10.4482)
            }
            Keyframe {
                frame: 6833.33
                value: Qt.vector3d(18.7236, 39.1462, 10.2621)
            }
            Keyframe {
                frame: 6875
                value: Qt.vector3d(18.8594, 40.4198, 10.0879)
            }
            Keyframe {
                frame: 6916.67
                value: Qt.vector3d(19.0008, 41.6856, 9.90994)
            }
            Keyframe {
                frame: 6958.33
                value: Qt.vector3d(19.1298, 42.9493, 9.75053)
            }
            Keyframe {
                frame: 7000
                value: Qt.vector3d(19.2666, 44.2023, 9.58737)
            }
            Keyframe {
                frame: 7041.67
                value: Qt.vector3d(19.3963, 45.4489, 9.43803)
            }
            Keyframe {
                frame: 7083.33
                value: Qt.vector3d(19.5243, 46.6861, 9.29704)
            }
            Keyframe {
                frame: 7125
                value: Qt.vector3d(19.6511, 47.913, 9.16464)
            }
            Keyframe {
                frame: 7166.67
                value: Qt.vector3d(19.7769, 49.1286, 9.04104)
            }
            Keyframe {
                frame: 7208.33
                value: Qt.vector3d(19.9021, 50.332, 8.9264)
            }
            Keyframe {
                frame: 7250
                value: Qt.vector3d(20.027, 51.5225, 8.82087)
            }
            Keyframe {
                frame: 7291.67
                value: Qt.vector3d(20.1519, 52.6994, 8.72457)
            }
            Keyframe {
                frame: 7333.33
                value: Qt.vector3d(20.2771, 53.8622, 8.6376)
            }
            Keyframe {
                frame: 7375
                value: Qt.vector3d(20.4028, 55.0101, 8.55999)
            }
            Keyframe {
                frame: 7416.67
                value: Qt.vector3d(20.5292, 56.1429, 8.4918)
            }
            Keyframe {
                frame: 7458.33
                value: Qt.vector3d(20.6565, 57.26, 8.43307)
            }
            Keyframe {
                frame: 7500
                value: Qt.vector3d(20.7849, 58.3613, 8.38377)
            }
            Keyframe {
                frame: 7541.67
                value: Qt.vector3d(20.9147, 59.4463, 8.34391)
            }
            Keyframe {
                frame: 7583.33
                value: Qt.vector3d(21.0444, 60.5354, 8.30895)
            }
            Keyframe {
                frame: 7625
                value: Qt.vector3d(21.1725, 61.649, 8.27443)
            }
            Keyframe {
                frame: 7666.67
                value: Qt.vector3d(21.2989, 62.7869, 8.2403)
            }
            Keyframe {
                frame: 7708.33
                value: Qt.vector3d(21.4238, 63.9492, 8.20663)
            }
            Keyframe {
                frame: 7750
                value: Qt.vector3d(21.5468, 65.1357, 8.17341)
            }
            Keyframe {
                frame: 7791.67
                value: Qt.vector3d(21.6681, 66.3462, 8.14064)
            }
            Keyframe {
                frame: 7833.33
                value: Qt.vector3d(21.7877, 67.5806, 8.10835)
            }
            Keyframe {
                frame: 7875
                value: Qt.vector3d(21.9053, 68.8386, 8.07653)
            }
            Keyframe {
                frame: 7916.67
                value: Qt.vector3d(22.0211, 70.12, 8.04522)
            }
            Keyframe {
                frame: 7958.33
                value: Qt.vector3d(22.1349, 71.4245, 8.01442)
            }
            Keyframe {
                frame: 8000
                value: Qt.vector3d(22.2468, 72.7516, 7.98414)
            }
            Keyframe {
                frame: 8041.67
                value: Qt.vector3d(22.3567, 74.101, 7.95438)
            }
            Keyframe {
                frame: 8083.33
                value: Qt.vector3d(22.4644, 75.4723, 7.92517)
            }
            Keyframe {
                frame: 8125
                value: Qt.vector3d(22.5701, 76.8648, 7.89652)
            }
            Keyframe {
                frame: 8166.67
                value: Qt.vector3d(22.6736, 78.278, 7.86843)
            }
            Keyframe {
                frame: 8208.33
                value: Qt.vector3d(22.775, 79.7113, 7.84092)
            }
            Keyframe {
                frame: 8250
                value: Qt.vector3d(22.8741, 81.164, 7.81401)
            }
            Keyframe {
                frame: 8291.67
                value: Qt.vector3d(22.971, 82.6354, 7.78769)
            }
            Keyframe {
                frame: 8333.33
                value: Qt.vector3d(23.0655, 84.1245, 7.76198)
            }
            Keyframe {
                frame: 8375
                value: Qt.vector3d(23.1578, 85.6306, 7.7369)
            }
            Keyframe {
                frame: 8416.67
                value: Qt.vector3d(23.2477, 87.1527, 7.71245)
            }
            Keyframe {
                frame: 8458.33
                value: Qt.vector3d(23.3351, 88.6898, 7.68863)
            }
            Keyframe {
                frame: 8500
                value: Qt.vector3d(23.4202, 90.2407, 7.66547)
            }
            Keyframe {
                frame: 8541.67
                value: Qt.vector3d(23.5028, 91.8044, 7.64295)
            }
            Keyframe {
                frame: 8583.33
                value: Qt.vector3d(23.583, 93.3797, 7.62111)
            }
            Keyframe {
                frame: 8625
                value: Qt.vector3d(23.6606, 94.9651, 7.59992)
            }
            Keyframe {
                frame: 8666.67
                value: Qt.vector3d(23.7358, 96.5596, 7.57941)
            }
            Keyframe {
                frame: 8708.33
                value: Qt.vector3d(23.8085, 98.1616, 7.55958)
            }
            Keyframe {
                frame: 8750
                value: Qt.vector3d(23.8786, 99.7697, 7.54044)
            }
            Keyframe {
                frame: 8791.67
                value: Qt.vector3d(23.9462, 101.382, 7.52196)
            }
            Keyframe {
                frame: 8833.33
                value: Qt.vector3d(24.0113, 102.998, 7.50417)
            }
            Keyframe {
                frame: 8875
                value: Qt.vector3d(24.0738, 104.616, 7.48706)
            }
            Keyframe {
                frame: 8916.67
                value: Qt.vector3d(24.1338, 106.233, 7.47064)
            }
            Keyframe {
                frame: 8958.33
                value: Qt.vector3d(24.1914, 107.848, 7.4549)
            }
            Keyframe {
                frame: 9000
                value: Qt.vector3d(24.2464, 109.46, 7.43983)
            }
            Keyframe {
                frame: 9041.67
                value: Qt.vector3d(24.299, 111.066, 7.42541)
            }
            Keyframe {
                frame: 9083.33
                value: Qt.vector3d(24.3492, 112.666, 7.41168)
            }
            Keyframe {
                frame: 9125
                value: Qt.vector3d(24.3969, 114.257, 7.3986)
            }
            Keyframe {
                frame: 9166.67
                value: Qt.vector3d(24.4423, 115.838, 7.38615)
            }
            Keyframe {
                frame: 9208.33
                value: Qt.vector3d(24.4853, 117.407, 7.37435)
            }
            Keyframe {
                frame: 9250
                value: Qt.vector3d(24.5261, 118.962, 7.36315)
            }
            Keyframe {
                frame: 9291.67
                value: Qt.vector3d(24.5646, 120.501, 7.3526)
            }
            Keyframe {
                frame: 9333.33
                value: Qt.vector3d(24.6009, 122.024, 7.34262)
            }
            Keyframe {
                frame: 9375
                value: Qt.vector3d(24.6351, 123.528, 7.33324)
            }
            Keyframe {
                frame: 9416.67
                value: Qt.vector3d(24.6672, 125.011, 7.32442)
            }
            Keyframe {
                frame: 9458.33
                value: Qt.vector3d(24.6973, 126.473, 7.31616)
            }
            Keyframe {
                frame: 9500
                value: Qt.vector3d(24.7254, 127.912, 7.30844)
            }
            Keyframe {
                frame: 9541.67
                value: Qt.vector3d(24.7516, 129.326, 7.30123)
            }
            Keyframe {
                frame: 9583.33
                value: Qt.vector3d(24.776, 130.714, 7.29453)
            }
            Keyframe {
                frame: 9625
                value: Qt.vector3d(24.8098, 132.079, 7.29934)
            }
            Keyframe {
                frame: 9666.67
                value: Qt.vector3d(24.8196, 133.407, 7.28253)
            }
            Keyframe {
                frame: 9708.33
                value: Qt.vector3d(24.8474, 134.714, 7.28646)
            }
            Keyframe {
                frame: 9750
                value: Qt.vector3d(24.8567, 135.982, 7.27233)
            }
            Keyframe {
                frame: 9791.67
                value: Qt.vector3d(24.8796, 137.226, 7.27563)
            }
            Keyframe {
                frame: 9833.33
                value: Qt.vector3d(24.8879, 138.431, 7.26375)
            }
            Keyframe {
                frame: 9875
                value: Qt.vector3d(24.9066, 139.609, 7.26662)
            }
            Keyframe {
                frame: 9916.67
                value: Qt.vector3d(24.9139, 140.748, 7.25662)
            }
            Keyframe {
                frame: 9958.33
                value: Qt.vector3d(24.9328, 141.859, 7.26445)
            }
            Keyframe {
                frame: 10000
                value: Qt.vector3d(24.9424, 142.93, 7.2615)
            }
            Keyframe {
                frame: 10041.7
                value: Qt.vector3d(24.9372, 143.96, 7.24792)
            }
            Keyframe {
                frame: 10083.3
                value: Qt.vector3d(24.96, 144.965, 7.25872)
            }
            Keyframe {
                frame: 10125
                value: Qt.vector3d(24.9633, 145.929, 7.26032)
            }
            Keyframe {
                frame: 10166.7
                value: Qt.vector3d(24.9725, 146.853, 7.2546)
            }
            Keyframe {
                frame: 10208.3
                value: Qt.vector3d(24.9656, 147.736, 7.24066)
            }
            Keyframe {
                frame: 10250
                value: Qt.vector3d(24.9823, 148.594, 7.25181)
            }
            Keyframe {
                frame: 10291.7
                value: Qt.vector3d(24.9846, 149.41, 7.25614)
            }
            Keyframe {
                frame: 10333.3
                value: Qt.vector3d(24.9922, 150.187, 7.2551)
            }
            Keyframe {
                frame: 10375
                value: Qt.vector3d(24.9877, 150.923, 7.24798)
            }
            Keyframe {
                frame: 10416.7
                value: Qt.vector3d(24.9884, 151.621, 7.23607)
            }
            Keyframe {
                frame: 10458.3
                value: Qt.vector3d(24.9913, 152.292, 7.25224)
            }
            Keyframe {
                frame: 10500
                value: Qt.vector3d(24.9987, 152.925, 7.26455)
            }
            Keyframe {
                frame: 10541.7
                value: Qt.vector3d(25.0106, 153.52, 7.2732)
            }
            Keyframe {
                frame: 10583.3
                value: Qt.vector3d(25.0069, 154.075, 7.2772)
            }
            Keyframe {
                frame: 10625
                value: Qt.vector3d(25.0076, 154.593, 7.27796)
            }
            Keyframe {
                frame: 10666.7
                value: Qt.vector3d(25.0129, 155.074, 7.27563)
            }
            Keyframe {
                frame: 10708.3
                value: Qt.vector3d(25.0021, 155.515, 7.26917)
            }
            Keyframe {
                frame: 10750
                value: Qt.vector3d(24.9957, 155.921, 7.25997)
            }
            Keyframe {
                frame: 10791.7
                value: Qt.vector3d(24.9938, 156.29, 7.24821)
            }
            Keyframe {
                frame: 10833.3
                value: Qt.vector3d(24.9961, 156.625, 7.234)
            }
            Keyframe {
                frame: 10875
                value: Qt.vector3d(24.9899, 156.931, 7.24005)
            }
            Keyframe {
                frame: 10916.7
                value: Qt.vector3d(24.9858, 157.219, 7.2449)
            }
            Keyframe {
                frame: 10958.3
                value: Qt.vector3d(24.9821, 157.503, 7.24931)
            }
            Keyframe {
                frame: 11000
                value: Qt.vector3d(24.9789, 157.784, 7.25331)
            }
            Keyframe {
                frame: 11041.7
                value: Qt.vector3d(24.976, 158.062, 7.25694)
            }
            Keyframe {
                frame: 11083.3
                value: Qt.vector3d(24.9736, 158.336, 7.26016)
            }
            Keyframe {
                frame: 11125
                value: Qt.vector3d(24.9716, 158.607, 7.263)
            }
            Keyframe {
                frame: 11166.7
                value: Qt.vector3d(24.9265, 158.869, 7.26293)
            }
            Keyframe {
                frame: 11208.3
                value: Qt.vector3d(24.8817, 159.127, 7.26244)
            }
            Keyframe {
                frame: 11250
                value: Qt.vector3d(24.8374, 159.382, 7.26163)
            }
            Keyframe {
                frame: 11291.7
                value: Qt.vector3d(24.7935, 159.633, 7.26049)
            }
            Keyframe {
                frame: 11333.3
                value: Qt.vector3d(24.75, 159.881, 7.25898)
            }
            Keyframe {
                frame: 11375
                value: Qt.vector3d(24.707, 160.126, 7.25718)
            }
            Keyframe {
                frame: 11416.7
                value: Qt.vector3d(24.6644, 160.368, 7.25501)
            }
            Keyframe {
                frame: 11458.3
                value: Qt.vector3d(24.6222, 160.606, 7.25254)
            }
            Keyframe {
                frame: 11500
                value: Qt.vector3d(24.5805, 160.84, 7.24976)
            }
            Keyframe {
                frame: 11541.7
                value: Qt.vector3d(24.5392, 161.072, 7.24672)
            }
            Keyframe {
                frame: 11583.3
                value: Qt.vector3d(24.4984, 161.3, 7.24332)
            }
            Keyframe {
                frame: 11625
                value: Qt.vector3d(24.458, 161.525, 7.23965)
            }
            Keyframe {
                frame: 11666.7
                value: Qt.vector3d(24.418, 161.746, 7.23568)
            }
            Keyframe {
                frame: 11708.3
                value: Qt.vector3d(24.3785, 161.964, 7.23143)
            }
            Keyframe {
                frame: 11750
                value: Qt.vector3d(24.3394, 162.179, 7.22694)
            }
            Keyframe {
                frame: 11791.7
                value: Qt.vector3d(24.3007, 162.39, 7.22219)
            }
            Keyframe {
                frame: 11833.3
                value: Qt.vector3d(24.2625, 162.598, 7.21713)
            }
            Keyframe {
                frame: 11875
                value: Qt.vector3d(24.2248, 162.803, 7.21181)
            }
            Keyframe {
                frame: 11916.7
                value: Qt.vector3d(24.1875, 163.004, 7.20627)
            }
            Keyframe {
                frame: 11958.3
                value: Qt.vector3d(24.1505, 163.202, 7.20052)
            }
            Keyframe {
                frame: 12000
                value: Qt.vector3d(24.1141, 163.397, 7.19452)
            }
            Keyframe {
                frame: 12041.7
                value: Qt.vector3d(24.0812, 163.593, 7.1997)
            }
            Keyframe {
                frame: 12083.3
                value: Qt.vector3d(24.0486, 163.785, 7.20473)
            }
            Keyframe {
                frame: 12125
                value: Qt.vector3d(24.0164, 163.975, 7.20953)
            }
            Keyframe {
                frame: 12166.7
                value: Qt.vector3d(23.9846, 164.161, 7.21411)
            }
            Keyframe {
                frame: 12208.3
                value: Qt.vector3d(23.9531, 164.344, 7.2185)
            }
            Keyframe {
                frame: 12250
                value: Qt.vector3d(23.922, 164.523, 7.22267)
            }
            Keyframe {
                frame: 12291.7
                value: Qt.vector3d(23.8514, 164.694, 7.22446)
            }
            Keyframe {
                frame: 12333.3
                value: Qt.vector3d(23.7812, 164.861, 7.22609)
            }
            Keyframe {
                frame: 12375
                value: Qt.vector3d(23.7114, 165.025, 7.22752)
            }
            Keyframe {
                frame: 12416.7
                value: Qt.vector3d(23.6419, 165.186, 7.22876)
            }
            Keyframe {
                frame: 12458.3
                value: Qt.vector3d(23.5728, 165.344, 7.22987)
            }
            Keyframe {
                frame: 12500
                value: Qt.vector3d(23.4933, 165.496, 7.23022)
            }
            Keyframe {
                frame: 12541.7
                value: Qt.vector3d(23.4141, 165.646, 7.23042)
            }
            Keyframe {
                frame: 12583.3
                value: Qt.vector3d(23.3353, 165.792, 7.23048)
            }
            Keyframe {
                frame: 12625
                value: Qt.vector3d(23.2569, 165.936, 7.23035)
            }
            Keyframe {
                frame: 12666.7
                value: Qt.vector3d(23.1693, 166.074, 7.22962)
            }
            Keyframe {
                frame: 12708.3
                value: Qt.vector3d(23.0821, 166.21, 7.22875)
            }
            Keyframe {
                frame: 12750
                value: Qt.vector3d(22.9954, 166.342, 7.22776)
            }
            Keyframe {
                frame: 12791.7
                value: Qt.vector3d(22.9089, 166.471, 7.22658)
            }
            Keyframe {
                frame: 12833.3
                value: Qt.vector3d(22.8148, 166.596, 7.2249)
            }
            Keyframe {
                frame: 12875
                value: Qt.vector3d(22.7209, 166.718, 7.22314)
            }
            Keyframe {
                frame: 12916.7
                value: Qt.vector3d(22.6274, 166.837, 7.22122)
            }
            Keyframe {
                frame: 12958.3
                value: Qt.vector3d(22.5275, 166.952, 7.21884)
            }
            Keyframe {
                frame: 13000
                value: Qt.vector3d(22.4279, 167.063, 7.21635)
            }
            Keyframe {
                frame: 13041.7
                value: Qt.vector3d(22.3287, 167.172, 7.21375)
            }
            Keyframe {
                frame: 13083.3
                value: Qt.vector3d(22.2232, 167.277, 7.21073)
            }
            Keyframe {
                frame: 13125
                value: Qt.vector3d(22.1179, 167.379, 7.20764)
            }
            Keyframe {
                frame: 13166.7
                value: Qt.vector3d(22.0131, 167.477, 7.20443)
            }
            Keyframe {
                frame: 13208.3
                value: Qt.vector3d(21.902, 167.572, 7.20088)
            }
            Keyframe {
                frame: 13250
                value: Qt.vector3d(21.7912, 167.664, 7.19719)
            }
            Keyframe {
                frame: 13291.7
                value: Qt.vector3d(21.6809, 167.753, 7.1934)
            }
            Keyframe {
                frame: 13333.3
                value: Qt.vector3d(21.5644, 167.839, 7.18928)
            }
            Keyframe {
                frame: 13375
                value: Qt.vector3d(21.4483, 167.921, 7.1851)
            }
            Keyframe {
                frame: 13416.7
                value: Qt.vector3d(21.3325, 168.001, 7.1808)
            }
            Keyframe {
                frame: 13458.3
                value: Qt.vector3d(21.2119, 168.077, 7.17625)
            }
            Keyframe {
                frame: 13500
                value: Qt.vector3d(21.0915, 168.15, 7.1716)
            }
            Keyframe {
                frame: 13541.7
                value: Qt.vector3d(20.9675, 168.22, 7.1667)
            }
            Keyframe {
                frame: 13583.3
                value: Qt.vector3d(20.8438, 168.288, 7.16176)
            }
            Keyframe {
                frame: 13625
                value: Qt.vector3d(20.7164, 168.352, 7.1566)
            }
            Keyframe {
                frame: 13666.7
                value: Qt.vector3d(20.5893, 168.413, 7.15139)
            }
            Keyframe {
                frame: 13708.3
                value: Qt.vector3d(20.4586, 168.472, 7.14597)
            }
            Keyframe {
                frame: 13750
                value: Qt.vector3d(20.3283, 168.528, 7.14056)
            }
            Keyframe {
                frame: 13791.7
                value: Qt.vector3d(20.1945, 168.58, 7.13484)
            }
            Keyframe {
                frame: 13833.3
                value: Qt.vector3d(20.0609, 168.631, 7.12917)
            }
            Keyframe {
                frame: 13875
                value: Qt.vector3d(19.924, 168.678, 7.12329)
            }
            Keyframe {
                frame: 13916.7
                value: Qt.vector3d(19.7873, 168.723, 7.11739)
            }
            Keyframe {
                frame: 13958.3
                value: Qt.vector3d(19.6474, 168.765, 7.11132)
            }
            Keyframe {
                frame: 14000
                value: Qt.vector3d(19.5077, 168.804, 7.1052)
            }
            Keyframe {
                frame: 14041.7
                value: Qt.vector3d(19.3649, 168.841, 7.09896)
            }
            Keyframe {
                frame: 14083.3
                value: Qt.vector3d(19.2223, 168.876, 7.0927)
            }
            Keyframe {
                frame: 14125
                value: Qt.vector3d(19.0766, 168.908, 7.08631)
            }
            Keyframe {
                frame: 14166.7
                value: Qt.vector3d(18.9313, 168.937, 7.07985)
            }
            Keyframe {
                frame: 14208.3
                value: Qt.vector3d(18.7829, 168.964, 7.0733)
            }
            Keyframe {
                frame: 14250
                value: Qt.vector3d(18.6347, 168.989, 7.06677)
            }
            Keyframe {
                frame: 14291.7
                value: Qt.vector3d(18.4837, 169.012, 7.0601)
            }
            Keyframe {
                frame: 14333.3
                value: Qt.vector3d(18.333, 169.032, 7.05337)
            }
            Keyframe {
                frame: 14375
                value: Qt.vector3d(18.1795, 169.05, 7.04663)
            }
            Keyframe {
                frame: 14416.7
                value: Qt.vector3d(18.0262, 169.066, 7.03981)
            }
            Keyframe {
                frame: 14458.3
                value: Qt.vector3d(17.8704, 169.08, 7.03293)
            }
            Keyframe {
                frame: 14500
                value: Qt.vector3d(17.7147, 169.092, 7.02607)
            }
            Keyframe {
                frame: 14541.7
                value: Qt.vector3d(17.5565, 169.102, 7.01918)
            }
            Keyframe {
                frame: 14583.3
                value: Qt.vector3d(17.3986, 169.11, 7.01223)
            }
            Keyframe {
                frame: 14625
                value: Qt.vector3d(17.2383, 169.116, 7.00522)
            }
            Keyframe {
                frame: 14666.7
                value: Qt.vector3d(17.0782, 169.119, 6.99821)
            }
            Keyframe {
                frame: 14708.3
                value: Qt.vector3d(16.9158, 169.123, 6.99119)
            }
            Keyframe {
                frame: 14750
                value: Qt.vector3d(16.7537, 169.123, 6.98418)
            }
            Keyframe {
                frame: 14791.7
                value: Qt.vector3d(16.5894, 169.123, 6.97714)
            }
            Keyframe {
                frame: 14833.3
                value: Qt.vector3d(16.4254, 169.12, 6.97009)
            }
            Keyframe {
                frame: 14875
                value: Qt.vector3d(16.2593, 169.116, 6.96305)
            }
            Keyframe {
                frame: 14916.7
                value: Qt.vector3d(16.0935, 169.11, 6.95598)
            }
            Keyframe {
                frame: 14958.3
                value: Qt.vector3d(15.9258, 169.104, 6.94896)
            }
            Keyframe {
                frame: 15000
                value: Qt.vector3d(15.7583, 169.096, 6.94192)
            }
            Keyframe {
                frame: 15041.7
                value: Qt.vector3d(15.5891, 169.087, 6.9349)
            }
            Keyframe {
                frame: 15083.3
                value: Qt.vector3d(15.4202, 169.075, 6.92788)
            }
            Keyframe {
                frame: 15125
                value: Qt.vector3d(15.2496, 169.063, 6.92087)
            }
            Keyframe {
                frame: 15166.7
                value: Qt.vector3d(15.0791, 169.051, 6.91393)
            }
            Keyframe {
                frame: 15208.3
                value: Qt.vector3d(14.9075, 169.036, 6.90696)
            }
            Keyframe {
                frame: 15250
                value: Qt.vector3d(14.7359, 169.021, 6.90003)
            }
            Keyframe {
                frame: 15291.7
                value: Qt.vector3d(14.5629, 169.005, 6.89315)
            }
            Keyframe {
                frame: 15333.3
                value: Qt.vector3d(14.39, 168.99, 6.88635)
            }
            Keyframe {
                frame: 15375
                value: Qt.vector3d(14.2166, 168.969, 6.87946)
            }
            Keyframe {
                frame: 15416.7
                value: Qt.vector3d(14.0432, 168.949, 6.87264)
            }
            Keyframe {
                frame: 15458.3
                value: Qt.vector3d(13.8688, 168.928, 6.86585)
            }
            Keyframe {
                frame: 15500
                value: Qt.vector3d(13.6945, 168.907, 6.85918)
            }
            Keyframe {
                frame: 15541.7
                value: Qt.vector3d(13.5193, 168.887, 6.85253)
            }
            Keyframe {
                frame: 15583.3
                value: Qt.vector3d(13.3441, 168.866, 6.84598)
            }
            Keyframe {
                frame: 15625
                value: Qt.vector3d(13.1684, 168.845, 6.83946)
            }
            Keyframe {
                frame: 15666.7
                value: Qt.vector3d(12.9927, 168.825, 6.83303)
            }
            Keyframe {
                frame: 15708.3
                value: Qt.vector3d(12.8166, 168.804, 6.82665)
            }
            Keyframe {
                frame: 15750
                value: Qt.vector3d(12.6404, 168.783, 6.82034)
            }
            Keyframe {
                frame: 15791.7
                value: Qt.vector3d(12.464, 168.763, 6.81415)
            }
            Keyframe {
                frame: 15833.3
                value: Qt.vector3d(12.2876, 168.742, 6.80797)
            }
            Keyframe {
                frame: 15875
                value: Qt.vector3d(12.1112, 168.722, 6.80187)
            }
            Keyframe {
                frame: 15916.7
                value: Qt.vector3d(11.9348, 168.701, 6.79586)
            }
            Keyframe {
                frame: 15958.3
                value: Qt.vector3d(11.7585, 168.681, 6.7899)
            }
            Keyframe {
                frame: 16000
                value: Qt.vector3d(11.5822, 168.66, 6.78404)
            }
            Keyframe {
                frame: 16041.7
                value: Qt.vector3d(11.4062, 168.64, 6.77826)
            }
            Keyframe {
                frame: 16083.3
                value: Qt.vector3d(11.2302, 168.62, 6.77255)
            }
            Keyframe {
                frame: 16125
                value: Qt.vector3d(11.0548, 168.599, 6.7669)
            }
            Keyframe {
                frame: 16166.7
                value: Qt.vector3d(10.8792, 168.579, 6.76135)
            }
            Keyframe {
                frame: 16208.3
                value: Qt.vector3d(10.7041, 168.562, 6.75591)
            }
            Keyframe {
                frame: 16250
                value: Qt.vector3d(10.529, 168.544, 6.75059)
            }
            Keyframe {
                frame: 16291.7
                value: Qt.vector3d(10.3547, 168.527, 6.74532)
            }
            Keyframe {
                frame: 16333.3
                value: Qt.vector3d(10.1805, 168.51, 6.74011)
            }
            Keyframe {
                frame: 16375
                value: Qt.vector3d(10.0072, 168.493, 6.73502)
            }
            Keyframe {
                frame: 16416.7
                value: Qt.vector3d(9.83395, 168.476, 6.73)
            }
            Keyframe {
                frame: 16458.3
                value: Qt.vector3d(9.66193, 168.459, 6.72506)
            }
            Keyframe {
                frame: 16500
                value: Qt.vector3d(9.48938, 168.446, 6.72027)
            }
            Keyframe {
                frame: 16541.7
                value: Qt.vector3d(9.3182, 168.434, 6.7156)
            }
            Keyframe {
                frame: 16583.3
                value: Qt.vector3d(9.14703, 168.422, 6.71097)
            }
            Keyframe {
                frame: 16625
                value: Qt.vector3d(8.97739, 168.41, 6.70648)
            }
            Keyframe {
                frame: 16666.7
                value: Qt.vector3d(8.80733, 168.402, 6.70209)
            }
            Keyframe {
                frame: 16708.3
                value: Qt.vector3d(8.63895, 168.394, 6.69784)
            }
            Keyframe {
                frame: 16750
                value: Qt.vector3d(8.4706, 168.386, 6.69361)
            }
            Keyframe {
                frame: 16791.7
                value: Qt.vector3d(8.30377, 168.381, 6.68958)
            }
            Keyframe {
                frame: 16833.3
                value: Qt.vector3d(8.13692, 168.377, 6.6856)
            }
            Keyframe {
                frame: 16875
                value: Qt.vector3d(7.97182, 168.376, 6.68176)
            }
            Keyframe {
                frame: 16916.7
                value: Qt.vector3d(7.80668, 168.374, 6.67803)
            }
            Keyframe {
                frame: 16958.3
                value: Qt.vector3d(7.64345, 168.376, 6.67442)
            }
            Keyframe {
                frame: 17000
                value: Qt.vector3d(7.4802, 168.378, 6.67086)
            }
            Keyframe {
                frame: 17041.7
                value: Qt.vector3d(7.31905, 168.382, 6.66747)
            }
            Keyframe {
                frame: 17083.3
                value: Qt.vector3d(7.15769, 168.388, 6.66416)
            }
            Keyframe {
                frame: 17125
                value: Qt.vector3d(6.99864, 168.396, 6.661)
            }
            Keyframe {
                frame: 17166.7
                value: Qt.vector3d(6.83939, 168.406, 6.65792)
            }
            Keyframe {
                frame: 17208.3
                value: Qt.vector3d(6.68262, 168.418, 6.65494)
            }
            Keyframe {
                frame: 17250
                value: Qt.vector3d(6.52559, 168.432, 6.65211)
            }
            Keyframe {
                frame: 17291.7
                value: Qt.vector3d(6.37117, 168.448, 6.64939)
            }
            Keyframe {
                frame: 17333.3
                value: Qt.vector3d(6.2165, 168.466, 6.64676)
            }
            Keyframe {
                frame: 17375
                value: Qt.vector3d(6.06455, 168.486, 6.64425)
            }
            Keyframe {
                frame: 17416.7
                value: Qt.vector3d(5.91237, 168.508, 6.64184)
            }
            Keyframe {
                frame: 17458.3
                value: Qt.vector3d(5.763, 168.533, 6.63957)
            }
            Keyframe {
                frame: 17500
                value: Qt.vector3d(5.61341, 168.56, 6.6374)
            }
            Keyframe {
                frame: 17541.7
                value: Qt.vector3d(5.46675, 168.589, 6.63532)
            }
            Keyframe {
                frame: 17583.3
                value: Qt.vector3d(5.31984, 168.621, 6.63335)
            }
            Keyframe {
                frame: 17625
                value: Qt.vector3d(5.17599, 168.655, 6.63152)
            }
            Keyframe {
                frame: 17666.7
                value: Qt.vector3d(5.03191, 168.692, 6.62976)
            }
            Keyframe {
                frame: 17708.3
                value: Qt.vector3d(4.89094, 168.731, 6.62812)
            }
            Keyframe {
                frame: 17750
                value: Qt.vector3d(4.74974, 168.772, 6.62658)
            }
            Keyframe {
                frame: 17791.7
                value: Qt.vector3d(4.61181, 168.817, 6.62517)
            }
            Keyframe {
                frame: 17833.3
                value: Qt.vector3d(4.4736, 168.863, 6.62383)
            }
            Keyframe {
                frame: 17875
                value: Qt.vector3d(4.33872, 168.913, 6.62262)
            }
            Keyframe {
                frame: 17916.7
                value: Qt.vector3d(4.20357, 168.965, 6.62149)
            }
            Keyframe {
                frame: 17958.3
                value: Qt.vector3d(4.0719, 169.02, 6.62047)
            }
            Keyframe {
                frame: 18000
                value: Qt.vector3d(3.93992, 169.078, 6.61955)
            }
            Keyframe {
                frame: 18041.7
                value: Qt.vector3d(3.81149, 169.139, 6.61872)
            }
            Keyframe {
                frame: 18083.3
                value: Qt.vector3d(3.68278, 169.202, 6.61797)
            }
            Keyframe {
                frame: 18125
                value: Qt.vector3d(3.55769, 169.268, 6.61735)
            }
            Keyframe {
                frame: 18166.7
                value: Qt.vector3d(3.4323, 169.337, 6.61679)
            }
            Keyframe {
                frame: 18208.3
                value: Qt.vector3d(3.31063, 169.409, 6.61631)
            }
            Keyframe {
                frame: 18250
                value: Qt.vector3d(3.18861, 169.484, 6.61595)
            }
            Keyframe {
                frame: 18291.7
                value: Qt.vector3d(3.0704, 169.563, 6.61566)
            }
            Keyframe {
                frame: 18333.3
                value: Qt.vector3d(2.95186, 169.644, 6.61545)
            }
            Keyframe {
                frame: 18375
                value: Qt.vector3d(2.83717, 169.728, 6.61532)
            }
            Keyframe {
                frame: 18416.7
                value: Qt.vector3d(2.72219, 169.815, 6.61527)
            }
            Keyframe {
                frame: 18458.3
                value: Qt.vector3d(2.6111, 169.906, 6.6153)
            }
            Keyframe {
                frame: 18500
                value: Qt.vector3d(2.49969, 169.999, 6.61539)
            }
            Keyframe {
                frame: 18541.7
                value: Qt.vector3d(2.39227, 170.096, 6.61556)
            }
            Keyframe {
                frame: 18583.3
                value: Qt.vector3d(2.28451, 170.195, 6.61579)
            }
            Keyframe {
                frame: 18625
                value: Qt.vector3d(2.18191, 170.299, 6.61611)
            }
            Keyframe {
                frame: 18666.7
                value: Qt.vector3d(2.07892, 170.405, 6.61648)
            }
            Keyframe {
                frame: 18708.3
                value: Qt.vector3d(1.97562, 170.514, 6.61688)
            }
            Keyframe {
                frame: 18750
                value: Qt.vector3d(1.87866, 170.627, 6.61737)
            }
            Keyframe {
                frame: 18791.7
                value: Qt.vector3d(1.78136, 170.743, 6.6179)
            }
            Keyframe {
                frame: 18833.3
                value: Qt.vector3d(1.68369, 170.862, 6.61847)
            }
            Keyframe {
                frame: 18875
                value: Qt.vector3d(1.59249, 170.985, 6.6191)
            }
            Keyframe {
                frame: 18916.7
                value: Qt.vector3d(1.50093, 171.111, 6.61977)
            }
            Keyframe {
                frame: 18958.3
                value: Qt.vector3d(1.40898, 171.24, 6.62048)
            }
            Keyframe {
                frame: 19000
                value: Qt.vector3d(1.32359, 171.373, 6.62124)
            }
            Keyframe {
                frame: 19041.7
                value: Qt.vector3d(1.23785, 171.509, 6.62201)
            }
            Keyframe {
                frame: 19083.3
                value: Qt.vector3d(1.15172, 171.648, 6.62282)
            }
            Keyframe {
                frame: 19125
                value: Qt.vector3d(1.07223, 171.792, 6.62367)
            }
            Keyframe {
                frame: 19166.7
                value: Qt.vector3d(0.99234, 171.938, 6.62453)
            }
            Keyframe {
                frame: 19208.3
                value: Qt.vector3d(0.912117, 172.087, 6.6254)
            }
            Keyframe {
                frame: 19250
                value: Qt.vector3d(0.83971, 172.241, 6.6263)
            }
            Keyframe {
                frame: 19291.7
                value: Qt.vector3d(0.766977, 172.398, 6.62721)
            }
            Keyframe {
                frame: 19333.3
                value: Qt.vector3d(0.693846, 172.558, 6.62812)
            }
            Keyframe {
                frame: 19375
                value: Qt.vector3d(0.620364, 172.721, 6.62902)
            }
            Keyframe {
                frame: 19416.7
                value: Qt.vector3d(0.557167, 172.888, 6.62994)
            }
            Keyframe {
                frame: 19458.3
                value: Qt.vector3d(0.493573, 173.059, 6.63086)
            }
            Keyframe {
                frame: 19500
                value: Qt.vector3d(0.429611, 173.233, 6.63176)
            }
            Keyframe {
                frame: 19541.7
                value: Qt.vector3d(0.36532, 173.41, 6.63264)
            }
            Keyframe {
                frame: 19583.3
                value: Qt.vector3d(0.300637, 173.59, 6.6335)
            }
            Keyframe {
                frame: 19625
                value: Qt.vector3d(0.2487, 173.776, 6.63434)
            }
            Keyframe {
                frame: 19666.7
                value: Qt.vector3d(0.196381, 173.964, 6.63517)
            }
            Keyframe {
                frame: 19708.3
                value: Qt.vector3d(0.143649, 174.156, 6.63596)
            }
            Keyframe {
                frame: 19750
                value: Qt.vector3d(0.0905992, 174.351, 6.63669)
            }
            Keyframe {
                frame: 19791.7
                value: Qt.vector3d(0.0372144, 174.549, 6.63741)
            }
            Keyframe {
                frame: 19833.3
                value: Qt.vector3d(-0.0166374, 174.75, 6.63808)
            }
            Keyframe {
                frame: 19875
                value: Qt.vector3d(-0.0336086, 174.959, 6.63869)
            }
            Keyframe {
                frame: 19916.7
                value: Qt.vector3d(-0.0510412, 175.171, 6.63923)
            }
            Keyframe {
                frame: 19958.3
                value: Qt.vector3d(-0.068802, 175.387, 6.63973)
            }
            Keyframe {
                frame: 20000
                value: Qt.vector3d(-0.0869467, 175.605, 6.64016)
            }
            Keyframe {
                frame: 20041.7
                value: Qt.vector3d(-0.105453, 175.827, 6.64052)
            }
            Keyframe {
                frame: 20083.3
                value: Qt.vector3d(-0.1243, 176.052, 6.6408)
            }
            Keyframe {
                frame: 20125
                value: Qt.vector3d(-0.143562, 176.281, 6.641)
            }
            Keyframe {
                frame: 20166.7
                value: Qt.vector3d(-0.163211, 176.512, 6.64112)
            }
            Keyframe {
                frame: 20208.3
                value: Qt.vector3d(-0.183251, 176.748, 6.64116)
            }
            Keyframe {
                frame: 20250
                value: Qt.vector3d(-0.203581, 176.986, 6.64108)
            }
            Keyframe {
                frame: 20291.7
                value: Qt.vector3d(-0.224287, 177.227, 6.64093)
            }
            Keyframe {
                frame: 20333.3
                value: Qt.vector3d(-0.245397, 177.472, 6.64067)
            }
            Keyframe {
                frame: 20375
                value: Qt.vector3d(-0.266926, 177.72, 6.6403)
            }
            Keyframe {
                frame: 20416.7
                value: Qt.vector3d(-0.288782, 177.971, 6.63981)
            }
            Keyframe {
                frame: 20458.3
                value: Qt.vector3d(-0.31089, 178.225, 6.63922)
            }
            Keyframe {
                frame: 20500
                value: Qt.vector3d(-0.333498, 178.483, 6.6385)
            }
            Keyframe {
                frame: 20541.7
                value: Qt.vector3d(-0.356504, 178.743, 6.63766)
            }
            Keyframe {
                frame: 20583.3
                value: Qt.vector3d(-0.379815, 179.007, 6.63667)
            }
            Keyframe {
                frame: 20625
                value: Qt.vector3d(-0.403476, 179.275, 6.63556)
            }
            Keyframe {
                frame: 20666.7
                value: Qt.vector3d(-0.427501, 179.545, 6.6343)
            }
            Keyframe {
                frame: 20708.3
                value: Qt.vector3d(-0.451877, 179.818, 6.6329)
            }
            Keyframe {
                frame: 20750
                value: Qt.vector3d(-0.476619, -179.905, 6.63133)
            }
            Keyframe {
                frame: 20791.7
                value: Qt.vector3d(-0.501704, -179.625, 6.62962)
            }
            Keyframe {
                frame: 20833.3
                value: Qt.vector3d(-0.527162, -179.342, 6.62775)
            }
            Keyframe {
                frame: 20875
                value: Qt.vector3d(-0.554361, -179.043, 6.62568)
            }
            Keyframe {
                frame: 20916.7
                value: Qt.vector3d(-0.529144, -178.71, 6.62328)
            }
            Keyframe {
                frame: 20958.3
                value: Qt.vector3d(-0.507091, -178.35, 6.6206)
            }
            Keyframe {
                frame: 21000
                value: Qt.vector3d(-0.488343, -177.961, 6.61754)
            }
            Keyframe {
                frame: 21041.7
                value: Qt.vector3d(-0.472777, -177.545, 6.61405)
            }
            Keyframe {
                frame: 21083.3
                value: Qt.vector3d(-0.432093, -177.097, 6.61)
            }
            Keyframe {
                frame: 21125
                value: Qt.vector3d(-0.394552, -176.62, 6.6054)
            }
            Keyframe {
                frame: 21166.7
                value: Qt.vector3d(-0.341645, -176.113, 6.60011)
            }
            Keyframe {
                frame: 21208.3
                value: Qt.vector3d(-0.29186, -175.577, 6.59408)
            }
            Keyframe {
                frame: 21250
                value: Qt.vector3d(-0.226771, -175.01, 6.58718)
            }
            Keyframe {
                frame: 21291.7
                value: Qt.vector3d(-0.164866, -174.415, 6.57938)
            }
            Keyframe {
                frame: 21333.3
                value: Qt.vector3d(-0.0879574, -173.789, 6.57052)
            }
            Keyframe {
                frame: 21375
                value: Qt.vector3d(-0.0141842, -173.135, 6.56053)
            }
            Keyframe {
                frame: 21416.7
                value: Qt.vector3d(0.0743254, -172.449, 6.5493)
            }
            Keyframe {
                frame: 21458.3
                value: Qt.vector3d(0.159676, -171.735, 6.53668)
            }
            Keyframe {
                frame: 21500
                value: Qt.vector3d(0.25523, -170.99, 6.52261)
            }
            Keyframe {
                frame: 21541.7
                value: Qt.vector3d(0.356302, -170.215, 6.50694)
            }
            Keyframe {
                frame: 21583.3
                value: Qt.vector3d(0.462947, -169.411, 6.48955)
            }
            Keyframe {
                frame: 21625
                value: Qt.vector3d(0.575034, -168.577, 6.4703)
            }
            Keyframe {
                frame: 21666.7
                value: Qt.vector3d(0.692546, -167.714, 6.44908)
            }
            Keyframe {
                frame: 21708.3
                value: Qt.vector3d(0.820808, -166.822, 6.40265)
            }
            Keyframe {
                frame: 21750
                value: Qt.vector3d(0.955133, -165.901, 6.35415)
            }
            Keyframe {
                frame: 21791.7
                value: Qt.vector3d(1.09547, -164.95, 6.30347)
            }
            Keyframe {
                frame: 21833.3
                value: Qt.vector3d(1.24177, -163.971, 6.25051)
            }
            Keyframe {
                frame: 21875
                value: Qt.vector3d(1.39406, -162.964, 6.19515)
            }
            Keyframe {
                frame: 21916.7
                value: Qt.vector3d(1.55233, -161.929, 6.13728)
            }
            Keyframe {
                frame: 21958.3
                value: Qt.vector3d(1.71654, -160.865, 6.07683)
            }
            Keyframe {
                frame: 22000
                value: Qt.vector3d(1.88672, -159.774, 6.01366)
            }
            Keyframe {
                frame: 22041.7
                value: Qt.vector3d(2.0629, -158.656, 5.94768)
            }
            Keyframe {
                frame: 22083.3
                value: Qt.vector3d(2.24506, -157.511, 5.8788)
            }
            Keyframe {
                frame: 22125
                value: Qt.vector3d(2.43324, -156.339, 5.80694)
            }
            Keyframe {
                frame: 22166.7
                value: Qt.vector3d(2.62746, -155.141, 5.73201)
            }
            Keyframe {
                frame: 22208.3
                value: Qt.vector3d(2.82778, -153.918, 5.65393)
            }
            Keyframe {
                frame: 22250
                value: Qt.vector3d(3.03428, -152.67, 5.57264)
            }
            Keyframe {
                frame: 22291.7
                value: Qt.vector3d(3.2261, -151.395, 5.5265)
            }
            Keyframe {
                frame: 22333.3
                value: Qt.vector3d(3.42245, -150.096, 5.4761)
            }
            Keyframe {
                frame: 22375
                value: Qt.vector3d(3.62346, -148.773, 5.42126)
            }
            Keyframe {
                frame: 22416.7
                value: Qt.vector3d(3.82927, -147.428, 5.36189)
            }
            Keyframe {
                frame: 22458.3
                value: Qt.vector3d(4.03995, -146.06, 5.29788)
            }
            Keyframe {
                frame: 22500
                value: Qt.vector3d(4.2557, -144.67, 5.22911)
            }
            Keyframe {
                frame: 22541.7
                value: Qt.vector3d(4.47668, -143.26, 5.15548)
            }
            Keyframe {
                frame: 22583.3
                value: Qt.vector3d(4.70313, -141.829, 5.07692)
            }
            Keyframe {
                frame: 22625
                value: Qt.vector3d(4.93524, -140.379, 4.99336)
            }
            Keyframe {
                frame: 22666.7
                value: Qt.vector3d(5.17338, -138.911, 4.90473)
            }
            Keyframe {
                frame: 22708.3
                value: Qt.vector3d(5.41785, -137.425, 4.81098)
            }
            Keyframe {
                frame: 22750
                value: Qt.vector3d(5.66904, -135.922, 4.71208)
            }
            Keyframe {
                frame: 22791.7
                value: Qt.vector3d(5.92739, -134.403, 4.60803)
            }
            Keyframe {
                frame: 22833.3
                value: Qt.vector3d(6.19346, -132.869, 4.4988)
            }
            Keyframe {
                frame: 22875
                value: Qt.vector3d(6.46779, -131.321, 4.38442)
            }
            Keyframe {
                frame: 22916.7
                value: Qt.vector3d(6.75111, -129.759, 4.26491)
            }
            Keyframe {
                frame: 22958.3
                value: Qt.vector3d(7.04425, -128.186, 4.14033)
            }
            Keyframe {
                frame: 23000
                value: Qt.vector3d(7.34817, -126.601, 4.01072)
            }
            Keyframe {
                frame: 23041.7
                value: Qt.vector3d(7.66399, -125.007, 3.87618)
            }
            Keyframe {
                frame: 23083.3
                value: Qt.vector3d(7.99304, -123.403, 3.73681)
            }
            Keyframe {
                frame: 23125
                value: Qt.vector3d(8.24937, -121.783, 3.64756)
            }
            Keyframe {
                frame: 23166.7
                value: Qt.vector3d(8.51955, -120.157, 3.54875)
            }
            Keyframe {
                frame: 23208.3
                value: Qt.vector3d(8.80616, -118.524, 3.44036)
            }
            Keyframe {
                frame: 23250
                value: Qt.vector3d(9.11242, -116.887, 3.32243)
            }
            Keyframe {
                frame: 23291.7
                value: Qt.vector3d(9.38112, -115.242, 3.22423)
            }
            Keyframe {
                frame: 23333.3
                value: Qt.vector3d(9.67675, -113.595, 3.11312)
            }
            Keyframe {
                frame: 23375
                value: Qt.vector3d(9.93896, -111.943, 3.01649)
            }
            Keyframe {
                frame: 23416.7
                value: Qt.vector3d(10.2417, -110.291, 2.90322)
            }
            Keyframe {
                frame: 23458.3
                value: Qt.vector3d(10.5237, -108.637, 2.79826)
            }
            Keyframe {
                frame: 23500
                value: Qt.vector3d(10.8052, -106.983, 2.69338)
            }
            Keyframe {
                frame: 23541.7
                value: Qt.vector3d(11.0859, -105.33, 2.58869)
            }
            Keyframe {
                frame: 23583.3
                value: Qt.vector3d(11.3655, -103.679, 2.48425)
            }
            Keyframe {
                frame: 23625
                value: Qt.vector3d(11.6439, -102.031, 2.38015)
            }
            Keyframe {
                frame: 23666.7
                value: Qt.vector3d(11.9207, -100.387, 2.27647)
            }
            Keyframe {
                frame: 23708.3
                value: Qt.vector3d(12.1958, -98.7474, 2.17329)
            }
            Keyframe {
                frame: 23750
                value: Qt.vector3d(12.4689, -97.1141, 2.07068)
            }
            Keyframe {
                frame: 23791.7
                value: Qt.vector3d(12.7399, -95.4877, 1.96872)
            }
            Keyframe {
                frame: 23833.3
                value: Qt.vector3d(13.0083, -93.869, 1.86749)
            }
            Keyframe {
                frame: 23875
                value: Qt.vector3d(13.2744, -92.2589, 1.76707)
            }
            Keyframe {
                frame: 23916.7
                value: Qt.vector3d(13.5375, -90.6584, 1.66755)
            }
            Keyframe {
                frame: 23958.3
                value: Qt.vector3d(13.7974, -89.0682, 1.56898)
            }
            Keyframe {
                frame: 24000
                value: Qt.vector3d(14.0541, -87.4893, 1.47145)
            }
            Keyframe {
                frame: 24041.7
                value: Qt.vector3d(14.3075, -85.9224, 1.37502)
            }
            Keyframe {
                frame: 24083.3
                value: Qt.vector3d(14.5572, -84.3683, 1.27979)
            }
            Keyframe {
                frame: 24125
                value: Qt.vector3d(14.8032, -82.8277, 1.1858)
            }
            Keyframe {
                frame: 24166.7
                value: Qt.vector3d(15.0452, -81.3016, 1.09314)
            }
            Keyframe {
                frame: 24208.3
                value: Qt.vector3d(15.283, -79.7904, 1.00187)
            }
            Keyframe {
                frame: 24250
                value: Qt.vector3d(15.5165, -78.295, 0.912054)
            }
            Keyframe {
                frame: 24291.7
                value: Qt.vector3d(15.7455, -76.8159, 0.823774)
            }
            Keyframe {
                frame: 24333.3
                value: Qt.vector3d(15.97, -75.3539, 0.737071)
            }
            Keyframe {
                frame: 24375
                value: Qt.vector3d(16.1897, -73.9095, 0.652032)
            }
            Keyframe {
                frame: 24416.7
                value: Qt.vector3d(16.4045, -72.4834, 0.568692)
            }
            Keyframe {
                frame: 24458.3
                value: Qt.vector3d(16.6142, -71.076, 0.487124)
            }
            Keyframe {
                frame: 24500
                value: Qt.vector3d(16.792, -69.6881, 0.407323)
            }
            Keyframe {
                frame: 24541.7
                value: Qt.vector3d(17.0182, -68.3196, 0.329521)
            }
            Keyframe {
                frame: 24583.3
                value: Qt.vector3d(17.1934, -66.9716, 0.253572)
            }
            Keyframe {
                frame: 24625
                value: Qt.vector3d(17.4007, -65.6442, 0.179656)
            }
            Keyframe {
                frame: 24666.7
                value: Qt.vector3d(17.5695, -64.338, 0.107735)
            }
            Keyframe {
                frame: 24708.3
                value: Qt.vector3d(17.7608, -63.0532, 0.037923)
            }
            Keyframe {
                frame: 24750
                value: Qt.vector3d(17.9108, -61.7904, -0.0297764)
            }
            Keyframe {
                frame: 24791.7
                value: Qt.vector3d(18.0772, -60.5498, -0.0953042)
            }
            Keyframe {
                frame: 24833.3
                value: Qt.vector3d(18.2578, -59.3318, -0.158643)
            }
            Keyframe {
                frame: 24875
                value: Qt.vector3d(18.3952, -58.1365, -0.219702)
            }
            Keyframe {
                frame: 24916.7
                value: Qt.vector3d(18.5434, -56.9644, -0.27849)
            }
            Keyframe {
                frame: 24958.3
                value: Qt.vector3d(18.7011, -55.8158, -0.335011)
            }
            Keyframe {
                frame: 25000
                value: Qt.vector3d(18.8169, -54.6905, -0.389096)
            }
            Keyframe {
                frame: 25041.7
                value: Qt.vector3d(18.9403, -53.5891, -0.440829)
            }
            Keyframe {
                frame: 25083.3
                value: Qt.vector3d(19.0702, -52.5118, -0.490196)
            }
            Keyframe {
                frame: 25125
                value: Qt.vector3d(19.2061, -51.4588, -0.53718)
            }
            Keyframe {
                frame: 25166.7
                value: Qt.vector3d(19.2954, -50.4297, -0.581581)
            }
            Keyframe {
                frame: 25208.3
                value: Qt.vector3d(19.3896, -49.4251, -0.62353)
            }
            Keyframe {
                frame: 25250
                value: Qt.vector3d(19.488, -48.4452, -0.663032)
            }
            Keyframe {
                frame: 25291.7
                value: Qt.vector3d(19.5903, -47.49, -0.700077)
            }
            Keyframe {
                frame: 25333.3
                value: Qt.vector3d(19.696, -46.5597, -0.734643)
            }
            Keyframe {
                frame: 25375
                value: Qt.vector3d(19.6856, -45.6526, -0.766159)
            }
            Keyframe {
                frame: 25416.7
                value: Qt.vector3d(19.678, -44.7704, -0.795146)
            }
            Keyframe {
                frame: 25458.3
                value: Qt.vector3d(19.673, -43.9132, -0.821589)
            }
            Keyframe {
                frame: 25500
                value: Qt.vector3d(19.6704, -43.0809, -0.845506)
            }
            Keyframe {
                frame: 25541.7
                value: Qt.vector3d(19.67, -42.2736, -0.866891)
            }
            Keyframe {
                frame: 25583.3
                value: Qt.vector3d(19.6714, -41.4912, -0.885752)
            }
            Keyframe {
                frame: 25625
                value: Qt.vector3d(19.6746, -40.7339, -0.902075)
            }
            Keyframe {
                frame: 25666.7
                value: Qt.vector3d(19.6794, -40.0017, -0.915894)
            }
            Keyframe {
                frame: 25708.3
                value: Qt.vector3d(19.6857, -39.2943, -0.927186)
            }
            Keyframe {
                frame: 25750
                value: Qt.vector3d(19.6933, -38.6119, -0.935966)
            }
            Keyframe {
                frame: 25791.7
                value: Qt.vector3d(19.702, -37.9543, -0.942249)
            }
            Keyframe {
                frame: 25833.3
                value: Qt.vector3d(19.7118, -37.3216, -0.946046)
            }
            Keyframe {
                frame: 25875
                value: Qt.vector3d(19.7227, -36.7136, -0.947345)
            }
            Keyframe {
                frame: 25916.7
                value: Qt.vector3d(19.7337, -36.1236, -0.947413)
            }
            Keyframe {
                frame: 25958.3
                value: Qt.vector3d(19.7443, -35.5448, -0.94747)
            }
            Keyframe {
                frame: 26000
                value: Qt.vector3d(19.7545, -34.9773, -0.947535)
            }
            Keyframe {
                frame: 26041.7
                value: Qt.vector3d(19.7642, -34.4212, -0.947595)
            }
            Keyframe {
                frame: 26083.3
                value: Qt.vector3d(19.7735, -33.8766, -0.947648)
            }
            Keyframe {
                frame: 26125
                value: Qt.vector3d(19.7823, -33.3436, -0.947702)
            }
            Keyframe {
                frame: 26166.7
                value: Qt.vector3d(19.7908, -32.8223, -0.947752)
            }
            Keyframe {
                frame: 26208.3
                value: Qt.vector3d(19.7989, -32.3128, -0.947803)
            }
            Keyframe {
                frame: 26250
                value: Qt.vector3d(19.8066, -31.815, -0.947843)
            }
            Keyframe {
                frame: 26291.7
                value: Qt.vector3d(19.8139, -31.3291, -0.947888)
            }
            Keyframe {
                frame: 26333.3
                value: Qt.vector3d(19.8209, -30.8551, -0.947934)
            }
            Keyframe {
                frame: 26375
                value: Qt.vector3d(19.8275, -30.3931, -0.947969)
            }
            Keyframe {
                frame: 26416.7
                value: Qt.vector3d(19.8338, -29.9431, -0.948008)
            }
            Keyframe {
                frame: 26458.3
                value: Qt.vector3d(19.8398, -29.5052, -0.948046)
            }
            Keyframe {
                frame: 26500
                value: Qt.vector3d(19.8455, -29.0793, -0.94808)
            }
            Keyframe {
                frame: 26541.7
                value: Qt.vector3d(19.8508, -28.6655, -0.948113)
            }
            Keyframe {
                frame: 26583.3
                value: Qt.vector3d(19.8558, -28.2637, -0.948142)
            }
            Keyframe {
                frame: 26625
                value: Qt.vector3d(19.8606, -27.874, -0.948169)
            }
            Keyframe {
                frame: 26666.7
                value: Qt.vector3d(19.865, -27.4964, -0.948193)
            }
            Keyframe {
                frame: 26708.3
                value: Qt.vector3d(19.8692, -27.1308, -0.948218)
            }
            Keyframe {
                frame: 26750
                value: Qt.vector3d(19.8731, -26.7772, -0.948244)
            }
            Keyframe {
                frame: 26791.7
                value: Qt.vector3d(19.8767, -26.4354, -0.948266)
            }
            Keyframe {
                frame: 26833.3
                value: Qt.vector3d(19.88, -26.1056, -0.948285)
            }
            Keyframe {
                frame: 26875
                value: Qt.vector3d(19.8831, -25.7875, -0.948304)
            }
            Keyframe {
                frame: 26916.7
                value: Qt.vector3d(19.8859, -25.481, -0.94832)
            }
            Keyframe {
                frame: 26958.3
                value: Qt.vector3d(19.8885, -25.1862, -0.948335)
            }
            Keyframe {
                frame: 27000
                value: Qt.vector3d(19.8908, -24.9028, -0.948352)
            }
            Keyframe {
                frame: 27041.7
                value: Qt.vector3d(19.8929, -24.6307, -0.948358)
            }
            Keyframe {
                frame: 27083.3
                value: Qt.vector3d(19.8948, -24.3697, -0.948372)
            }
            Keyframe {
                frame: 27125
                value: Qt.vector3d(19.8964, -24.1197, -0.948435)
            }
            Keyframe {
                frame: 27166.7
                value: Qt.vector3d(19.8979, -23.8804, -0.948395)
            }
            Keyframe {
                frame: 27208.3
                value: Qt.vector3d(19.8991, -23.6518, -0.948447)
            }
            Keyframe {
                frame: 27250
                value: Qt.vector3d(19.9001, -23.4335, -0.948404)
            }
            Keyframe {
                frame: 27291.7
                value: Qt.vector3d(19.9009, -23.2253, -0.948453)
            }
            Keyframe {
                frame: 27333.3
                value: Qt.vector3d(19.9016, -23.027, -0.948414)
            }
            Keyframe {
                frame: 27375
                value: Qt.vector3d(19.902, -22.8382, -0.948454)
            }
            Keyframe {
                frame: 27416.7
                value: Qt.vector3d(19.9023, -22.6588, -0.948419)
            }
            Keyframe {
                frame: 27458.3
                value: Qt.vector3d(19.9023, -22.4884, -0.948453)
            }
            Keyframe {
                frame: 27500
                value: Qt.vector3d(19.9023, -22.3266, -0.948417)
            }
            Keyframe {
                frame: 27541.7
                value: Qt.vector3d(19.902, -22.1732, -0.948448)
            }
            Keyframe {
                frame: 27583.3
                value: Qt.vector3d(19.9017, -22.0278, -0.948415)
            }
            Keyframe {
                frame: 27625
                value: Qt.vector3d(19.9011, -21.8901, -0.948465)
            }
            Keyframe {
                frame: 27666.7
                value: Qt.vector3d(19.9005, -21.7596, -0.94846)
            }
            Keyframe {
                frame: 27708.3
                value: Qt.vector3d(19.8997, -21.6359, -0.948402)
            }
            Keyframe {
                frame: 27750
                value: Qt.vector3d(19.8988, -21.5188, -0.948438)
            }
            Keyframe {
                frame: 27791.7
                value: Qt.vector3d(19.8978, -21.4078, -0.948434)
            }
            Keyframe {
                frame: 27833.3
                value: Qt.vector3d(19.8967, -21.3024, -0.948384)
            }
            Keyframe {
                frame: 27875
                value: Qt.vector3d(19.8954, -21.2022, -0.948425)
            }
            Keyframe {
                frame: 27916.7
                value: Qt.vector3d(19.8941, -21.1067, -0.94843)
            }
            Keyframe {
                frame: 27958.3
                value: Qt.vector3d(19.8927, -21.0157, -0.948404)
            }
            Keyframe {
                frame: 28000
                value: Qt.vector3d(19.8913, -20.9285, -0.948351)
            }
            Keyframe {
                frame: 28041.7
                value: Qt.vector3d(19.8897, -20.8448, -0.94837)
            }
            Keyframe {
                frame: 28083.3
                value: Qt.vector3d(19.8882, -20.764, -0.948369)
            }
            Keyframe {
                frame: 28125
                value: Qt.vector3d(19.8865, -20.6858, -0.948348)
            }
            Keyframe {
                frame: 28166.7
                value: Qt.vector3d(19.8849, -20.6096, -0.948313)
            }
            Keyframe {
                frame: 28208.3
                value: Qt.vector3d(19.8832, -20.5351, -0.948317)
            }
            Keyframe {
                frame: 28250
                value: Qt.vector3d(19.8815, -20.4617, -0.94831)
            }
            Keyframe {
                frame: 28291.7
                value: Qt.vector3d(19.8798, -20.389, -0.948296)
            }
            Keyframe {
                frame: 28333.3
                value: Qt.vector3d(19.878, -20.3166, -0.948279)
            }
            Keyframe {
                frame: 28375
                value: Qt.vector3d(19.8763, -20.244, -0.948262)
            }
            Keyframe {
                frame: 28416.7
                value: Qt.vector3d(19.8746, -20.1708, -0.948238)
            }
            Keyframe {
                frame: 28458.3
                value: Qt.vector3d(19.8729, -20.0965, -0.948219)
            }
            Keyframe {
                frame: 28500
                value: Qt.vector3d(19.8712, -20.0208, -0.948207)
            }
            Keyframe {
                frame: 28541.7
                value: Qt.vector3d(19.8696, -19.9432, -0.948203)
            }
            Keyframe {
                frame: 28583.3
                value: Qt.vector3d(19.868, -19.8633, -0.94821)
            }
            Keyframe {
                frame: 28625
                value: Qt.vector3d(19.8664, -19.7807, -0.948178)
            }
            Keyframe {
                frame: 28666.7
                value: Qt.vector3d(19.8649, -19.6951, -0.948161)
            }
            Keyframe {
                frame: 28708.3
                value: Qt.vector3d(19.8634, -19.606, -0.948159)
            }
            Keyframe {
                frame: 28750
                value: Qt.vector3d(19.8621, -19.5133, -0.948178)
            }
            Keyframe {
                frame: 28791.7
                value: Qt.vector3d(19.8607, -19.4164, -0.948137)
            }
            Keyframe {
                frame: 28833.3
                value: Qt.vector3d(19.8595, -19.315, -0.948116)
            }
            Keyframe {
                frame: 28875
                value: Qt.vector3d(19.8583, -19.2089, -0.94812)
            }
            Keyframe {
                frame: 28916.7
                value: Qt.vector3d(19.8573, -19.0977, -0.948149)
            }
            Keyframe {
                frame: 28958.3
                value: Qt.vector3d(19.8563, -18.9812, -0.948116)
            }
            Keyframe {
                frame: 29000
                value: Qt.vector3d(19.8554, -18.8591, -0.948111)
            }
            Keyframe {
                frame: 29041.7
                value: Qt.vector3d(19.8546, -18.7311, -0.948133)
            }
            Keyframe {
                frame: 29083.3
                value: Qt.vector3d(19.8539, -18.597, -0.948099)
            }
            Keyframe {
                frame: 29125
                value: Qt.vector3d(19.8533, -18.4566, -0.948097)
            }
            Keyframe {
                frame: 29166.7
                value: Qt.vector3d(19.8528, -18.3096, -0.948123)
            }
            Keyframe {
                frame: 29208.3
                value: Qt.vector3d(19.8525, -18.1558, -0.948092)
            }
            Keyframe {
                frame: 29250
                value: Qt.vector3d(19.8522, -17.9951, -0.948091)
            }
            Keyframe {
                frame: 29291.7
                value: Qt.vector3d(19.8521, -17.8272, -0.948119)
            }
            Keyframe {
                frame: 29333.3
                value: Qt.vector3d(19.8521, -17.6521, -0.948091)
            }
            Keyframe {
                frame: 29375
                value: Qt.vector3d(19.8522, -17.4695, -0.948091)
            }
            Keyframe {
                frame: 29416.7
                value: Qt.vector3d(19.8524, -17.2793, -0.948119)
            }
            Keyframe {
                frame: 29458.3
                value: Qt.vector3d(19.8527, -17.0814, -0.948109)
            }
            Keyframe {
                frame: 29500
                value: Qt.vector3d(19.8532, -16.8757, -0.948126)
            }
            Keyframe {
                frame: 29541.7
                value: Qt.vector3d(19.8538, -16.662, -0.948118)
            }
            Keyframe {
                frame: 29583.3
                value: Qt.vector3d(19.8546, -16.4403, -0.948133)
            }
            Keyframe {
                frame: 29625
                value: Qt.vector3d(19.8554, -16.2105, -0.948128)
            }
            Keyframe {
                frame: 29666.7
                value: Qt.vector3d(19.8564, -15.9725, -0.948146)
            }
            Keyframe {
                frame: 29708.3
                value: Qt.vector3d(19.8576, -15.7263, -0.948142)
            }
            Keyframe {
                frame: 29750
                value: Qt.vector3d(19.8588, -15.4718, -0.948158)
            }
            Keyframe {
                frame: 29791.7
                value: Qt.vector3d(19.8602, -15.2089, -0.94816)
            }
            Keyframe {
                frame: 29833.3
                value: Qt.vector3d(19.8617, -14.9376, -0.948176)
            }
            Keyframe {
                frame: 29875
                value: Qt.vector3d(19.8633, -14.6579, -0.948181)
            }
            Keyframe {
                frame: 29916.7
                value: Qt.vector3d(19.8651, -14.3697, -0.948197)
            }
            Keyframe {
                frame: 29958.3
                value: Qt.vector3d(19.867, -14.0731, -0.948205)
            }
            Keyframe {
                frame: 30000
                value: Qt.vector3d(19.869, -13.7681, -0.94822)
            }
            Keyframe {
                frame: 30041.7
                value: Qt.vector3d(19.8711, -13.4545, -0.94824)
            }
            Keyframe {
                frame: 30083.3
                value: Qt.vector3d(19.8733, -13.1371, -0.948244)
            }
            Keyframe {
                frame: 30125
                value: Qt.vector3d(19.8755, -12.8205, -0.948276)
            }
            Keyframe {
                frame: 30166.7
                value: Qt.vector3d(19.8777, -12.5045, -0.948271)
            }
            Keyframe {
                frame: 30208.3
                value: Qt.vector3d(19.8798, -12.189, -0.948301)
            }
            Keyframe {
                frame: 30250
                value: Qt.vector3d(19.8819, -11.874, -0.948297)
            }
            Keyframe {
                frame: 30291.7
                value: Qt.vector3d(19.884, -11.5592, -0.948325)
            }
            Keyframe {
                frame: 30333.3
                value: Qt.vector3d(19.8861, -11.2445, -0.948322)
            }
            Keyframe {
                frame: 30375
                value: Qt.vector3d(19.8881, -10.9299, -0.948349)
            }
            Keyframe {
                frame: 30416.7
                value: Qt.vector3d(19.8902, -10.615, -0.948347)
            }
            Keyframe {
                frame: 30458.3
                value: Qt.vector3d(19.8922, -10.2998, -0.948386)
            }
            Keyframe {
                frame: 30500
                value: Qt.vector3d(19.8943, -9.9841, -0.948399)
            }
            Keyframe {
                frame: 30541.7
                value: Qt.vector3d(19.8963, -9.66762, -0.948383)
            }
            Keyframe {
                frame: 30583.3
                value: Qt.vector3d(19.8984, -9.3502, -0.948424)
            }
            Keyframe {
                frame: 30625
                value: Qt.vector3d(19.9005, -9.03164, -0.948435)
            }
            Keyframe {
                frame: 30666.7
                value: Qt.vector3d(19.9026, -8.71166, -0.94842)
            }
            Keyframe {
                frame: 30708.3
                value: Qt.vector3d(19.9047, -8.39009, -0.948459)
            }
            Keyframe {
                frame: 30750
                value: Qt.vector3d(19.9068, -8.06662, -0.948472)
            }
            Keyframe {
                frame: 30791.7
                value: Qt.vector3d(19.9089, -7.74104, -0.948458)
            }
            Keyframe {
                frame: 30833.3
                value: Qt.vector3d(19.9111, -7.41302, -0.948499)
            }
            Keyframe {
                frame: 30875
                value: Qt.vector3d(19.9134, -7.08237, -0.948513)
            }
            Keyframe {
                frame: 30916.7
                value: Qt.vector3d(19.9156, -6.74879, -0.948499)
            }
            Keyframe {
                frame: 30958.3
                value: Qt.vector3d(19.9179, -6.41198, -0.948555)
            }
            Keyframe {
                frame: 31000
                value: Qt.vector3d(19.9202, -6.07163, -0.948583)
            }
            Keyframe {
                frame: 31041.7
                value: Qt.vector3d(19.9226, -5.72751, -0.948584)
            }
            Keyframe {
                frame: 31083.3
                value: Qt.vector3d(19.9251, -5.37931, -0.948556)
            }
            Keyframe {
                frame: 31125
                value: Qt.vector3d(19.9276, -5.0268, -0.948634)
            }
            Keyframe {
                frame: 31166.7
                value: Qt.vector3d(19.9302, -4.66967, -0.948683)
            }
            Keyframe {
                frame: 31208.3
                value: Qt.vector3d(19.9329, -4.30769, -0.9487)
            }
            Keyframe {
                frame: 31250
                value: Qt.vector3d(19.9356, -3.94053, -0.948685)
            }
            Keyframe {
                frame: 31291.7
                value: Qt.vector3d(19.9384, -3.56801, -0.948636)
            }
            Keyframe {
                frame: 31333.3
                value: Qt.vector3d(19.9413, -3.19007, -0.949101)
            }
            Keyframe {
                frame: 31375
                value: Qt.vector3d(19.9442, -2.80632, -0.949529)
            }
            Keyframe {
                frame: 31416.7
                value: Qt.vector3d(19.9473, -2.41661, -0.94992)
            }
            Keyframe {
                frame: 31458.3
                value: Qt.vector3d(19.9505, -2.02063, -0.95027)
            }
            Keyframe {
                frame: 31500
                value: Qt.vector3d(19.9537, -1.61838, -0.950577)
            }
            Keyframe {
                frame: 31541.7
                value: Qt.vector3d(19.9571, -1.20966, -0.95084)
            }
            Keyframe {
                frame: 31583.3
                value: Qt.vector3d(19.9605, -0.794352, -0.951056)
            }
            Keyframe {
                frame: 31625
                value: Qt.vector3d(19.9641, -0.372332, -0.951223)
            }
            Keyframe {
                frame: 31666.7
                value: Qt.vector3d(19.9678, 0.0564246, -0.951339)
            }
            Keyframe {
                frame: 31708.3
                value: Qt.vector3d(19.9716, 0.491947, -0.9514)
            }
            Keyframe {
                frame: 31750
                value: Qt.vector3d(19.9755, 0.934344, -0.951405)
            }
            Keyframe {
                frame: 31791.7
                value: Qt.vector3d(19.9795, 1.38359, -0.951349)
            }
            Keyframe {
                frame: 31833.3
                value: Qt.vector3d(19.9836, 1.83966, -0.951231)
            }
            Keyframe {
                frame: 31875
                value: Qt.vector3d(19.9879, 2.30255, -0.951049)
            }
            Keyframe {
                frame: 31916.7
                value: Qt.vector3d(19.9922, 2.77221, -0.950799)
            }
            Keyframe {
                frame: 31958.3
                value: Qt.vector3d(19.9966, 3.24859, -0.950479)
            }
            Keyframe {
                frame: 32000
                value: Qt.vector3d(20.0011, 3.73163, -0.950086)
            }
            Keyframe {
                frame: 32041.7
                value: Qt.vector3d(20.0058, 4.2212, -0.949617)
            }
            Keyframe {
                frame: 32083.3
                value: Qt.vector3d(20.0105, 4.71729, -0.94907)
            }
            Keyframe {
                frame: 32125
                value: Qt.vector3d(20.0154, 5.21947, -0.949185)
            }
            Keyframe {
                frame: 32166.7
                value: Qt.vector3d(20.0203, 5.72793, -0.949217)
            }
            Keyframe {
                frame: 32208.3
                value: Qt.vector3d(20.0254, 6.24257, -0.949159)
            }
            Keyframe {
                frame: 32250
                value: Qt.vector3d(20.0307, 6.76308, -0.949238)
            }
            Keyframe {
                frame: 32291.7
                value: Qt.vector3d(20.036, 7.2895, -0.949223)
            }
            Keyframe {
                frame: 32333.3
                value: Qt.vector3d(20.0414, 7.82157, -0.949306)
            }
            Keyframe {
                frame: 32375
                value: Qt.vector3d(20.047, 8.3593, -0.94929)
            }
            Keyframe {
                frame: 32416.7
                value: Qt.vector3d(20.0526, 8.90243, -0.949377)
            }
            Keyframe {
                frame: 32458.3
                value: Qt.vector3d(20.0584, 9.45086, -0.949359)
            }
            Keyframe {
                frame: 32500
                value: Qt.vector3d(20.0643, 10.0044, -0.94945)
            }
            Keyframe {
                frame: 32541.7
                value: Qt.vector3d(20.0703, 10.5631, -0.949432)
            }
            Keyframe {
                frame: 32583.3
                value: Qt.vector3d(20.0763, 11.1266, -0.949469)
            }
            Keyframe {
                frame: 32625
                value: Qt.vector3d(20.0825, 11.6934, -0.949507)
            }
            Keyframe {
                frame: 32666.7
                value: Qt.vector3d(20.0888, 12.262, -0.949544)
            }
            Keyframe {
                frame: 32708.3
                value: Qt.vector3d(20.0951, 12.8325, -0.949581)
            }
            Keyframe {
                frame: 32750
                value: Qt.vector3d(20.1016, 13.405, -0.949622)
            }
            Keyframe {
                frame: 32791.7
                value: Qt.vector3d(20.1081, 13.9797, -0.949659)
            }
            Keyframe {
                frame: 32833.3
                value: Qt.vector3d(20.1146, 14.5565, -0.949699)
            }
            Keyframe {
                frame: 32875
                value: Qt.vector3d(20.1213, 15.1358, -0.949741)
            }
            Keyframe {
                frame: 32916.7
                value: Qt.vector3d(20.1281, 15.7174, -0.949782)
            }
            Keyframe {
                frame: 32958.3
                value: Qt.vector3d(20.135, 16.3017, -0.949823)
            }
            Keyframe {
                frame: 33000
                value: Qt.vector3d(20.1419, 16.8886, -0.949865)
            }
            Keyframe {
                frame: 33041.7
                value: Qt.vector3d(20.149, 17.4783, -0.949909)
            }
            Keyframe {
                frame: 33083.3
                value: Qt.vector3d(20.1562, 18.0709, -0.949953)
            }
            Keyframe {
                frame: 33125
                value: Qt.vector3d(20.1635, 18.6666, -0.949998)
            }
            Keyframe {
                frame: 33166.7
                value: Qt.vector3d(20.171, 19.2656, -0.950044)
            }
            Keyframe {
                frame: 33208.3
                value: Qt.vector3d(20.1786, 19.8677, -0.950093)
            }
            Keyframe {
                frame: 33250
                value: Qt.vector3d(20.1863, 20.4734, -0.950136)
            }
            Keyframe {
                frame: 33291.7
                value: Qt.vector3d(20.1942, 21.0826, -0.950186)
            }
            Keyframe {
                frame: 33333.3
                value: Qt.vector3d(20.2023, 21.6955, -0.950233)
            }
            Keyframe {
                frame: 33375
                value: Qt.vector3d(20.2105, 22.3123, -0.950285)
            }
            Keyframe {
                frame: 33416.7
                value: Qt.vector3d(20.2189, 22.9331, -0.950336)
            }
            Keyframe {
                frame: 33458.3
                value: Qt.vector3d(20.2274, 23.558, -0.950388)
            }
            Keyframe {
                frame: 33500
                value: Qt.vector3d(20.2214, 24.1874, -0.950349)
            }
            Keyframe {
                frame: 33541.7
                value: Qt.vector3d(20.2156, 24.8213, -0.950314)
            }
            Keyframe {
                frame: 33583.3
                value: Qt.vector3d(20.2099, 25.4596, -0.95028)
            }
            Keyframe {
                frame: 33625
                value: Qt.vector3d(20.2045, 26.1026, -0.950248)
            }
            Keyframe {
                frame: 33666.7
                value: Qt.vector3d(20.1994, 26.7504, -0.950215)
            }
            Keyframe {
                frame: 33708.3
                value: Qt.vector3d(20.1944, 27.4031, -0.950186)
            }
            Keyframe {
                frame: 33750
                value: Qt.vector3d(20.1898, 28.0609, -0.950155)
            }
            Keyframe {
                frame: 33791.7
                value: Qt.vector3d(20.1853, 28.7238, -0.950127)
            }
            Keyframe {
                frame: 33833.3
                value: Qt.vector3d(20.1812, 29.392, -0.950106)
            }
            Keyframe {
                frame: 33875
                value: Qt.vector3d(20.1774, 30.0655, -0.950081)
            }
            Keyframe {
                frame: 33916.7
                value: Qt.vector3d(20.1739, 30.7446, -0.950063)
            }
            Keyframe {
                frame: 33958.3
                value: Qt.vector3d(20.1707, 31.4292, -0.950042)
            }
            Keyframe {
                frame: 34000
                value: Qt.vector3d(20.1679, 32.1194, -0.950026)
            }
            Keyframe {
                frame: 34041.7
                value: Qt.vector3d(20.1654, 32.8154, -0.950006)
            }
            Keyframe {
                frame: 34083.3
                value: Qt.vector3d(20.1633, 33.5171, -0.95)
            }
            Keyframe {
                frame: 34125
                value: Qt.vector3d(20.1616, 34.2248, -0.949988)
            }
            Keyframe {
                frame: 34166.7
                value: Qt.vector3d(20.1602, 34.9382, -0.94998)
            }
            Keyframe {
                frame: 34208.3
                value: Qt.vector3d(20.1594, 35.6576, -0.949973)
            }
            Keyframe {
                frame: 34250
                value: Qt.vector3d(20.159, 36.383, -0.94997)
            }
            Keyframe {
                frame: 34291.7
                value: Qt.vector3d(20.159, 37.1144, -0.949966)
            }
            Keyframe {
                frame: 34333.3
                value: Qt.vector3d(20.1596, 37.8517, -0.949974)
            }
            Keyframe {
                frame: 34375
                value: Qt.vector3d(20.1607, 38.595, -0.949981)
            }
            Keyframe {
                frame: 34416.7
                value: Qt.vector3d(20.1624, 39.3443, -0.949988)
            }
            Keyframe {
                frame: 34458.3
                value: Qt.vector3d(20.1646, 40.0995, -0.950006)
            }
            Keyframe {
                frame: 34500
                value: Qt.vector3d(20.1675, 40.8606, -0.950023)
            }
            Keyframe {
                frame: 34541.7
                value: Qt.vector3d(20.171, 41.6276, -0.950046)
            }
            Keyframe {
                frame: 34583.3
                value: Qt.vector3d(20.1752, 42.4005, -0.950066)
            }
            Keyframe {
                frame: 34625
                value: Qt.vector3d(20.1801, 43.1791, -0.950098)
            }
            Keyframe {
                frame: 34666.7
                value: Qt.vector3d(20.1858, 43.9633, -0.950134)
            }
            Keyframe {
                frame: 34708.3
                value: Qt.vector3d(20.1923, 44.7532, -0.950169)
            }
            Keyframe {
                frame: 34750
                value: Qt.vector3d(20.1997, 45.5486, -0.950216)
            }
            Keyframe {
                frame: 34791.7
                value: Qt.vector3d(20.2079, 46.3494, -0.950267)
            }
            Keyframe {
                frame: 34833.3
                value: Qt.vector3d(20.2172, 47.1556, -0.950325)
            }
            Keyframe {
                frame: 34875
                value: Qt.vector3d(20.2274, 47.967, -0.950389)
            }
            Keyframe {
                frame: 34916.7
                value: Qt.vector3d(20.216, 48.7839, -0.950322)
            }
            Keyframe {
                frame: 34958.3
                value: Qt.vector3d(20.2058, 49.6058, -0.950257)
            }
            Keyframe {
                frame: 35000
                value: Qt.vector3d(20.1968, 50.4326, -0.9502)
            }
            Keyframe {
                frame: 35041.7
                value: Qt.vector3d(20.1891, 51.2643, -0.950153)
            }
            Keyframe {
                frame: 35083.3
                value: Qt.vector3d(20.1828, 52.1005, -0.95011)
            }
            Keyframe {
                frame: 35125
                value: Qt.vector3d(20.1781, 52.9413, -0.950085)
            }
            Keyframe {
                frame: 35166.7
                value: Qt.vector3d(20.175, 53.7865, -0.950066)
            }
            Keyframe {
                frame: 35208.3
                value: Qt.vector3d(20.1737, 54.6359, -0.950064)
            }
            Keyframe {
                frame: 35250
                value: Qt.vector3d(20.1742, 55.4895, -0.950069)
            }
            Keyframe {
                frame: 35291.7
                value: Qt.vector3d(20.1769, 56.3471, -0.950078)
            }
            Keyframe {
                frame: 35333.3
                value: Qt.vector3d(20.1817, 57.2087, -0.950109)
            }
            Keyframe {
                frame: 35375
                value: Qt.vector3d(20.189, 58.0739, -0.950158)
            }
            Keyframe {
                frame: 35416.7
                value: Qt.vector3d(20.1989, 58.9428, -0.950213)
            }
            Keyframe {
                frame: 35458.3
                value: Qt.vector3d(20.2116, 59.8152, -0.950292)
            }
            Keyframe {
                frame: 35500
                value: Qt.vector3d(20.2275, 60.691, -0.950387)
            }
            Keyframe {
                frame: 35541.7
                value: Qt.vector3d(20.2109, 61.5707, -0.950287)
            }
            Keyframe {
                frame: 35583.3
                value: Qt.vector3d(20.1981, 62.4535, -0.950203)
            }
            Keyframe {
                frame: 35625
                value: Qt.vector3d(20.1895, 63.3394, -0.950153)
            }
            Keyframe {
                frame: 35666.7
                value: Qt.vector3d(20.1855, 64.2281, -0.950131)
            }
            Keyframe {
                frame: 35708.3
                value: Qt.vector3d(20.1867, 65.1196, -0.95014)
            }
            Keyframe {
                frame: 35750
                value: Qt.vector3d(20.1936, 66.0137, -0.950178)
            }
            Keyframe {
                frame: 35791.7
                value: Qt.vector3d(20.2069, 66.9105, -0.950263)
            }
            Keyframe {
                frame: 35833.3
                value: Qt.vector3d(20.2275, 67.8096, -0.950387)
            }
            Keyframe {
                frame: 35875
                value: Qt.vector3d(20.1956, 68.7121, -0.950195)
            }
            Keyframe {
                frame: 35916.7
                value: Qt.vector3d(20.1755, 69.6348, -0.950074)
            }
            Keyframe {
                frame: 35958.3
                value: Qt.vector3d(20.1716, 70.5956, -0.950046)
            }
            Keyframe {
                frame: 36000
                value: Qt.vector3d(20.1875, 71.5941, -0.95014)
            }
            Keyframe {
                frame: 36041.7
                value: Qt.vector3d(20.2274, 72.6302, -0.950389)
            }
            Keyframe {
                frame: 36083.3
                value: Qt.vector3d(20.1862, 73.7055, -0.950141)
            }
            Keyframe {
                frame: 36125
                value: Qt.vector3d(20.1825, 74.8171, -0.950114)
            }
            Keyframe {
                frame: 36166.7
                value: Qt.vector3d(20.2275, 75.9646, -0.950385)
            }
            Keyframe {
                frame: 36208.3
                value: Qt.vector3d(20.1839, 77.1497, -0.950117)
            }
            Keyframe {
                frame: 36250
                value: Qt.vector3d(20.2274, 78.3684, -0.950382)
            }
            Keyframe {
                frame: 36291.7
                value: Qt.vector3d(20.2274, 79.622, -0.950388)
            }
            Keyframe {
                frame: 36333.3
                value: Qt.vector3d(20.2274, 80.9088, -0.950394)
            }
            Keyframe {
                frame: 36375
                value: Qt.vector3d(20.2274, 82.2274, -0.950391)
            }
            Keyframe {
                frame: 36416.7
                value: Qt.vector3d(20.2274, 83.5765, -0.950393)
            }
            Keyframe {
                frame: 36458.3
                value: Qt.vector3d(20.2274, 84.9544, -0.950389)
            }
            Keyframe {
                frame: 36500
                value: Qt.vector3d(20.2274, 86.3594, -0.950383)
            }
            Keyframe {
                frame: 36541.7
                value: Qt.vector3d(20.2273, 87.7895, -0.950391)
            }
            Keyframe {
                frame: 36583.3
                value: Qt.vector3d(20.2275, 89.2427, -0.950389)
            }
            Keyframe {
                frame: 36625
                value: Qt.vector3d(20.2276, 90.7166, -0.950385)
            }
            Keyframe {
                frame: 36666.7
                value: Qt.vector3d(20.2276, 92.2087, -0.95039)
            }
            Keyframe {
                frame: 36708.3
                value: Qt.vector3d(20.2275, 93.7163, -0.950391)
            }
            Keyframe {
                frame: 36750
                value: Qt.vector3d(20.2274, 95.2367, -0.950389)
            }
            Keyframe {
                frame: 36791.7
                value: Qt.vector3d(20.2275, 96.7669, -0.950387)
            }
            Keyframe {
                frame: 36833.3
                value: Qt.vector3d(20.2275, 98.3037, -0.950394)
            }
            Keyframe {
                frame: 36875
                value: Qt.vector3d(20.2275, 99.844, -0.950383)
            }
            Keyframe {
                frame: 36916.7
                value: Qt.vector3d(20.2275, 101.384, -0.950391)
            }
            Keyframe {
                frame: 36958.3
                value: Qt.vector3d(20.2275, 102.921, -0.950391)
            }
            Keyframe {
                frame: 37000
                value: Qt.vector3d(20.2275, 104.451, -0.950388)
            }
            Keyframe {
                frame: 37041.7
                value: Qt.vector3d(20.2001, 105.968, -0.95872)
            }
            Keyframe {
                frame: 37083.3
                value: Qt.vector3d(20.2274, 107.476, -0.950382)
            }
            Keyframe {
                frame: 37125
                value: Qt.vector3d(20.2114, 108.963, -0.956277)
            }
            Keyframe {
                frame: 37166.7
                value: Qt.vector3d(20.2411, 110.431, -0.950471)
            }
            Keyframe {
                frame: 37208.3
                value: Qt.vector3d(20.2083, 111.871, -0.958581)
            }
            Keyframe {
                frame: 37250
                value: Qt.vector3d(20.2188, 113.285, -0.958583)
            }
            Keyframe {
                frame: 37291.7
                value: Qt.vector3d(20.2275, 114.672, -0.950386)
            }
            Keyframe {
                frame: 37333.3
                value: Qt.vector3d(20.2201, 116.017, -0.960589)
            }
            Keyframe {
                frame: 37375
                value: Qt.vector3d(20.2116, 117.327, -0.965524)
            }
            Keyframe {
                frame: 37416.7
                value: Qt.vector3d(20.2018, 118.599, -0.965298)
            }
            Keyframe {
                frame: 37458.3
                value: Qt.vector3d(20.2226, 119.83, -0.960294)
            }
            Keyframe {
                frame: 37500
                value: Qt.vector3d(20.2418, 121.017, -0.950481)
            }
            Keyframe {
                frame: 37541.7
                value: Qt.vector3d(20.2182, 122.15, -0.963589)
            }
            Keyframe {
                frame: 37583.3
                value: Qt.vector3d(20.1937, 123.234, -0.973942)
            }
            Keyframe {
                frame: 37625
                value: Qt.vector3d(20.1954, 124.268, -0.981819)
            }
            Keyframe {
                frame: 37666.7
                value: Qt.vector3d(20.196, 125.25, -0.987147)
            }
            Keyframe {
                frame: 37708.3
                value: Qt.vector3d(20.1955, 126.179, -0.989988)
            }
            Keyframe {
                frame: 37750
                value: Qt.vector3d(20.1939, 127.054, -0.990486)
            }
            Keyframe {
                frame: 37791.7
                value: Qt.vector3d(20.1911, 127.873, -0.988712)
            }
            Keyframe {
                frame: 37833.3
                value: Qt.vector3d(20.1871, 128.637, -0.984813)
            }
            Keyframe {
                frame: 37875
                value: Qt.vector3d(20.2028, 129.344, -0.979004)
            }
            Keyframe {
                frame: 37916.7
                value: Qt.vector3d(20.2174, 129.994, -0.971267)
            }
            Keyframe {
                frame: 37958.3
                value: Qt.vector3d(20.2307, 130.587, -0.961731)
            }
            Keyframe {
                frame: 38000
                value: Qt.vector3d(20.2429, 131.123, -0.950474)
            }
            Keyframe {
                frame: 38041.7
                value: Qt.vector3d(20.2084, 131.586, -0.980661)
            }
            Keyframe {
                frame: 38083.3
                value: Qt.vector3d(20.1734, 131.992, -1.01003)
            }
            Keyframe {
                frame: 38125
                value: Qt.vector3d(20.1377, 132.342, -1.03856)
            }
            Keyframe {
                frame: 38166.7
                value: Qt.vector3d(20.1013, 132.634, -1.06618)
            }
            Keyframe {
                frame: 38208.3
                value: Qt.vector3d(20.0642, 132.871, -1.09287)
            }
            Keyframe {
                frame: 38250
                value: Qt.vector3d(20.0262, 133.052, -1.11857)
            }
            Keyframe {
                frame: 38291.7
                value: Qt.vector3d(19.9874, 133.178, -1.14323)
            }
            Keyframe {
                frame: 38333.3
                value: Qt.vector3d(19.9471, 133.224, -1.16624)
            }
            Keyframe {
                frame: 38375
                value: Qt.vector3d(19.9069, 133.27, -1.18929)
            }
            Keyframe {
                frame: 38416.7
                value: Qt.vector3d(19.8609, 133.024, -1.20579)
            }
            Keyframe {
                frame: 38458.3
                value: Qt.vector3d(19.5189, 132.3, -1.2087)
            }
            Keyframe {
                frame: 38500
                value: Qt.vector3d(18.9633, 131.095, -1.19775)
            }
            Keyframe {
                frame: 38541.7
                value: Qt.vector3d(18.2005, 129.416, -1.17221)
            }
            Keyframe {
                frame: 38583.3
                value: Qt.vector3d(17.2444, 127.284, -1.13165)
            }
            Keyframe {
                frame: 38625
                value: Qt.vector3d(16.1185, 124.734, -1.07607)
            }
            Keyframe {
                frame: 38666.7
                value: Qt.vector3d(14.8568, 121.819, -1.00606)
            }
            Keyframe {
                frame: 38708.3
                value: Qt.vector3d(13.5057, 118.608, -0.92293)
            }
            Keyframe {
                frame: 38750
                value: Qt.vector3d(11.8974, 115.164, -0.938053)
            }
            Keyframe {
                frame: 38791.7
                value: Qt.vector3d(10.3211, 111.621, -0.91488)
            }
            Keyframe {
                frame: 38833.3
                value: Qt.vector3d(8.70428, 108.073, -0.911923)
            }
            Keyframe {
                frame: 38875
                value: Qt.vector3d(7.13641, 104.633, -0.909787)
            }
            Keyframe {
                frame: 38916.7
                value: Qt.vector3d(5.66336, 101.401, -0.908405)
            }
            Keyframe {
                frame: 38958.3
                value: Qt.vector3d(4.32521, 98.4646, -0.90768)
            }
            Keyframe {
                frame: 39000
                value: Qt.vector3d(3.15454, 95.8958, -0.907458)
            }
            Keyframe {
                frame: 39041.7
                value: Qt.vector3d(2.17581, 93.7482, -0.907546)
            }
            Keyframe {
                frame: 39083.3
                value: Qt.vector3d(1.40587, 92.0585, -0.907815)
            }
            Keyframe {
                frame: 39125
                value: Qt.vector3d(0.854507, 90.8476, -0.908108)
            }
            Keyframe {
                frame: 39166.7
                value: Qt.vector3d(0.524458, 90.1234, -0.908323)
            }
            Keyframe {
                frame: 39208.3
                value: Qt.vector3d(0.414828, 89.8839, -0.907218)
            }
            Keyframe {
                frame: 39250
                value: Qt.vector3d(0.57007, 89.8841, -0.903528)
            }
            Keyframe {
                frame: 39291.7
                value: Qt.vector3d(0.994599, 89.8843, -0.900382)
            }
            Keyframe {
                frame: 39333.3
                value: Qt.vector3d(1.69122, 89.8845, -0.897775)
            }
            Keyframe {
                frame: 39375
                value: Qt.vector3d(2.66022, 89.8847, -0.895719)
            }
            Keyframe {
                frame: 39416.7
                value: Qt.vector3d(3.88984, 89.8847, -0.894185)
            }
            Keyframe {
                frame: 39458.3
                value: Qt.vector3d(5.35609, 89.8847, -0.893126)
            }
            Keyframe {
                frame: 39500
                value: Qt.vector3d(7.0237, 89.8845, -0.89248)
            }
            Keyframe {
                frame: 39541.7
                value: Qt.vector3d(8.84926, 89.8843, -0.892167)
            }
            Keyframe {
                frame: 39583.3
                value: Qt.vector3d(10.7714, 89.8838, -0.892069)
            }
            Keyframe {
                frame: 39625
                value: Qt.vector3d(12.7251, 89.8833, -0.892076)
            }
            Keyframe {
                frame: 39666.7
                value: Qt.vector3d(14.6441, 89.8825, -0.892058)
            }
            Keyframe {
                frame: 39708.3
                value: Qt.vector3d(16.4608, 89.8818, -0.891872)
            }
            Keyframe {
                frame: 39750
                value: Qt.vector3d(18.1205, 89.8809, -0.891403)
            }
            Keyframe {
                frame: 39791.7
                value: Qt.vector3d(19.5828, 89.8802, -0.89054)
            }
            Keyframe {
                frame: 39833.3
                value: Qt.vector3d(20.8091, 89.8795, -0.889188)
            }
            Keyframe {
                frame: 39875
                value: Qt.vector3d(21.7864, 89.8789, -0.887305)
            }
            Keyframe {
                frame: 39916.7
                value: Qt.vector3d(22.5036, 89.8786, -0.884845)
            }
            Keyframe {
                frame: 39958.3
                value: Qt.vector3d(22.9573, 89.8785, -0.881784)
            }
            Keyframe {
                frame: 40000
                value: Qt.vector3d(23.1474, 89.8786, -0.878117)
            }
            Keyframe {
                frame: 40041.7
                value: Qt.vector3d(22.6469, 89.8792, -0.87286)
            }
            Keyframe {
                frame: 40083.3
                value: Qt.vector3d(20.9871, 89.881, -0.865013)
            }
            Keyframe {
                frame: 40125
                value: Qt.vector3d(18.1405, 89.8833, -0.854706)
            }
            Keyframe {
                frame: 40166.7
                value: Qt.vector3d(14.1549, 89.8859, -0.842279)
            }
            Keyframe {
                frame: 40208.3
                value: Qt.vector3d(9.23809, 89.8882, -0.828328)
            }
            Keyframe {
                frame: 40250
                value: Qt.vector3d(3.78941, 89.8897, -0.813673)
            }
            Keyframe {
                frame: 40291.7
                value: Qt.vector3d(-1.64617, 89.8901, -0.799228)
            }
            Keyframe {
                frame: 40333.3
                value: Qt.vector3d(-6.53694, 89.8897, -0.785827)
            }
            Keyframe {
                frame: 40375
                value: Qt.vector3d(-10.4925, 89.8889, -0.774147)
            }
            Keyframe {
                frame: 40416.7
                value: Qt.vector3d(-13.3277, 89.888, -0.764572)
            }
            Keyframe {
                frame: 40458.3
                value: Qt.vector3d(-14.9953, 89.8875, -0.757278)
            }
            Keyframe {
                frame: 40500
                value: Qt.vector3d(-15.527, 89.8875, -0.752281)
            }
            Keyframe {
                frame: 40541.7
                value: Qt.vector3d(-15.1421, 89.888, -0.749148)
            }
            Keyframe {
                frame: 40583.3
                value: Qt.vector3d(-14.0135, 89.8889, -0.747494)
            }
            Keyframe {
                frame: 40625
                value: Qt.vector3d(-12.1743, 89.89, -0.747214)
            }
            Keyframe {
                frame: 40666.7
                value: Qt.vector3d(-9.47295, 89.8873, -0.747309)
            }
            Keyframe {
                frame: 40708.3
                value: Qt.vector3d(-6.47409, 89.8845, -0.748267)
            }
            Keyframe {
                frame: 40750
                value: Qt.vector3d(-3.85792, 89.886, -0.749739)
            }
            Keyframe {
                frame: 40791.7
                value: Qt.vector3d(-1.57679, 89.8873, -0.750423)
            }
            Keyframe {
                frame: 40833.3
                value: Qt.vector3d(-0.234819, 89.8939, -0.749998)
            }
            Keyframe {
                frame: 40875
                value: Qt.vector3d(0.212443, 89.9043, -0.748155)
            }
            Keyframe {
                frame: 40916.7
                value: Qt.vector3d(0.211223, 89.9157, -0.745471)
            }
            Keyframe {
                frame: 40958.3
                value: Qt.vector3d(0.207418, 89.9259, -0.742491)
            }
            Keyframe {
                frame: 41000
                value: Qt.vector3d(0.201412, 89.9349, -0.739283)
            }
            Keyframe {
                frame: 41041.7
                value: Qt.vector3d(0.193789, 89.943, -0.735901)
            }
            Keyframe {
                frame: 41083.3
                value: Qt.vector3d(0.183113, 89.9501, -0.732384)
            }
            Keyframe {
                frame: 41125
                value: Qt.vector3d(0.169967, 89.9566, -0.728762)
            }
            Keyframe {
                frame: 41166.7
                value: Qt.vector3d(0.156569, 89.9656, -0.661967)
            }
            Keyframe {
                frame: 41208.3
                value: Qt.vector3d(0.140325, 89.9733, -0.595062)
            }
            Keyframe {
                frame: 41250
                value: Qt.vector3d(0.13875, 89.9795, -0.528085)
            }
            Keyframe {
                frame: 41291.7
                value: Qt.vector3d(0.106601, 89.985, -0.454778)
            }
            Keyframe {
                frame: 41333.3
                value: Qt.vector3d(0.106974, 89.9893, -0.381422)
            }
            Keyframe {
                frame: 41375
                value: Qt.vector3d(0.0724907, 89.9929, -0.30804)
            }
            Keyframe {
                frame: 41416.7
                value: Qt.vector3d(0.0714888, 89.9952, -0.247224)
            }
            Keyframe {
                frame: 41458.3
                value: Qt.vector3d(0.0421383, 89.9972, -0.186394)
            }
            Keyframe {
                frame: 41500
                value: Qt.vector3d(0.0410757, 89.9984, -0.125555)
            }
            Keyframe {
                frame: 41541.7
                value: Qt.vector3d(0.0399974, 89.9991, -0.100452)
            }
            Keyframe {
                frame: 41583.3
                value: Qt.vector3d(-0.0248752, 89.9995, -0.0753461)
            }
            Keyframe {
                frame: 41625
                value: Qt.vector3d(0.00998631, 89.9997, -0.0502396)
            }
            Keyframe {
                frame: 41666.7
                value: Qt.vector3d(0.0024868, 89.9997, -0.0251307)
            }
            Keyframe {
                frame: 41708.3
                value: Qt.vector3d(6.83245e-07, 90, 0)
            }
        }
    }
}
