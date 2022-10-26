const emailListInData = [
  'roberta@email.com',
  'paulo@email.com',
  'anaroberta@email.com',
  'fabiano@email.com',
];

const showEmailList = () =>emailListInData.forEach((email) => console.log(`O email ${email} esta cadastrado em nosso banco de dados!`));

showEmailList();