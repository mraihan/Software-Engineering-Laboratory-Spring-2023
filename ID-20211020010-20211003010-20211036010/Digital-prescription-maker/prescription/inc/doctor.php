<?php  
 
include_once 'inc/db.php';

$uid =  $_SESSION["uid"] ;

$sel = "SELECT * FROM `user` where id ='$uid'";
$res = mysqli_query($con,$sel);
$row = mysqli_fetch_array($res);




?>


<div class="col-sm-4" style="border-right: 1px solid #8080805c;">
        <h5>About Me</h5>
      <div class="fakeimg" style="margin-top:24px"> 

         <img src="img/im.png" width="250"/>

      </div>
      <h3 class="mt-2"><?php echo $row['name'] ?></h3>
      <p><?php  if($type == 'Doctor'){ 
       
        echo $row['sub'];
          
      } ?> </p>
      <p>UID : <?php echo $row['id'] ?></p>
      </div>