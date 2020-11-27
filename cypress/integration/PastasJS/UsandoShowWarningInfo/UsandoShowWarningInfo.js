When('clico em Show Warning', () => {
	cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[1]/div[1]/div[2]/form/button[1]').click(); //Clicando em "Show Warning" 
});

When('clico em Show Info', () => {
	cy.xpath('//*[@id="oc-datagrid-TestGrid"]/div[1]/div[1]/div[2]/form/button[2]').click(); //Clicando em "Show Warning" 
});

Then('posso ver quais itens estão marcados', () => {
	return true;
});
