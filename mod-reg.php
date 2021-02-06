<?php  

include "class.database.php";

$sql="SELECT * FROM clientes WHERE id='$_GET[id]'";
$result=mysqli_query($con,$sql);

while($row=mysqli_fetch_array($result)){

	$nombre=$row['cliente_nombre'];
    $dni=$row['cliente_dni'];
	$localidades=$row['cliente_localidad'];
}	
?>

<h1>Modificaciones</h1>
<div class="form">
<form id="f1" action="mod-update.php" method="POST">

<input  type="hidden" name="id" value="<?php echo $_GET['id'];?>">	

<div>Nombre</div>	
<input  type="text" name="cliente_nombre" id="nombre" value="<?php echo $nombre; ?>" required>

<div>DNI</div>
<input  type="text" name="cliente_dni" value="<?php echo $dni;?>" maxlength="8" required>

<div>Localidad</div>
                    <select id="cliente_localidad" name="cliente_localidad">
                    <?php 
                        while($localidades = mysqli_fetch_array($query))
                        {
                    ?>
                            <option value="<?php echo $localidades['localidad_provincia']?>"> <?php echo $localidades['localidad_nombre']?> </option>
                    <?php
                        }
                    ?> 
                    </select>



<br><br>
<input type="submit" id="btnEnviar" value="Modificar">	
</form>
</div>
</body>

