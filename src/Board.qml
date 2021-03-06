// x = first  player
// o = second player

import QtQuick 2.0

Rectangle
{
    property bool game_over: false
    property bool first_player_turn: true
    property variant has_clicked: [false, false, false, false, false, false, false, false, false]

    function check_game_over()
    {
		if(img_o1.visible === true && img_o2.visible === true && img_o3.visible === true)
        {
            game_over = true;
            txt_game_over.visible = true;
        }
        else if(img_o1.visible && img_o5.visible && img_o9.visible)
        {
            game_over = true;
            txt_game_over.visible = true;
        }
        else if(img_o1.visible && img_o4.visible && img_o7.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_o2.visible && img_o5.visible && img_o8.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_o3.visible && img_o5.visible && img_o7.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_o3.visible && img_o6.visible && img_o9.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_o4.visible && img_o5.visible && img_o6.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_o7.visible && img_o8.visible && img_o9.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x1.visible && img_x2.visible && img_x3.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x1.visible && img_x5.visible && img_x9.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x1.visible && img_x4.visible && img_x7.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x2.visible && img_x5.visible && img_x8.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x3.visible && img_x5.visible && img_x7.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x3.visible && img_x6.visible && img_x9.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x4.visible && img_x5.visible && img_x6.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
        else if(img_x7.visible && img_x8.visible && img_x9.visible)
        {
            txt_game_over.visible = true;
            game_over = true;
        }
    }

    id: big_wrapper
    anchors.fill: parent
    border.color: "white"

    Text
    {
        id: txt_game_over
        visible: false
        font.family: "Arial"
        font.pointSize: 72
        color: "Red"
        text: "Game Over"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        z: 3
    }

    Grid
    {
        id: grd_board
        height: parent.height * .75
        width: parent.width * .75
        anchors.horizontalCenter: big_wrapper.horizontalCenter
        anchors.verticalCenter: big_wrapper.verticalCenter
        columns: 3
        rows: 3

        Rectangle
        {
            border.color: "white";
            height: parent.height/3;
            width: parent.width/3;
            Image
            {
                id: img_x1;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                height: 100;
                width: 100;
                source: "../img/letter_x.png";
            }
            Image
            {
                id: img_o1;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                height: 75;
                width: 75;
                source: "../img/letter_o.png";
            }
			
			MouseArea
			{
                id: ma_mouse_area
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[0] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x1.visible = true : img_o1.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[0] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
			}
        }

        Rectangle
        {
            border.color: "red";
            height: parent.height/3;
            width: parent.width/3;
            Image
            {
                id: img_x2;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                height: 100;
                width: 100;
                source: "../img/letter_x.png";
            }
            Image
            {
                id: img_o2;
                visible: false;
                anchors.horizontalCenter: parent.horizontalCenter;
                anchors.verticalCenter: parent.verticalCenter;
                height: 75;
                width: 75;
                source: "../img/letter_o.png";
            }
            MouseArea
            {
                id: ma_mouse_area02
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[1] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x2.visible = true : img_o2.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[1] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
            }

        }
        Rectangle{border.color: "white"; height: parent.height/3; width: parent.width/3; Image{ id: img_x3; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o3; visible:false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area03
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[2] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x3.visible = true : img_o3.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[2] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
            }
        }
        Rectangle{border.color: "magenta"; height: parent.height/3; width: parent.width/3;Image{ id: img_x4; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o4; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area04
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[3] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x4.visible = true : img_o4.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[3] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
            }
        }
        Rectangle{border.color: "gold"; height: parent.height/3; width: parent.width/3;Image{ id: img_x5; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o5; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area05
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[4] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x5.visible = true : img_o5.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[4] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
            }
        }
        Rectangle{border.color: "green"; height: parent.height/3; width: parent.width/3;Image{ id: img_x6; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o6; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area06
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[5] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x6.visible = true : img_o6.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[5] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
            }
        }
        Rectangle{border.color: "white"; height: parent.height/3; width: parent.width/3;Image{ id: img_x7; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o7; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area07
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[6] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x7.visible = true : img_o7.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[6] = true;

                    }
                    // Call check_game_over
                    check_game_over();
                    if (game_over === true)
                        txt_game_over.visible = true;
                }
            }
        }
        Rectangle{border.color: "brown"; height: parent.height/3; width: parent.width/3;Image{ id: img_x8; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o8; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area08
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[7] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x8.visible = true : img_o8.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[7] = true;
                        // Call check_game_over
                        check_game_over();
                    }
                    if (game_over === true)
                        txt_game_over.visible = true;
                }
            }
        }
        Rectangle{border.color: "white"; height: parent.height/3; width: parent.width/3;Image{ id: img_x9; visible: false; anchors.horizontalCenter: parent.horizontalCenter; height: 100; width: 100;source: "../img/letter_x.png";} Image{ id: img_o9; visible: false; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; height: 75; width: 75;source: "../img/letter_o.png";}
            MouseArea
            {
                id: ma_mouse_area09
                anchors.fill: parent

                onClicked: {
                    // if cell is not clicked and not game over
                    // Create scope curly braces
                    if (has_clicked[8] === false && game_over === false){
                        // Toggle bool based off image
                        first_player_turn ? img_x9.visible = true : img_o9.visible = true;
                        // Set x visible depending on player turn
                        // Toggle player turn
                        if (first_player_turn == true)
                            first_player_turn = false;
                        else
                            first_player_turn = true;
                        // Set has_clicked
                        has_clicked[8] = true;
                        // Call check_game_over
                        check_game_over();
                        if (game_over === true)
                            txt_game_over.visible = true;
                    }
                }
            }
        }
    }

    Rectangle
    {
        id: rect_left
        anchors.right: grd_board.left
        anchors.rightMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_right
        anchors.left: grd_board.right
        anchors.leftMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_top
        anchors.bottom: grd_board.top
        anchors.bottomMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }

    Rectangle
    {
        id: rect_bottom
        anchors.top: grd_board.bottom
        anchors.topMargin: -10
        height: grd_board.height
        width: grd_board.width

        border.color: "white"
        border.width: 20
    }
}
