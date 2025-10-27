<!DOCTYPE html>
<html lang="en">
<head>
    <title>Teacher Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
<body>
    <div class="navbar">
        <img src="../resources/icon.jpeg" alt="EduLink icon" class="icon">
        <h1>Gateway to Effective Student Monitoring and Management</h1>
        <nav class="nav-links">
            <a href="../Frontend/home.html">Home</a>
            <a href="teacherprofile.php">Account</a>
            <a href="logout.php">Logout</a>
        </nav>
    </div>

    <div class="dashboard">
        <h2>Welcome back, 
            <?php 
                session_start(); 
                echo htmlspecialchars($_SESSION['teacher_username']); 
            ?>
        <br>
        <button class="button1" onclick="window.location.href='teacherTaskSelect.php'">View Activities</button>
        
    </div>

    <footer>
        <p>&copy; 2024 EduLink. All rights reserved.</p>
    </footer>
</body>
</html>
