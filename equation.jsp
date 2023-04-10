<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    // récupération des valeurs des coefficients a, b et c depuis le formulaire
    float a = Float.parseFloat(request.getParameter("t"));
    float b = Float.parseFloat(request.getParameter("t1"));
    float c = Float.parseFloat(request.getParameter("t2"));

    // calcul du discriminant
    float delta = b*b - 4*a*c;

    if (delta < 0) {
        // si le discriminant est négatif, afficher un message d'erreur avec un fond rouge
        out.print("<div style=\"background-color:red;\">Aucun résultat réel</div>");
    } else if (delta == 0) {
        // si le discriminant est nul, afficher le résultat avec un fond blanc
        float x = -b / (2*a);
        out.print("<div style=\"background-color:white;\">La solution est : " + x + "</div>");
    } else {
        // si le discriminant est positif, afficher les deux résultats avec un fond vert
        float x1 = (-b - (float)Math.sqrt(delta)) / (2*a);
        float x2 = (-b + (float)Math.sqrt(delta)) / (2*a);
        out.print("<div style=\"background-color:green;\">Les solutions sont : " + x1 + " et " + x2 + "</div>");
    }
    %>

</body>
</html>