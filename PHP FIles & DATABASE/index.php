<?php
require_once __DIR__ . '/config.php';
class API{
function select(){
    $db=new Connect;
    $users = array();
    $data = $db->prepare('SELECT * from doctor ORDER BY id');
    $data ->execute();
    while($Outputdata=$data->fetch(PDO::FETCH_ASSOC)){

        $users[]=array(
            
            'id'  =>  $Outputdata['id'],
            'name'=>$Outputdata['name'],
            'email'=>$Outputdata['email'],
            'password'=>$Outputdata['password'],
            'phone'=>$Outputdata['phone'],
            
            
            

        
        );
    }
return json_encode($users);
}
}



$API=new API;
header('Content-Type:application/json');
echo $API->select();

?>