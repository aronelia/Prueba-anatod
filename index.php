<?php 
include ("class.database.php");

 ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario</title>

    <link rel="stylesheet" href="estilos.css">
    <link rel="stylesheet" href="css/font-awesome.css">

    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/script.js"></script>
</head>
<body onload="document.getElementById('cliente_nombre').focus();">
    <h1 style="text-align: center;margin-bottom: 55px;margin-top: 35px;">Registrate</h1>
    <section class="contacto-info">

    <form action=" <?php echo $_SERVER['PHP_SELF'];?> " id="form-info" method="POST">

          <input class="inpname"  type="text" id="cliente_nombre" name="cliente_nombre"
         placeholder="Nombre" required><br>

          <input class="inpname" type="number" maxlength="8" id="cliente_dni" name="cliente_dni" placeholder="DNI" required><br>
        
          <select class="inpname" id="cliente_localidad" name="cliente_localidad">
            <?php 
                while($localidades = mysqli_fetch_array($query))
              {
              ?>
                <option value="<?php echo $localidades['localidad_provincia']?>"> <?php echo $localidades['localidad_nombre']?> </option>
              <?php
              }
              ?> 
          </select><br>
    <input class="btn1" type="submit" value="Agregar"
    id="btn" name="register">
    </form>
    </section>

    <?php 
    if (isset($_POST['register'])) {
    if(strlen($_POST['cliente_nombre']) >= 1 && 
        strlen($_POST['cliente_dni']) >= 1 &&
        strlen($_POST['cliente_localidad'])
        >= 1) {
      $cliente_nombre = trim($_POST['cliente_nombre']);
      $cliente_dni = trim($_POST['cliente_dni']);
      $cliente_localidad = trim($_POST['cliente_localidad']);
      
      $consulta = "INSERT INTO clientes(cliente_nombre, cliente_dni, cliente_localidad) 
                       values ('$cliente_nombre','$cliente_dni','$cliente_localidad')";

      $resultado=mysqli_query($con,$consulta);
      if ($resultado) {
        ?>
        <h3>te has inscripto</h3>
        <?php 
      }else{/*
        echo "ERRADISIMO MAN";*/
      }
      }
       }
     ?>
<br><br>
<?php include "mod.php" ?>
</body>
</html>
