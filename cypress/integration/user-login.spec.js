describe('User Login', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it("User can login successfully and are taken to the home page once they are signed in", () => {
    cy.get('.nav-link').contains("Login").click();
    cy.get('#email').clear().type("johndoe2@mail.com");
    cy.get('#password').clear().type("password");
    cy.contains("Submit").click();
    cy.get('main:contains("Looking for a way to add some life to your home?")');
  });

});
