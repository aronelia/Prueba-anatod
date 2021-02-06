<?php
/*
 * anatod ® - ©
 */
?>
<?php

$host="localhost"; 
$user="root"; 
$pass=""; 
$db="final1"; 
/*$server="anatod-test.c75o4mima6rb.us-east-1.rds.amazonaws.com";*/

$con=mysqli_connect($host,$user,$pass,$db);

if(mysqli_connect_errno()){

    echo "Error al conectar ".mysqli_connect_error();
}else{
   /*echo "CONECTADO ";*/
}
mysqli_set_charset($con, "utf8");

$query=mysqli_query($con,"SELECT * FROM localidades");
?>

