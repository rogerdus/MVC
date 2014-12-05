<?php
/**
 * Created by PhpStorm.
 * User: Rogelio
 * Date: 16/10/14
 * Time: 08:08 PM
 */
$usuario = new Usuario();
$titulo = "Bienvenido a My usuarios";
$contenido = "Contenido de la variable.....";
$variables =
    array('titulo'=>$titulo,'contenido'=>$contenido,'nombre'=>$usuario->setUsuario());
	view('usuarios',$variables);
