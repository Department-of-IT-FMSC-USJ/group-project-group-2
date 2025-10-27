

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Teacher Dashboard</title>
  <style>
    body {
      font-family: 'Segoe UI', Arial, sans-serif;
      background: linear-gradient(120deg, #a1c4fd, #c2e9fb);
      margin: 0;
      padding: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .dashboard-container {
      background: #fff;
      border-radius: 12px;
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
      width: 420px;
      padding: 30px 40px;
      text-align: center;
      animation: fadeIn 0.7s ease-in-out;
    }

    h2 {
      color: #2b7de9;
      margin-bottom: 20px;
    }

    ul {
      list-style-type: none;
      padding: 0;
      margin-top: 20px;
    }

    ul li {
      margin: 15px 0;
    }

    a {
      text-decoration: none;
      color: #fff;
      background-color: #2b7de9;
      padding: 10px 20px;
      border-radius: 6px;
      display: inline-block;
      transition: background 0.3s, transform 0.2s;
      font-weight: 600;
    }

    a:hover {
      background-color: #1e5fc1;
      transform: translateY(-2px);
    }

    .logout-btn {
      background-color: #f44336;
    }

    .logout-btn:hover {
      background-color: #d32f2f;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-15px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class="dashboard-container">
    <p style="color:#333;">Select an action below:</p>

    <ul>
      <li><a href="manage_extracurricular.php">To Manage Extracurricular Activities</a></li>
      <li><a href="teacher_give_points.php">To  Give Points to Students</a></li>
      <li><a href="teacherTaskSelect.php"class="logout-btn"> <--Back to Teacher Task Selection</a></li>
    </ul>
  </div>
</body>
</html>
