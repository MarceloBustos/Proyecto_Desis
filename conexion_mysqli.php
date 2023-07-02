<?php

$conectar = new mysqli("localhost", "root", "transcom01", "base_proyecto_desis");

if ($conectar->connect_error) {
	die('Error de conexión (' . $conectar->connect_errno . ')' . $conectar->connect_error);
}
