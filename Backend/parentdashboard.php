<!DOCTYPE html>
<html lang="en">
<head>
    <title>Parent Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
<body>
    <div class="navbar">
        <img src="../resources/icon.jpeg" alt="EduLink icon" class="icon">
        <h1>Gateway to effective student monitoring and management</span></h1>
        <nav class="nav-links">
            <a href="../Frontend/home.html">Home</a>
            <a href="parentprofile.php">Account</a>
            <a href="logout.php">Logout</a>
        </nav>
    </div>
    <div class="dashboard">
        <h2>Welcome back, <?php session_start(); echo htmlspecialchars($_SESSION['parent_username']); ?>!</h2>
        
        <button class="button1">Add Marks</button>
        <a href="../Frontend/Attendance/select_student_attendance.html"><button class="button2">View Attendance</button></a>
        <a href="../Frontend/view_comments_parents.html"><button class="button3">View Comments</button></a>
        <button class="button4">Reports</button>
    </div>
</body>
<footer>
    <p>&copy; 2024 EduLink. All rights reserved.</p>
</footer>
</html>
