<?php

session_start();
include 'db.php';

$tid = $_SESSION['teacher_id'];

if($_SERVER["REQUEST_METHOD"]=="POST"){
         
    $class=$_POST['class'];
    $stuname=$_POST['stuname'];
    $stu_id=$_POST['stuid'];
    $comm=$_POST['comment'];

    $sql= "SELECT stu_id,f_name FROM student WHERE stu_id='$stu_id'";
    $result=$conn->query($sql);          

    if($result->num_rows>0){
        $value=$result->fetch_assoc()['f_name'];
        if($value==$stuname){
        
            $sql="SELECT class_name FROM student_class WHERE stu_id='$stu_id'";
            $result=$conn->query($sql);
            $value=$result->fetch_assoc()['class_name'];
            if($value==$class){

                $sql="INSERT INTO comment(stu_id,teach_id,comment)
                VALUES('$stu_id' , '$tid' , '$comm')";
                if($conn->query($sql)==TRUE){
                    echo "<script>
                    alert('Add the comment successfully !' );
                    window.location.href='../Frontend/add_comments.html';
                    </script>";
                    exit();
                }
                else{
                    echo "error" . $conn->error;
                }  
            }

            else{
                echo"<script>
                alert('Student Class missmatch student ID: $stu_id is not enrolled to the class: $class');
                window.location.href='../Frontend/add_comments.html';
                </script>";
                exit();
            }
        }
        else{
            echo"<script>
                alert('Student Name: $stuname and Student ID:$stu_id is not matched');
                window.location.href='../Frontend/add_comments.html';
                </script>";
                exit();
        }   
    }
    else{
        echo"<script>
            alert('No student from student ID: $stu_id');
            window.location.href='../Frontend/add_comments.html';
            </script>";
            exit();
    }

    $conn->close();
}

?>


