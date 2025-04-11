<%--
  Created by IntelliJ IDEA.
  User: Matheus
  Date: 4/9/2025
  Time: 8:10 PM
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
        <a href="${pageContext.request.contextPath}/index"><img src="./assets/img/navbar-logo.png" alt="Logo da Vinheria Agnello" width="125px"></a>
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
                <img src="./assets/img/menu.png" alt="Ícone de menu" width="32px">
            </button>
        </div>
    </nav>
</header>

<main>
    <div class="product-section">
        <img src="${pageContext.request.contextPath}/assets/img/product-wine.png" alt="" class="product-wine-img">
        <div class="product-winesection">
            <div class="wine-firstsection">
                <a href="./marketplace">vinhos /</a>
                <%--<a href="/pages/marketplace.html">vinhos /</a>--%>
                <h1>${wine.title}</h1>
                <div class="price-av">
                    <p>R$ ${wine.price}</p>
                    <img src="${pageContext.request.contextPath}/assets/img/product-av.png" alt="">
                </div>
            </div>
            <div class="wine-secondthird">
                <div class="wine-secondsection">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus dignissim metus at eleifend. Vestibulum orci tellus, scelerisque eu justo sed, venenatis dapibus est. Pellentesque cursus, purus sed malesuada maximus, urna nisi malesuada tellus, volutpat elementum mi lacus in purus. Sed ac purus dictum, lacinia quam sed, aliquam nunc. Phasellus vestibulum ante ornare, fermentum orci quis, rhoncus eros. Sed semper, odio accumsan luctus rhoncus, dui eros interdum nisl, sed blandit neque tortor a sapien. </p>
                    <div>
                        <h3>Sabores:</h3>
                        <img src="${pageContext.request.contextPath}/assets/img/wine-flavours.png" alt="">
                    </div>
                    <div>
                        <button class="add-product">
                            <img src="${pageContext.request.contextPath}/assets/img/cart-white.png" alt="">
                            <p>Adicionar ao carrinho</p>
                        </button>
                    </div>
                </div>

                <div class="wine-thirdsection">
                    <h3>Ficha Técnica:</h3>
                    <div class="wine-tec">
                        <img src="${pageContext.request.contextPath}/assets/img/wine-info1.png" alt="">
                        <img src="${pageContext.request.contextPath}/assets/img/wine-info2.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="comments-section">
        <div class="section">
            <div class="comments-section-title">
                <h4>Avaliações e comentários:</h4>
                <div>
                    <div class="avaliation">
                        <span>4.2</span>
                        <img src="${pageContext.request.contextPath}/assets/img/comments-img.png" alt="">
                    </div>
                    <p>Baseado em 12 avaliações</p>
                </div>
            </div>

            <div class="coomments">
                <div class="comment">
                    <div class="comment-user">
                        <img src="${pageContext.request.contextPath}/assets/img/profile1.png" alt="">
                        <div>
                            <p class="username">Ana Vitória Baetas da Silva</p>
                            <div class="comment-date">
                                <p>05/02/23</p>
                                <img src="./assets/img/comments-img.png" alt="" height="14px">
                            </div>
                        </div>
                    </div>
                    <div class="comment-content">
                        <p class="comment-title">Muito bom!</p>
                        <p>Pellentesque cursus, purus sed malesuada maximus, urna nisi malesuada tellus, volutpat elementum mi lacus in purus. Sed ac purus dictum, lacinia quam sed, aliquam nunc.</p>
                    </div>

                </div>
                <div class="comment">
                    <div class="comment-user">
                        <img src="${pageContext.request.contextPath}/assets/img/profile2.png" alt="">
                        <div>
                            <p class="username">Matheus Guedes Bertaiolli </p>
                            <div class="comment-date">
                                <p>03/02/23</p>
                                <img src="./assets/img/comments-img.png" alt="" height="14px">
                            </div>
                        </div>
                    </div>
                    <div class="comment-content">
                        <p class="comment-title">Excelente</p>
                        <p>Pellentesque cursus, purus sed malesuada maximus, urna nisi malesuada tellus, volutpat elementum mi lacus in purus. Sed ac purus dictum, lacinia quam sed, aliquam nunc.</p>
                    </div>

                </div>
                <div class="comment">
                    <div class="comment-user">
                        <img src="${pageContext.request.contextPath}/assets/img/profile3.png" alt="">
                        <div>
                            <p class="username">Rodrigo Fernandes</p>
                            <div class="comment-date">
                                <p>16/01/23</p>
                                <img src="${pageContext.request.contextPath}/assets/img/comments-img.png" alt="" height="14px">
                            </div>
                        </div>
                    </div>
                    <div class="comment-content">
                        <p class="comment-title">Gostei.</p>
                        <p>Pellentesque cursus, purus sed malesuada maximus, urna nisi malesuada tellus, volutpat elementum mi lacus in purus. Sed ac purus dictum, lacinia quam sed, aliquam nunc.Pellentesque cursus, purus sed malesuada maximus, urna nisi malesuada tellus, volutpat elementum mi lacus in purus. Sed ac purus dictum, lacinia quam sed, aliquam nunc.Pellentesque cursus, purus sed malesuada maximus, urna nisi malesuada tellus, volutpat elementum mi lacus in purus. Sed ac purus dictum, lacinia quam sed, aliquam nunc..</p>
                    </div>

                </div>
            </div>

        </div>
    </div>






</main>

<footer class="footer-marketplace">
    <p>© 1986 Vinheria Agnello · Privacidade · Termos · Informações da empresa</p>
</footer>
<script src="./assets/js/script.js"></script>
</body>
</html>
