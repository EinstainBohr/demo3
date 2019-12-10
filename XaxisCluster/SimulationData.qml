import QtQuick 2.12

Item {
    id: simulation

    // Startup animation
    property bool startupAnimation: true

    // Speed and range
    property real speed: 50
    property real range: 400
    property real halfRange: 200
    property real prevRange: 400

    // Time and nav time
    property var currentDate: new Date()
    property var arrivalDate: new Date()
    property string localTime: currentDate.toLocaleTimeString(Qt.locale("en_EN"), "hh:mm")
    property string arrivalTime: addHours(arrivalDate, 45).toLocaleTimeString(Qt.locale("en_EN"),
                                                                              "hh:mm")

    // Nav distance
    property real distance: 45
    property string distanceToFinish: distance.toFixed(1) + " km"

    // Nav direction
    property bool turnLeftNext: false

    // Nav next turn
    property real drivenSince: 0.0
    property real turnDistance: 1500.0
    property string nextTurn: (turnDistance / 10).toFixed(0) * 10 + " m"

    // Charge level & state
    property real batteryLevel: range > halfRange ? ((range - halfRange) / 3.3333) + 39 : 39
    property real chargeLevel: range > halfRange ? (range - halfRange) / 18 : 0
    property string chargeState: chargeLevel > 9.5 ? "CHARGED" : (chargeLevel != 0 ? "ECO" : "EMPTY")

    // Fuel level
    property real fuelLevel: range < halfRange ? range / 18 : 11

    onRangeChanged: {
        drivenSince = (prevRange - range) > 0 ? prevRange - range : 0;
        prevRange = range;
        turnDistance -= drivenSince * 1000.0;
        distance -= drivenSince;
        if (turnDistance <= 0.0) {
            turnDistance = 2000 * Math.random() + 100;
            turnLeftNext = !turnLeftNext;
        }
        if (distance <= 0.0) {
            distance = 100 * Math.random() + 10;
            arrivalTime = addHours(arrivalDate, distance).toLocaleTimeString(Qt.locale("en_EN"),
                                                                             "hh:mm");
        }
    }

    function addHours(date, min) {
        date.setMinutes(date.getMinutes() + min);
        return date;
    }

    function updateTime() {
        currentDate = new Date();
        localTime = currentDate.toLocaleTimeString(Qt.locale("en_EN"), "hh:mm");
    }

    Timer {
        interval: 30000
        repeat: true
        running: true

        onTriggered:
            updateTime();
    }

    SequentialAnimation {
        id: drivingSimulation
        running: !startupAnimation
        loops: Animation.Infinite
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 50
            to: 65
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 65
            to: 60
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 3000
            target: simulation
            from: 60
            to: 95
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 95
            to: 90
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 5000
            target: simulation
            from: 90
            to: 105
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 105
            to: 100
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 3000
            target: simulation
            from: 100
            to: 120
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 120
            to: 115
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 4000
            target: simulation
            from: 115
            to: 130
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 130
            to: 120
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 8000
            target: simulation
            from: 120
            to: 90
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 90
            to: 80
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 4000
            target: simulation
            from: 80
            to: 70
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 1000
            target: simulation
            from: 70
            to: 65
            easing.type: Easing.InOutQuad;
        }
        PropertyAnimation {
            property: "speed"
            duration: 2000
            target: simulation
            from: 65
            to: 50
            easing.type: Easing.InOutQuad;
        }
    }
    SequentialAnimation {
        running: !startupAnimation
        loops: Animation.Infinite
        PropertyAnimation {
            property: "range"
            duration: 180000
            target: simulation
            from: 400
            to: 0
        }
        ScriptAction {
            script: {
                range = 400;
                prevRange = 400;
                startupAnimation = true;
                mainView.restartDemo();
            }
        }
    }
}
