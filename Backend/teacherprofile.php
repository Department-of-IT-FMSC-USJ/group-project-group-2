<?php
session_start();
include 'dbconnection.php';

if (!isset($_SESSION['teacher_id'])) {
    header("Location:  ../Frontend/teacherlogin.html");
    exit();
}

$teacherId = $_SESSION['teacher_id'];

$stmt = $conn->prepare("SELECT full_name, email, mobile, gender, qualifications, hire_date FROM teacher WHERE teach_id = ?");
$stmt->bind_param("i", $teacherId);
$stmt->execute();
$result = $stmt->get_result();
$row = $result->fetch_assoc();
$stmt->close();
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Teacher Profile</title>
    <link rel="stylesheet" href="profile.css">
</head>
<body>

<div class="profile-container">
    <h1>Teacher Profile</h1>
    <p><b>Full Name:</b> <?php echo htmlspecialchars($row['full_name']); ?></p>
    <p><b>Email:</b> <?php echo htmlspecialchars($row['email']); ?></p>
    <p><b>Mobile:</b> <?php echo htmlspecialchars($row['mobile']); ?></p>
    <p><b>Gender:</b> <?php echo htmlspecialchars($row['gender']); ?></p>
    <p><b>Qualifications:</b> <?php echo htmlspecialchars($row['qualifications']); ?></p>
    <p><b>Hire Date:</b> <?php echo htmlspecialchars($row['hire_date']); ?></p>

    <a href="teacherdashboard.php" class="btn-back">Back to Dashboard</a>
</div>

</body>
</html>
