<?php

    include "conexion_mysqli.php";

    $query = "SELECT nombre_candidato FROM desis_candidatos GROUP BY nombre_candidato ORDER BY id_candidato ASC";
    $resul = $conectar->query($query);

    echo "<option value='' selected disabled>Selecciona tu candidato</option>";

    while ($datos = $resul->fetch_array(MYSQLI_ASSOC)) {
        echo "<option value='".$datos['nombre_candidato']."'>".$datos['nombre_candidato']."</option>";
    }

?>