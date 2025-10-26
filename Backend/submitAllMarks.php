<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submit All Marks</title>
    <link rel="stylesheet" href="../Frontend/style.css">
</head>
<body>
<?php
session_start();

$year = $_SESSION['Year'] ?? '';
$term_name = $_SESSION['Term'] ?? ''; 
$class = $_SESSION['Class'] ?? '';
$subject_id = $_SESSION['SubjectId'] ?? '';

$conn = new mysqli("localhost", "root", "", "edulink");
if ($conn->connect_error) die('Database Connection Error: ' . $conn->connect_error);

$term_id = null;
if (!empty($year) && !empty($term_name)) {
    $termQuery = $conn->prepare("SELECT term_id FROM term WHERE year_name = ? AND term_name = ?");
    $termQuery->bind_param("ss", $year, $term_name);
    $termQuery->execute();
    $termResult = $termQuery->get_result();

    if ($termRow = $termResult->fetch_assoc()) {
        $term_id = $termRow['term_id'];
    } else {
        die("<center><h3 style='color:red;'>❌ Error: Term not found for $term_name ($year)</h3>
             <p><a href='taskSelect.php'>Go Back</a></p></center>");
    }
    $termQuery->close();
}

if (isset($_POST['submitAllMarks'])) {

    $marksArray = $_POST['marks'] ?? [];

    $stmt = $conn->prepare("INSERT INTO mark (stu_id, sub_id, term_id, marks) VALUES (?, ?, ?, ?)");
    if (!$stmt) die("Prepare failed: " . $conn->error);

    $inserted = 0;
    $skipped = 0;

    foreach ($marksArray as $stu_id => $marks) {
        if ($marks === "" || !is_numeric($marks) || $marks < 0 || $marks > 100) {
            $skipped++;
            continue;
        }

        $marks = (float)$marks;
        $stmt->bind_param("sssd", $stu_id, $subject_id, $term_id, $marks);

        if ($stmt->execute()) {
            $inserted++;
        } else {
            echo "<p>Error inserting marks for Student ID $stu_id: " . $stmt->error . "</p>";
        }
    }

    $stmt->close();
    $conn->close();

    echo "<center><h2>✅ Marks submission completed!</h2>";
    echo "<p>Inserted: $inserted</p>";
    echo "<p>Skipped invalid or empty marks: $skipped</p></center>";

    echo '<script>
            setTimeout(function() {
                window.location.href = "teacherTaskSelect.php";
            }, 5000);
          </script>';
    exit();
}
?>
</body>
</html>






