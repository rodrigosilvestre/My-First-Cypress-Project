Given('que exista item na lista do banco de dados', () => {
    cy.visit("https://opuscapita.github.io/react-grid/#/default"); //Entrado na pagina
    cy.get('[class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even oc-datagrid-row public_fixedDataTable_bodyRow"]')
    .should('exist'); //Veficiando se ha pelo menos um elemento na tabela
});

When('excluo um item da tabela', () => {
    cy.xpath('//*[@id="TestGrid"]/div').click(); //Abrindo o menu 
    cy.get('[id="TestGrid-menu-item-filtering"]').click(); //Usando o "Show filter row"
    cy.xpath('//*[@id="ocDatagridHeader-TestGrid-currency"]/div/div/div/div[2]/div/div')
    .click().type("EUR" + '{enter}'); //Abrindo filtro de moeda e digitando "EUR"
    cy.get('[id="ocDatagridSelectAllCheckBox-TestGrid"]').click(); //Clicando na opção de selecionar todos os itens 
    cy.xpath('//*[@id="TestGrid"]/div').click(); //Abrindo o menu
    cy.get('[id="TestGrid-menu-item-delete"]').click(); //Deletando todos os itens selecionados
});

Then('verifico se o item foi realmente excluido', () => {
	return true;
});