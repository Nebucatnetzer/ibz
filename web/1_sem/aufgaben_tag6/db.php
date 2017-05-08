<?php
// Enter your Host, username, password, database below.
// I left password empty because i do not set password on localhost .
$con = mysqli_connect("localhost","school_db_user","password","schooldb","3306");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
