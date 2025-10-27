<?php
session_start();

if (!isset($_SESSION['Year'], $_SESSION['Term'], $_SESSION['Class'], $_SESSION['SubjectId'], $_SESSION['Subject'])) {
    header("Location: enterDetailsToEnterMarks.php");
    exit();
}

$year = $_SESSION['Year'];
$termSessionValue = $_SESSION['Term'];
$class = $_SESSION['Class'];
$subject_name = $_SESSION['Subject'];
$subject_id = $_SESSION['SubjectId'];

$conn = new mysqli("localhost", "root", "", "edulink");
if ($conn->connect_error) die("Database Connection Failed: " . $conn->connect_error);

$term_id = null;
$termName = null;

$checkId = $conn->prepare("SELECT term_id, term_name FROM term WHERE term_id = ? LIMIT 1");
$checkId->bind_param("s", $termSessionValue);
$checkId->execute();
$idResult = $checkId->get_result();

if ($idResult && $idResult->num_rows > 0) {
    $row = $idResult->fetch_assoc();
    $term_id = $row['term_id'];
    $termName = $row['term_name'];
} else {
    $checkName = $conn->prepare("SELECT term_id, term_name FROM term WHERE term_name = ? AND year_name = ? LIMIT 1");
    $checkName->bind_param("ss", $termSessionValue, $year);
    $checkName->execute();
    $nameResult = $checkName->get_result();
    if ($nameResult && $nameResult->num_rows > 0) {
        $row = $nameResult->fetch_assoc();
        $term_id = $row['term_id'];
        $termName = $row['term_name'];
    }
    $checkName->close();
}
$checkId->close();

if (!$term_id || !$termName) {
    die("<center><h3 style='color:red;'>❌ Error: Term not found for '$termSessionValue' ($year)</h3>
         <p><a href='taskSelect.php'>Go Back</a></p></center>");
}

$sql = "
    SELECT 
        s.stu_id AS Student_ID, 
        CONCAT(s.f_name, ' ', s.l_name) AS Student_Name
    FROM student s
    INNER JOIN student_subject ss 
        ON s.stu_id = ss.stu_id
        AND ss.sub_id = ?
        AND ss.status = 'following'
    INNER JOIN student_class sc 
        ON s.stu_id = sc.stu_id
        AND sc.class_name = ?
        AND sc.year_name = ?
    WHERE NOT EXISTS (
        SELECT 1 
        FROM mark m
        WHERE m.stu_id = s.stu_id 
        AND m.sub_id = ? 
        AND m.term_id = ?
    )
    ORDER BY s.stu_id
";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssss", $subject_id, $class, $year, $subject_id, $term_id);
$stmt->execute();
$result = $stmt->get_result();

if (!$result) die("Query Error: " . $conn->error);
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Enter Marks</title>
<link rel="stylesheet" href="../Frontend/mark_style.css">
</head>
<body>
<center>
    <h2>Enter Marks for <?php echo htmlspecialchars($class); ?> - <?php echo htmlspecialchars($subject_name); ?></h2>
    <h3>Term: <?php echo htmlspecialchars($termName); ?> (Year: <?php echo htmlspecialchars($year); ?>)</h3>

<?php if($result->num_rows > 0): ?>
    <form action="submitAllMarks.php" method="post">
        <table border="1">
            <tr>
                <th>Student ID</th>
                <th>Student Name</th>
                <th>Marks</th>
            </tr>
            <?php while($row = $result->fetch_assoc()): ?>
            <tr>
                <td><?php echo htmlspecialchars($row['Student_ID']); ?></td>
                <td><?php echo htmlspecialchars($row['Student_Name']); ?></td>
                <td>
                    <input type="number" name="marks[<?php echo htmlspecialchars($row['Student_ID']); ?>]" min="0" max="100">
                </td>
            </tr>
            <?php endwhile; ?>
        </table><br>
        <input type="submit" name="submitAllMarks" value="Submit Marks">
    </form>
<?php else: ?>
    <p>✅ All students already have marks recorded for this subject and term, or no students follow this subject.</p>
    <button onclick="window.location.href='teacherTaskSelect.php'">Back to selection</button>
<?php endif; ?>
</center>
</body>
</html>
<?php 
$stmt->close();
$conn->close();
?>

















