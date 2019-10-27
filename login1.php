<?php
$con = @mysql_connect("localhost","root","");
 
if (!$con)
{
  die('Could not connect: ' . mysql_error());
}
 $db=@mysql_select_db("shop",$con) or die("Failed to connect to MySQL: " . mysql_error());
$username = $_POST['username'];
$pass = $_POST['password'];
 if(!empty($username)) {
 $query = @mysql_query("SELECT * FROM customer where username = '$username' AND pass = '$pass'")
 or die();
 $row = mysql_fetch_array($query) or die('<h2>Invalid Username or password !!</h2>');
 if(!empty($row['username']) AND !empty($row['pass'])) {
	header('Location:items.html'); 
	}
	else { 
	echo "SORRY... YOU ENTERD WRONG ID AND PASSWORD... PLEASE RETRY...";
	 } 
}

?>
