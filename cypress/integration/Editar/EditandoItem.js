Given('que exista item na lista do banco de dados', () => {
    cy.visit("https://opuscapita.github.io/react-grid/#/default"); // Entrando no site
    cy.get('[class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even oc-datagrid-row public_fixedDataTable_bodyRow"]')
    .should('exist'); // Veficiando se ha pelo menos um elemento na tabela
});

When('modifico o nome do item usando o valor {string}', (item) => {
    cy.get('button[id="oc-datagrid-controls-edit-TestGrid"]').click(); //Clicando no botão "Edit"
    cy.get('[id="ocDatagridCell-TestGrid-name-0"] input[type="text"]').clear().type(item) //Limpando a barra de texto, e alterando o nome
});


When('modifico o valor do item {string}', (valor) => {
	cy.get('input[id="ocDatagridEditInput-TestGrid-price-0"]').clear().type(valor); //Limpando a barra de texto, e alterando o valor
});

When('modifico o país do item {string}', (país) => {
    cy.xpath('.//*[@id="ocDatagridCell-TestGrid-country-0"]/div/div/div[1]').click().type(país + '{enter}') // Alterando o país
    
});

When('modifico a moeda que representa o item {string}', (moeda) => {
	cy.get('[id="ocDatagridCell-TestGrid-currency-0"]').click().type(moeda + '{enter}') // Alterando o tipo de moeda
});

When('modifico a data em que o item foi modificado usando {string}', (data) => {
    cy.get('input[id="ocDatagridEditInput-TestGrid-modified-0"]').click().clear().type(data); //Limpando a barra de texto, e alterando a data da ultima modifiação
});

When('clico no botão salvar', () => {
	cy.get('button[id="oc-datagrid-controls-save-TestGrid"]').click() // Clicando no botão "Save"
});


Then('verifico se o item foi realmente editado {string} {string} {string} {string} {string}', (item, valor, país, moeda, data) => {
    // Veficiando se a tabela comtém os itens que foram adicionados
    cy.contains(item) 
    cy.contains(valor) 
    cy.contains(país) 
    cy.contains(moeda) 
    cy.contains(data) 
});





 


