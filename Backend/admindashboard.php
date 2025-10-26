<?php
session_start();


if (!isset($_SESSION['admin_username'])) 
    {
    header("Location: ../Frontend/adminlogin.html");
    exit();
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
<body>
    <div class="navbar">
        <img src="../resources/icon.jpeg" alt="EduLink icon" class="icon">
        <h1>Gateway to effective student monitoring and management</span></h1>

        <nav class="nav-links">
            <a href="../Frontend/home.html">Home</a>
            <a href="../Frontend/support.html">About</a>
            <a href="logout.php">Logout</a>
        </nav>

    </div>
<div class="dashboard">
        <h2>Welcome back, <?php echo htmlspecialchars($_SESSION['admin_username']); ?>!</h2>
        <button onclick="">Add New Student</button>
</div>
</body>
<footer>
    <p>&copy; 2024 EduLink. All rights reserved.</p>
</footer>
</html>