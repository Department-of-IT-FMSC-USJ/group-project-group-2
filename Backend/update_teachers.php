<?php

include "dbconnection.php";

if($_SERVER["REQUEST_METHOD"]=="POST"){

    $tid=$_POST['teachid'];
    $column_name=$_POST['column_name'];
    $new_values=$_POST['new_value'];

    $sql="SELECT teach_id FROM teacher WHERE teach_id='$tid'";
    $result=$conn->query($sql);

    if($result->num_rows>0){

        $sql = "UPDATE teacher 
        SET $column_name='$new_values'
        WHERE teach_id='$tid' ";

        if ($conn->query($sql) === TRUE) { 
            echo"<script>
            alert('Update teacher's information successfully !');
            window.location.href='../Frontend/update_teachers.html';
            </script>";
            exit();
        }
        else{ 
            echo "Error: " . $conn->error;
    } 
    }
    else{

        echo"<script>
            alert('Teacher ID :$tid is Not found');
            window.location.href='../Frontend/update_teachers.html';
            </script>";
            exit();
    }
    $conn->close();

}
?>