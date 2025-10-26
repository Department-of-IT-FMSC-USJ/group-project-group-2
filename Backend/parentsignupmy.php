<?php
include 'dbconnection.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $parentId = $_POST['parentid'];
    $fullname = $_POST['fullname'];
    $address  = $_POST['address'];
    $mobile   = $_POST['mobile'];
    $relationship = $_POST['relationship'];
    $username = $_POST['username'];
    $email    = $_POST['email'];
    $password = $_POST['password'];

   
    $stmt = $conn->prepare("SELECT parent_id, user_name, email, password FROM parent 
                            WHERE parent_id = ? OR user_name = ? OR email = ? OR password = ?");
    $stmt->bind_param("isss", $parentId, $username, $email, $password);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($existingParentId, $existingUsername, $existingEmail, $existingPassword);

    if ($stmt->fetch()) {
        if ($existingParentId == $parentId) exit('<div class="error"> Parent ID already exists.</div>');
        if ($existingUsername == $username) exit('<div class="error"> Username already taken.</div>');
        if ($existingEmail == $email) exit('<div class="error"> Email already registered.</div>');
        if ($existingPassword == $password) exit('<div class="error"> Password already used.</div>');
    }
    $stmt->close();

    // Insert parent
    $stmt = $conn->prepare("INSERT INTO parent (parent_id, full_name, relationship, address, mobile, user_name, password, email)
                            VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("isssssss", $parentId, $fullname, $relationship, $address, $mobile, $username, $password, $email);

    if ($stmt->execute()) {
        echo '<div class="success"> Parent registered successfully!</div>';
    } else {
        echo '<div class="error">Insert error: " . $stmt->error . "</div>';
    }

    $stmt->close();
    $conn->close();
}


echo '<style>
.sucess {
    display: block;
    margin: 15px auto;
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 20px;
    background-color: #d4edda;
    color: #1b7e32ff;
}
.error {
    display: block;
    margin: 15px auto;
    padding: 10px 20px;
    border-radius: 8px;
    text-align: center;
    font-family: Arial, sans-serif;
    font-size: 20px;
    background-color: #f8d7da;
    color: #ca1628ff;
}
</style>';
?>