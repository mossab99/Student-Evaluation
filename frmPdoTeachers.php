<?php
require_once 'script/pdocrud.php' ;
$pdocrud = new PDOCrud(false ,"pure","pure");//create object of PDOCrud Class
echo $pdocrud->dbTable("tblTeachers")->render(); // call render function on database table

?>
