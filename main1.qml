import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 300
    title: "Multiple Sliders with Save and Reload"

    // Sliders and Texts
    Row {
        spacing: 20

        Slider {
            id: slider1
            width: 150
            from: 0
            to: 100
            onValueChanged: {
                currentValue1.text = "Current Value: " + slider1.value.toFixed(2)
            }
        }

        Text {
            id: currentValue1
            text: "Current Value: " + slider1.value.toFixed(2)
        }

        Slider {
            id: slider2
            width: 150
            from: 0
            to: 100
            onValueChanged: {
                currentValue2.text = "Current Value: " + slider2.value.toFixed(2)
            }
        }

        Text {
            id: currentValue2
            text: "Current Value: " + slider2.value.toFixed(2)
        }

        Slider {
            id: slider3
            width: 150
            from: 0
            to: 100
            onValueChanged: {
                currentValue3.text = "Current Value: " + slider3.value.toFixed(2)
            }
        }

        Text {
            id: currentValue3
            text: "Current Value: " + slider3.value.toFixed(2)
        }
    }

    // Property to manage the current state
    property string currentState: "State1"

    // Variables to store state values
    property real state1Value1: 0
    property real state1Value2: 0
    property real state1Value3: 0

    property real state2Value1: 0
    property real state2Value2: 0
    property real state2Value3: 0

    property real state3Value1: 0
    property real state3Value2: 0
    property real state3Value3: 0

    Column {
        anchors.centerIn: parent
        spacing: 10

        // Save and Reload buttons for State 1
        Row {
            Button {
                text: "Save State 1"
                onClicked: {
                    state1Value1 = slider1.value
                    state1Value2 = slider2.value
                    state1Value3 = slider3.value
                }
            }

            Button {
                text: "Reload State 1"
                onClicked: {
                    slider1.value = state1Value1
                    currentValue1.text = "Current Value: " + slider1.value.toFixed(2)

                    slider2.value = state1Value2
                    currentValue2.text = "Current Value: " + slider2.value.toFixed(2)

                    slider3.value = state1Value3
                    currentValue3.text = "Current Value: " + slider3.value.toFixed(2)
                }
            }
        }

        // Save and Reload buttons for State 2
        Row {
            Button {
                text: "Save State 2"
                onClicked: {
                    state2Value1 = slider1.value
                    state2Value2 = slider2.value
                    state2Value3 = slider3.value
                }
            }

            Button {
                text: "Reload State 2"
                onClicked: {
                    slider1.value = state2Value1
                    currentValue1.text = "Current Value: " + slider1.value.toFixed(2)

                    slider2.value = state2Value2
                    currentValue2.text = "Current Value: " + slider2.value.toFixed(2)

                    slider3.value = state2Value3
                    currentValue3.text = "Current Value: " + slider3.value.toFixed(2)
                }
            }
        }

        // Save and Reload buttons for State 3
        Row {
            Button {
                text: "Save State 3"
                onClicked: {
                    state3Value1 = slider1.value
                    state3Value2 = slider2.value
                    state3Value3 = slider3.value
                }
            }

            Button {
                text: "Reload State 3"
                onClicked: {
                    slider1.value = state3Value1
                    currentValue1.text = "Current Value: " + slider1.value.toFixed(2)

                    slider2.value = state3Value2
                    currentValue2.text = "Current Value: " + slider2.value.toFixed(2)

                    slider3.value = state3Value3
                    currentValue3.text = "Current Value: " + slider3.value.toFixed(2)
                }
            }
        }
    }
}
