import QtQuick
import QtQuick.Controls

Item {
    property int myState: 0
    Column {
        anchors {
        horizontalCenter: parent.horizontalCenter
        }
        Button {
            id: "upButton"
            icon.source: "./Assets/up-arrow.png"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            onClicked: {                
                if (myState == 0)
                    myState = 0
                else
                    myState -= 1
            }
        }
        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "1"
            enabled: myState !== 0
            onClicked: { myState = 0; }
        }

        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "2"
            enabled: myState !== 1
            onClicked: { myState = 1; }
        }

        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "3"
            enabled: myState !== 2
            onClicked: { myState = 2; }
        }

        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "4"
            enabled: myState !== 3
            onClicked: { myState = 3; }
        }
        Button {
            id: "downButton"
            icon.source: "./Assets/arrow-down.png"
            anchors {
                horizontalCenter: parent.horizontalCenter
                leftMargin: parent.width/5
                rightMargin: parent.width/5
            }
            onClicked: {      
                          
                if (myState == 3)
                    myState = 3
                else
                    myState += 1
            }
        }
}
}



