$(document).ready(function(){
	$('.tabs').tabs();
});

$(document).ready(function() {
	$('input#input_text, textarea#textarea2').characterCounter();
});

$('.chips').chips();
$('.chips-autocomplete').chips({
	autocompleteOptions: {
		data: {
			'Doliprane': null,
			'Advil': null,
			'Nurofen': null
		},
		limit: Infinity,
		minLength: 1
	}
});

$(document).ready(function(){
	$('select').formSelect();
});

$(document).ready(function(){
	$('.modal').modal();
});

$(document).ready(function(){
	$('.collapsible').collapsible();
});

$(document).ready(function() {
	$('#connect_me').on('submit', function(e) {
		e.preventDefault();
		var $this = $(this);
		var nom_m = $('#nom').val();
		var prenom_m = $('#prenom').val();
		if (nom_m === '' || prenom_m === '') {
			swal("Oops :(", "Les champs doivent être remplis.", "error");
		} else {
			$.ajax({
				url: $this.attr('action'),
				type: $this.attr('method'),
				data: $this.serialize(),
				success: function(html) {
					if (html == "ee0683978e024421a1a50bc336a5f5ea") {
						swal({
							title: "Soumission en cours...",
							text: "Redirection vers le pdf...",
							type: "success",
							timer: 800,
							showConfirmButton: false
						});
						window.setTimeout(function() {
							window.location = "https://gloth.chrisd.fr/#ordonnances";
						}, 1000);
					} else {
						swal({
							title: "Oops :(",
							text: html,
							type: "error",
							timer: 8400,
							showConfirmButton: true
						});
					}
				}
			});
		}
	});
});