<?php

    $cuadros = $_POST["cuadro"];
    //Validar que solo lleve "X" y "O"

    for($i=0; $i<count($cuadros); $i++){
        if($cuadros[$i] != "X" && $cuadros[$i] != "O"){
            echo "<h2>Solo se permiten X  y/o O --> ".$cuadros[$i]."</h2>";
            return;
        }
    }
    /*
        [0][1][2]
        [ ][ ][ ]
        [ ][ ][ ]
    */
    if($cuadros[0] == "X" && $cuadros[1] == "X" && $cuadros[2] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(0,1,2,$cuadros);
        return;
    } else if($cuadros[0] == "O" && $cuadros[1] == "O" && $cuadros[2] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(0,1,2,$cuadros);
        return;
    }
    /*
        [ ][ ][ ]
        [3][4][5]
        [ ][ ][ ]
    */
    if($cuadros[3] == "X" && $cuadros[4] == "X" && $cuadros[5] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(3,4,5,$cuadros);
        return;
    } else if($cuadros[3] == "O" && $cuadros[4] == "O" && $cuadros[5] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(3,4,5,$cuadros);
        return;
    }

    /*
        [ ][ ][ ]
        [ ][ ][ ]
        [6][7][8]
    */
    if($cuadros[6] == "X" && $cuadros[7] == "X" && $cuadros[8] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(6,7,8,$cuadros);
        return;
    } else if($cuadros[6] == "O" && $cuadros[7] == "O" && $cuadros[8] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(6,7,8,$cuadros);
        return;
    }

    /*
        [0][ ][ ]
        [ ][4][ ]
        [ ][ ][8]
    */
    if($cuadros[0] == "X" && $cuadros[4] == "X" && $cuadros[8] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(0,4,8,$cuadros);
        return;
    } else if($cuadros[0] == "O" && $cuadros[4] == "O" && $cuadros[8] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(0,4,8,$cuadros);
        return;
    }

    /*
        [ ][ ][2]
        [ ][4][ ]
        [6][ ][ ]
    */
    if($cuadros[6] == "X" && $cuadros[4] == "X" && $cuadros[2] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(2,4,6,$cuadros);
        return;
    } else if($cuadros[6] == "O" && $cuadros[4] == "O" && $cuadros[2] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(2,4,6,$cuadros);
        return;
    }

    /*
        [0][ ][ ]
        [3][ ][ ]
        [6][ ][ ]
    */
    if($cuadros[0] == "X" && $cuadros[3] == "X" && $cuadros[6] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(0,3,6,$cuadros);
        return;
    } else if($cuadros[0] == "O" && $cuadros[3] == "O" && $cuadros[6] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(0,3,6,$cuadros);
        return;
    }

    /*
        [ ][1][ ]
        [ ][4][ ]
        [ ][7][ ]
    */
    if($cuadros[1] == "X" && $cuadros[4] == "X" && $cuadros[7] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(1,4,7,$cuadros);
        return;
    } else if($cuadros[1] == "O" && $cuadros[4] == "O" && $cuadros[7] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(1,4,7,$cuadros);
        return;
    }

    /*
        [ ][ ][2]
        [ ][ ][5]
        [ ][ ][8]
    */
    if($cuadros[2] == "X" && $cuadros[5] == "X" && $cuadros[8] == "X"){
        echo "<h1>Ganador [X]</h1>";
        pintaLineaGanadora(2,5,8,$cuadros);
        return;
    } else if($cuadros[2] == "O" && $cuadros[5] == "O" && $cuadros[8] == "O"){
        echo "<h1>Ganador [O]</h1>";
        pintaLineaGanadora(2,5,8,$cuadros);
        return;
    }

    function pintaLineaGanadora($p1, $p2, $p3, $cuadros){
        $color = 'border:1px solid black; padding: 10px; margin: 2px; display:inline-block';
        for($i=0; $i<9; $i++){
            if($i == $p1 || $i == $p2 || $i == $p3){
                echo "<span style='background-color: #cfe2f3;".$color."'>".$cuadros[$i]."</span>";
            } else {
                echo "<span style='".$color."'>".$cuadros[$i]."</span>";
            }
            
            if($i == 2 || $i == 5) echo "<br>";
        }
    }

?>