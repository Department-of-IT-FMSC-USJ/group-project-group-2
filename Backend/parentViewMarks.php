<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edulink - Parent View Marks</title>
    <link rel="stylesheet" href="../Frontend/mark_style.css">
</head>
<body>
    <h2 style="text-align:center;">Student Marks</h2>

    <table border="1" style="border-collapse: collapse; margin:auto;">
        <tr>
            <th>Subject</th>
            <th>Year</th>
            <th>Term</th>
            <th>Marks</th>
        </tr>

<?php
session_start();
$conn = new mysqli("localhost", "root", "", "edulink");
if ($conn->connect_error) {
    die("<tr><td colspan='4'>Database Connection Failed: " . htmlspecialchars($conn->connect_error) . "</td></tr>");
}

if (isset($_POST['submit'])) {
    $student_id = $_POST['student_id'] ?? '';
    $year = $_POST['Year'] ?? '';
    $term_number = $_POST['Term'] ?? '';

    if (!empty($student_id) && !empty($year) && !empty($term_number)) {

        // Convert term number to name
        $termNameMap = ["1" => "First", "2" => "Second", "3" => "Third"];
        $termText = $termNameMap[$term_number] ?? '';

        // Get term_id based on year + term name
        $termQuery = $conn->prepare("SELECT term_id FROM term WHERE term_name = ? AND year_name = ?");
        $termQuery->bind_param("ss", $termText, $year);
        $termQuery->execute();
        $termResult = $termQuery->get_result();
        $term_id = ($termResult->num_rows > 0) ? $termResult->fetch_assoc()['term_id'] : '';

        if (!empty($term_id)) {
            $marksQuery = $conn->prepare("
                SELECT s.name, t.term_name, t.year_name, m.marks
                FROM mark m
                INNER JOIN subject s ON m.sub_id = s.sub_id
                INNER JOIN term t ON m.term_id = t.term_id
                WHERE m.stu_id = ? AND m.term_id = ?
                ORDER BY s.name ASC
            ");
            $marksQuery->bind_param("ss", $student_id, $term_id);
            $marksQuery->execute();
            $marksResult = $marksQuery->get_result();

            if ($marksResult->num_rows > 0) {
                $total = 0;
                $count = 0;

                while ($row = $marksResult->fetch_assoc()) {
                    $subject = htmlspecialchars($row['name']);
                    $term = htmlspecialchars($row['term_name']);
                    $yearName = htmlspecialchars($row['year_name']);
                    $marks = htmlspecialchars($row['marks']);
                    echo "<tr>
                            <td>$subject</td>
                            <td>$yearName</td>
                            <td>$term</td>
                            <td>$marks</td>
                          </tr>";

                    $total += $marks;
                    $count++;
                }

                // Show totals and averages
                $average = ($count > 0) ? round($total / $count, 2) : 0;
                echo "<tr style='font-weight:bold;background:#eef;'>
                        <td colspan='3' style='text-align:right;'>Total Marks</td>
                        <td>$total</td>
                      </tr>
                      <tr style='font-weight:bold;background:#eef;'>
                        <td colspan='3' style='text-align:right;'>Average Marks</td>
                        <td>$average</td>
                      </tr>";
            } else {
                echo "<tr><td colspan='4'>No marks found for this student in $termText Term ($year).</td></tr>";
            }
        } else {
            echo "<tr><td colspan='4'>No term found for $termText ($year).</td></tr>";
        }
    } else {
        echo "<tr><td colspan='4'>Please fill all fields properly.</td></tr>";
    }
}
$conn->close();
?>
    </table>

    <div style="text-align:center; margin-top:20px;">
        <button onclick="window.location.href='parentSelectStudent.php'">Back</button>
    </div>
</body>
</html>

