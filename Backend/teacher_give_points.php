<?php
include 'db_connect.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $stu_id = $_POST['stu_id'];
    $activity_id = $_POST['activity_id'];
    $duration = $_POST['duration'];
    $status = $_POST['status'];
    $value = $_POST['value'];

    $sql = "INSERT INTO student_extracurricular (stu_id, activity_id, duration, status, value)
            VALUES (?, ?, ?, ?, ?)
            ON DUPLICATE KEY UPDATE 
                duration = VALUES(duration), 
                status = VALUES(status), 
                value = VALUES(value)";

    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iisss", $stu_id, $activity_id, $duration, $status, $value);

    if ($stmt->execute()) {
        $message = "<div class='msg success'> Record added/updated successfully!</div>";
    } else {
        $message = "<div class='msg error'> Error: " . $conn->error . "</div>";
    }
    $stmt->close();
}


$students = $conn->query("SELECT stu_id, CONCAT(initials, ' ', f_name, ' ', l_name) AS full_name FROM student");


$activities = $conn->query("SELECT activity_id, name FROM extracurricular");
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Teacher - Give Points</title>
  <style>
    body {
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #e8f0fe, #f9f9f9);
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      min-height: 100vh;
      flex-direction: column;
    }

    .container {
      background: white;
      margin: 60px auto 20px;
      padding: 30px 40px;
      border-radius: 15px;
      box-shadow: 0px 5px 20px rgba(0,0,0,0.1);
      width: 400px;
      transition: transform 0.3s ease;
    }

    .container:hover {
      transform: translateY(-5px);
    }

    h2 {
      text-align: center;
      color: #2d3748;
      margin-bottom: 20px;
    }

    form label {
      font-weight: 600;
      color: #444;
      display: block;
      margin-top: 12px;
      margin-bottom: 5px;
    }

    select, input[type="text"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 8px;
      background-color: #fafafa;
      transition: border-color 0.2s ease;
    }

    select:focus, input:focus {
      border-color: #4CAF50;
      outline: none;
      background-color: #fff;
    }

    button {
      margin-top: 20px;
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      font-weight: bold;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
      background-color: #43a047;
      transform: scale(1.02);
    }

    .msg {
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 8px;
      text-align: center;
      font-weight: 600;
    }

    .msg.success {
      background-color: #d4edda;
      color: #155724;
      border: 1px solid #c3e6cb;
    }

    .msg.error {
      background-color: #f8d7da;
      color: #721c24;
      border: 1px solid #f5c6cb;
    }

    
    .back-btn {
      display: inline-block;
      background: #2b7de9;
      color: #fff;
      text-decoration: none;
      padding: 10px 25px;
      border-radius: 8px;
      font-weight: bold;
      transition: 0.3s;
      box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      margin: 0 auto 40px;
    }
    .back-btn:hover {
      background: #1b63c7;
    }

    .back-wrapper {
      text-align: center;
      width: 100%;
    }
  </style>
</head>
<body>

  <div class="container">
    <h2> Teacher - Give Points</h2>

    
    <?php if (isset($message)) echo $message; ?>

    <form method="POST">
      <label>Student:</label>
      <select name="stu_id" required>
        <option value="">-- Select Student --</option>
        <?php while($s = $students->fetch_assoc()): ?>
          <option value="<?= $s['stu_id'] ?>"><?= htmlspecialchars($s['full_name']) ?></option>
        <?php endwhile; ?>
      </select>

      <label>Activity:</label>
      <select name="activity_id" required>
        <option value="">-- Select Activity --</option>
        <?php while($a = $activities->fetch_assoc()): ?>
          <option value="<?= $a['activity_id'] ?>"><?= htmlspecialchars($a['name']) ?></option>
        <?php endwhile; ?>
      </select>

      <label>Duration (hours/days):</label>
      <input type="text" name="duration" placeholder="e.g., 5 hours" required>

      <label>Status:</label>
      <select name="status">
        <option value="Pending">Pending</option>
        <option value="Completed">Completed</option>
        <option value="Approved">Approved</option>
      </select>

      <label>Value (points):</label>
      <input type="text" name="value" placeholder="e.g., 10" required>

      <button type="submit"> Save Points</button>
    </form>
  </div>

  
  <div class="back-wrapper">
    <a href="teacher_dashboard.php" class="back-btn"> Back to Dashboard</a>
  </div>

</body>
</html>
