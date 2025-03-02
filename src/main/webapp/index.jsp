<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DevOps IDSI1- FSTM</title>

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <!-- Custom CSS -->
  <style>
    body {
      background: #f8f9fa;
      font-family: 'Arial', sans-serif;
    }
    .navbar {
      background: #007bff;
    }
    .navbar-brand {
      font-size: 24px;
      font-weight: bold;
      color: white;
    }
    .navbar-nav .nav-link {
      color: white !important;
      font-weight: bold;
    }
    .masthead {
      background: linear-gradient(to right, #007bff, #6610f2);
      color: white;
      padding: 80px 20px;
      text-align: center;
    }
    .masthead img {
      max-width: 120px;
      border-radius: 10px;
    }
    .masthead h1 {
      font-size: 28px;
      margin-top: 15px;
    }
    .section-title {
      font-size: 26px;
      font-weight: bold;
      text-align: center;
      margin-bottom: 20px;
      color: #007bff;
    }
    .divider {
      width: 60px;
      height: 4px;
      background: #007bff;
      margin: 10px auto;
    }
    .about-content {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    .about-content p {
      text-align: justify;
    }
    .about-content ul {
      list-style: none;
      padding-left: 0;
    }
    .about-content ul li {
      padding: 5px 0;
    }
  </style>
</head>
<body>


<nav class="navbar navbar-expand-lg fixed-top">
  <div class="container">
    <a class="navbar-brand" href="#">DevOps - FSTM</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link btn btn-light text-dark px-3" href="logout">Deconnexion</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Section d'en-tete -->
<header class="masthead">
  <div class="container">
    <img src="assets/Logo.png" alt="Logo">
    <h1>Bienvenue, Professeur SBAI HANAE</h1>
    <h3>Nous esperons que vous apprecierez notre presentation</h3>
  </div>
</header>

<!-- Section "A propos" -->
<section class="container my-5">
  <h2 class="section-title">A propos de nous</h2>
  <div class="divider"></div>

  <div class="row">
    <div class="col-md-6">
      <div class="about-content">
        <p><strong>Ce projet a ete realise par les etudiants de la FSTM


          :</strong></p>
        <ul>
          <li><i class="fas fa-user"></i> Aghzer Ouassima</li>
          <li><i class="fas fa-user"></i> El Bahy Najoua</li>
          <li><i class="fas fa-user"></i> Hassouan Afrae</li>
          <li><i class="fas fa-user"></i> Kachoub Hanaa</li>
        </ul>
      </div>
    </div>
    <div class="col-md-6">
      <div class="about-content">
        <p><strong>Faculte des Sciences et Techniques Mohammedia (FSTM) :</strong></p>
        <p>La FSTM est une institution d'enseignement superieur au Maroc, faisant partie de l'Universite Hassan II de Casablanca. Elle offre une formation d'excellence en sciences et techniques et joue un role cle dans la recherche et l'innovation.</p>

        <p><strong>Diplomes proposes :</strong></p>
        <ul>
          <li><i class="fas fa-graduation-cap"></i> Licence en Sciences et Techniques</li>
          <li><i class="fas fa-graduation-cap"></i> Master en Sciences et Techniques</li>
          <li><i class="fas fa-graduation-cap"></i> Cycle d'ingeieur</li>

          <li><i class="fas fa-university"></i> Doctorat</li>
        </ul>
        <p><strong>NOTRE FILIERE CYCLE INE INGENIEREIE DATA SCIENCE ET INFORMATIQUE</strong></p>
        <div class="about-content">
        <p>   La filiere d ingenieur Ingenierie Data Science et Informatique s inscrit dans le cadre du projet numerique auquel notre universite participe aujourd’hui afin de contribuer a la formation des futurs ingenieurs repondant ainsi aux nouveaux metiers de lavenir. La science de donnees engendre de nouveaux metiers tel que : Data Architect, Data Analyst, Data Scientist, et Ingenieur Big Data. Ces experts collectent, organisent, traitent et transforment les donnees en informations exploitables pour les entreprises.</p>
          </div>
      </div>
    </div>
  </div>
</section>

<!-- Bootstrap Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
