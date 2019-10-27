<?php
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$conn = @mysql_connect($dbhost, $dbuser, $dbpass);
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
mysql_select_db('shop');
$username=$_POST['username'];
$sql="SELECT item_name,amount FROM cart WHERE user='$username'";
$sql1="SELECT total from bill WHERE b_id='$username'";
$retval = mysql_query( $sql, $conn );

if(! $retval )
{
   die('Could not get data: ' . mysql_error());
}
echo "<big><b>YOUR BILL : </b></big><br><br><br>";
$i=1;
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "<big>".$i.")Item name : {$row['item_name']} <br>".
         "Price	 : {$row['amount']} <br> <br></big> ";
		 $i++;
         
} 
$retval1 = mysql_query( $sql1, $conn );
$total=mysql_fetch_array($retval1, MYSQL_ASSOC);
echo "<br><big><big>Total : {$total['total']}</big></big><br>";
?>

<html>
<center>
<br><br>
<br>
<a href="index.html"><b>Home page</b></a>
<br><br>
<a href="items.html"><b>Items page</b></a> 
</center>
</html>

