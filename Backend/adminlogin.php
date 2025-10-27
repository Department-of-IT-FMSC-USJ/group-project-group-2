<?php
session_start();
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $username = trim($_POST['username']);
    $password = trim($_POST['password'] ?? ''); 

    $stmt = $conn->prepare("SELECT password FROM admin WHERE user_name = ?");
    if (!$stmt) die("Prepare failed: " . $conn->error);

    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $dbPassword = null;
        $stmt->bind_result($dbPassword);
        $stmt->fetch();

        if ($password === $dbPassword) {
            $_SESSION['admin_username'] = $username;
            header("Location: admindashboard.php");
            exit();
        } else {
            echo '<div class="error"> Wrong password!</div>';
        }
    } else {
        echo '<div class="error"> Username not found!</div>';
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

