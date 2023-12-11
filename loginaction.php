<?php
session_start();
include 'dbconnection.php';
$uname=$_POST['uname'];
$upass=$_POST['password'];
$t=mysqli_query($con,"select * from tbl_loginn where uname='$uname' and upass='$upass'");
$a=mysqli_fetch_array($t);
session_start();
if ($a['utype'] == "admin") {
    $_SESSION['uid'] = $a['uid'];
    echo "<script>alert('Welcome " . $a['uname'] . "');window.location='adminhome.php';</script>";
}

else if($a['utype']=="User")
{
    $_SESSION['uid']=$a['uid'];
    echo"<script>alert('Welcome User');window.location='userhome.php';</script>";
}

else
{
   echo"<script>alert('Invalid Username or Password');window.location='index.html';</script>";
}

?>
