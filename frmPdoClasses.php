<?php
require_once 'script/pdocrud.php' ;
$pdocrud = new PDOCrud(false ,"pure","pure");//create object of PDOCrud Class

// get classes
$data =  $pdocrud->getPDOModelObj()->select("tblClasses");




echo $pdocrud->dbTable("tblClasses")->render(); // call render function on database table

?>
