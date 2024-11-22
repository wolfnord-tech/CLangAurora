import QtQuick 2.0
import Sailfish.Silica 1.0
import module.counter 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    PageHeader {
        objectName: "pageHeader"
        title: qsTr("C Language")
        extraContent.children: [
            IconButton {
                objectName: "aboutButton"
                icon.source: "image://theme/icon-m-about"
                anchors.verticalCenter: parent.verticalCenter
                onClicked: pageStack.push(Qt.resolvedUrl("AboutPage.qml"))
            }
        ]
    }

    Item {
        id: root
        objectName: "Counter"
        property real fontSize: width / 16
        anchors.fill: parent

        Counter {
            id: counterObj
            objectName: "counterObj"
            onValueChanged: console.log(value)
        }

        Column {
            objectName: "layout"
            anchors.fill: parent  // Задает размеры на весь родительский элемент

            Text {
                id: valueText
                objectName: "valueText"
                text: "Value: %1".arg(counterObj.value)
                font.pixelSize: fontSize
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 20  // Хотя бы отступ сверху
            }

            Row {
                objectName: "buttonsRow"
                height: root.height - valueText.height - 20  // Учитываем отступ
                anchors.top: valueText.bottom // Привязка к предыдущему элементу

                MouseArea {
                    width: root.width / 2
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        text: "Increment"
                        anchors.centerIn: parent
                        font.pixelSize: fontSize
                    }

                    onClicked: counterObj.value++
                }

                MouseArea {
                    width: root.width / 2
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter

                    Text {
                        text: "Reset"
                        anchors.centerIn: parent
                        font.pixelSize: fontSize
                    }

                    onClicked: counterObj.resetValue()
                }
            }
        }
    }
}
