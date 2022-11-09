import validator from 'validator';
import './style.css'

const input = document.getElementById('input');
const select = document.getElementById('select');
const button = document.getElementById('button');
const frase = document.getElementById('frase');

button.addEventListener('click', (event) => {
  event.preventDefault();
  const obj = {
    data: validator.isAfter(input.value),
    email: validator.isEmail(input.value),
    cpf: validator.isTaxID(input.value, 'pt-BR'),
    url: validator.isURL(input.value),
    vazio: validator.isEmpty(input.value),
  }
  frase.innerHTML = `A validação retornou: ${obj[select.value]}`
})
