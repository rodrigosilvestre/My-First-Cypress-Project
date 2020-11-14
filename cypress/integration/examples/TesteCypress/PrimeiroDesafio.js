
Given ('que não exista nenhum item na lista TO DO', () => { 
   cy.visit('https://just-another-todo-app.now.sh/');
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
        cy.screenshot();
    }
})