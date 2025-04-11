<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Matheus
  Date: 4/9/2025
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Agnello Vinhos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>

<header>
    <nav class="navbar">
        <a href="${pageContext.request.contextPath}/index"><img src="./assets/img/navbar-logo.png" alt="Logo da Vinheria Agnello" width="125"></a>
        <div class="pages-and-search">
            <ul class="pages">
                <li><a href="#">Vinhos</a></li>
                <li><a href="#">Assinaturas</a></li>
                <li><a href="#">Sobre nós</a></li>
            </ul>
            <div class="buscar">
                <img src="./assets/img/search.png" alt="">
                <form role="search">
                    <input type="text" placeholder="Buscar vinhos" name="buscar">
                </form>
            </div>
        </div>
        <div class="cart-and-login">
            <button>
                <div class="cart"><img src="./assets/img/cart.png" alt="" width="32px">
                    <div class="cart-number"><p>0</p></div>
                </div>
            </button>


            <button class="login-button" id="login-button">
                <div>
                    <img src="./assets/img/logged-out-profile.png" alt="Foto de perfil" width="32px">
                </div>
            </button>
            <button class="menu-toggle" aria-label="Abrir menu">
                <img src="./assets/img/menu.png" alt="Ícone de menu" width="32">
            </button>
        </div>
    </nav>
</header>

