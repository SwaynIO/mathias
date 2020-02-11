<?php
session_start();

// SESSION (NE PAS TOUCHEZ)
if(isset($_SESSION['id'])){
	$sessions = $bdd->prepare('SELECT * FROM users WHERE id = :id');
	$sessions->execute([
		'id' => $_SESSION['id']
	]);
	if($sessions->rowCount() == 1){
		$session = $sessions->fetch();
		$_SESSION['id'] = $session['id'];

	}else{
		header('Location: /logout');
		exit();
	}
}
?>
