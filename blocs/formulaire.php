  <div id="formulaire" class="col s12">
    <div class="container">
      <div class="section">

        <ul class="collapsible">
          <li class="active">
            <div class="collapsible-header"><i class="material-icons">local_pharmacy</i>Médecin</div>
            <div class="collapsible-body">

              <div id="connexion" class="row">
                <form id="connect_me" method="post" action="<?= $site['lien']; ?>php/actions/add_ordonnance.php" class="col s12">

                  <div class="row">
                    <div class="input-field col s6">
                      <input name="nom" id="nom" type="text" data-length="10" required="">
                      <label for="nom">Nom</label>
                    </div>
                    <div class="input-field col s6">
                      <input name="prenom" id="prenom" type="text" data-length="10" required="">
                      <label for="prenom">Prénom</label>
                    </div>
                  </div>

                  <div class="row">
                    <div class="input-field col s6">
                      <input name="telephone" id="telephone" type="number" data-length="10" required="">
                      <label for="telephone">N° Téléphone</label>
                    </div>
                    <div class="input-field col s6">
                      <input name="identification" id="identification" type="number" data-length="10" required="">
                      <label for="identification">N° Identification</label>
                    </div>
                  </div>

                  <div class="row">
                    <div class="input-field col s12">
                      <textarea name="corps" class="materialize-textarea"></textarea>
                    </div>
                  </div>


                </div>

              </div>
            </li>
            <li>
              <div class="collapsible-header"><i class="material-icons">person_pin</i>Client</div>
              <div class="collapsible-body">

                <div class="row">
                  <div class="input-field col s6">
                    <input name="nom_patient" id="nom_patient" type="text" class="validate" required="">
                    <label for="nom_patient">Nom</label>
                  </div>
                  <div class="input-field col s6">
                    <input name="prenom_patient" id="prenom_patient" type="text" class="validate" required="">
                    <label for="prenom_patient">Prénom</label>
                  </div>
                </div>

                <div class="row">
                  <div class="input-field col s4">
                    <input id="age" type="number" name="age" class="validate" required="">
                    <label for="age">Age</label>
                  </div>
                  <div class="input-field col s4">
                    <input id="poids" type="number" name="poids" class="validate" required="">
                    <label for="poids">Poids</label>
                  </div>
                  <div class="input-field col s4">
                    <select name="sexe">
                      <option value="" disabled selected>Sexe du patient</option>
                      <option value="F">Femme</option>
                      <option value="H">Homme</option>
                    </select>
                    <label>Sexe du patient</label>
                  </div>
                </div>

                <button class="btn waves-effect waves-light blue-grey darken-4" type="submit">Soumettre<i class="material-icons right">send</i></button>

              </div>
            </form>
          </li>
        </ul>


      </div>
    </div>
  </div>