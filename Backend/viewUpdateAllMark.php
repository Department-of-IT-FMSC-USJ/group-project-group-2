<?php
session_start();
$conn = new mysqli("localhost", "root", "", "edulink");
if ($conn->connect_error) die("Database Connection Failed: " . $conn->connect_error);

$year = $_SESSION['Year'] ?? '';
$term_id = $_SESSION['Term'] ?? '';
$termName = $_SESSION['TermName'] ?? ''; 
$class = $_SESSION['Class'] ?? '';
$subject_id = $_SESSION['SubjectId'] ?? '';
$subject_name = $_SESSION['Subject'] ?? '';

if (!$year || !$term_id || !$class || !$subject_id) {
    header("Location: enterDetailsToViewMarks.php");
    exit();
}

$msg = '';
if (isset($_POST['update']) && isset($_POST['marks'])) {
    $updateStuId = key($_POST['update']);
    $newMark = $_POST['marks'][$updateStuId] ?? '';

    if ($newMark === '' || !is_numeric($newMark) || $newMark < 0 || $newMark > 100) {
        $msg = "Invalid mark entered";
    } else {
        $stmt = $conn->prepare("UPDATE mark SET marks = ? WHERE stu_id = ? AND sub_id = ? AND term_id = ?");
        $stmt->bind_param("diss", $newMark, $updateStuId, $subject_id, $term_id);

        if ($stmt->execute()) {
            $msg = "Marks updated successfully for Student ID $updateStuId";
        } else {
            $msg = "Error updating marks: " . $stmt->error;
        }
        $stmt->close();
    }
}

$sql = "SELECT m.stu_id AS Student_ID,
               CONCAT(s.f_name, ' ', s.l_name) AS Student_Name,
               m.marks AS Existing_Marks
        FROM mark m
        INNER JOIN student s ON m.stu_id = s.stu_id
        INNER JOIN student_class sc ON s.stu_id = sc.stu_id 
            AND sc.class_name = '$class' AND sc.year_name = '$year'
        WHERE m.sub_id = '$subject_id' AND m.term_id = '$term_id'
        ORDER BY s.stu_id";

$result = $conn->query($sql);
if (!$result) die("Query Error: " . $conn->error);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Marks</title>
<link rel="stylesheet" href="../Frontend/mark_style.css">
</head>
<body>
<center>
<h2>
    Update Marks for <?php echo htmlspecialchars($class); ?> - <?php echo htmlspecialchars($subject_name); ?><br>
    (Term: <?php echo htmlspecialchars($termName); ?>, Year: <?php echo htmlspecialchars($year); ?>)
</h2>

<?php if($msg) echo "<p style='color:white;background-color:blue;width:350px; border-radius:5px;padding:10px;'>".htmlspecialchars($msg)."</p>"; ?>

<?php
if ($result->num_rows > 0) {
    echo '<form action="" method="post">
            <table border="1" style="border-collapse: collapse;">
                <caption>Student List</caption>
                <tr>
                    <th>Stu ID</th>
                    <th>Student Name</th>
                    <th>Marks</th>
                    <th>Update</th>
                </tr>';
    while ($row = $result->fetch_assoc()) {
        $Stu_ID = htmlspecialchars($row['Student_ID']);
        $Student_Name = htmlspecialchars($row['Student_Name']);
        $Existing_Marks = htmlspecialchars($row['Existing_Marks']);
        echo "<tr>
                <td>$Stu_ID</td>
                <td>$Student_Name</td>
                <td><input type='number' name='marks[$Stu_ID]' value='$Existing_Marks' min='0' max='100'></td>
                <td><button type='submit' name='update[$Stu_ID]'>Update</button></td>
              </tr>";
    }
    echo '</table></form>';
} else {
    echo "<p>No existing marks found for this selection.</p>";
}
$conn->close();
?>

<div style="margin-top:20px;">
    <button onclick="window.location.href='teacherTaskSelect.php'">Back to Selection</button>
</div>
</center>
</body>
</html>





