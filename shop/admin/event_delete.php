<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id_3'];
		
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("DELETE FROM events WHERE id=:id");
			$stmt->execute(['id'=>$id]);

			$_SESSION['success'] = 'Event deleted from events';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}
		
		$pdo->close();

		header('location: event_list.php');
	}

?>