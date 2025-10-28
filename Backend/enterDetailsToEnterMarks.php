<?php
session_start();
$conn = new mysqli("localhost", "root", "", "edulink");
if ($conn->connect_error){
    die("Connection failed: " . $conn->connect_error);
} else{

    if(isset($_POST['submit'])) {
        $subject_id = $_POST['Subject'];
        $stmt = $conn->prepare("SELECT name FROM subject WHERE sub_id = ?");
        $stmt->bind_param("i", $subject_id);
        $stmt->execute();
        $result = $stmt->get_result();
        $subject_name = $result->fetch_assoc()['name'];

        $_SESSION['Year'] = $_POST['Year'];
        $_SESSION['Term'] = $_POST['Term'];
        $_SESSION['Class'] = $_POST['Class'];
        $_SESSION['Subject'] = $subject_name;
        $_SESSION['SubjectId'] = $subject_id;

        header("Location: allmark.php");
        exit();
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edulink - Enter Details</title>
    <link rel="stylesheet" href="../Frontend/mark_style.css">
</head>
<body>
<div style="text-align:center;">
    <form action="" method="post">
        <h1>Fill below details to enter marks</h1>
        <input type="text" maxlength="4" pattern="[0-9]{4}" name="Year" placeholder="Academic Year(EX: 2023)" required><br><br>

        <select name="Term" required>
            <option value="" selected disabled>-- Select Term --</option>
            <option value="First" >-- First Term --</option>
            <option value="Second" >-- Second Term --</option>
            <option value="Third" >-- Third Term --</option>
            <?php
            ?>
        </select><br><br>

        <select name="Class" required>
            <option value="" selected disabled>-- Select Class --</option>
            <?php
            $classResult = $conn->query("SELECT class_name FROM class");
            while($row = $classResult->fetch_assoc()){
                echo "<option value='{$row['class_name']}'>{$row['class_name']}</option>";
            }
            ?>
        </select><br><br>

        <select name="Subject" required>
            <option value="" selected disabled>-- Select Subject --</option>
            <?php
            $subjectResult = $conn->query("SELECT sub_id, name FROM subject");
            while($row = $subjectResult->fetch_assoc()){
                echo "<option value='{$row['sub_id']}'>{$row['sub_id']} - {$row['name']}</option>";
            }
            ?>
        </select><br><br>

        <input type="submit" name="submit" value="Submit">
    </form>
</div>
</body>
</html>
<?php $conn->close(); ?>


