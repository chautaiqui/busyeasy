<?php
$con=@mysql_connect("localhost","root","") or die('could not connect to database');
$db=@mysql_select_db("shop",$con)or die(mysql_error());

$title=$_POST['title'];
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$gen=$_POST['gen'];
$username=$_POST['username'];
$pass=$_POST['pass'];
$email=$_POST['email'];
$bank=$_POST['bank'];
$acc_no=$_POST['acc_no'];
$phone=$_POST['phone'];
$add=$_POST['add'];
$city=$_POST['city'];
$coun=$_POST['coun'];
$dob=$_POST['dob'];

$query="insert into customer values('$title','$fname','$lname','$gen','$username','$pass','$email','$bank','$acc_no','$phone','$add','$city','$coun','$dob')";
$res=@mysql_query($query)or die(mysql_error());
if($res>=0)
{
echo'<br><br><center><b><big<big><h2>Registeration Successful !!</h2></big></big></big></center><br>';
}

?>
<html>
<center>
<br><br>
<a href="index.html"><b>home page</b></a>
</center>
</html>