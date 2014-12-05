<?php
/**
 * Created by PhpStorm.
 * User: Rogelio
 * Date: 13/10/14
 * Time: 07:00 PM
 */
function view($plantilla,$variables=array()){
    extract($variables);
    require_once('views/'.$plantilla.'.tpl.php');
    }
   function controller($nombre){
   if(empty($nombre))
       $nombre ='home';
       $archivo = "controllers/$nombre.php";

       if (file_exists($archivo))
           require_once($archivo);

           else
               echo"Error Archivo no encontrado";
   }
       ?>