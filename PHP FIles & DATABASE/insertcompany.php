<?php 
include "configinsert.php";
// REGISTER USER

  
    $name = mysqli_real_escape_string($connect, $_POST['name']);
    $email = mysqli_real_escape_string($connect, $_POST['email']);
    $password = mysqli_real_escape_string($connect, $_POST ['password']);
    $item = mysqli_real_escape_string($connect, $_POST['item']);
  
 
    $query = "INSERT INTO data (name, email ,password,item)
  			  VALUES('$name', '$email','$password','$item')";
    $results = mysqli_query($connect, $query);
    if($results>0)
    {
        echo "user added successfully";
    }
    
    


    
    
    ?>