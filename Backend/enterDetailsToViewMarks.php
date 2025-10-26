<?php
session_start();
$conn = new mysqli("localhost", "root", "", "edulink");
if ($conn->connect_error) die("Connection failed: " . $conn->connect_error);

if (isset($_POST["submit"])) {
    $year = $_POST['Year'];           
    $term_name = $_POST['Term']; 
    $class = $_POST['Class'];
    $subject_id = $_POST['Subject'];

    $stmt = $conn->prepare("SELECT term_id FROM term WHERE term_name = ? AND year_name = ?");
    $stmt->bind_param("ss", $term_name, $year);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($row = $result->fetch_assoc()) {
        $term_id = $row['term_id'];
    } else {
        die("<center><h3 style='color:red;'>❌ Error: Term '$term_name' not found for year $year</h3></center>");
    }
    $stmt->close();

    
    $_SESSION['Year'] = $year;
    $_SESSION['Term'] = $term_id;   
    $_SESSION['TermName'] = $term_name; 
    $_SESSION['Class'] = $class;
    $_SESSION['SubjectId'] = $subject_id;

    $subjectResult = $conn->query("SELECT name FROM subject WHERE sub_id='$subject_id' LIMIT 1");
    $_SESSION['Subject'] = $subjectResult && $subjectResult->num_rows > 0 ? $subjectResult->fetch_assoc()['name'] : '';

    header("Location: viewUpdateAllMark.php");
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edulink - View Marks</title>
<link rel="stylesheet" href="../Frontend/style.css">
</head>
<body>
<div style="text-align:center;">
    <form action="" method="post">
        <h1>Fill below details to view marks</h1>

        <input type="text" maxlength="4" pattern="[0-9]{4}" inputmode="numeric" name="Year" placeholder="Academic Year(EX: 2023)" required><br><br>

        <select name="Term" required>
            <option value="" selected disabled>-- Select the term --</option>
            <option value="First">First Term</option>
            <option value="Second">Second Term</option>
            <option value="Third">Third Term</option>
        </select><br><br>

        <select name="Class" required>
            <option value="" selected disabled>-- Select the class --</option>
            <?php
            $sql = "SELECT class_name FROM class";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row["class_name"] . "'>" . $row["class_name"] . "</option>";
                }
            }
            ?>
        </select><br><br>

        <select name="Subject" required>
            <option value="" selected disabled>-- Select the subject --</option>
            <?php
            $sql = "SELECT sub_id, name FROM subject";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) {
                    echo "<option value='" . $row["sub_id"] . "'>" . htmlspecialchars($row["name"]) . "</option>";
                }
            }
            $conn->close();
            ?>
        </select><br><br>

        <input type="submit" name="submit" value="Submit">
    </form>
</div>
</body>
</html>





