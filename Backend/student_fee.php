<?php
session_start();

include '../db.php';

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    $stuId=$_POST['stu'];
}

$_SESSION['stuID']=$stuId;

header("Location: ../Frontend/fee_status.html");

?>