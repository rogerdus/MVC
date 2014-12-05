<?php
require_once("./db/db.php");
require_once("./clases/Usuario.php");
require_once("helpers.php");
require_once("./template/header.php");	
require_once("./template/menu.php");	
if(empty($_GET['url']))
    $_GET['url'] = 'home';
    controller($_GET['url']);

require_once("./template/footer.php");
