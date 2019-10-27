<?php
$con=@mysql_connect("localhost","root","") or die('could not connect to database');
$db=@mysql_select_db("shop",$con)or die(mysql_error());

$username=$_POST['username'];
if(!empty($username)){
$q1=@mysql_query("select user,sum(amount) as total from cart where user = '$username'");
$q2 = @mysql_fetch_array($q1) or die(mysql_error());
$amt = $q2['total'];
$name = $q2['user'];
$query="insert into bill values('$name','$amt')";
$res=@mysql_query($query)or die(mysql_error());
if($res>=0)
{
echo'<br><br><center><big><b>ORDER MADE !!</big></center><br>';
}
}
?>
<html>
<center>
<br><br><br>
<form method="post" action="bill.html">
<input type="submit" value="Show BILL"></form>
<br><br>
<a href="index.html"><b>Home page</b></a> 
<br><br><br>
<a href="items.html"><b>Items page</b></a> 
</center>
</html>