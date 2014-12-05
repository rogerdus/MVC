<?php
require_once("./template/header.php");	
require_once("./db/db.php");
require_once("./Clases/Usuario.php");
if (!isset($_POST['usuario']) AND !isset($_POST['password'])){
	$msg='los campos deben ir llenos';
		print"<meta http-equiv='refresh' content='0;
		url=index.php?msg=$msg'>";
		exit;
}
else{
			// creamos un objeto instanciando la clase Clase
			$objUsuario = new Usuario();
			// en la variable $respuesta guardamos lo que nos devuelva la consulta
			$user = $_POST["usuario"];
			$psw = $_POST["password"];
			$respuesta = $objUsuario->login($user,$psw);
			// realizamos una condicion, si $respuesta es 1 existe, de lo contrario no esta en la base de datos
			if($respuesta==0){
				$msg='los campos deben ir llenos';
				print"<meta http-equiv='refresh' content='0;
				url=index.php?msg=$msg'>";
				exit;
			}
			else{
				if($respuesta==1){
						print"<meta http-equiv='refresh' content='0;
						url=index.php?home'>";
						exit;
				}
			}
	}	
?>

