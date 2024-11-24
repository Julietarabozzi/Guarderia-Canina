<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Mascotas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e3f2fd; /* Fondo celeste */
            color: #333; /* Texto oscuro para contraste */
        }
        .floating-image {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 150px; /* Ajusta el tamaño según sea necesario */
            height: auto;
            border-radius: 10px; /* Opcional: redondear bordes */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Añade un efecto de sombra */
        }
    </style>
</head>
<body class="container py-5">
    <h1 class="mb-4">Lista Mascotas</h1>
    
    <c:if test="${not empty success}">
        <div class="alert alert-success">${success}</div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="alert alert-danger">${error}</div>
    </c:if>
    
    <a href="${pageContext.request.contextPath}/animal/nuevo" class="btn btn-primary mb-3">Agregar Mascota</a>
    
    <table class="table table-bordered">
        <thead class="table-light">
            <tr>
                <th>ID</th>
                <th>Tutor</th>
                <th>Contacto</th>
                <th>Categoría</th>
                <th>Fecha de Nacimiento</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="animal" items="${animal}">
                <tr>
                    <td>${animal.id}</td>
                    <td>${animal.tutor}</td>
                    <td>${animal.contacto}</td>
                    <td>${animal.categoria}</td>
                    <td>${animal.fechaNacimiento}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/animal/editar/${animal.id}" class="btn btn-sm btn-warning">Editar</a>
                        <a href="${pageContext.request.contextPath}/animal/eliminar/${animal.id}" class="btn btn-sm btn-danger" onclick="return confirm('¿Está seguro de eliminar esta mascota?');">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Imagen flotante en la esquina inferior derecha -->
    <img src="${pageContext.request.contextPath}/images/bichon.jpeg" alt="Bichón" class="floating-image">
</body>
</html>
