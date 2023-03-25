
<?php  
session_start();

if($_SESSION["uid"] != ''){

   header("Location:index.php");

}
 
include_once 'inc/db.php';

if(isset($_POST['login'])){

 
  $email = $_POST['email'];
  $password = $_POST['password'];

  $sel = "SELECT * FROM `user` where email='$email' and password='$password'";
  $res = mysqli_query($con,$sel);
  $row = mysqli_fetch_array($res);

   if($res){


      if(mysqli_num_rows($res)>0){
 
        $_SESSION["uid"] =$row['id'];
     
        header("Location:index.php");
 
      }
   }





}
 


?>



<!DOCTYPE html>
<html lang="en">
<head>
  <title>Digital prescription</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
  body {
    
    background: #aaa;
  }
  </style>
</head>
<body  >

<div class="container mt-5" >

          <div style="width: 400px;padding:16px;background:#fff;margin:auto">

                 <h2>Login</h2>

                <form action="" method="post">
                <div class="mb-3 mt-3">
                  <label for="email" class="form-label">Email:</label>
                  <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                </div>
                <div class="mb-3">
                  <label for="pwd" class="form-label">Password:</label>
                  <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
                </div>
                <div class="form-check mb-3">
                  <label class="form-check-label">
                    Don't have account ? <a href="/prescription/signup.php">Signup</a>
                  </label>
                </div>
                <button type="submit" name="login" class="btn btn-primary">Login Now!</button>
              </form>

          </div>
 
</div>
 
 

</body>
</html>


