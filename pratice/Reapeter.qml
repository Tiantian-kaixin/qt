import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.0
import QtQuick.Layouts 1.0

Window {
    id :wi
    width: 200
    height: 400
    property var datas : [Qt.Color]

    Column{
        id : sa
        height: 300
        Repeater{
            id:repeater
            model: datas//slider.value
            delegate:uiDelegate

        }

    }


    Component{
        id :uiDelegate
        Text {
            height: 20
            id: text
            text:"modelData"
        }


    }

    Row{
        anchors.bottom: parent.bottom
//        Slider {
//            id: slider
//            from: 1
//            to: 5
//            stepSize: 1
//            value: 1
//        }

        id:row
        Button{
            text: "add"
            onClicked: {
                datas.push(Qt.Color)
            }
        }
//        Button{
//            text: "remove"
//            onClicked: {
//                datas.pop()
//                 repeater.update()

//            }
//        }
    }

}
