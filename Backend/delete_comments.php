<?php

session_start();
include 'dbconnection.php';

$tid = $_SESSION['teacher_id'];

if($_SERVER["REQUEST_METHOD"]=="POST"){
  
    $commid=$_POST['commid'];

    $sql="SELECT teach_id FROM comment WHERE comm_id='$commid'";
    $result=$conn->query($sql);

    if($result->num_rows>0){

        $check=$result->fetch_assoc()['teach_id'];

        if($check==$tid){
            $sql="DELETE FROM comment WHERE comm_id='$commid'";

            if ($conn->query($sql) === TRUE) {
                echo"<script>
                alert('Delete the comment successfully !');
                window.location.href='../Frontend/delete_comments.html';
                </script>";
                exit();
            }
            else{ 
                echo "Error: " . $conn->error;
            }
        }
            
        else{
            echo"<script>
                alert('You are NOT allowed to delete the comment');
                window.location.href='../Frontend/delete_comments.html';
                </script>";
                exit();
        }
    }
    else{
         echo"<script>
            alert('The comment :$commid is Not found');
            window.location.href='../Frontend/delete_comments.html';
            </script>";
            exit();
    }
    $conn->close();
}

?>