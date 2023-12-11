<?php
// Function to generate and save the QR code to the database
function generateAndSaveQRCode($url, $conn)
{
    // Include the PHP QR Code library
    include "phpqrcode/qrlib.php";

    // Set the directory for saving QR codes 
    $tempDir = 'temp/';

    // If the directory doesn't exist, create it
    if (!file_exists($tempDir)) {
        mkdir($tempDir);
    }

    // Set the file name for the QR code
    $fileName = $tempDir . 'qrcode.png';

    // Generate QR code
    QRcode::png($url, $fileName, QR_ECLEVEL_L, 10);

    // Read the QR code image content
    $qrCodeContent = file_get_contents($fileName);

    // Save the QR code image to the database
    $insertQuery = "INSERT INTO tbl_qr (url, qr_image) VALUES (?, ?)";
    $stmt = $conn->prepare($insertQuery);
    $stmt->bind_param("sb", $url, $qrCodeContent);

    if ($stmt->execute()) {
        // Display the QR code image
        echo '<div style="text-align:center; margin-top: 20px;">';

        // Convert binary image data to base64
        $base64Image = base64_encode($qrCodeContent);

        // Display the image using base64 encoding
        echo '<img src="data:image/png;base64,' . $base64Image . '" alt="QR Code" style="border: 1px solid #ccc; padding: 10px; border-radius: 8px;">';

        // Add download link
        echo '<p><a href="download.php?file=' . urlencode($fileName) . '">Download QR Code</a></p>';

        // Add social media sharing buttons (assuming you have the share URLs)
        echo '<p>Share QR Code: ';
        echo '<a href="https://facebook.com/share?url=' . $url . '" target="_blank">Facebook</a> | ';
        echo '<a href="https://twitter.com/intent/tweet?url=' . $url . '" target="_blank">Twitter</a>';
        echo '</p>';

        echo '</div>';
    } else {
        echo "Error: Unable to save QR code to the database.";
    }

    // Close the statement
    $stmt->close();
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get the submitted URL
    $url = $_POST["url"];

    // Database connection (replace with your database credentials)
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "YouCode";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Generate and save the QR code to the database
    generateAndSaveQRCode($url, $conn);

    // Close the database connection
    $conn->close();
}
?>
