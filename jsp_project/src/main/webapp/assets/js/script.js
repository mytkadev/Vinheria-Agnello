function showForm(formId) {
    document.querySelectorAll('.tab').forEach(tab => tab.classList.remove('active'));
    document.querySelectorAll('form').forEach(form => form.classList.remove('active'));

    document.querySelector(`.tab[onclick="showForm('${formId}')"]`).classList.add('active');
    document.getElementById(formId).classList.add('active');
    document.getElementById('mensagem').textContent = '';
}

function login(e) {
    e.preventDefault();
    const email = document.querySelector('#login input[type="email"]').value;
    const senha = document.querySelector('#login input[type="password"]').value;
    document.getElementById('mensagem').textContent = `Login bem-sucedido com ${email}`;
}

function cadastro(e) {
    e.preventDefault();
    const nome = document.querySelector('#cadastro input[type="text"]').value;
    const email = document.querySelector('#cadastro input[type="email"]').value;
    const senha = document.querySelector('#cadastro input[type="password"]').value;
    document.getElementById('mensagem').textContent = `Cadastro realizado para ${nome}`;
}

const toggleButton = document.querySelector('.menu-toggle');
const menu = document.querySelector('.pages-and-search');

toggleButton.addEventListener('click', () => {
    menu.classList.toggle('open');
});

const cartButton = document.querySelector('.cart');
const cartPopup = document.getElementById('cart-popup');


const loginButton = document.getElementById('login-button');
const loginPopup = document.getElementById('login-popup');

cartButton.addEventListener('click', (event) => {
    event.stopPropagation();
    cartPopup.classList.toggle('hidden');


    if (!loginPopup.classList.contains('hidden')) {
        loginPopup.classList.add('hidden');
    }
});

loginButton.addEventListener('click', (event) => {
    event.stopPropagation();
    loginPopup.classList.toggle('hidden');

    if (!cartPopup.classList.contains('hidden')) {
        cartPopup.classList.add('hidden');
    }
});

document.addEventListener('click', function (event) {
    if (!cartPopup.contains(event.target) && !cartButton.contains(event.target)) {
        cartPopup.classList.add('hidden');
    }

    if (!loginPopup.contains(event.target) && !loginButton.contains(event.target)) {
        loginPopup.classList.add('hidden');
    }
});