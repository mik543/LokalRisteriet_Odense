<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Produkter Lokalristeriet</title>
<link rel="stylesheet" href="https://use.typekit.net/ohw1lnl.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-about.css">
<link rel="stylesheet" href="css/product-style.css">
<script src="script/script.js"></script>
</head>

<body>
  <!--Lavet af Camilla E. Petersen-->
<!--START TOPNAV-->
<div class="header-image">
  <div class="topnav" id="myTopnav">
    <a href="index.html"><img src="img/logo.png" alt="" style="width:20%;"></a>
    <a href="index.html">Forside</a>
    <a href="om-lokalristeriet.html">Om Lokalristeriet</a>
    <a href="produkter-lokalristeriet.php" class="active">Produkter</a>
    <a href="maanedenskaffe.html">Månedenskaffe</a>
    <a href="kaffeguide.html">Kaffeguiden</a>
    <a href="kontakt.html">Kontakt</a>
    <a href="#">
      <i class="fas fa-shopping-cart"></i>
    </a>
    <a href="javascript:void(0);" class="icon" onclick="myFunction()">
      <i class="fa fa-bars"></i>
    </a>
  </div>

  <div class="header-text">
    <h1 id="headerid">Vores produkter</h1>
  </div>
</div>
<!-- END TOPNAV-->

<div class="p-content">

  <div class="filtr-row">
    <div id="sidebar" class="col-3 menu">
      <ul>
      <li>
        <h3>Produktkategori</h3>
        <div><input type="checkbox">Hele kaffebønner<span class="checkmark"></span></div>

        <div><input type="checkbox">Kaffepulver<span class="checkmark"></span></div>

        <div><input type="checkbox">Kaffekapsler<span class="checkmark"></span></div>
      </li>

      <li>
        <h3>Bryggemetode</h3>
        <div><input type="checkbox">Kaffefilter/Pour Over<span class="checkmark"></span></div>

        <div><input type="checkbox">Stempelkande<span class="checkmark"></span></div>

        <div><input type="checkbox">Espresso<span class="checkmark"></span></div>
      </li>

      <li>
        <h3>Smag</h3>
        <div><input type="checkbox">Syrlig<span class="checkmark"></span></div>

        <div><input type="checkbox">Frugtig<span class="checkmark"></span></div>

        <div><input type="checkbox">Sød<span class="checkmark"></span></div>

        <div><input type="checkbox">Krydret<span class="checkmark"></span></div>

      </li>

      <li>
        <h3>Oprindelses land</h3>
        <div><input type="checkbox">Brasilien<span class="checkmark"></span></div>

        <div><input type="checkbox">Columbia<span class="checkmark"></span></div>

        <div><input type="checkbox">Guatamala<span class="checkmark"></span></div>

        <div><input type="checkbox">Honduras<span class="checkmark"></span></div>
      </li>

      <li>
        <h3>Økologisk</h3>
        <div><input type="checkbox">Økologisk<span class="checkmark"></span></div>
      </li>
    </div>

    <div class="col-6">
      <h1>Produkter</h1>
      <div class="product-row">
        <?php
        //Set up variables
        $server = 'localhost:8889';
        $user = 'root';
        $pw = 'musse';
        $db = 'Lokalristeriet';

        //Create connection
        $conn = new mysqli($server, $user, $pw, $db);
        //Check connection
        if ($conn->connect_error) {
              die("Connection failes: " .$conn->connect_error);
        }

        $sql = 'SELECT * FROM product;';
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
          while($row = $result->fetch_assoc()) {
            echo '<div class="product-column">
              <div class="product-card">
                <img src="img/coffeeproduct.jpg" alt="Produktbillede">
                <div class="product-text">';
            echo  "<h3>" . $row['product_name'] . "</h3>";
            echo  "<h3>" . $row['price'] . "</h3>";
            echo '</div> <div class="desc-flex">';
            echo "<p>" . $row['product_describtion']  . "</p>";
            echo '<button class="button">Læg i kurven</button>
            </div>
          </div>
        </div>';
          }
        }
        $conn->close();
        ?>
      </div>
    </div>

  </div>
</div>

<footer class="footer-row">
  <div class="footer-content">

  <div class="footer-column">
    <h3>Åbningstider</h3>
      <li>Mandag-Tirsdag: Lukket</li>
      <li>Ondsdag-Torsdag: 08:00-15:00</li>
      <li>Fredag: 08:00-16:00</li>
      <li>Lørdag-Søndag: 09:00-15:00</li>
    </div>

    <div class="footer-column">
    <h3>Kontakt</h3>
      <li>Tlf: +45 22 80 53 32</li>
      <li>Email: lokalristeeriet@kaffe.dk</li>
      <li>Adresse: Tolderlundsvej 1, st. th, 5000 Odense</li>
    </div>
  </div>
</footer-end>



</body>
</html>
