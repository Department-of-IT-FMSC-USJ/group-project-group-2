<?php

include '../db.php';

$sql="SELECT DISTINCT(class_name) FROM class ORDER BY class_name";

$result=$conn->query($sql);

$classes=[];

while($row=$result->fetch_assoc())
{
    
    $classes[]=$row['class_name'];
}

echo json_encode($classes);

?>