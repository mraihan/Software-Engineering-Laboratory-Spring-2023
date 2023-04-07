<?php
session_start();
include_once 'inc/db.php';
 

 $name = $_POST['name'];
 $age = $_POST['age'];
 $sex = $_POST['sex'];
 $address = $_POST['address'];
 $date  = date("Y-m-d");
 $doctor = $_POST['doctor'];
 $added_by =  $_SESSION["uid"] ;

 $in = "INSERT INTO `patient`(`date`, `name`, `age`, `sex`, `address`,`doctor`,`added_by`)
         VALUES ('$date','$name','$age','$sex','$address','$doctor','$added_by')";

 $res = mysqli_query($con,$in);
 
 if($res){
    
  $array = array("status"=>"success");
  echo json_encode($array);


 }else{
    $array = array("status"=>"error");
    echo json_encode($array);
 }
  
 
 


?>