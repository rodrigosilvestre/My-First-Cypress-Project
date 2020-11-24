Given('exista item na lista do banco de dados', () => {
    cy.visit("https://opuscapita.github.io/react-grid/#/default");
    cy.get('[class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even oc-datagrid-row public_fixedDataTable_bodyRow"]').should('exist');

});

When('tento modificar o item usando os valores {String}', (novoValor) => {
    cy.get('[id="ocDatagridSelectCheckBox-TestGrid-0"]').check();
    cy.get('[class="oc-checkbox oc-datagrid-select-checkbox-cell no-row-select checked"]').should('exist');
    cy.get('[id="oc-datagrid-controls-edit-TestGrid"]').click();

});
Then('o item é {String}', (resultado) => {
	console.log(resultado);
	return true;
});