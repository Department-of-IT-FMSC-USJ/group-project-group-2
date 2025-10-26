<?php
session_start();
include 'dbconnection.php';

if (!isset($_SESSION['parent_id'])) {
    header("Location: parentlogin.php");
    exit();
}

$parentId = $_SESSION['parent_id'];

$result = $conn->query("SELECT * FROM parent WHERE parent_id = $parentId");
$row = $result->fetch_assoc();
$studentId = $row['stu_id'] ?? null;
$studentName = '';
if ($studentId) {
    $stuResult = $conn->query("SELECT CONCAT(initials, ' ', f_name, ' ', l_name) AS student_name FROM student WHERE stu_id = $studentId");
    $stuRow = $stuResult->fetch_assoc();
    $studentName = $stuRow['student_name'] ?? '';
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Parent Profile</title>
    <link rel="stylesheet" href="profile.css">
</head>
<body>

<div class="profile-container">
    <h1>Parent Profile</h1>
    <p><b>Full Name:</b> <?php echo htmlspecialchars($row['full_name']); ?></p>
    <p><b>Email:</b> <?php echo htmlspecialchars($row['email']); ?></p>
    <p><b>Mobile:</b> <?php echo htmlspecialchars($row['mobile']); ?></p>
    <p><b>Address:</b> <?php echo htmlspecialchars($row['address']); ?></p>
    <p><b>Relationship:</b> <?php echo htmlspecialchars($row['relationship']); ?></p>
    <?php if ($studentName): ?>
        <p><b>Linked Student:</b> <?php echo htmlspecialchars($studentName); ?></p>
    <?php endif; ?>

    <a href="parentdashboard.php" class="btn-back">Back to Dashboard</a>
</div>

</body>
</html>
