<?php
include_once 'inc/db.php';

$s = $_POST['s'];

$sel = "SELECT * FROM `drug_list` where drug_name Like '$s%' ";
$res = mysqli_query($con,$sel);

$array = array();

    while($row = mysqli_fetch_array($res)){

        array_push($array,
        array(
            "drug_name"=>$row['drug_name'],
            "group_name"=>$row['group_name'],
            "mg"=>$row['mg'],
            "company"=>$row['company']
        ));
         


    }


    echo json_encode($array);




?>