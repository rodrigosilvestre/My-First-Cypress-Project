When('eu seleciono os itens que eu quero excluir usando os índices {string} {string} {string}', (indiceExclusao1, indiceExclusao2, indiceExclusao3) => {
    cy.get('body').type('{ctrl}', {release: false}) //Simulando ctrl + click
    cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div['+indiceExclusao1+']/div').click(); //Seleciona o item de indice 1
    cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div['+indiceExclusao2+']/div').click(); //Seleciona o item de indice 2
    cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div['+indiceExclusao3+']/div').click(); //Seleciona o item de indice 12
});

Then('aperto no botão de excluir', () => {
    cy.get('button[id="TestGrid"]').click(); //Abrindo o menu
    cy.get('[id="TestGrid-menu-item-delete"]').click() //Clicando no butão de deletar
    cy.screenshot();
});
