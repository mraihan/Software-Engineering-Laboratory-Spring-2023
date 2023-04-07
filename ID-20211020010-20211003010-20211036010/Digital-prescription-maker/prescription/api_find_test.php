<?php
include_once 'inc/db.php';

$s = $_POST['s'];

$sel = "SELECT * FROM `test` where `name` Like '$s%' ";
$res = mysqli_query($con,$sel);

$array = array();

    while($row = mysqli_fetch_array($res)){

        array_push($array,
        array(
            "name"=>$row['name'],
            
        ));
         


    }


    echo json_encode($array);




?>