<%@ page import="org.fiap.vinheria_agnello.model.Subscription" %>
<%@ page import="java.util.List" %><%--
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
    <link rel="stylesheet" href="./assets/css/style.css">
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


    <section aria-labelledby="assinaturas" class="assinaturas">
        <div class="assinaturas-titlevector">
            <h2 id="assinaturas">Nossas assinaturas</h2>
            <img src="./assets/img/vector.png" alt=""></div>
        <nav aria-label="Filtros de assinatura" class="assinaturas-btns">
            <c:forEach var="subscription" items="${subscriptions}">
                <button class="assinaturas-btn">
                    <p class="btn-title">${subscription.name}</p>
                    <p class="btn-subtitle">${subscription.subtitle}</p>
                    <p class="hidden btn-desc">${subscription.description}</p>
                </button>
            </c:forEach>
        </nav>
                <div class="assinaturas-info">
                    <div class="assinaturas-desctitle">
                        <div class="assinaturas-desc">
                            <div class="assinaturas-title">
                                <h3 >CONFORTO</h3>
                                <h4>Vinhos personalizados ao seu gosto.</h4>
                            </div>
                            <p class="assinatura-desc">Receba vinhos perfeitamente alinhados ao seu perfil de sabor segundo suas avaliações e seu questionário de vinhos. Esta assinatura é customizada para ecoar seu paladar, garantindo que cada garrafa seja uma escolha segura e satisfatória.
                            </p>
                        </div>
                        <div>

                            <div class="quest-e-assinatura">            <p class="duvida">Ficou em dúvida? Preencha nosso questionário e descubra a assinatura que mais combina com você!</p>
                                <div class="quest-e-assinatura-btns">            <button class="assinaturas-btn1"><p class="assinaturas-btn1-title">Descobrir minha assinatura ideal</p> <img src="../assets/img/arrow-right.png" alt=""></button>
                                    <button class="assinaturas-btn2">Assinar</button></div>
                            </div>

                        </div>
                    </div>
                    <figure>
                        <img src="./assets/img/wine-images.png" alt="Imagem dos vinhos Agnello">
                    </figure>
                </div>
    </section>


    <section aria-labelledby="sobre-nos" class="about-us">
        <h2 id="sobre-nos" >Conheça mais sobre a Agnello</h2>
        <div class="agnello-owners">
            <figure>
                <img src="./assets/img/agnello-owners.png" alt="Imagem de Giulio e Bianca Agnello">
            </figure>
            <article class="about-us-desc">
                <p >
                    A Vinheria Agnello é o fruto da paixão e da tradição passada de geração para geração. Fundada por Giulio Agnello, um imigrante italiano apaixonado pelo vinho e pelas histórias que cada garrafa conta, a vinheria é um pedaço da Itália no coração da cidade. Mais do que um espaço de vendas, é um refúgio para apreciadores e curiosos, onde cada visita é um convite à descoberta.
                    <br>
                    <br>
                    Hoje, Giulio compartilha a gestão da vinheria com sua filha, Bianca Agnello, que cresceu entre vinhedos e barris, absorvendo desde cedo os segredos da vinicultura e o verdadeiro valor da hospitalidade. Com sua visão contemporânea, Bianca integrou à tradição familiar um olhar voltado para a sustentabilidade, a tecnologia e a experiência do cliente, trazendo frescor e inovação ao negócio.
                    <br>
                    <br>
                    Juntos, pai e filha unem o melhor dos dois mundos: Giulio, com sua vasta experiência, é referência na curadoria de rótulos raros e exclusivos, e mantém relações próximas com pequenos produtores na Itália e em outras regiões clássicas do vinho. Bianca, por sua vez, transformou a Vinheria Agnello em um espaço multifuncional e sensorial — onde eventos, degustações temáticas, harmonizações e experiências culturais criam momentos únicos para quem cruza suas portas.
                    <br>
                    <br>
                    Cada detalhe, da escolha dos vinhos à ambientação da loja, foi pensado para transportar os visitantes a uma verdadeira viagem pelos sabores, aromas e histórias que só o vinho pode proporcionar. A Vinheria Agnello não vende apenas garrafas — entrega memórias engarrafadas, celebrações de vidas bem vividas e conexões que atravessam o tempo.
                </p>
                <div>
                    <img src="./assets/img/agnello-signatures.png" alt="Assinatura Giulio Agnello" class="agnello-signatures">
                </div>
            </article>
        </div>
    </section>

    <section aria-labelledby="instagram" class="instagram">
        <div class="instagram-title">
            <h2 id="instagram">Nos siga no instagram<br>@agnellovinheria</h2>
            <button aria-label="Abrir Instagram"><img src="./assets/img/instagram-btn.png" alt=""></button>
        </div>
        <div class="instagram-images">
            <figure><img src="./assets/img/insta1.png" alt="Imagem Instagram 1"></figure>
            <figure><img src="./assets/img/insta2.png" alt="Imagem Instagram 2"></figure>
            <figure><img src="./assets/img/insta3.png" alt="Imagem Instagram 3"></figure>
            <figure><img src="./assets/img/insta4.png" alt="Imagem Instagram 4"></figure>

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

