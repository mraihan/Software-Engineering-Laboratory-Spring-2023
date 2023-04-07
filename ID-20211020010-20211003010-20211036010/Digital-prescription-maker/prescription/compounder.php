
<?php  
session_start();

if($_SESSION["uid"] == ''){

   header("Location:login.php");

}

$uid = $_SESSION["uid"];


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
    <div style="font-size:18px;font-weight:600">Compounder list <button class="btn btn-success" style="float:right" data-bs-toggle="modal" data-bs-target="#myModal">Add</button></div>
    <ul class="list-group list-group-flush" style="margin-top:32px">
    <?php 
    
    $sel = "SELECT *,(select name from user where user.uuid=compounder.compounder) as name FROM `compounder` where doctor = '$uid' order by id desc";
    $res = mysqli_query($con,$sel);
    
    while($row = mysqli_fetch_array($res)){

       echo '
          <li class="list-group-item">
           <a href="#" class="href">
           <div style="font-size:18px;font-weight:600">'.$row['name'].'</div>
           <div>UUID: '.$row['compounder'].'</div>
           </a>
          </li>';


    }
    
    
    
    ?>
        
       
   </ul>

 

     </div>
  </div>
</div>
<!-- The Modal -->
<div class="modal fade" id="myModal">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Add compounder</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
     
                    <form action="" method="post" id="compounder">
                    <div class="mb-3 mt-3">
                        <label for="email" class="form-label">ENTER UUID:</label>
                        <input type="number" class="form-control" id="uuid" placeholder="Enter uuid" name="uuid">
                    </div>
                    <button type="submit" class="btn btn-primary">Add</button>
                    </form>

      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>


<?php include_once("inc/footer.php") ?>

