<?php
	include_once '../inc/db.php';
$pid=$_POST['pid'];
$name=$_POST['name'];
$time=$_POST['time'];
$when=$_POST['when'];
$day=$_POST['day'].' days';
	echo$q="INSERT INTO `prescription_drug`( `patient_id`, `drug`, `rutine`, `days`, `before_after`) VALUES ('$pid','$name','$time','$when','$day')";
	$r=mysqli_query($con,$q);
	if($r){
		echo"insert";
	}
?>
