<?php
// INF SITE (NE PAS TOUCHEZ)
$sites = $bdd->prepare('SELECT * FROM config_site WHERE id = :id');
$sites->execute([
	'id' => '1'
]);
if($sites->rowCount() == 1) {
	$site = $sites->fetch();
	$avatar_image = "https://cdn.wibbo.me/habbo-imaging/avatarimage.php?figure=";
} else {
	die('Une erreur est survenue (<b>#604105</b>), contactez Cypher en cliquant <a href="https://habbo-dev.fr/membre/4768-cypher/">ici</a>.');
}
?>
