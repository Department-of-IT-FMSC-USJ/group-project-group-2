<?php

include '../db.php';

if($_SERVER['REQUEST_METHOD']=='POST')
{
    $status=$_POST['status'];


    $sql="Insert into date (date,status) values(curdate(), '$status')";

    if($result=$conn->query($sql)=="TRUE")
    {
        header('Location:../../Frontend/home.html');
    }

        
}

?>