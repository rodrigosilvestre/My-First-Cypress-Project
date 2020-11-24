Given('que haja pelo menos um elemento na lista', () => {
	cy.visit("https://opuscapita.github.io/react-grid/#/default"); //Entrado na pagina
    cy.get('[class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even oc-datagrid-row public_fixedDataTable_bodyRow"]')
    .should('exist'); //Veficiando se ha pelo menos um elemento na tabela
});

When('eu seleciono os itens que eu quero excluir {string} {string} {string}', (indiceExclusao, indiceExclusao2, indiceExclusao3) => {
    cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div['+indiceExclusao+']/div').click(); //Exclui o item de indice 1
    cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div['+indiceExclusao2+']/div').click(); //Exclui o item de indice 2
    cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div['+indiceExclusao3+']/div').click(); //Exclui o item de indice 12
});

Then('aperto no botão de excluir', () => {
    cy.get('button[id="TestGrid"]').click(); //Abrindo o menu
    cy.get('[id="TestGrid-menu-item-delete"]').click() //Clicando no butão de deletar
});
