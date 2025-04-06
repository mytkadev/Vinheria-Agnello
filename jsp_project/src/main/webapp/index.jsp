<%--
  Created by IntelliJ IDEA.
  User: Matheus
  Date: 4/5/2025
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%//#TODO:Adicionar referência de todos os assets vindo do S3.%>
<html lang="pt-BR">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <meta charset="UTF-8"> <!-- Define a codificação de caracteres para UTF-8 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Define a viewport para a responsividade -->
    <meta name="description" content="A Vinheria Agnello une tradição e inovação para oferecer vinhos selecionados, experiências únicas e um pedaço da Itália na sua taça."> <!-- Essa é a parte que irá aparecer debaixo do nome do site no Google -->
    <meta name="keywords" content="vinhos, loja de vinhos, comprar vinho online, assinatura de vinhos, clube do vinho, adega online, vinhos por assinatura, vinho em casa, vinho tinto, vinho branco, vinho rosé, vinho seco, vinho suave, espumante, vinho nacional, vinho importado, vinho chileno, vinho argentino, vinho português, vinho italiano, vinho francês, vinho brasileiro, presente vinho, vinho para jantar, harmonização de vinhos, vinho para iniciantes, seleção de vinhos, sommelier online, vinho em São Paulo, entrega de vinhos SP, loja de vinhos SP"> <!-- Define keywords para ferramentas de busca -->
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Vinheria Agnello | Loja e Assinatura de Vinhos</title> <!-- Título da página // máximo 65 caracteres-->
    <link rel="shortcut icon" type="imagex/png" href="#"> <!-- Define o favicon da página -->
    <link href="https://fonts.googleapis.com/css2?family=Instrument+Serif:ital@0;1&family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&display=swap" rel="stylesheet">
    <title>Vinheria Agnello</title>
</head>
<body>
<div class="cart-popup hidden" id="cart-popup">
    <p class="cart-title">Seu carrinho até agora:</p>
    <div class="cart-item">
        <img src="assets/img/wine-cart.png" alt="Ravenwood Elite Merlot" class="cart-item-img">
        <div>
            <p class="item-title">Ravenwood Elite Merlot</p>
            <p class="item-price">R$ 197,85</p>
            <div class="wine-quant">
                <button class="wine-quant-minus"><img src="assets/img/minus.png" alt="Diminuir uma unidade ou retirar do carrinho" width="12px"></button>
                <p class="wine-quant-number">1</p>
                <button class="wine-quant-plus"><img src="assets/img/plus.png" alt="Acrescentar mais uma unidade no carrinho" width="12px"></button></div>

        </div>
    </div>
    <div class="buy">
        <button class="checkout-btn">Finalizar compra</button>
    </div>

</div>

<div class="login-popup hidden" id="login-popup">
    <form id="login" onsubmit="login(event)">
        <button type="submit">Fazer login</button>
    </form>
</div>



<header>
    <nav class="navbar">
        <a href="#"><img src="assets/img/navbar-logo.png" alt="Logo da Vinheria Agnello" width="125"></a>
        <div class="pages-and-search">
            <ul class="pages">
                <li><a href="#">Vinhos</a></li>
                <li><a href="#">Assinaturas</a></li>
                <li><a href="#">Sobre nós</a></li>
            </ul>
            <div class="buscar">
                <img src="assets/img/search.png" alt="">
                <form role="search" >
                    <input type="text" placeholder="Buscar vinhos" name="buscar">
                </form>
            </div>
        </div>
        <div class="cart-and-login">
            <button>
                <div class="cart"><img src="assets/img/cart.png" alt="" width="32px">
                    <div class="cart-number"><p>0</p></div>
                </div>
            </button>


            <button class="login-button" id="login-button">
                <div>
                    <img src="assets/img/logged-out-profile.png" alt="Foto de perfil" width="32px">
                </div>
            </button>
            <button class="menu-toggle" aria-label="Abrir menu">
                <img src="assets/img/menu.png" alt="Ícone de menu" width="32">
            </button>
        </div>



    </nav>
</header>

