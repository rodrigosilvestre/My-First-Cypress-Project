When('preencho incorretamente o nome {string} usando numeros', (nome) => {
	cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
});

When('preencho corretamento o campo do preço usando {string}', (preco) => {
	cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preco); //Digitando o preço do elemento
});

Then('valido se um elemento com numeros no lugar do nome foi criado {string}', (nome) => {
    cy.contains(nome); //Verificando se o campo nome recebeu um valor numerico
    cy.screenshot();
});



When('preencho corretamento o campo do nome usando {string}', (nome) => {
	cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
});

When('preencho incorretamente o preço {string} usando letras', (preco) => {
	cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preco); //Digitando o preço do elemento
});

Then('valido se preço recebeu um valor 0.00 por conta de letras em seu campo', () => {
    cy.contains("0.00"); //Verificando se o campo preco recebeu o valor 0.00
    cy.screenshot();
});



When('preencho corretamento o campo do nome {string} e preço {string}', (nome,preco) => {
    cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preco); //Digitando o preço do elemento
});

When('preencho incorretamente o estoque {string} usando letras', (estoque) => {
    cy.get('input[id="ocDatagridCreateInput-TestGrid-stock-0"]').type(estoque); //Digitando o estoque do elemento
});

Then('valido se estoque recebeu o valor igual a uma string NaN', () => {
    cy.contains("NaN"); //Verificando se o campo estoque recebeu o valor NaN
    cy.screenshot();
});



When('preencho corretamento o campo do nome {string} e preço {string}', (nome,preco) => {
    cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preco); //Digitando o preço do elemento
});

When('preencho incorretamente a data {string} usando uma data que não existe', (data) => {
	cy.get('[id="ocDatagridCreateInput-TestGrid-modified-0"]').type(data + '{enter}'); //Digitando a data de modificação do elemento
});

Then('valido se um elemento com data inválida foi criado {string}', (data) => {
    cy.contains(data).should('not.exist'); //Verificando se o campo data não existe
    cy.screenshot();
});
