<?php
session_start();

include '../db.php';

$stuID=$_SESSION['stuID'];

$sql="SELECT ROUND(COUNT(stu_id)/(SELECT SUM(status)FROM date WHERE status='Yes')*100,2) AS tdy FROM attendance WHERE stu_id=$stuID AND status='Present'";

$result=$conn->query($sql);

$row=$result->fetch_assoc();

echo $row['tdy'];

?>