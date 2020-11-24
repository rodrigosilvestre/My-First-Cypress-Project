Given('item valido', () => {
	cy.visit("https://opuscapita.github.io/react-grid/#/default"); // Entrando no site
    cy.get('button[id="oc-datagrid-controls-create-TestGrid"]').click(); //Clicando no botão de adicionar novo elemento
});

When('é requisitada a inserção das descrições {string} {string} {string} {string} {string} {string} {string} do item', (nome, preço, estoque, país, moeda, usado,dataDeModificação) => {
    cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preço); //Digitando o preço do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-stock-0"]').type(estoque); //Digitando o estoque do elemento
    cy.get('input[id="ocDatagridCell-TestGrid-country-0"]').type(país + '{enter}'); //Digitando o país do elemento
    cy.get('input[id="ocDatagridCell-TestGrid-currency-0"]').type(moeda + '{enter}'); //Digitando a moeda do elemento
    cy.get('[id="react-select-7-input"]').click().should('contain','Yes').click() //Escolhendo se o elemento é do tipo usado ou não
    cy.get('input[id="ocDatagridCreateInput-TestGrid-modified-0"]').type(dataDeModificação); //Digitando a data de modificação do elemento
});

Then('valida se o item cumpre os requisitos de inserção', () => {
	return true;
});

Then('valida se o item foi inserido corretamente na tabela {string} {string} {string} {string} {string} {string} {string}', (nome, preço, estoque, país, moeda, usado,dataDeModificação) => {
	console.log(args1,args2,args3,args4,args5,args6,args7);
	return true;
});
