<?php

session_start();
include 'dbconnection.php';

$tid = $_SESSION['teacher_id'];

   $sql="SELECT class_name FROM subject_class_teacher WHERE teach_id=$tid";
   $result= $conn->query($sql);
    while($value=$result->fetch_assoc()){
        echo"<option value ='" .htmlspecialchars($value['class_name']) . "'>" .htmlspecialchars($value['class_name']) ."</option>";
    }

?>