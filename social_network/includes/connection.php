<?php 
$host='localhost';
$username='root';
$dp='social_network';
$password='';
$con= new mysqli($host,$username,$password,$dp);
if($con->connect_error) 
echo 'error';
?>