import { Given, Then } from "cypress-cucumber-preprocessor/steps";

Given('dentro do site', () => {
    cy.visit("/"); //Entrando no site
});

Given ('que exista pelo menos um item na lista', () =>{
  cy.get('[class="fixedDataTableRowLayout_main public_fixedDataTableRow_main public_fixedDataTableRow_even oc-datagrid-row public_fixedDataTable_bodyRow"]')
  .should('exist'); // Veficiando se ha pelo menos um elemento na tabela
});


Given('clico no botão Add', () => {
    cy.get('button[id="oc-datagrid-controls-create-TestGrid"]').click(); //Clicando no botão de adicionar
});


Given('clico no botão Edit', () => {
  cy.get('button[id="oc-datagrid-controls-edit-TestGrid"]').click(); //Clicando no botão "Edit"
});

Then('clico no botão salvar', () => {
    cy.get('button[id="oc-datagrid-controls-save-TestGrid"]').click(); //Clicando no botão "Save"
});

  