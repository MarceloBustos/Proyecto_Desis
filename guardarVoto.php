<?php

    include "conexion_mysqli.php";

    $nombre     = $_POST['nom'];
    $alias      = $_POST['ali'];
    $rut        = $_POST['rut'];
    $email      = $_POST['ema'];
    $region     = $_POST['reg'];
    $comuna     = $_POST['com'];
    $candidato  = $_POST['can'];
    $web        = $_POST['web'];
    $tv         = $_POST['tv'];
    $rrss       = $_POST['rs'];
    $amigos     = $_POST['ami'];

    date_default_timezone_set('America/Santiago');
    $hoy = date("Y-m-d h:i:s");

    $query   = "INSERT INTO desis_votante(rut, nomb_apel, alias, email, region, comuna) 
                VALUES ('$rut','$nombre','$alias','$email','$region','$comuna')";
    $resul   = $conectar->query($query);

    if ($resul) { $final = 1; }
    
    $query2  = "INSERT INTO desis_votacion(rut_votante, candidato, fecha_votacion) 
                VALUES ('$rut','$candidato','$hoy')";
    $resul2  = $conectar->query($query2);

    if ($resul2) { $final++; }

    $query3  = "INSERT INTO desis_conocimiento(rut, web, tv, rrss, amigo) 
                VALUES ('$rut','$web','$tv','$rrss','$amigos')";
    $resul3  = $conectar->query($query3);

    if ($resul3) { $final++; }

    if ($final == 3) {
        echo 1;
    }
    else{
        echo 0;
    }
?>