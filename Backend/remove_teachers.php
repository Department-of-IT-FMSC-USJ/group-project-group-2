<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $tid =$_POST['teachid'];

    $sql="SELECT teach_id FROM teacher WHERE teach_id='$tid'";
    $result=$conn->query($sql);
    
    if ($result->num_rows > 0) {
        $sql ="DELETE FROM teacher WHERE teach_id='$id'";
        if ($conn->query($sql) === TRUE) { 
            echo"<script>
            alert('The teacher with ID:$tid REmoved successfully !');
            window.location.href='../Frontend/remove_teachers.html';
            </script>";
            exit();  
        }
        else{ 
            echo "Error: " . $conn->error;
        }
    } 
    else {
       echo"<script>
            alert('NO teacher found in ID: $tid');
            window.location.href='../Frontend/remove_teachers.html';
            </script>";
            exit();
        }
    $conn->close();
}

?>