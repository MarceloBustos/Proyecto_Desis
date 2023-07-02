<?php

    include "conexion_mysqli.php";

    $region = $_POST['region'];

    $query = "SELECT comuna FROM desis_comunas WHERE region = '$region' GROUP BY comuna";
    $resul = $conectar->query($query);

    echo "<option value='' selected disabled>Selecciona una comuna</option>";

    while ($datos = $resul->fetch_array(MYSQLI_ASSOC)) {
        echo "<option value='".$datos['comuna']."'>".$datos['comuna']."</option>";
    }
?>