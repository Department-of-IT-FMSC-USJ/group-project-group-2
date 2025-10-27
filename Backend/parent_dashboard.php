<?php
session_start();
include 'db_connect.php';


if (!isset($_SESSION['parent_id'])) {
    header("Location: parent_login.php");
    exit();
}

$parent_id = $_SESSION['parent_id'];
$parent_name = $_SESSION['parent_name'] ?? 'Parent';


$students_sql = "SELECT * FROM student WHERE parent_id = ?";
$stmt = $conn->prepare($students_sql);
$stmt->bind_param("i", $parent_id);
$stmt->execute();
$students_result = $stmt->get_result();

$students = [];
while ($row = $students_result->fetch_assoc()) {
    $students[] = $row;
}

$stmt->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Parent Dashboard</title>
  <style>
    body {
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #e9f2ff, #f3fff3);
      margin: 0;
      padding: 0;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: flex-start;
    }

    .container {
      background: white;
      margin-top: 60px;
      padding: 25px 35px;
      border-radius: 15px;
      box-shadow: 0 6px 20px rgba(0,0,0,0.1);
      width: 90%;
      max-width: 900px;
    }

    h2 {
      color: #2b7de9;
      text-align: center;
      margin-bottom: 10px;
    }

    .section-title {
      color: #2e7d32;
      font-size: 18px;
      margin-top: 25px;
      border-bottom: 2px solid #c8e6c9;
      padding-bottom: 5px;
    }

    .student-card {
      background: #f9fafc;
      border-radius: 10px;
      padding: 15px;
      margin-top: 20px;
      box-shadow: inset 0 0 5px rgba(0,0,0,0.05);
    }

    .student-card p {
      margin: 6px 0;
      color: #333;
      font-size: 15px;
    }

    table {
      border-collapse: collapse;
      width: 100%;
      margin-top: 10px;
      font-size: 15px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 10px;
      text-align: center;
    }

    th {
      background-color: #e3f2fd;
      color: #0d47a1;
      font-weight: 600;
    }

    tr:nth-child(even) {
      background-color: #fafafa;
    }

    .total-points {
      text-align: right;
      font-weight: bold;
      margin-top: 10px;
      color: #1b5e20;
    }

    .logout-btn {
      display: block;
      width: fit-content;
      margin: 25px auto 0;
      background-color: #ef5350;
      color: white;
      text-decoration: none;
      padding: 10px 20px;
      border-radius: 6px;
      font-weight: 600;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .logout-btn:hover {
      background-color: #d32f2f;
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Welcome, <?= htmlspecialchars($parent_name); ?></h2>

    <?php if (!empty($students)): ?>
      <?php foreach ($students as $student): ?>
        <div class="section-title">Student Information</div>
        <div class="student-card">
          <p><strong>Name:</strong> <?= htmlspecialchars($student['initials'] . ' ' . $student['f_name'] . ' ' . $student['l_name']); ?></p>
          <p><strong>Gender:</strong> <?= htmlspecialchars($student['gender']); ?></p>
          <p><strong>Date of Birth:</strong> <?= htmlspecialchars($student['dob']); ?></p>
          <p><strong>Address:</strong> <?= htmlspecialchars($student['address']); ?></p>
        </div>

        <div class="section-title">Extracurricular Activities</div>
        <?php
          $sql = "SELECT e.name AS activity_name, se.duration, se.status, se.value
                  FROM student_extracurricular se
                  JOIN extracurricular e ON se.activity_id = e.activity_id
                  WHERE se.stu_id = ?";
          $stmt2 = $conn->prepare($sql);
          $stmt2->bind_param("i", $student['stu_id']);
          $stmt2->execute();
          $result = $stmt2->get_result();

          $activities = [];
          $total = 0;

          while ($row = $result->fetch_assoc()) {
              $activities[] = $row;
              $total += $row['value'];
          }
          $stmt2->close();
        ?>

        <table>
          <tr>
            <th>Activity</th>
            <th>Duration</th>
            <th>Status</th>
            <th>Points</th>
          </tr>
          <?php if (!empty($activities)): ?>
            <?php foreach ($activities as $act): ?>
              <tr>
                <td><?= htmlspecialchars($act['activity_name']); ?></td>
                <td><?= htmlspecialchars($act['duration']); ?></td>
                <td><?= htmlspecialchars($act['status']); ?></td>
                <td><?= htmlspecialchars($act['value']); ?></td>
              </tr>
            <?php endforeach; ?>
          <?php else: ?>
            <tr><td colspan="4">No activities found for this student.</td></tr>
          <?php endif; ?>
        </table>

        <p class="total-points">Total Points: <?= $total; ?></p>

      <?php endforeach; ?>
    <?php else: ?>
      <p>No students found for this parent.</p>
    <?php endif; ?>

    <a href="logout.php?from=parent" class="logout-btn">Logout</a>
  </div>
</body>
</html>
