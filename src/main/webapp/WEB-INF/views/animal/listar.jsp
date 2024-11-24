<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listar Mascotas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
</body>
</html>
