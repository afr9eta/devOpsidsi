package org.example.demo2;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Informations de connexion à la base de données
    private static final String DB_URL = "jdbc:mysql://localhost:3306/idsi1";
    private static final String DB_USER = "root"; // Remplace par ton user MySQL
    private static final String DB_PASSWORD = "Afrae9eta"; // Remplace par ton mot de passe MySQL

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ucode_edu = request.getParameter("cod_etu");
        String ucne = request.getParameter("cne");
        String unom = request.getParameter("nom");
        String uprenom = request.getParameter("prenom");
        String upass = request.getParameter("pass");
        String re_pass = request.getParameter("re_pass");

        RequestDispatcher dispatcher = null;
        Connection con = null;

        try {
            if (ucode_edu.isEmpty() || ucne.isEmpty() || unom.isEmpty() || uprenom.isEmpty() || upass.isEmpty() || re_pass.isEmpty()) {
                request.setAttribute("status", "empty_field");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            if (!upass.equals(re_pass)) {
                request.setAttribute("status", "password_mismatch");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Vérifier si l'utilisateur existe déjà
            PreparedStatement checkStmt = con.prepareStatement("SELECT * FROM Login WHERE COD_ETU = ?");
            checkStmt.setString(1, ucode_edu);
            ResultSet checkResult = checkStmt.executeQuery();

            if (checkResult.next()) {
                request.setAttribute("status", "user_exists");
                dispatcher = request.getRequestDispatcher("registration.jsp");
                dispatcher.forward(request, response);
                return;
            }

            // Hachage du mot de passe avant de l'enregistrer
            String hashedPassword = hashPassword(upass);

            // Insérer l'utilisateur dans la base de données
            PreparedStatement pst = con.prepareStatement("INSERT INTO Login(COD_ETU, CNE, NOM, PRENOM, PASSWORD) VALUES (?, ?, ?, ?, ?)");
            pst.setString(1, ucode_edu);
            pst.setString(2, ucne);
            pst.setString(3, unom);
            pst.setString(4, uprenom);
            pst.setString(5, hashedPassword);

            int rowcount = pst.executeUpdate();
            dispatcher = request.getRequestDispatcher("registration.jsp");

            if (rowcount > 0) {
                request.setAttribute("status", "success");
            } else {
                request.setAttribute("status", "failed");
            }

            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    // Méthode pour hacher les mots de passe en SHA-256
    private String hashPassword(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hash = md.digest(password.getBytes());
            StringBuilder hexString = new StringBuilder();
            for (byte b : hash) {
                hexString.append(String.format("%02x", b));
            }
            return hexString.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
