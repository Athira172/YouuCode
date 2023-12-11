<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Connect to the database (replace with your database credentials)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "YouCode";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Delete user if delete button is clicked
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete_user'])) {
    $userIdToDelete = $_POST['delete_user'];

    $deleteSql = "DELETE FROM tbl_register WHERE rid = ?";
    $deleteStmt = $conn->prepare($deleteSql);
    $deleteStmt->bind_param("i", $userIdToDelete);

    if ($deleteStmt->execute()) {
        echo "User deleted successfully.";
    } else {
        echo "Error deleting user: " . $deleteStmt->error;
    }

    $deleteStmt->close();
}

// Fetch user data
$sql = "SELECT * FROM tbl_register";
$result = $conn->query($sql);

// Check if there are any users
if ($result->num_rows > 0) {
    // Display the table header
    echo "<table border='1'>
            <tr>
                <th>User ID</th>
                <th>Username</th>
                <th>Email</th>
                <th>Contact Number</th>
                <th>Aadhar Number</th>
                <th>Address</th>
                <th>Action</th>
            </tr>";

    // Output data of each row
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["rid"] . "</td>
                <td>" . $row["name"] . "</td>
                <td>" . $row["email"] . "</td>
                <td>" . $row["cno"] . "</td>
                <td>" . $row["ano"] . "</td>
                <td>" . $row["address"] . "</td>
                <td>
                    <form method='post'>
                        <input type='hidden' name='delete_user' value='" . $row["rid"] . "'>
                        <button type='submit'>Delete</button>
                    </form>
                </td>
            </tr>";
    }

    echo "</table>";
} else {
    echo "No users found.";
}

// Close the database connection
$conn->close();
?>
