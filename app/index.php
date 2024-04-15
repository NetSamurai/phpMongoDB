<?php
    try {
        $mongoClient = new MongoDB\Driver\Manager("mongodb://admin:password@mongodb:27017/");

        echo "Created MongoDB driver successfully!";

        phpinfo();
    } catch (Exception $e) {
        echo "Failed to connect to MongoDB: " . $e->getMessage();
    }
?>