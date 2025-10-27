<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edulink - Parent View Marks</title>
    <link rel="stylesheet" href="../Frontend/mark_style.css">
</head>
<body>
    <p style="color:blue;position:absolute;margin-top:100px;margin-left:465px;font-size:20px;">Select student to view marks:</p>

    <form action="parentViewMarks.php" method="post" style="position:absolute;margin-top:160px;margin-left:500px;">
        <?php
        $parent_id = 1;

        $conn = new mysqli("localhost", "root", "", "edulink");
        if ($conn->connect_error) die("Database Connection Failed: " . $conn->connect_error);

        $student_id = $conn->query("SELECT stu_id, f_name, l_name FROM student WHERE parent_id = '$parent_id'");
        while ($row = $student_id->fetch_assoc()) {
            $stu_id = htmlspecialchars($row['stu_id']);
            $student_name = htmlspecialchars($row['f_name'] . ' ' . $row['l_name']);
            echo "<input type='radio' name='student_id' value='$stu_id' required> $student_name<br><br>";
        }
        
        $conn->close();
        ?>

        <br><br>
        <input type="text" maxlength="4" pattern="[0-9]{4}" name="Year" placeholder="Academic Year(EX: 2023)" required><br><br>
        
        <select name="Term" required>
            <option value="" disabled selected>Select Term</option>
            <option value="1">First</option>
            <option value="2">Second</option>
            <option value="3">Third</option>
        </select><br><br>

        <input type="submit" name="submit" value="Submit">
    </form>
</body>
</html>

    </form>
</body>
</html>

