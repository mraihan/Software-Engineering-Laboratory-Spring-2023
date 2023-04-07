
<?php  
session_start();

if($_SESSION["uid"] == ''){

   header("Location:login.php");

}
include_once 'inc/db.php';
?>
 

<?php include_once("inc/header.php") ?>

<div class="container mt-5">
  <div class="row">
    

    <?php include_once("inc/doctor.php") ?>
     

    <div class="col-sm-8" >

     <div style="padding:16px;background:#f0f0f0;border-radius:8px;margin-left:20px">
     <h3>Add Patient</h3>
     <form action="" method="post" id="addPatient">
            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Patient's Name:</label>
                <input type="text" class="form-control" id="name"   placeholder="Enter name" name="name" required="">
            </div>

            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Patient's age:</label>
                <input type="number" class="form-control" id="age" placeholder="Enter age" name="age" required="">
            </div>

            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Patient's sex:</label>
                 <select  class="form-control"  name="sex">
                    <option value="Female">Female</option>
                    <option value="Male">Male</option>
                    <option value="Other">Other</option>
                 </select>
            </div>
            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Patient's address:</label>
                  <textarea  id="address" class="form-control" placeholder="Enter address" name="address" required=""></textarea>
            </div>

            <div class="mb-3 mt-3">
                <label for="email" class="form-label">Doctor:</label>
                 <select  class="form-control"  name="doctor">
                  <?php

                  $uuid =  $_SESSION["uuid"] ;

                  $doc = "SELECT *,(select `name` from user where user.id = compounder.doctor) as `name` FROM `compounder` where compounder = '$uuid'";
                  $res = mysqli_query($con,$doc);
                  while($r = mysqli_fetch_array($res)){

                        echo '<option value="'.$r['doctor'].'">'.$r['name'].'</option>';        

                   }
                  
                  
                  ?>
 
                 </select>
            </div>

 
            <button type="submit" name="add" class="btn btn-primary">Add patient</button>
         

         </form>
    </div>


       
      
    </div>
  </div>
</div>

<?php include_once("inc/footer.php") ?>



