<?php
include 'dbconnection.php';
$n=$_POST['name'];
$e=$_POST['email'];
$c=$_POST['cno'];
$an=$_POST['ano'];
$adr=$_POST['address'];
$ps=$_POST['password'];
$s=mysqli_query($con,"select * from tbl_register where email='$e'");
$r=mysqli_fetch_array($s);
$em=$r['email'];
if($e==$em)
{
    echo "<script>alert('Already Registered');window.location='user.php';</script>";
}
else
{
    $sql=mysqli_query($con,"insert into tbl_register(name,email,cno,ano,address)values('$n','$e','$c','$an','$adr')");
    $q=mysqli_query($con,"select max(rid) as uid from tbl_register");
    $rt=mysqli_fetch_array($q);
    $uid=$rt['uid'];
    $sq=mysqli_query($con,"insert into tbl_loginn(uid,uname,upass,utype)values('$uid','$e','$ps','User')");
    echo "<script>alert('Successfully Registered');window.location='login.php';</script>";
}
?>