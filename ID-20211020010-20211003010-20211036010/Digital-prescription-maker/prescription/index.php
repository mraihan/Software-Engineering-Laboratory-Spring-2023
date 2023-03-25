
<?php  
session_start();

if($_SESSION["uid"] == ''){

   header("Location:login.php");

}
include_once 'inc/db.php';
?>
 
 <style>

 .href{
   text-decoration: none;
   color:black
 }

 </style>

<?php include_once("inc/header.php") ?>

<div class="container mt-5">
  <div class="row">
 
    <?php include_once("inc/doctor.php") ?>
   
    <div class="col-sm-8" style="padding-left:32px">
    <h4>Patients list</h4>
    <ul class="list-group list-group-flush">
    <?php 
    
    $sel = "SELECT * FROM `patient` order by id desc";
    $res = mysqli_query($con,$sel);
    
    while($row = mysqli_fetch_array($res)){

       echo '
          <li class="list-group-item">
           <a href="/prescription/prescription.php?pid='.$row['id'].'" class="href">
           <div style="font-size:18px;font-weight:600">'.$row['name'].'</div>
           <div>'.$row['date'].'</div>
          </li>';


    }
    
    
    
    ?>
        
       
   </ul>

 

     </div>
  </div>
</div>

<?php include_once("inc/footer.php") ?>


