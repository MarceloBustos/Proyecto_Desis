<?php

    include "conexion_mysqli.php";

    $query = "SELECT region FROM desis_comunas GROUP BY region ORDER BY id_comuna ASC";
    $resul = $conectar->query($query);

    echo "<option value='' selected disabled>Selecciona una región</option>";

    while ($datos = $resul->fetch_array(MYSQLI_ASSOC)) {
        echo "<option value='".$datos['region']."'>".$datos['region']."</option>";
    }

?>