<main>
    <section class="marketplace-banner">
        <img src="./assets/img/marketplace-header.png" alt="Pessoas brindando com vinho" width="100%">
    </section>

    <div class="marketplace">
        <aside>
            <p class="found-products"><span class="products-quant">${wines.size()}</span> produtos encontrados</p>
            <button><img src="./assets/img/aside-img.png"
                         alt="Conheça nossas assinaturas e receba vinhos exclusivos e com a sua cara"></button>
            <div class="filters-title">
                <h2>Filtros</h2>
                <button class="clear-filters">
                    <img src="./assets/img/clean-filter.png" alt="">
                    <p>Limpar filtros</p>
                </button>
            </div>
            <div class="all-filters">
                <div>
                    <button class="filter-title-comp">
                        <h3 class="filter-title">Faixa de preço</h3></button>

                    <ul class="filter-checkbox">
                        <li><input type="checkbox"/> Até R$40</li>
                        <li><input type="checkbox"/> R$40 a R$60</li>
                        <li><input type="checkbox"/> R$60 a R$100</li>
                        <li><input type="checkbox"/> R$100 a R$200</li>
                        <li><input type="checkbox"/> Acima de R$200</li>
                    </ul>
                </div>
                <div>
                    <button class="filter-title-comp">
                        <h3 class="filter-title">Tipo</h3>
                    </button>

                    <ul class="filter-checkbox">
                        <li><input type="checkbox"/> Tinto</li>
                        <li><input type="checkbox"/> Rosé</li>
                        <li><input type="checkbox"/> Branco</li>
                        <li><input type="checkbox"/> Seco</li>
                        <li><input type="checkbox"/> Suave</li>
                    </ul>
                </div>
                <div>
                    <button class="filter-title-comp">
                        <h3 class="filter-title">Países</h3>
                    </button>

                    <ul class="filter-checkbox">
                        <li><input type="checkbox"/> Argentina</li>
                        <li><input type="checkbox"/> Itália</li>
                        <li><input type="checkbox"/> França</li>
                        <li><input type="checkbox"/> Portugal</li>
                        <li><input type="checkbox"/> Espanha</li>
                        <li><input type="checkbox"/> Brasil</li>
                        <li><input type="checkbox"/> Chile</li>
                    </ul>
                </div>
                <div>
                    <button class="filter-title-comp">
                        <h3 class="filter-title">Uvas</h3>
                    </button>

                    <ul class="filter-checkbox">
                        <li><input type="checkbox"/> Cabernet Sauvignon</li>
                        <li><input type="checkbox"/> Blend</li>
                        <li><input type="checkbox"/> Pinot Noir</li>
                    </ul>
                </div>
                <div>
                    <button class="filter-title-comp">
                        <h3 class="filter-title">Região</h3>
                    </button>

                    <ul class="filter-checkbox">
                        <li><input type="checkbox"/> Navarra</li>
                        <li><input type="checkbox"/> Borgonha</li>
                        <li><input type="checkbox"/> Toscana</li>
                    </ul>
                </div>
                <div>
                    <button class="filter-title-comp">
                        <h3 class="filter-title">Harmonização</h3>
                    </button>

                    <ul class="filter-checkbox">
                        <li><input type="checkbox"/> Pizza</li>
                        <li><input type="checkbox"/> Massa</li>
                        <li><input type="checkbox"/> Queijos</li>

                    </ul>
                </div>
            </div>
        </aside>
        <div class="filters-container">

            <aside class="filters">
                <h2>Filtros</h2>
                <div>
                    <h3>Faixa de preço</h3>
                    <ul>
                        <li><input type="checkbox"/> Até R$40</li>
                        <li><input type="checkbox"/> R$40 a R$60</li>
                        <li><input type="checkbox"/> R$60 a R$100</li>
                        <li><input type="checkbox"/> R$100 a R$200</li>
                        <li><input type="checkbox"/> Acima de R$200</li>
                    </ul>
                </div>
                <div>
                    <h3>Tipo</h3>
                    <ul>
                        <li><input type="checkbox"/> Tinto</li>
                        <li><input type="checkbox"/> Rosé</li>
                        <li><input type="checkbox"/> Branco</li>
                    </ul>
                </div>
                <div>
                    <h3>País</h3>
                    <ul>
                        <li><input type="checkbox"/> Brasil</li>
                        <li><input type="checkbox"/> Argentina</li>
                        <li><input type="checkbox"/> França</li>
                    </ul>
                </div>
            </aside>
        </div>

        <section class="catalogo">
            <div class="ordenar">
                <label>Ordenar por:</label>
                <select>
                    <option>Maior afinidade</option>
                    <option>Mais vendido</option>
                    <option>Menor preço</option>
                    <option>Maior preço</option>
                </select>
            </div>

            <div class="produtos">
                <c:forEach var="wine" items="${wines}">
                    <article class="wine-card">
                        <a href="${pageContext.request.contextPath}/product?wineID=${wine.id}">
                            <div class="wine-top-labels">
                                <span class="wine-tag hidden">Achamos que você vai gostar</span>
                                <span class="wine-tag hidden">Mais vendidos</span>
                            </div>
                            <div class="wine-card-img">
                                <button class="favorite-btn"><img
                                        src="<%= request.getContextPath() %>/assets/img/like.png" alt="Botão de curtir">
                                </button>
                                <img src="${wine.imageUrl}" alt="Garrafa de vinho ${wine.title}">
                            </div>
                        </a>
                        <button class="add-to-cart-btn">
                            <img src="<%= request.getContextPath() %>/assets/img/cart-white.png" alt="" width="18">
                            Adicionar ao carrinho
                        </button>
                        <a href="${pageContext.request.contextPath}/product?wineID=${wine.id}" class="wine-info">
                            <div class="name-and-desc">
                                <h3 class="wine-title">${wine.title}</h3>
                                <p class="wine-details">
                                    <img src="${wine.originImage}" alt="origem do vinho"><span> • </span><span
                                        class="wine"><img src="${wine.typeImage}"
                                                          alt="">Tinto</span><span> • </span><span>${wine.grape}</span>
                                </p>
                            </div>
                            <p class="wine-price">R$ ${wine.price}</p>
                        </a>
                    </article>
                </c:forEach>

            </div>


            <button>Mostrar mais produtos</button>
        </section>
    </div>
</main>

<footer class="footer-marketplace">
    <p>© 1986 Vinheria Agnello · Privacidade · Termos · Informações da empresa</p>
</footer>
<script src="./assets/js/script.js"></script>
</body>
</html>
