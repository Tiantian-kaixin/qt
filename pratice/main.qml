import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0
import QtQuick.Layouts 1.0

Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("pratice")
    Row{
        Button{
            text: "imagePicker"
            onClicked: {
                var com = Qt.createComponent("imagePicker.qml");
                if (com.status === Component.Ready){
                    var imagePicker = com.createObject(root)
                    imagePicker.show()
                }
            }
        }
        Button{
            text: "repeater"
            onClicked: {
                var components = Qt.createComponent("Reapeter.qml")
                if(components.status === Component.Ready){
                    var repeater = components.createObject(root)
                    repeater.show()
                }
            }
        }
    }


}
