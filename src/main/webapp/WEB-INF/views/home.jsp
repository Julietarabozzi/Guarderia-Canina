<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body class="container py-5 text-center">
    <h1 class="mb-3">${animal}</h1>
    <p class="mb-4">Bienvenido a la guarderia de mascotas</p>
    <a href="${pageContext.request.contextPath}/animal" class="btn btn-primary">Ir a guarderia</a>
</body>
</html>
