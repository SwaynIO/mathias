<?php
require('../../global.php');

if(!empty($_POST['nom'])) {
    $nom = htmlspecialchars($_POST['nom']);
    $prenom = htmlspecialchars($_POST['prenom']);
    $telephone = htmlspecialchars($_POST['telephone']);
    $identification = htmlspecialchars($_POST['identification']);
    $corps = htmlspecialchars($_POST['corps']);
    $nom_patient = htmlspecialchars($_POST['nom_patient']);
    $prenom_patient = htmlspecialchars($_POST['prenom_patient']);
    $age = htmlspecialchars($_POST['age']);
    $poids = htmlspecialchars($_POST['poids']);
    $gender = htmlspecialchars($_POST['gender']);


    $insert_commentaire = $bdd->prepare('INSERT INTO ordonnances (nom_medecin, prenom_medecin, telephone, identification, date_p, corps, nom_patient, prenom_patient, age, poids, gender) VALUES (:nom_medecin, :prenom_medecin, :telephone, :identification, :date_p, :corps, :nom_patient, :prenom_patient, :age, :poids, :gender)');
    $insert_commentaire->execute([
        'nom_medecin' => $nom,
        'prenom_medecin' => $prenom,
        'telephone' => $telephone,
        'identification' => $identification,
        'date_p' => time(),
        'corps' => $corps,
        'nom_patient' => $nom_patient,
        'prenom_patient' => $prenom_patient,
        'age' => $age,
        'poids' => $poids,
        'gender' => $gender,

    ]);
    echo 'ee0683978e024421a1a50bc336a5f5ea';
} else {
    echo 'Une erreur est survenue.';
}

?>