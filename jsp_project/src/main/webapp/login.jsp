<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ana Vitória Silva // https://www.linkedin.com/in/anavitoriabaetas/">

    <!-- Use context path to properly resolve paths -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css">

    <title>Vinheria Agnello | Login</title>
    <link rel="shortcut icon" type="imagex/png" href="${pageContext.request.contextPath}/assets/img/favicon.png">
</head>
<body>

<div class="container">
    <img src="${pageContext.request.contextPath}/assets/img/navbar-logo.png" alt="Vinheria Agnello Logo">

    <p>Bem-vindo à Agnello! Entre na sua conta para aproveitar produtos e assinaturas feitas especialmente para você.</p>

    <div class="tabs">
        <div class="tab active" onclick="showForm('login')">Login</div>
        <div class="tab" onclick="showForm('cadastro')">Cadastro</div>
    </div>

    <!-- Formulário de Login -->
    <form action="${pageContext.request.contextPath}/servlets/login" method="post" id="login" class="active">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Senha" required>
        <a href="#" class="forgot-password">Esqueceu sua senha?</a>
        <button type="submit">Entrar</button>
    </form>

    <!-- Formulário de Cadastro -->
    <form action="${pageContext.request.contextPath}/servlets/register" method="post" id="cadastro" method="post">
        <input type="text" placeholder="Nome" name="name" required>
        <input type="email" placeholder="Email" name="email" required>
        <input type="password" placeholder="Senha" name="password" required>
        <button type="submit">Cadastrar</button>
    </form>


    <% String msg = (String) request.getAttribute("mensagem"); %>
    <% if (msg != null) { %>
    <div id="mensagem" class="message"><%= msg %></div>
    <% } %>
</div>

<script src="${pageContext.request.contextPath}/assets/js/script.js"></script>
</body>
</html>