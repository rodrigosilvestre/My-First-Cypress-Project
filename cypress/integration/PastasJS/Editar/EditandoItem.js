When('modifico o nome do item {string} o preço do item {string} o país do item {string} a moeda do item {string} e a data do item {string}', (nome,preco,pais,moeda,data) => {
    cy.get('[id="ocDatagridCell-TestGrid-name-0"] input[type="text"]').clear().type(nome) //Limpando a barra de texto, e alterando o nome
    cy.get('input[id="ocDatagridEditInput-TestGrid-price-0"]').clear().type(preco); //Limpando a barra de texto, e alterando o preço
    cy.xpath('.//*[@id="ocDatagridCell-TestGrid-country-0"]/div/div/div[1]').click().type(pais + '{enter}') //Alterando o país
    cy.get('[id="ocDatagridCell-TestGrid-currency-0"]').click().type(moeda + '{enter}') //Alterando o tipo de moeda
    cy.get('input[id="ocDatagridEditInput-TestGrid-modified-0"]').click().clear().type(data); //Limpando a barra de texto, e alterando a data da ultima modifiação
});

Then('verifico se o item foi realmente editado {string} {string} {string} {string} {string}', (nome,preco,pais,moeda,data) => {
	cy.contains(nome) 
    cy.contains(preco) 
    cy.contains(pais) 
    cy.contains(moeda) 
    cy.contains(data) 
});