<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar mascota</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e3f2fd; /* Fondo celeste */
            color: #333; /* Texto oscuro para contraste */
        }
    </style>
</head>
<body class="container py-5">
    <h1 class="mb-4">Editar mascota</h1>
    <form action="${pageContext.request.contextPath}/animal/actualizar/${animal.id}" method="post">
        <div class="mb-3">
            <label for="tutor" class="form-label">Tutor:</label>
            <input type="text" id="tutor" name="tutor" class="form-control" value="${animal.tutor}" required>
        </div>
        <div class="mb-3">
            <label for="contacto" class="form-label">Contacto:</label>
            <textarea id="contacto" name="contacto" class="form-control" rows="4" required>${animal.contacto}</textarea>
        </div>
        <div class="mb-3">
            <label for="categoria" class="form-label">Categoría:</label>
            <input type="text" id="categoria" name="categoria" class="form-control" value="${animal.categoria}" required>
        </div>
        <div class="mb-3">
            <label for="fechaNacimiento" class="form-label">fechaNacimiento:</label>
            <input type="text" id="fechaNacimiento" name="fechaNacimiento" class="form-control" value="${animal.fechaNacimiento}" required>
        </div>
        <button type="submit" class="btn btn-primary">Actualizar</button>
        <a href="${pageContext.request.contextPath}/animal" class="btn btn-secondary">Volver a la Lista</a>
    </form>
</body>
</html>
