<?php
include ('includes/conn.php');

$firstName = $_POST['first_name'];
$lastName = $_POST['event_name'];
$phone = $_POST['contact_number'];
$address = $_POST['address'];
$email = $_POST['email'];
$start_date = $_POST['start_datetime'];
$end_date = $_POST['end_datetime'];
$description = $_POST['description'];


try {
    $stmt = $conn->prepare("SELECT `your_name`, `phone` FROM `events` WHERE `your_name` = :your_name AND `phone` = :phone");
    $stmt->execute([
        'your_name' => $firstName,
        'phone'=> $phone,
    ]);
    $nameExist = $stmt->fetch(PDO::FETCH_ASSOC);

    if (empty($nameExist)) {
        $conn->beginTransaction();

        $insertStmt = $conn->prepare("INSERT INTO events (your_name, phone, your_address, email, event_name, start_datetime, end_datetime, description) VALUES (:your_name, :phone, :your_address, :email, :event_name, :start_datetime, :end_datetime, :description)");
        $insertStmt->bindParam(':your_name', $firstName, PDO::PARAM_STR);
        $insertStmt->bindParam(':event_name', $lastName, PDO::PARAM_STR);
        $insertStmt->bindParam(':phone', $phone, PDO::PARAM_INT);
        $insertStmt->bindParam(':your_address', $address, PDO::PARAM_STR);
        $insertStmt->bindParam(':email', $email, PDO::PARAM_STR);
        $insertStmt->bindParam(':start_datetime', $start_date, PDO::PARAM_STR);
        $insertStmt->bindParam(':end_datetime', $end_date, PDO::PARAM_STR);
        $insertStmt->bindParam(':description', $description, PDO::PARAM_STR);
        $insertStmt->execute();


        echo "
        <script>
            alert('Successifully booked');
            window.location.href = 'index.html';
        </script>
        ";

        $conn->commit();
    } else {
        echo "
        <script>
            alert('Event Already Registered');
            window.location.href = 'index.html';
        </script>
        ";
    }
    

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}


?>