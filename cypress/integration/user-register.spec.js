describe('User Login', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it("should register new user and changed signed in information", () => {
    cy.get('.nav-link').contains("Register New User").click();
    cy.get('#user_first_name').type("John");
    cy.get('#user_last_name').type("Doe");
    cy.get('#user_email').type("johndoe3@mail.com");
    cy.get('#user_password').type("password");
    cy.get('#user_password_confirmation').type("password");
    cy.contains("Submit").click();
    cy.get('.nav-link').contains("Signed in as").should('contains.text', 'John');
  });

});
