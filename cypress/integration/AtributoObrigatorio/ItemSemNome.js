Given('item sem nome', () => {
	cy.visit("https://opuscapita.github.io/react-grid/#/default"); //Entrando no site
    cy.get('button[id="oc-datagrid-controls-create-TestGrid"]').click(); //Clicando no botão de adicionar
});

When('é requisitada a inserção das descrições {string} do item', (preco) => {
	cy.get('input[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preco); //Digitando o nome do elemento
});

Then('clico no botão salvar', () => {
	cy.get('button[id="oc-datagrid-controls-save-TestGrid"]').click(); //Clicando no botão "Save"
});

Then('validar se a mensagem de error apareceu em cima do campo de nome', () => {
    cy.get('[id="ocDatagridCell-TestGrid-name-0"]').trigger('mouseover');
    cy.findByText("Value is required");
});
