When('clico no menu de filtros', () => {
	cy.xpath('//*[@id="TestGrid"]/div').click(); //Abrindo o menu 
    cy.get('[id="TestGrid-menu-item-filtering"]').click(); //Usando o "Show filter row"
});

Then('escolho os filtros de nome, valor, estoque, país, moeda, usado, marcado e data {string} {string} {string} {string} {string} {string} {string} {string}', (nome,valor,estoque,país,moeda,usado,marcado,data) => {
    cy.get('[id="ocDatagridFilterInput-TestGrid-name"]').type(nome); //Digitando o nome no campo de nome
    cy.get('[id="ocDatagridFilterInput-TestGrid-price"]').type(valor); //Digitando o valor no campo de valor
    cy.get('[id="ocDatagridFilterInput-TestGrid-stock"]').type(estoque); //Digitando o estoque no campo de estoque
    cy.get('[id="ocDatagridHeader-TestGrid-country"]').type(país + '{enter}'); //Digitando o país no campo de país 
    cy.xpath('//*[@id="ocDatagridHeader-TestGrid-currency"]/div/div/div/div[2]/div/div').click().type(moeda + '{enter}'); //Digitando a moeda no campo de moeda 
    cy.xpath('//*[@id="ocDatagridHeader-TestGrid-isUsed"]/div/div/div/div[2]/div').click(); //Clicando no filtro "Used"
    cy.findByText(usado).click(); //Clicando na opção usado
    cy.xpath('//*[@id="ocDatagridHeader-TestGrid-isChecked"]/div/div/div/div[2]/div/div').click(); //Clicando no filtro "Checked"
    cy.findByText(marcado).click(); //Clicando na opção marcado
    cy.get('[id="ocDatagridFilterInput-TestGrid-modified"]').type(data + '{enter}'); //Digitando a data no campo de data
    cy.screenshot();
});
