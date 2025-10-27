<?php

include '../db.php';

if ($_SERVER["REQUEST_METHOD"]=="POST")
{
    $class=$_POST["class"];

    $sql="select s.stu_id, concat(s.f_name,' ',s.l_name) fullName from student s, student_class c where class_name = '$class' and s.stu_id=c.stu_id";

    $result=$conn->query($sql);

    $students=[];

    if($result->num_rows>0)
    {
       
        while($row=$result->fetch_assoc())
        {
            $students[]=$row;
        }
    }

    echo json_encode($students);//send the data to js file
  
}

?>