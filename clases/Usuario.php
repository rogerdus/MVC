<?php
class Usuario {
private $name;
private $usuario;
	private $password;
	private $id;
	public function login($usuario,$password){
	//$usuario
	 //8 elimina inyecciones
	 if($usuario==NULL and $password==NULL){
		 $msg='los campos deben ir llenos';
		print"<meta http-equiv='refresh' content='0;n
		url=index.php?msg=$msg'>";
		exit;
	 }
  $sql="SELECT id,usuario FROM usuario WHERE usuario ='".mysql_real_escape_string($usuario)."' AND Contrasena ='".mysql_real_escape_string($password)."'";
   $res=mysql_query($sql) OR  DIE ("Error de consulta".mysql_error());
  if( mysql_num_rows( $res ) == 0 ){  
   // si es 0 filas, no hay usuario o password valido
   return 0;
    exit;
  }else{

   // de lo contrario se guarda en un arrar lo que devuelve la consulta
	   if( $reg = mysql_fetch_array( $res ) ){
				$usuario = $reg["usuario"];
				$idu = $reg["id"];
		setCookie('usuario',$usuario,time()+7200,'/');
        setCookie('id',$idu,time()+7200,'/');////tiempo de cookie
		 session_start();
		// se crean dos sesiones, una para mostrar el nombre de usuario del sistema y la otra para guardar en las tablas lo que realiza el usuario del sistema (integridad referencial)
		$_SESSION["sesion_usuario"] = $reg["usuario"];
		$_SESSION["sesion_id"] = $reg["id"];
		// se devuelve 1 para indicar que se logueo exitosamente
		return 1; 
	   }///fin if 
  }///fin else 
 }///fin funcion 
    public  function getUsuario(){
        echo"<br> Mostrar Usuario:".$this->name;
    }
    public  function  setUsuario(){
    }
    public  function consultaGeneral(){
        $sql01="SELECT * FROM usuario WHERE estatus = 1 ORDER BY ApellidoPaterno ASC ;";
        $result01= mysql_query($sql01) OR DIE ("Error En Consulta".mysql_error());
        echo"<div id='table-responsive'>";
        echo"<table class='table table-striped'>";
        echo"<tr> <td colspan='5' align='center'><strong>Lista de Usuarios</strong></strong></td></tr>";
        echo"<tr> <th>Id</th><th>Nombre</th><th>Apellido Paterno</th><th>Apellido Materno</th><th>Status</th> </tr>";
        while($field = mysql_fetch_array($result01)){
            $this->Id = $field['id'];
            $this->Nombre = $field['Nombre'];
            $this->ApellidoPaterno = $field['ApellidoPaterno'];
            $this->ApellidoMaterno = $field['ApellidoMaterno'];
            $this->Nivel = $field['Nivel'];
            switch($this->Nivel){
                case 1:
                    $type= "Administrador";
                    break;
                case 2:
                    $type = "Maestro";
                    break;
                case 3:
                    $type = "Alumno";
                    break;
            }///fin switch
            $type=1;
            echo"<br>";
            echo"<tr><th>$this->Id</th><th>$this->Nombre</th><th>$this->ApellidoPaterno</th><th>$this->ApellidoMaterno</th><th>$type</th></tr>";
        }///fin while
        echo"</table>";
        echo"</div>";
    }


} 