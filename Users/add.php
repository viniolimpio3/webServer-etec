<?php 
if(!require '../database/connection.php') require '../database/connection.php';


$login = $_POST['login'];
$pass = $_POST['password'];
$photo = $_POST['photo'];

try{
    $query = "insert into user(login, senha, foto) values ('$login','$pass', '$photo');";
    $c = $con->prepare($query);
    $data['status'] = $c->execute() and $c->rowCount() > 0 ? true : false;
    return json_encode($data);
}catch(PDOException $e){
    header('HTTP/2.0 400 Bad Request');
}