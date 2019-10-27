<?php
$con=@mysql_connect("localhost","root","") or die('could not connect to database');
$db=@mysql_select_db("shop",$con)or die(mysql_error());

$username=$_POST['username'];
$item_no=$_POST['item_no'];
if(!empty($username) && !empty($item_no)){
$q1=@mysql_query("select * from items where itemno = '$item_no'");
$q2 = @mysql_fetch_array($q1) or die(mysql_error());
$amt = $q2['price'];
$name = $q2['item_name'];
$query="insert into cart values(NULL,'$username','$item_no','$name',$amt)";
$res=@mysql_query($query)or die(mysql_error());
if($res>=0)
{
echo'<br><br><center><big><b><h2>Added to cart !!</h2></b></big></center><br>';
}
}
?>
<html>
<center>
<br><br>
<a href="index.html"><b>Home page</b></a> 
<br><br><br>
<a href="items.html"><b>Items page</b></a> 
</center>
</html>