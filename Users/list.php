<?php 
if(!require '../database/connection.php') require '../database/connection.php';

try{
    $query = "select * from user";
    $c = $con->prepare($query);
    if($c->execute() and $c->rowCount() > 0){
        while($row = $c->fetch(PDO::FETCH_OBJ)){
            $data['user'] = array(
                'login' => $row->login,
                'foto' => $row->foto,
                'senha' => $row->senha
            );
        }
    }else{
        $data['user'] = false;
    }
    print_r(json_encode($data));
    return json_encode($data);

}catch(PDOException $e){
    print_r($e->getMessage());
    header('HTTP/2.0 400 Bad Request');
}