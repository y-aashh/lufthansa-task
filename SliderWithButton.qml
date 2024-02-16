import QtQuick
import QtQuick.Controls

Item {
    property real outputValue: 0
    property real fromValue: 0
    property real toValue: 0
    property real stepSizeValue: 1
    property real jumpSize: 1
    property bool userInteraction: false
    Button {
            id: "upButton"
            icon.source: "./Assets/up-arrow.png"
            anchors {
                top: parent.top
                horizontalCenter: parent.horizontalCenter
                topMargin: parent.height/4
                // left: parent.left
                // right: parent.right
                // leftMargin: parent.width/4
                // rightMargin: parent.width/4
            }
            onClicked: {                
                outputValue += jumpSize
            }
        }
    Slider {
        id: mySlider
        from: fromValue; to: toValue
        value: outputValue
        orientation: Qt.Vertical
        stepSize: stepSizeValue
        snapMode: Slider.SnapOnRelease

        anchors {
            top: upButton.bottom
            bottom: downButton.top
            horizontalCenter: parent.horizontalCenter
        }

        onMoved: userInteraction = true
        onValueChanged: {
            if (userInteraction){
                outputValue = mySlider.value
                userInteraction = false
            }
        }
    }
    Button {
        id: "downButton"
        icon.source: "./Assets/arrow-down.png"
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
            // left: parent.left
            // right: parent.right
            // leftMargin: parent.width/4
            // rightMargin: parent.width/4
        }
        onClicked: {
            outputValue -= jumpSize
        }
    }
}