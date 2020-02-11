<?php
require('global.php');

if(isset($_SESSION['id'])) {
  $connected = 1;
  exit();
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title><?= $site['nom']; ?></title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>

  <script type="text/javascript">
    function PrintDiv() {
      var contents = document.getElementById("dvContents").innerHTML;
      var frame1 = document.createElement('iframe');
      frame1.name = "frame1";
      frame1.style.position = "absolute";
      frame1.style.top = "-1000000px";
      document.body.appendChild(frame1);
      var frameDoc = (frame1.contentWindow) ? frame1.contentWindow : (frame1.contentDocument.document) ? frame1.contentDocument.document : frame1.contentDocument;
      frameDoc.document.open();
      frameDoc.document.write('<html><head><title>DIV Contents</title>');
      frameDoc.document.write('</head><body>');
      frameDoc.document.write(contents);
      frameDoc.document.write('</body></html>');
      frameDoc.document.close();
      setTimeout(function () {
        window.frames["frame1"].focus();
        window.frames["frame1"].print();
        document.body.removeChild(frame1);
      }, 500);
      return false;
    }
  </script>

  <!-- JS  -->
  <!-- <script src="plugins/ckeditor/ckeditor.js"></script> -->

</head>
<body>


  <!-- Navbar -->
  <?php require_once('blocs/navbar.php'); ?>
  <!-- Navbar -->


  <!-- Formulaire -->
  <?php require_once('blocs/formulaire.php'); ?>
  <!-- Formulaire -->


  <!-- Ordonnances -->
  <?php require_once('blocs/ordonnances.php'); ?>
  <!-- Ordonnances -->


  <!-- Footer -->
  <?php require_once('blocs/footer.php'); ?>
  <!-- Footer -->


  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
  <script src="js/launch.js"></script>
  <script src="plugins/jspdf.js"></script>
  <script src="plugins/pdfFromHTML.js"></script>
  <!--  Scripts-->

</body>
</html>
