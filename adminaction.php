<?php
include 'dbconnection.php';
$id=$_POST['id'];
$a=$_POST['amt'];
$sql=mysqli_query($con,"update tbl_book set amt='$a' where bkid='$id'");
echo "<script>alert('Added');window.location='viewuser.php';</script>";
?>