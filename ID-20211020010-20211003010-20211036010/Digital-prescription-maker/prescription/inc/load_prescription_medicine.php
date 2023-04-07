<?php
include_once '../inc/db.php';
$pid=$_POST['pid'];
$q="SELECT `id`, `patient_id`, `drug`, `rutine`, `days`, `before_after` FROM `prescription_drug` WHERE patient_id='$pid'";
	$r=mysqli_query($con,$q);
	while($row=mysqli_fetch_array($r))
	{

?>
<div class="row"><div class="col-md-3"><?php echo $row['drug']; ?></div><div class="col-md-3"><?php echo $row['rutine']; ?></div><div class="col-md-3"><?php echo $row['days']; ?></div><div class="col-md-3"><?php echo $row['before_after']; ?></div></div>
<?php } ?>