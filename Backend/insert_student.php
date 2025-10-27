<?php
include "db.php";

if($_SERVER["REQUEST_METHOD"]=="POST")
{
    $initials=$_POST["initials"];
    $fName=$_POST["fName"];
    $lName=$_POST["lName"];
    $date=$_POST["date"];
    $gender=$_POST["gender"];
    $address=$_POST["address"];
    $p_id=$_POST["p_id"];
}

$gen="";
if($gender=="Male")
{
    $gen="M";
}
else $gen="F";

$sql="INSERT INTO Student (initials, f_name, l_name, dob, gender, address,parent_id)
        VALUES ('$initials','$fName','$lName','$date','$gen','$address',$p_id)";

if ($conn->query($sql) === TRUE) {
    header('Location: ../Frontend/insert_student.html');
    exit();
     
} else{
    echo "Error: " . $sql . "<br>" . $conn->error;
}


?>