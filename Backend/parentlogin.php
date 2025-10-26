<?php
session_start(); 

include 'dbconnection.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = trim($_POST['password']); 

    $stmt = $conn->prepare("SELECT parent_id, password FROM parent WHERE email = ? AND user_name = ?");  
    if (!$stmt) 
        die("Prepare failed: " . $conn->error);

    $stmt->bind_param("ss", $email, $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $parentId = null;  
        $dbPassword = null;  
        $stmt->bind_result($parentId, $dbPassword);
        $stmt->fetch();  
        
        if ($password === $dbPassword) {
           
            $_SESSION['parent_id'] = $parentId;
            $_SESSION['parent_username'] = $username; 

            $stuStmt = $conn->prepare("SELECT stu_id FROM student WHERE parent_id = ? LIMIT 1");
            $stuStmt->bind_param("i", $parentId);
            $stuStmt->execute();
            $stuId = null;  
            $stuStmt->bind_result($stuId);
            if ($stuStmt->fetch()) {
                $_SESSION['stu_id'] = $stuId;
            }
            $stuStmt->close();

            header("Location: parentdashboard.php");
            exit();
        } else {
            echo '<div class="error">Wrong password!</div>';
        }
    } else {
        echo '<div class="error">Email or username not found!</div>';
    }

    $stmt->close();
    $conn->close();
}

echo '<style>
.sucess {
    display: block;
    margin: 15px auto;
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 20px;
    background-color: #d4edda;
    color: #1b7e32ff;
}
.error {
    display: block;
    margin: 15px auto;
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 20px;
    background-color: #f8d7da;
    color: #ca1628ff;
}
</style>';
?>
