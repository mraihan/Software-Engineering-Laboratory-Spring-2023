<?php
session_start();

include_once 'inc/db.php';
 

 $uuid = $_POST['uuid'];
 $doctor = $_SESSION["uid"];

 $sel = "SELECT * FROM `user` WHERE uuid = '$uuid' and type='Compounder'";
 $res = mysqli_query($con,$sel);

 if(mysqli_num_rows($res)>0){


    $in = "INSERT INTO `compounder`(`doctor`, `compounder`) VALUES ('$doctor','$uuid')";

    $res = mysqli_query($con,$in);
    
    if($res){
       
     $array = array("status"=>"success");
     echo json_encode($array);
   
   
    }else{
       $array = array("status"=>"error","msg"=>"Something went wrong");
       echo json_encode($array);
    }
     
    

 }else{

    $array = array("status"=>"error","msg"=>"No user found with this uuid");
    echo json_encode($array);


 }


 


?>