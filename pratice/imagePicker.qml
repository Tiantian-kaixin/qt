import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0
import QtQuick.Layouts 1.0

Window {
    width: 200
    height: 240
    Row{


        Image {
            id: image
            source: ""
            Layout.preferredWidth: 200

            Layout.preferredHeight: 200
            anchors.top: parent.top
            anchors.left: parent.left
        }

        Column{
            anchors.top: image.bottom
            Button{
                text: "choose a picture"
                onClicked: {
                    fileDialog.open()
                }
            }
            Label{
                id:label
                text: ""
            }
        }

    }
    FileDialog{
        id:fileDialog
        nameFilters : ["*.png"]
        onAccepted: {
            image.source = fileUrl
            label.text = fileUrl.toString()
        }
    }
}
