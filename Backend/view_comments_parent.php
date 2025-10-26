<?php

session_start();
include 'dbconnection.php';

$pid = $_SESSION['parent_id'];

if($_SERVER["REQUEST_METHOD"]=="POST"){

    $stuid=$_POST['stuid'];

    $sql="SELECT parent_id FROM student WHERE stu_id='$stuid'";
    $result=$conn->query($sql);

    if($result->num_rows>0){
        $checkpid=$result->fetch_assoc()['parent_id'];

        if($checkpid==$pid){

            $sql="SELECT t.full_name,sct.role, sub.name,c.comment,c.created_at FROM comment c
            JOIN teacher t
            ON c.teach_id = t.teach_id
            JOIN subject sub
            ON t.sub_id =sub.sub_id
            JOIN student_class sc 
            ON c.stu_id = sc.stu_id
            JOIN subject_class_teacher sct 
            ON sct.teach_id = c.teach_id AND sct.class_name = sc.class_name
            WHERE c.stu_id='$stuid'";

            $result=$conn->query($sql);

            if($result->num_rows>0){

                echo"<html>";
                echo"<head> <link rel='stylesheet' href='../Frontend/stylesforall.css'></head>" ;  
                echo"<body>";

                echo"<table class='table'>";
                echo"<tr>";
                echo"<th class='hd'>Teachers comments</th>";
                echo"</tr>";
                echo"<tr>";
                echo"<th class='th'>Teacher's name</th>";
                echo"<th class='th'>Position</th>";
                echo"<th class='th'>Subject</th>";
                echo"<th class='th'>Teacher's Comment </th>";
                echo"<th class='th'>Created At</th>";
                echo"</tr>";
        
                while($values=$result->fetch_assoc()){
                    echo"<tr>";
                    echo"<td class='td'>" . htmlspecialchars($values['full_name']) . "</td>"; 
                    echo"<td class='td'>" . htmlspecialchars($values['role']) . "</td>"; 
                    if(($values['role'])!='Class Teacher'){
                        echo"<td class='td'>" . htmlspecialchars($values['name']) . "</td>";
                    }
                    else{
                        echo"<td class='td'>" . htmlspecialchars('-') . "</td>";   
                    }
                    echo"<td class='td'>" . htmlspecialchars($values['comment']) . "</td>";            
                    echo"<td class='td'>" . htmlspecialchars($values['created_at']) . "</td>";
                    echo"</tr>";
                }
                echo"</table>";
                echo"</body>";
                echo"</html>";

                }
            else{
                echo "<script>
                alert('There is NO comments given to the: $stuid' );
                window.location.href='../Frontend/view_comments_parents.html';
                </script>";
                exit();
            }
        
        }
        else{
           echo "<script>
            alert('You are NOT allowed to view other students');
            window.location.href='../Frontend/view_comments_parents.html';
            </script>";
            exit();
        }
    }
    else{
        echo "<script>
            alert('You ENTERD INVALID Student Number');
            window.location.href='../Frontend/view_comments_parents.html';
            </script>";
            exit();
    }
    $conn->close();
}

?>