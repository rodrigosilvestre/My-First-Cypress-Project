When('é requisitada a inserção das descrições nome {string} do item', (nome) => {
    cy.get('[id="ocDatagridCell-TestGrid-name-0"]').type(nome); //Digitando o preço do elemento
});

Then('validar se a mensagem de error apareceu em cima do campo de valor', () => {
    cy.get('[id="ocDatagridCell-TestGrid-price-0"]').trigger('mouseover');
    cy.findByText("Value is required");
    cy.screenshot();
});