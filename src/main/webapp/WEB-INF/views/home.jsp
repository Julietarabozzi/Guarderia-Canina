<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio - Guardería de Mascotas</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #e3f2fd; /* Fondo celeste */
            color: #333; /* Texto oscuro para contraste */
        }
        .welcome-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .hero-image {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body class="text-center py-5">
    <div class="welcome-container">
        <h1 class="mb-3">Registro de Mascotas en la Guardería</h1>
        <img 
            src="${pageContext.request.contextPath}/images/istockphoto-1417882544-612x612.jpg" 
            alt="Perros y gatos juntos" 
            class="hero-image"
        >
        <p class="mb-4 fs-5">
            Bienvenido al sistema de gestión de nuestra guardería de mascotas. Aquí, los cuidadores pueden registrar y administrar información sobre los animales que están bajo su cuidado, asegurando un servicio de alta calidad y atención personalizada.
        </p>
        <a href="${pageContext.request.contextPath}/animal" class="btn btn-primary btn-lg">
            Registrar Mascotas
        </a>
    </div>
</body>
</html>
