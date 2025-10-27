<?php

session_start();
include 'db.php';

$tid = $_SESSION['teacher_id'];


if($_SERVER["REQUEST_METHOD"]=="POST"){

    $commid=$_POST['commid'];
    $new_value=$_POST['newcomm'];

    $sql="SELECT teach_id FROM comment WHERE comm_id ='$commid'";
    $result=$conn->query($sql);

    if($result->num_rows>0){
        $check=$result->fetch_assoc()['teach_id'];
    
        if($check==$tid){

            $sql="UPDATE comment 
            SET comment='$new_value'
            WHERE comm_id='$commid'";

            if ($conn->query($sql) === TRUE) {
                echo"<script>
                alert('Update the comment successfully !');
                window.location.href='../Frontend/edit_comments.html';
                </script>";
                exit();
            }
            else{ 
                echo "Error: " . $conn->error;
            }
        }
        else{
            echo"<script>
            alert('You are NOT allowed to edit the comment');
            window.location.href='../Frontend/edit_comments.html';
            </script>";
            exit();
        }
    }
    else{
        echo"<script>
        alert('The comment :$commid is Not found');
        window.location.href='../Frontend/edit_comments.html';
        </script>";
        exit();
    }
    $conn->close();
}
?>