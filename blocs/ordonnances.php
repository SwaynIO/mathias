 <div id="ordonnances" class="col s12">
 	<div class="container">
 		<div class="section">
 			<div class="row">
 				<?php
 				$last_ordonnances = $bdd->query('SELECT * FROM ordonnances ORDER BY date_p DESC');
 				while($lordonnances = $last_ordonnances->fetch())
 				{
 					?>
 					<div class="col s12 m6">
 						<div class="card-panel <?php if($lordonnances['sexe'] == 'F') { ?>deep-purple lighten-2<?php } else { ?>indigo lighten-2<?php } ?>">
 							<center><button data-target="<?= $lordonnances['id']; ?>" class="btn waves-effect waves-light modal-trigger">Ordonnance de <?= $lordonnances['nom_patient']; ?> <?= $lordonnances['prenom_patient']; ?>
 							<i class="material-icons right">send</i>
 						</button></center>
 					</div>
 				</div>

 				<div id="<?= $lordonnances['id']; ?>" class="modal modal-fixed-footer">
 					<div class="modal-content">
 						<div id="HTMLtoPDF">
 							<h5><center>Ordonnance du <?= date('d/m/Y à H:i', $lordonnances['date_p']); ?></center></h5><br>
 							<table style="height:100%;background-color: white;" class="highlight">
 								<tbody>
 									<tr>
 										<td><b>Médecin</b></td>
 										<td><?= $lordonnances['nom_medecin']; ?> <?= $lordonnances['prenom_medecin']; ?></td>
 									</tr>
 									<tr>
 										<td><b>Téléphone</b></td>
 										<td><?= $lordonnances['telephone']; ?></td>
 									</tr>
 									<tr>
 										<td><b>Identification</b></td>
 										<td><?= $lordonnances['identification']; ?></td>
 									</tr>
 									<tr>
 										<td><b>Date</b></td>
 										<td><?= date('d/m/Y à H:i', $lordonnances['date_p']); ?></td>
 									</tr>
 									<tr>
 										<td><b>Corps</b></td>
 										<td><?= $lordonnances['corps']; ?></td>
 									</tr>
 									<tr>
 										<td><b>Patient</b></td>
 										<td><?= $lordonnances['nom_patient']; ?> <?= $lordonnances['prenom_patient']; ?></td>
 									</tr>
 									<tr>
 										<td><b>Age</b></td>
 										<td><?= $lordonnances['age']; ?> ans</td>
 									</tr>
 									<tr>
 										<td><b>Poids</b></td>
 										<td><?= $lordonnances['poids']; ?> kg</td>
 									</tr>
 								</tbody>
 							</table>
 						</div>
 					</div>
 					<div class="modal-footer">
 						<a href="#" class="waves-effect waves-light btn blue-grey darken-4" onclick="HTMLtoPDF()"><i class="material-icons right">print</i>Télécharger le PDF</a>
 						<a href="#!" class="modal-close waves-effect waves-green btn-flat">Fermer</a>
 					</div>
 				</div>


 			<?php } ?>
 		</div>
 	</div>
 </div>
</div>