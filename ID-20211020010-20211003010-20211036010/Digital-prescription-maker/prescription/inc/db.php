<?php
$con = new mysqli("localhost","root","","prescription");

// Check connection
if ($con -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
else{
   // echo"Mysql server connected";
}
?>