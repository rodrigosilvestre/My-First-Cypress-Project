When('é requisitada a inserção das descrições preco {string} do item', (preco) => {
	cy.get('[id="ocDatagridCreateInput-TestGrid-price-0"]').type(preco); //Digitando o nome do elemento
});

Then('validar se a mensagem de error apareceu em cima do campo de nome', () => {
    cy.get('[id="ocDatagridCell-TestGrid-name-0"]').trigger('mouseover');
    cy.findByText("Value is required");
});