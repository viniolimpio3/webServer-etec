<?php

$con=mysqli_connect("localhost","id2362914_rosa2","bixonca","id2362914_usuario");
 $loginx=$_GET["usuario"];
 $senhax=$_GET["senha"];
 $fotox=$_GET["foto"];


    $comando= "Insert into tab(login,senha,foto) values ('$loginx','$senhax','$fotox')";
    $resulta = mysqli_query($con,$comando);

    if ($resulta!=0) {
       $dados=array("status"=>"ok");
    }
    else
      {   $dados=array("status"=>"erro");


}
$close = mysqli_close($con);
echo json_encode($dados);
?>