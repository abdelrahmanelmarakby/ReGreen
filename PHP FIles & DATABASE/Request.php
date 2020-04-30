<?php 
include "configinsert.php";
// REGISTER USER

  
    $name = mysqli_real_escape_string($connect, $_POST['name']);
    $email = mysqli_real_escape_string($connect, $_POST['email']);
    $password = mysqli_real_escape_string($connect, $_POST ['location']);
	$phone = mysqli_real_escape_string($connect, $_POST['phone']);
	$item=mysqli_real_escape_string($connect,$_POST['item']);
	$quantity=mysqli_real_escape_string($connect,$_POST['quantity']);
	
 
        $query = "INSERT INTO `requests` (`name`, `email` ,`location`,`phone`,`item`,`quantity`)
  			  VALUES('$name', '$email','$password','$phone','$item','$quantity')";
    $results = mysqli_query($connect, $query);
    if($results>0)
    {
        echo "user added successfully";
    }
    
    


    
    
    ?>