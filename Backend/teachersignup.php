<?php
include 'dbconnection.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $teach_id       = $_POST['teach_id'];
    $full_name      = $_POST['full_name'];
    $user_name      = $_POST['user_name'];
    $password_raw       = $_POST['password'];
    $gender         = $_POST['gender'];
    $email          = $_POST['email'];
    $mobile         = $_POST['mobile'];
    $qualifications = $_POST['qualifications'];
    $hire_date      = $_POST['hire_date'];

   
    $stmt = $conn->prepare("SELECT teach_id, user_name, email, password FROM teacher 
                            WHERE teach_id = ? OR user_name = ? OR email = ? OR password = ?");
    $stmt->bind_param("isss", $teach_id, $user_name, $email, $password_raw);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($existingTeachId, $existingUsername, $existingEmail, $existingPassword);
        while ($stmt->fetch()) {
            if ($existingTeachId == $teach_id) exit( '<div class="error"> Teacher ID already exists.</div>');
            if ($existingUsername == $user_name) exit('<div class="error"> Username already taken.</div>');
            if ($existingEmail == $email) exit('<div class="error"> Email already registered.</div>');
            if ($existingPassword == $password_raw) exit('<div class="error"> Password already used.</div>');
        }
    }
    $stmt->close();

    $stmt = $conn->prepare("INSERT INTO teacher (teach_id, full_name, user_name, password, gender, email, mobile, qualifications, hire_date)
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("issssssss", $teach_id, $full_name, $user_name, $password_raw, $gender, $email, $mobile, $qualifications, $hire_date);

    if ($stmt->execute()) {
        echo '<div class="success"> Teacher registered successfully!</div>';
    } else {
        echo '<div class="error"> Insert error: ' . $stmt->error . '</div>';
    }

    $stmt->close();
    $conn->close();
}


echo '<style>
.success {
    display: block;
    margin: 15px auto;
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 18px;
    background-color: #d4edda;
    color: #1b7e32;
}
.error {
    display: block;
    margin: 15px auto;
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 18px;
    background-color: #f8d7da;
    color: #ca1628;
}
</style>';
?>
