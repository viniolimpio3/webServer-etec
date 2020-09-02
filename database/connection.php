<?php
if(!require 'env.php') require 'env.php';
try{
    $con = new PDO("mysql:host=". DB_HOST ."; dbname=". DB, DB_USER, DB_PASS );
    $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
    $con->exec('set names utf8');
}catch(Exception $e){
    echo $e->getMessage();
}
?>