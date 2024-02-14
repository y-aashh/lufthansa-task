import QtQuick
import QtQuick.Controls

Item {
    property real outputValue: mySlider.value
    property real fromValue: 0
    property real toValue: 0
    property real stepSizeValue: 1
    Button {
            id: "upButton"
            icon.source: "./Assets/up-arrow.png"
            anchors {
                top: parent.top
                horizontalCenter: parent.horizontalCenter
            }
        }
    Slider {
        id: mySlider
        from: fromValue; to: toValue
        value: 0
        orientation: Qt.Vertical
        stepSize: stepSizeValue
        snapMode: Slider.SnapOnRelease

        anchors {
            top: upButton.bottom
            bottom: downButton.top
            horizontalCenter: parent.horizontalCenter
        }
    }
    Button {
        id: "downButton"
        icon.source: "./Assets/arrow-down.png"
        anchors {
            bottom: parent.bottom
            horizontalCenter: parent.horizontalCenter
        }
    }
}