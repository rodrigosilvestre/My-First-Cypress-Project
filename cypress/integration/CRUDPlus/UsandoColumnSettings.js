When('clico no menu filtro de exibiçao', () => {
    cy.get('[id="TestGrid"]').click() //Clicando no menu
    cy.get('[id="TestGrid-menu-item-column-settings"]').click() //Clicando em configurações de coluna
});

When('escolho as categorias que eu quero exibir', () => {
    cy.get('[class="oc-checkbox oc-select-order-list-select-all-checkbox checked"]').click();// Desmarcando todas as opções não obrigatorias
    cy.xpath('//*[@id="oc-select-order-list-ocDatagridColumnSettings-TestGrid"]/div[3]/div[1]/div/div/div/div[2]/div/a').click(); //Marcando o campo valor
    cy.xpath('//*[@id="oc-select-order-list-ocDatagridColumnSettings-TestGrid"]/div[3]/div[1]/div/div/div/div[4]/div/a').click(); //Marcando o campo país
    cy.xpath('//*[@id="oc-select-order-list-ocDatagridColumnSettings-TestGrid"]/div[3]/div[1]/div/div/div/div[5]/div/a').click(); //Marcando o campo moeda
});

Then('confirmo minhas escolhas', () => {
    cy.get('[id="ocDatagridColumnSettings-TestGrid-ok-button"]').click(); //Clicando no botão "Ok" para confirmação
    cy.screenshot();
});
