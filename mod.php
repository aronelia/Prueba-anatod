<?php  

include "class.database.php";

$sql="SELECT * FROM clientes ORDER BY cliente_nombre,cliente_dni,cliente_localidad";
$result=mysqli_query($con,$sql);

$rows=mysqli_num_rows($result);
?>

	<h1 style="text-align: center;margin-bottom: 55px;margin-top: 35px"; >Modificaciones</h1>
 <div id="div-lista">

 <table style="margin-left: 350px;" id="table-lista">
 	<th class="mth1">Nombre</th>
 	<th class="mth2">Dni</th>
 	<th class="mth3">Localidad</th>
 	<th class="mth4">Modificar</th>
<?php
while($row=mysqli_fetch_array($result)){

echo "<tr>";
echo "<td>$row[cliente_nombre]</td>";
echo "<td class=\"center\">$row[cliente_dni]</td>";
echo "<td>$row[cliente_localidad]</td>";
echo "<td><a href=\"mod-reg.php?id=$row[id]\"><input class='btnedit' type='button' id='btn' value='Editar'></a></td>";
echo "</tr>";	
}
 ?>
 </table>
 </div>
 