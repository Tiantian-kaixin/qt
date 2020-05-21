import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0
import QtQuick.Layouts 1.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("image picker")
    Image{
        id:canvas
        anchors.left: parent.left
        Layout.preferredWidth: parent.width
        Layout.preferredHeight: parent.height - 30
        fillMode: Image.PreserveAspectFit
        width: parent.width
        height: parent.height-30
    }

    Row{
        id:row
        height: 30
        anchors.top: canvas.bottom
        Button{
           text: qsTr("选择图片")
           anchors.verticalCenter: parent.verticalCenter
           onClicked: {
               fileDialog.open()
           }
        }
        Text {
            id: name
            anchors.verticalCenter: parent.verticalCenter

            text: qsTr("text")
        }
    }

    FileDialog{
        id:fileDialog
        nameFilters: ["*.png"]
        onAccepted: {
            canvas.source = fileDialog.fileUrls[0]
            name.text = fileDialog.fileUrls[0].toString()

        }
    }
}
