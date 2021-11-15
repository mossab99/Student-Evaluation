<?php
require_once 'script/pdocrud.php' ;
$pdocrud = new PDOCrud(false ,"pure","pure");//create object of PDOCrud Class

// change the type of the class_id field from textfield to select dropdown
$pdocrud->fieldTypes("subject_class_id", "select");
$pdocrud->fieldTypes("subject_teacher_id", "select");


$pdocrud->fieldDataBinding("subject_class_id", "tblClasses", "class_id", "class_description","db");

$pdocrud->fieldDataBinding("subject_teacher_id", "tblTeachers", "teacher_id", "teacher_name","db");



$pdocrud->joinTable("tblClasses", "tblClasses.class_id=tblSubjects.subject_class_id", "INNER JOIN");
$pdocrud->joinTable("tblTeachers", "tblTeachers.teacher_id = tblSubjects.subject_teacher_id", "INNER JOIN");
$pdocrud->crudTableCol(array("subject_id", "subject_description","class_description","teacher_name"));



$pdocrud->formRemoveFields(array("class_description","teacher_name"));


echo $pdocrud->dbTable("tblSubjects")->render(); // call render function on database table

?>
