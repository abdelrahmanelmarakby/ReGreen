<?php 
include "configinsert.php";
// REGISTER USER

  
    $name = mysqli_real_escape_string($connect, $_POST['name']);
    $email = mysqli_real_escape_string($connect, $_POST['email']);
    $password = mysqli_real_escape_string($connect, $_POST ['password']);
    $phone = mysqli_real_escape_string($connect, $_POST['phone']);
  
 
        $query = "INSERT INTO user (name, email ,password,phone)
  			  VALUES('$name', '$email','$password','$phone')";
    $results = mysqli_query($connect, $query);
    if($results>0)
    {
        echo "user added successfully";
    }
    
    


    
    
    ?>