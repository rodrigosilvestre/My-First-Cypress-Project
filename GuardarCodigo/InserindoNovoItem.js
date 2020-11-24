
// excluir cy.get('[id="ocDatagridSelectCheckBox-TestGrid-0"]').check();

Given ('que não exista nenhum item na lista TO DO', () => { 
   cy.visit('/');
})
When ('tento adicionar o item {string}', (item) => {
    if(item == ""){

    }else{
        cy.get('input[id="new-todo-item"]').type(item);
        cy.get('button[data-testid="form-submit"]').click();
    }
})
Then('o item {string}', (resultado) => {   
    if(resultado =='é adicionado'){
        return true;
    }
})

//MODIFICANDO UM ITEM
Given(/^que exista um item na lista TO DO$/, () => {
    cy.get('[data-testid="form-item-listitem"]').should("exist")
});

When(/^tento alterar um "([^"]*)"$/, (nomeItem) => {
    cy.xpath('//*[@id="app"]/div/div[2]/div/div[2]/div/div/ul/div/div/li/div').click()
})

Then(/^o item "([^"]*)"$/, (resultadoEsperado) => {
    return true

});
