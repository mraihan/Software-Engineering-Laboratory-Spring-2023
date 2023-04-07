
<?php  
session_start();

if($_SESSION["uid"] == ''){

   header("Location:login.php");

}
include_once 'inc/db.php';

$uid =  $_SESSION["uid"] ;

if(isset($_POST['submit'])){

     $name = $_POST['name'];
     $name_bn = $_POST['name_bn'];
     $sub = $_POST['sub'];
     $sub_bn = $_POST['sub_bn'];

     $mob = $_POST['mob'];
     $mob_bn = $_POST['mob_bn'];

 
      $up = "UPDATE `user` SET  `name`='$name'  ,`sub`='$sub',`mob`='$mob',`name_bn`='$name_bn',`sub_bn`='$sub_bn',`mob_bn`='$mob_bn' WHERE id = '$uid'";
  
      mysqli_query($con,$up); 

}




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
    <h4>Edit</h4>



 <form action="" method="post">


  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Name:</label>
    <input type="text" class="form-control" value="<?php echo $row['name'] ?>"  placeholder="Name" name="name">
  </div>

 <div class="mb-3 mt-3">
    <label for="email" class="form-label">Name (Bangla):</label>
    <input type="text" class="form-control" value="<?php echo $row['name_bn'] ?>"  placeholder="Name (Bangla)" name="name_bn">
  </div>

  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Subtitle:</label>
    <input type="text" class="form-control" value="<?php echo $row['sub'] ?>"  placeholder="Sub" name="sub">
  </div>

  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Subtitle (Bangla):</label>
    <input type="text" class="form-control" value="<?php echo $row['sub_bn'] ?>"  placeholder="Sub (Bangla)" name="sub_bn">
  </div>

  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Mobile:</label>
    <input type="text" class="form-control" value="<?php echo $row['mob'] ?>"  placeholder="Mobile" name="mob">
  </div>

  <div class="mb-3 mt-3">
    <label for="email" class="form-label">Mobile (Bangla):</label>
    <input type="text" class="form-control" value="<?php echo $row['mob_bn'] ?>"  placeholder="Mobile (Bangla)" name="mob_bn">
  </div>

 
  <button type="submit" name="submit" class="btn btn-primary">Submit</button>


</form>
 

 

     </div>
  </div>
</div>

<?php include_once("inc/footer.php") ?>


