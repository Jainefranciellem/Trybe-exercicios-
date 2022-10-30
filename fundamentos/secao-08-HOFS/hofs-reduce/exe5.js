const names = [
  'Aanemarie', 'Adervandes', 'Akifusa',
  'Abegildo', 'Adicellia', 'Aladonata',
  'Abeladerco', 'Adieidy', 'Alarucha',
];

const expectedResult = 20;

function containsA() {
  let somar = 0;

  names.forEach((elemento) => {
    let separaCaracter = elemento.split('');

    somar += separaCaracter.reduce((acumulador, valorAtual) => {
      if (valorAtual === 'A' || valorAtual === 'a' ) {
        return acumulador + 1
      }
      return acumulador
    }, 0)
  })
  return somar;
}

console.log(containsA());