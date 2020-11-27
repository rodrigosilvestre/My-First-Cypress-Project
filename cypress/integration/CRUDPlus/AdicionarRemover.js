When('é requisitada a inserção das descrições {string} {string} {string} {string} {string} {string} do item', (nome, preço, estoque, país, moeda,dataDeModificação) => {
    cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preço); //Digitando o preço do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-stock-0"]').type(estoque); //Digitando o estoque do elemento
    cy.get('[id="ocDatagridCell-TestGrid-country-0"]').type(país + '{enter}'); //Digitando o país do elemento 
    cy.get('[id="ocDatagridCell-TestGrid-currency-0"]').type(moeda + '{enter}'); //Digitando a moeda do elemento
    cy.get('[id="ocDatagridCreateInput-TestGrid-modified-0"]').type(dataDeModificação + '{enter}'); //Digitando a data de modificação do elemento
});


When('excluo os novos campos que apareceram porque a tecla ENTER foi usada', () => {
    cy.get('[id="oc-datagrid-new-item-remove-TestGrid-1"]').click().dblclick();
});


Then('excluo o item que foi criado', () => {
    cy.get('[id="TestGrid"]').click(); //Abrindo o menu
    cy.get('[id="TestGrid-menu-item-delete"]').click(); //Excluindo o item adicionado
    cy.screenshot();
});

