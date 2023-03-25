
<?php  
session_start();

if($_SESSION["uid"] == ''){

   header("Location:login.php");

}
include_once 'inc/db.php';
?>
<style>

 .prescription{
   border-radius : 16px;
   border:1px solid gray;
   padding:16px;
 }
 .p-header{
   display:flex;

 }
 .hr{
   border-top:1px solid #8080805c;
   margin-top: 16px;
   margin-bottom:16px;
 }
  
</style>
 

<?php include_once("inc/header.php") ?>

<?php 
  
    $pid = $_GET['pid'];
    
    $sel = "SELECT * FROM `patient` where id = '$pid'";
    $res = mysqli_query($con,$sel);
    
    $row = mysqli_fetch_array($res);


    ?>

<div class="container mt-5">
  <div class="row">
 
    <?php include_once("inc/doctor.php") ?>
   
    <div class="col-sm-8" style="padding-left:32px">
    <h4>Prescription</h4>
 

       <div class="prescription">

           <div class="p-header">
                <div class="h-name">
                  <div><h4>Dr. Md. Riaz</h4></div>
                  <div><h6>Brain, Spine Specialist, and Surgeon</h6></div>
                  <div>Mob:+880143794883</div>
                </div>
           </div>
           <div class="hr"></div>

           <div class="row">
              <div class="col-md-4" style="border-right: 1px solid #8080805c;">
                <p>Name : <?php echo $row['name'] ?></p>
                <p>Age : <?php echo $row['age'] ?> years </p>
                <p>Address : <?php echo $row['address'] ?></p>
                <p>Date : <?php echo $row['date'] ?></p>
              </div>  
              <div class="col-md-8" style="padding-left:32px">

                  <div>
                      <P>Napa extra</P>
                      <div>YES-NO-YES</div>
                  </div>
                  <div>
                      <P>Napa extra</P>
                      <div>YES-NO-YES</div>
                  </div>
                  <div>
                      <P>Napa extra</P>
                      <div>YES-NO-YES</div>
                  </div>
              
              
              </div>  
           </div>

       </div>

        <div align="right" style="padding-top:24px">
          <button class="btn btn-success">Print Prescription</button>
        </div>
  
     </div>
  </div>
</div>

<?php include_once("inc/footer.php") ?>


