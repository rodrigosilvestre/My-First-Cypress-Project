Given('item sem preço', () => {
	cy.visit("https://opuscapita.github.io/react-grid/#/default"); //Entrando no site
    cy.get('button[id="oc-datagrid-controls-create-TestGrid"]').click(); //Clicando no botão de adicionar
});

When('é requisitada a inserção das descrições {string} do item', (nome) => {
    cy.get('input[id="ocDatagridCreateInput-TestGrid-nome-0"]').type(nome); //Digitando o preço do elemento
});

Then('clico no botão salvar', () => {
	cy.get('button[id="oc-datagrid-controls-save-TestGrid"]').click(); //Clicando no botão "Save"
});

Then('validar se a mensagem de error apareceu em cima do campo de valor', () => {
    cy.get('[id="ocDatagridCell-TestGrid-price-0"]').trigger('mouseover');
    cy.findByText("Value is required");
});