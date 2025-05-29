<?php
include 'config.php';

if (!isset($_GET['id'])) {
    header("Location: read_users.php");
    exit;
}

$id = $_GET['id'];

$query = "SELECT * FROM users WHERE user_id = $id";
$result = mysqli_query($conn, $query);
$user = mysqli_fetch_assoc($result);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $address      = $_POST['address'];
    $phone_number = $_POST['phone_number'];

    if (empty(trim($address))) {
        $address = $user['address'];
    }
    if (empty(trim($phone_number))) {
        $phone_number = $user['phone_number'];
    }

    $update = "UPDATE users SET 
                address = '$address', 
                phone_number = '$phone_number' 
                WHERE user_id = $id";

    if (mysqli_query($conn, $update)) {
        header("Location: read_users.php");
        exit;
    } else {
        echo "Error updating: " . mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <style>
        body {
            background-color: #6d2323;
            font-family: Arial, sans-serif;
            color: #fef9e1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #fef9e1;
            color: #6d2323;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
            width: 350px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #6d2323;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #6d2323;
            border-radius: 5px;
            box-sizing: border-box;
            color: #6d2323;
        }

        input[readonly] {
            background-color: #e0bb7d;
            cursor: not-allowed;
        }

        input:not([readonly]) {
            background-color: #fff3d4;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #6d2323;
            color: #fef9e1;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        button:hover {
            background-color: #5a1d1d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit User</h2>
        <form method="POST" action="">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<?= htmlspecialchars($user['username']) ?>" placeholder="ubah username">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<?= htmlspecialchars($user['email']) ?>" placeholder="ubah email">

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" value="<?= htmlspecialchars($user['address']) ?>" placeholder="ubah address">

            <label for="phone_number">Phone:</label>
            <input type="text" id="phone_number" name="phone_number" value="<?= htmlspecialchars($user['phone_number']) ?>" placeholder="ubah phone number">

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
