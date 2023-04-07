<?php  
 

$type = $_SESSION["type"];
 
 
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Digital prescription</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="/prescription/asset/notiflix/dist/notiflix-3.2.6.min.css" />
</head>
<body>

<div class="p-5 bg-danger text-white text-center">
  <h1>Welcome to digital prescriptions</h1>
  <p>Create fully digital prescription for your patients</p> 
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">



      <?php 

       if($type == 'Doctor'){ ?>
             <li class="nav-item">
        <a class="nav-link" href="/prescription/">Patients</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Prescriptions</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/prescription/compounder.php">Compounder</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/prescription/edit_profile.php">Edit profile</a>
      </li>
      <?php }else{ ?>

        <li class="nav-item">
        <a class="nav-link" href="/prescription/add_patient.php">Add patients</a>
        </li>

        <li class="nav-item">
        <a class="nav-link" href="/prescription/doctor.php">Doctor</a>
        </li>

      <?php } ?>
 
      <li class="nav-item">
        <a class="nav-link" href="/prescription/logout.php">Logout</a>
      </li>
    </ul>
  </div>
</nav>