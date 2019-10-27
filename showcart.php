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
$sql="SELECT * FROM cart WHERE user='$username'";
$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
echo "<big><b>YOUR CART : </b></big><br><br><br>";
$i=1;
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
    echo "<big>".$i.")Item name : {$row['item_name']} <br>".
         "Price	 :      {$row['amount']} <br> <br></big> ";
		 $i++;
         
} 
?>
<html>
<center>
<br><br>
<br>
<a href="items.html"><b>Items page</b></a> 
</center>
</html>

