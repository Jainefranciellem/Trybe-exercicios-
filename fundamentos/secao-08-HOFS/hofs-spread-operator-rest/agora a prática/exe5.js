
// Escreva a função swap, que dado um array de 3 elementos, retorna um novo array com o primeiro e terceiro elementos trocados. Detalhe: você precisa fazer essa função gastando apenas 1 linha. O retorno da função utilizando o array myList deve ser [3, 2, 5].
// De olho na dica 👀: use o array destructuring.

const myList = [5, 2, 3];
 const swap = (([troca1, two, troca2]) => [troca2, two, troca1])
 console.log(swap(myList));