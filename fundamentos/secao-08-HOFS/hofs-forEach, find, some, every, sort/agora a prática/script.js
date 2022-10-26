const books = [
  {
    id: 1,
    name: 'As Crônicas de Gelo e Fogo',
    genre: 'Fantasia',
    author: {
      name: 'George R. R. Martin',
      birthYear: 1948,
    },
    releaseYear: 1991,
  },
  {
    id: 2,
    name: 'O Senhor dos Anéis',
    genre: 'Fantasia',
    author: {
      name: 'J. R. R. Tolkien',
      birthYear: 1892,
    },
    releaseYear: 1954,
  },
  {
    id: 3,
    name: 'Fundação',
    genre: 'Ficção Científica',
    author: {
      name: 'Isaac Asimov',
      birthYear: 1920,
    },
    releaseYear: 1951,
  },
  {
    id: 4,
    name: 'Duna',
    genre: 'Ficção Científica',
    author: {
      name: 'Frank Herbert',
      birthYear: 1920,
    },
    releaseYear: 1965,
  },
  {
    id: 5,
    name: 'A Coisa',
    genre: 'Terror',
    author: {
      name: 'Stephen King',
      birthYear: 1947,
    },
    releaseYear: 1986,
  },
  {
    id: 6,
    name: 'O Chamado de Cthulhu',
    genre: 'Terror',
    author: {
      name: 'H. P. Lovecraft',
      birthYear: 1890,
    },
    releaseYear: 1928,
  },
];

// Adicione o código do exercício aqui:

const authorBornIn1947 = (id) => {
  return books.find((book) => book.author.birthYear === id).author.name;}
//    console.log(authorBornIn1947(1947));
  

function smallerName() {
  let nameBook = books[0].name;

  books.forEach((book) => {
      if (book.name.length < nameBook.length) {
          nameBook = book.name;
      }
  });
  return nameBook;
}
console.log(smallerName());

// Encontre o primeiro livro cujo nome possui 26 caracteres.


const getNamedBook = () =>  books.find((book) => book.name.length === 26);

// console.log(getNamedBook());

// Ordene os livros por data de lançamento em ordem decrescente.
const booksOrderedByReleaseYearDesc = () =>  books.sort((book1, book2) => book2.releaseYear - book1.releaseYear);

// console.log(booksOrderedByReleaseYearDesc());

// Faça uma função que retorne true, se todas as pessoas autoras nasceram no século XX, ou false, caso contrário.

//const expectedResult = false;

const everyoneWasBornOnSecXX = () => books.every((book) => book.author.birthYear > 1901 && book.author.birthYear <= 2000);
// console.log(everyoneWasBornOnSecXX());

// Faça uma função que retorne true, se algum livro foi lançado na década de 80, e false, caso contrário.

// const expectedResult = true;

const someBookWasReleaseOnThe80s = () => books.some((book) => book.releaseYear >= 1980 && book.releaseYear <= 1989);

// console.log(someBookWasReleaseOnThe80s());

//Faça uma função que retorne true, caso nenhum author tenha nascido no mesmo ano, e false, caso contrário.

const expectedResult = false;
function authorUnique() {
return books.every((book) =>
  !books.some((bookSome) =>
    (bookSome.author.birthYear === book.author.birthYear)
    && (bookSome.author.name !== book.author.name)));
}

console.log(authorUnique ());

// Segunda Maneira de ser feita;

const authorUnique = books.every((bookAtual) => {
let repeticoes = 0;
books.forEach((bookPComparar) => {
  // if
  if (bookAtual.author.birthYear === bookPComparar.author.birthYear) {
    repeticoes += 1;
  }
});
if (repeticoes === 1) {
  return true;
}
return false;
})
console.log(authorUnique);