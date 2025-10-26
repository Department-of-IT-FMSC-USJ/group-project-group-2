<?php

include "dbconnection.php";

if($_SERVER["REQUEST_METHOD"]=="POST"){

    $tid =$_POST['teachid'];
    $name =$_POST['fullname'];
    $username =$_POST['username'];
    $password =$_POST['password'];
    $gender =$_POST['gender'];
    $email =$_POST['email'];
    $mobile =$_POST['mobile'];
    $qualifications =$_POST['qualifications'];
    $subid =$_POST['subid'];
    $hiredate =$_POST['hiredate'];
    
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);
 
   $sql="INSERT INTO teacher(teach_id,full_name, user_name, passwords, gender, email,mobile, qualifications, sub_id, hire_date)
   VALUES('$tid','$name','$username', '$hashed_password', '$gender', '$email', '$mobile', '$qualifications', '$subid', '$hiredate')";

    if ($conn->query($sql) === TRUE) {
        echo"<script>
            alert('Add teacher successfully !');
            window.location.href='../Frontend/add_teachers.html';
            </script>";
            exit();
       
    }
     else{ 
        echo "Error: " . $conn->error;
    }

    $conn->close();
}

?>