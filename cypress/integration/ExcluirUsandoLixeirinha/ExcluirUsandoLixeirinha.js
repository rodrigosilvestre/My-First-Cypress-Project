When('um item está em criação', () => {
	cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[2]/div/div[1]/div[3]/div[1]/div/div/div[2]').should('be.visible'); //Verificando se um item está sendo criado
});

Then('aperto no icone da lixeira ao lado do item que desejo excluir', () => {
	cy.get('[id="oc-datagrid-new-item-remove-TestGrid-0"]').click();
});
