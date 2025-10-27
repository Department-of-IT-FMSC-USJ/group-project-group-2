<?php
session_start();

include '../db.php';

$sql="SELECT s.stu_id,s.f_name FROM student s INNER JOIN parent p ON s.parent_id=p.parent_id WHERE p.parent_id=1";

$result=$conn->query($sql);

$students=[];

while($row=$result->fetch_assoc())
{
    $students[]=$row;
}

echo json_encode($students);
?>