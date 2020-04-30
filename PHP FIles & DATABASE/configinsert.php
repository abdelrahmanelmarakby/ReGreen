<?php
$host="localhost";
$username="root";//change username 
$password=""; //change password
$db_name="regreen"; //change databasename

$connect=mysqli_connect($host,$username,$password,$db_name);

if(!$connect)
{
	echo json_encode("Connection Failed");
}

?>