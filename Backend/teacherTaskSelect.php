<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edulink</title>
    <link rel="stylesheet" href="../Frontend/mark_style.css">
</head>


<body>
    <div class="header">
    <h3 style="margin-left: 20px;margin-top: 20px; color: blue;">Edulink Student Monitoring System</h3>
    </div>
    <div class="content">
    <center><form action="teacherTaskSelect.php" method="post">
        <h2>Select an option:</h2><br>
        <input type="radio" name="option" value="enter Marks">Enter Marks<br><br>
        <input type="radio" name="option" value="view marks">View or Update existing Marks<br><br>
        <input type="radio" name="option" value="comment section">Comment section<br><br>
        <input type="radio" name="option" value="Extra-curricular">Extra-curricular<br><br>
        <input type="radio" name="option" value="attendance">Attendance<br><br>
        <input type="submit" name="submitbtn" value="submit" placeholder="submit">
    


<?php

if (isset($_POST['submitbtn'])) {
    

    if (isset($_POST['option']) && $_POST['option'] == "enter Marks") {
        header("Location: enterDetailsToEnterMarks.php");
        exit();
    }
    elseif (isset($_POST['option']) && $_POST['option'] == "view marks") {
        header("Location: enterDetailsToViewMarks.php");
        exit();
    }
    elseif (isset($_POST['option']) && $_POST['option'] == "comment section") {
        header("Location:../Frontend/comments.html");
        exit();
    }
    elseif (isset($_POST['option']) && $_POST['option'] == "Extra-curricular") {
        header("Location: ");
        exit();
    }
    elseif (isset($_POST['option']) && $_POST['option'] == "attendance") {
        header("Location:../Frontend/Attendance/teacher_attendance.html");
        exit();
    }
    elseif (isset($_POST['option']) && $_POST['option'] == "teacher-management") {
        header("Location: ");
        exit();
    }
    
    else {
        echo "<center><p style='color:red;background-color:rgba(229, 244, 118, 0.94);width:300px;height:20px;border:1px solid red;border-radius:10px;'> Please select an option </p></center>";
    }
}
?>
</div>    
        

    </form></center>
</body>
</html>
