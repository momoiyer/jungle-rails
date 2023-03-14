describe('User Login', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it("Clicking on product should go to product detail page", () => {
    cy.get('.nav-link').contains("Login").click();
    // User.create({
    //   first_name: 'John',
    //   last_name: 'Doe',
    //   email: 'johndoe@mail.com',
    //   password: 'password',
    //   password_confirmation: 'password'
    // });
    // .should('contains.text', 'My Cart (0)');
    // cy.get(".products article").first();
    // cy.contains('Add').click({ force: true });
    // cy.get('.end-0 > .nav-link').should('contains.text', 'My Cart (1)');;
  });

});
