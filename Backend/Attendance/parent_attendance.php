<?php
session_start();

include '../db.php';

$stuID=$_SESSION['stuID'];


$sql = "SELECT a.status FROM attendance a, student s WHERE a.stu_id=$stuID AND a.date=curdate() AND a.stu_id=s.stu_id;"; 
$result = $conn->query($sql);

$name='Absent';

if($row=$result->fetch_assoc())
    {
        
        if($row['status']==='Present')
        {
            $name='Present';
        }
    }

echo json_encode($name);


?>

