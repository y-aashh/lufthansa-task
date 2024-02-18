import QtQuick
import QtQuick.Controls

Item {
    property int myState: 0
    Column {
        anchors {
            left: parent.left
            right: parent.right
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
            onClicked: { myState = 0; }
            background:Rectangle {
                implicitWidth: 40
                color: "transparent"
                border.width: myState == 0 ? 1 : 0
                border.color: "lightgray"
                radius: 4
            }
        }

        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "2"
            onClicked: { myState = 1; }
            background:Rectangle {
                implicitWidth: 40
                color: "transparent"
                border.width: myState == 1 ? 1 : 0
                border.color: "lightgray"
                radius: 4
            }
        }

        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "3"
            onClicked: { myState = 2; }
            background:Rectangle {
                implicitWidth: 40
                color: "transparent"
                border.width: myState == 2 ? 1 : 0
                border.color: "lightgray"
                radius: 4
            }
        }

        Button {
            anchors {
                horizontalCenter: parent.horizontalCenter
            }
            text: "4"
            onClicked: { myState = 3; }
            background:Rectangle {
                implicitWidth: 40
                color: "transparent"
                border.width: myState == 3 ? 1 : 0
                border.color: "lightgray"
                radius: 4
            }
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



