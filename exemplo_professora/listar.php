<?php
$con=mysqli_connect("localhost","id2362914_rosa2","bixonca","id2362914_usuario");
 

$comando= "select * from tab";
$resulta = mysqli_query($con,$comando);
 $dados=array();
while($r = mysqli_fetch_array($resulta)){
 $dados[]=array("login"=>$r[0],"senha"=>$r[1],"foto"=>$r[2]);
}
$close = mysqli_close($con);
echo json_encode($dados);
?>