<?php
include 'db_connect.php';

$message = ""; 


if (isset($_POST['add'])) {
    $name = trim($_POST['name']);
    if (!empty($name)) {
        $stmt = $conn->prepare("INSERT INTO extracurricular (name) VALUES (?)");
        $stmt->bind_param("s", $name);

        if ($stmt->execute()) {
            $message = "<p style='color:green;'> New activity added successfully!</p>";
        } else {
            $message = "<p style='color:red;'> Error adding activity: " . $stmt->error . "</p>";
        }

        $stmt->close();
    } else {
        $message = "<p style='color:red;'> Please enter an activity name.</p>";
    }
}


if (isset($_GET['delete'])) {
    $id = intval($_GET['delete']);
    if ($conn->query("DELETE FROM extracurricular WHERE activity_id = $id")) {
        $message = "<p style='color:red;'>Activity deleted!</p>";

        
        $check = $conn->query("SELECT COUNT(*) AS total FROM extracurricular")->fetch_assoc();
        if ($check['total'] == 0) {
            
            $conn->query("ALTER TABLE extracurricular AUTO_INCREMENT = 1");
            $message .= "<p style='color:blue;'> All activities removed — next ID will start from 1.</p>";
        }
    } else {
        $message = "<p style='color:red;'> Delete failed: " . $conn->error . "</p>";
    }
}


$result = $conn->query("SELECT * FROM extracurricular ORDER BY activity_id ASC");
?>

<!DOCTYPE html>
<html>
<head>
  <title>Manage Extracurricular Activities</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f8f8;
      padding: 30px;
    }
    h2 { color: #333; }
    table {
      border-collapse: collapse;
      width: 70%;
      background-color: white;
      box-shadow: 0 0 5px #ccc;
      margin-top: 20px;
    }
    th, td {
      border: 1px solid #ccc;
      padding: 8px;
      text-align: center;
    }
    th { background-color: #eaeaea; }
    form {
      margin-bottom: 20px;
    }
    input[type=text] {
      padding: 6px;
      border: 1px solid #aaa;
      border-radius: 4px;
    }
    input[type=submit] {
      padding: 6px 12px;
      background-color: #4CAF50;
      border: none;
      color: white;
      border-radius: 4px;
      cursor: pointer;
    }
    input[type=submit]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>

<h2>Manage Extracurricular Activities</h2>


<?php if ($message) echo $message; ?>

<form method="post">
  <label><strong>New Activity Name:</strong></label>
  <input type="text" name="name" placeholder="Enter activity name" required>
  <input type="submit" name="add" value="Add Activity">
</form>


<h3>Existing Activities</h3>
<table>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Action</th>
  </tr>

  <?php
  if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) {
          echo "<tr>
                  <td>{$row['activity_id']}</td>
                  <td>{$row['name']}</td>
                  <td><a href='manage_extracurricular.php?delete={$row['activity_id']}' onclick='return confirm(\"Are you sure?\")'>Delete</a></td>
                </tr>";
      }
  } else {
      echo "<tr><td colspan='3'>No activities found</td></tr>";
  }
  ?>
</table>
<a href="teacher_dashboard.php" 
   style="display:block;
          text-align:center;
          margin-top:25px;
          background:#2b7de9;
          color:#fff;
          text-decoration:none;
          padding:10px 20px;
          border-radius:6px;
          font-weight:bold;
          transition:0.3s;
          width:fit-content;
          margin-left:auto;
          margin-right:auto;">
     Back to Dashboard
</a>

</body>
</html>
