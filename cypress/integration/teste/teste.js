Given('item valido', () => {
	cy.visit("https://opuscapita.github.io/react-grid/#/default"); // Entrando no site
    cy.get('button[id="oc-datagrid-controls-create-TestGrid"]').click(); //Clicando no botão de adicionar novo elemento
});

When('é requisitada a inserção das descrições {string} {string} {string} do item', (nome, preço, usado) => {
	cy.get('input[id="ocDatagridCreateInput-TestGrid-name-0"]').type(nome); //Digitando o nome do elemento
    cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preço); //Digitando o preço do elemento
    cy.get('[id="ocDatagridCell-TestGrid-isUsed-0"]').click().findByText(usado).click();
    cy.findAllByText(usado).click({multiple: true});
});

Then('clico no botão salvar', () => {
	cy.get('button[id="oc-datagrid-controls-save-TestGrid"]').click() // Clicando no botão "Save"
});
