<?php
session_start(); 
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = trim($_POST['password']); 

    $stmt = $conn->prepare("SELECT teach_id, password FROM teacher WHERE email = ? AND user_name = ?");
    if (!$stmt) die("Prepare failed: " . $conn->error);

    $stmt->bind_param("ss", $email, $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $teacherId = null;
        $dbPassword = null;
        $stmt->bind_result($teacherId, $dbPassword);
        $stmt->fetch();

        if ($password === $dbPassword) {
            $_SESSION['teacher_id'] = $teacherId;
            $_SESSION['teacher_username'] = $username;
            header("Location: teacherdashboard.php");
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
.success {
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
