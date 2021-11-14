<? php
require_once 'script/pdocrud.php' ;
$pdocrud = new PDOCrud(false ,"pure","pure");//create object of PDOCrud Class

// change the type of the class_id field from textfield to select dropdown
$pdocrud->fieldTypes("student_class_id", "select");

//$pdocrud->fieldDataBinding("student_class_id", $options, "", "","array");
$pdocrud->fieldDataBinding("student_class_id", "tblClasses", "class_id", "class_description","db");


$pdocrud->joinTable("tblClasses", "tblClasses.class_id=tblStudents.student_class_id", "INNER JOIN");
$pdocrud->crudTableCol(array("student_id", "student_name","class_description"));
$pdocrud->formRemoveFields(array("class_description"));


echo $pdocrud->dbTable("tblStudents")->render(); // call render function on database table

?>