<main>
    <section aria-label="Banners">
        <a href="#"><img src="assets/img/banner.png" alt="Banners rotativos da Agnelo // Banner sobre assinaturas Agnello" class="banner"></a>
    </section>

    <section aria-labelledby="novidades" class="novidades">
        <div class="news-title">
            <h2 id="novidades">Acabaram de chegar</h2>
            <img src="<%= request.getContextPath() %>/assets/img/vector.png" alt="">
        </div>

        <div class="news-cards">
            <c:forEach var="wine" items="${wines}">
                <article class="wine-card">
                    <div class="wine-top-labels">
                        <span class="wine-tag hidden">Achamos que você vai gostar</span>
                        <span class="wine-tag hidden">Mais vendidos</span>
                    </div>

                    <div class="wine-card-img">
                        <button class="favorite-btn">
                            <img src="<%= request.getContextPath() %>/assets/img/like.png" alt="Botão de curtir">
                        </button>
                        <img src="${wine.imageUrl}" alt="Garrafa de vinho ${wine.title}">
                    </div>

                    <button class="add-to-cart-btn">
                        <img src="<%= request.getContextPath() %>/assets/img/cart-white.png" alt="" width="18">
                        Adicionar ao carrinho
                    </button>

                    <div class="wine-info">
                        <div class="name-and-desc">
                            <h3 class="wine-title">${wine.title}</h3>
                            <p class="wine-details">
                                <img src="${wine.originImage}" alt="Origem do vinho"><span> • </span>
                                <span class="wine"><img src="${wine.typeImage}" alt="Tipo"></span><span> • </span>
                                <span>${wine.grape}</span>
                            </p>
                        </div>

                        <p class="wine-price">R$ ${wine.price}</p>
                    </div>
                </article>
            </c:forEach>
        </div>
    </section>

    <section aria-labelledby="como-funciona" class="how-it-works">

        <h2 id="como-funciona">Como funciona nossa assinatura?</h2>
        <p>Comece sua aventura pelo mundo dos vinhos com Agnello e descubra a magia de cada garrafa selecionada especialmente para você. Estamos aqui para tornar cada gole uma experiência memorável!</p>
        <div>
            <article></article>
            <article></article>
            <img src="assets/img/assinatura-full.png" alt="Imagem comparativa para mobile ou desktop">
            <article></article>
        </div>
        <div class="know-section">
            <a href="#">Conheça nossas assinaturas</a> <img src="assets/img/down-arrow.png" alt="">
        </div>
    </section>

    <section aria-labelledby="assinaturas">
        <h2 id="assinaturas">Nossas assinaturas</h2>
        <nav aria-label="Filtros de assinatura">
            <button></button>
            <button></button>
            <button></button>
            <button></button>
        </nav>
        <article>
            <div>
                <header>
                    <h3>Título do modelo de assinatura</h3>
                    <h4>Subtítulo do modelo de assinatura</h4>
                </header>
                <p>Descrição da assinatura</p>
                <div>
                    <p>Ficou em dúvida? Preencha nosso questionário e descubra a assinatura que mais combina com você!</p>
                    <button>Descobrir minha assinatura ideal</button>
                    <button>Assinar</button>
                </div>
            </div>
            <figure>
                <img src="" alt="Imagem dos vinhos Agnello">
            </figure>
        </article>
    </section>

    <section aria-labelledby="sobre-nos">
        <h2 id="sobre-nos">Conheça mais sobre a Agnello</h2>
        <div>
            <figure>
                <img src="" alt="Imagem de Giulio e Bianca Agnello">
            </figure>
            <article>
                <p>
                    A Vinheria Agnello é o fruto da paixão e tradição passada de geração para geração. Fundada por Giulio Agnello, um imigrante italiano apaixonado pelo vinho e pelas histórias que cada garrafa conta, a vinheria é um pedaço da Itália no coração da cidade. Hoje, Giulio compartilha a gestão da vinheria com sua filha, Bianca Agnello, que cresceu entre os vinhedos e barris, aprendendo com seu pai não só a arte da vinicultura, mas também o valor do atendimento ao cliente e a importância de criar experiências memoráveis.

                    Giulio, com seu vasto conhecimento e contatos no mundo dos vinhos, é conhecido por sua habilidade em selecionar os melhores rótulos, enquanto Bianca traz um toque moderno ao negócio, focando na sustentabilidade e na inovação. Juntos, eles garantem que a Vinheria Agnello ofereça não apenas vinhos de qualidade, mas também uma jornada cultural e sensorial para seus clientes.
                </p>
                <div>
                    <img src="" alt="Assinatura Giulio Agnello">
                    <img src="" alt="Assinatura Bianca Agnello">
                </div>
            </article>
        </div>
    </section>

    <section aria-labelledby="instagram">
        <div>
            <h2 id="instagram">Nos siga no instagram<br>@agnellovinheria</h2>
            <button aria-label="Abrir Instagram">Botão circular instagram</button>
        </div>
        <div>
            <figure><img src="" alt="Imagem Instagram 1"></figure>
            <figure><img src="" alt="Imagem Instagram 2"></figure>
            <figure><img src="" alt="Imagem Instagram 3"></figure>
            <figure><img src="" alt="Imagem Instagram 4"></figure>
            <figure><img src="" alt="Imagem Instagram 5"></figure>
        </div>
    </section>
</main>

<footer>
    <p>© 1986 Vinheria Agnello</p>
    <nav aria-label="Links de rodapé">
        <a href="#">Privacidade</a>
        <a href="#">Termos</a>
        <a href="#">Informações da Empresa</a>
    </nav>
</footer>

<script src="assets/js/script.js"></script>

</body>
</html>

