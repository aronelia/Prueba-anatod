<?php 
include "class.database.php";
$mod="UPDATE clientes SET cliente_nombre='$_POST[cliente_nombre]',cliente_dni='$_POST[cliente_dni]',cliente_localidad='$_POST[cliente_localidad]'WHERE id='$_POST[id]' ";
mysqli_query($con, $mod);

header("Location:mod.php");

 ?>