<?php   

$conn=mysqli_connect('localhost','root','','regreen');

$username=$_POST['name'];
$password=$_POST['password'];

$res =$conn->query("SELECT * FROM user WHERE email='$username' AND password='$password'");

$arr =array();

while($row=$res->fetch_assoc()){
	$arr=$row;
}
echo json_encode($arr);


?>  