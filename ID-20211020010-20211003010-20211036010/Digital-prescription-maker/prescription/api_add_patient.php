<?php
include_once 'inc/db.php';
 

 $name = $_POST['name'];
 $age = $_POST['age'];
 $sex = $_POST['sex'];
 $address = $_POST['address'];
 $date  = date("Y-m-d");

 $in = "INSERT INTO `patient`(`date`, `name`, `age`, `sex`, `address`)
         VALUES ('$date','$name','$age','$sex','$address')";

 $res = mysqli_query($con,$in);
 
 if($res){
    
  $array = array("status"=>"success");
  echo json_encode($array);


 }else{
    $array = array("status"=>"error");
    echo json_encode($array);
 }
  
 
 


?>