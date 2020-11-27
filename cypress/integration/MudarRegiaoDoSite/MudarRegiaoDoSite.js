When('escolho um idioma {string}', (idioma) => {
    cy.get('button[id="region-selector"]').click(); //Clicando no menu de idiomas
    cy.get('[role="presentation"]').as("idiomas") //Apelidando o path de role="presentation" para idiomas
    cy.get('@idiomas').contains(idioma).click();
});

Then('verifico se o idioma {string} foi alterado', (apresentacao) => {
    cy.contains(apresentacao);
});
