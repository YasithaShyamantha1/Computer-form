<?php
    // database connection 
    $conn = new mysqli("localhost", "root", "", "agrarianadmin_agrarian_db");

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
?>