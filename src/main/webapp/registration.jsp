<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription - Mini Projet 5</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- SweetAlert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    <style>
        body {
            background: #f8f9fa;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .card {
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .form-title {
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-primary {
            border-radius: 8px;
            background: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background: #0056b3;
        }
        .signup-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
        }
        .signup-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card p-4">
                <div class="text-center">
                    <img src="assets/Logo.png" alt="Logo" class="img-fluid" style="max-width: 120px;">
                    <h2 class="form-title mt-3">Inscription</h2>
                </div>
                <form method="post" action="register">
                    <div class="mb-3">
                        <label for="cod_etu" class="form-label"><i class="fa fa-id-card"></i> Code Etudiant</label>
                        <input type="text" name="cod_etu" id="cod_etu" class="form-control" placeholder="Votre Code Etudiant" required>
                    </div>
                    <div class="mb-3">
                        <label for="cne" class="form-label"><i class="fa fa-id-badge"></i> CNE</label>
                        <input type="text" name="cne" id="cne" class="form-control" placeholder="Votre CNE" required>
                    </div>
                    <div class="mb-3">
                        <label for="nom" class="form-label"><i class="fa fa-user"></i> Nom</label>
                        <input type="text" name="nom" id="nom" class="form-control" placeholder="Votre Nom" required>
                    </div>
                    <div class="mb-3">
                        <label for="prenom" class="form-label"><i class="fa fa-user"></i> Prenom</label>
                        <input type="text" name="prenom" id="prenom" class="form-control" placeholder="Votre Prenom" required>
                    </div>
                    <div class="mb-3">
                        <label for="pass" class="form-label"><i class="fa fa-lock"></i> Mot de passe</label>
                        <input type="password" name="pass" id="pass" class="form-control" placeholder="Votre Mot de passe" required>
                    </div>
                    <div class="mb-3">
                        <label for="re_pass" class="form-label"><i class="fa fa-lock"></i> Confirmer le mot de passe</label>
                        <input type="password" name="re_pass" id="re_pass" class="form-control" placeholder="Répétez votre mot de passe" required>
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">S'inscrire</button>
                    </div>
                </form>
                <a href="login.jsp" class="signup-link">J'ai déjà un compte</a>
            </div>
        </div>
    </div>
</div>

<script>
    var status = document.getElementById("status").value;
    if (status === "password_mismatch") {
        swal("Erreur", "Les mots de passe ne correspondent pas", "error");
    } else if (status === "user_exists") {
        swal("Erreur", "Un utilisateur avec cet ID existe déjà", "error");
    } else if (status === "success") {
        swal("Félicitations", "Compte créé avec succès", "success");
    } else if (status === "empty_field") {
        swal("Erreur", "Veuillez remplir tous les champs", "error");
    }
</script>

<!-- Bootstrap Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
