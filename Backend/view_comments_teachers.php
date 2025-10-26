<?php

session_start();
include 'db.php';

$tid = $_SESSION['teacher_id'];


if($_SERVER["REQUEST_METHOD"]=="POST"){

    
    $sdate=$_POST['d1'];
    $edate=$_POST['d2'];
    $class= !empty($_POST['class']) ? $_POST['class'] : '';
    $stuid = !empty($_POST['stuid']) ? $_POST['stuid'] : '';

    $sql="SELECT comm_id FROM comment WHERE teach_id='$tid'";
    $result=$conn->query($sql);

    if($result->num_rows>0){
         
        $sql="SELECT class_name FROM student_class WHERE stu_id='$stuid'";
        $result=$conn->query($sql);
        $value=$result->fetch_assoc()['class_name'];

        if($value==$class){

            $where="c.created_at BETWEEN '$sdate' AND '$edate' AND c.teach_id='$tid' ";
            if(!empty($class)){
                $where .=" AND sc.class_name ='$class'";
            }
            if(!empty($stuid)){
                $where .= " AND c.stu_id='$stuid'";
            }
       
            $sql = "SELECT c.comm_id, s.stu_id, s.f_name, c.comment, c.created_at
                FROM comment c
                JOIN student s ON c.stu_id = s.stu_id
                JOIN student_class sc ON s.stu_id = sc.stu_id
                WHERE $where";
          
            $result=$conn->query($sql);
            echo"<html>";
            echo"<head> <link rel='stylesheet' href='../Frontend/styles.css'></head>" ;  
            echo"<body class='tablebody'>";

            echo"<table class='table'> ";
            echo"<tr>";
            echo"<td class='hd'>Comments</th>";
            echo"<tr>";
            echo"<tr>";
            echo"<th class='th'>Comment ID</th>";
            echo"<th class='th'>Student ID</th>";
            echo"<th class='th'>Student name</th>";
            echo"<th class='th'>Comment</th>";
            echo"<th class='th'>Date</th>";
            echo"</tr>";

            while($value=$result->fetch_assoc()){
                echo"<tr>";
                echo"<td class='td'>" . htmlspecialchars($value['comm_id']) . "</td>";
                echo"<td class='td'>" . htmlspecialchars($value['stu_id']) . "</td>";
                echo"<td class='td'>" . htmlspecialchars($value['f_name']) . "</td>";
                echo"<td class='td'>" . htmlspecialchars($value['comment']) . "</td>";
                echo"<td class='td'>" . htmlspecialchars($value['created_at']) . "</td>";
                echo"</tr>"; 
            }
            echo "</table>";
            echo"</body>";
            echo"</html>";
        }
        else{
            echo"<script>
            alert('Student NO: $stuid NOT a student of class $class');
            window.location.href='../Frontend/view_comments_teachers.html';
            </script>";
            exit();   
        }
    }
    else{
        echo"<script>
        alert('No comments found');
        window.location.href='../Frontend/view_comments_teachers.html';
        </script>";
        exit();
    }
    $conn->close();
}

?>