import QtQuick
import QtQuick.Controls 6.2

Window {
    width: 640
    height: 250
    visible: true
    title: qsTr("Calculator")

    Dialog {
        id: resultDialog
        modal: true
        anchors.centerIn: parent
        standardButtons: Dialog.Ok

        Text {
            id: dialogText
            font.pointSize: 15
            anchors.centerIn: parent
            text: qsTr("")
        }

        function setText(string) {
            dialogText.text = string
        }
    }

    Button {
        id: button
        x: 439
        y: 112
        width: 69
        height: 29
        text: qsTr("=")

        onClicked: {
            var result = methods.sum(Number(first.text), Number(second.text));
            resultDialog.setText(result.toString());
            resultDialog.open();
        }
    }

    TextField {
        id: first
        x: 133
        y: 114
        width: 65
        height: 25
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("")
    }

    Label {
        id: label
        x: 232
        y: 117
        width: 51
        height: 22
        text: qsTr("+")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    TextField {
        id: second
        x: 315
        y: 114
        width: 65
        height: 25
        horizontalAlignment: Text.AlignHCenter
        placeholderText: qsTr("")
    }
}
