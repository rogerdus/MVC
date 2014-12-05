<?php
/**
 * Created by PhpStorm.
 * User: Rogelio
 * Date: 16/10/14
 * Time: 08:13 PM
 */
$usuario =new Usuario();
?>
<html>
<head></head>
<body>
   <h1><?=$titulo?></h1>
    <p><?=$contenido?></p>
    <p><??$nombre?></p>
<p><?php
    $usuario->setUsuario();
    $usuario->getUsuario();
    $usuario->consultaGeneral();
    ?>
    ?>
</p>
</body>
</html>