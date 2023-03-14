describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it('displays website logo', () => {
    cy.get('.navbar-brand').should('have.text', 'Jungle');
  });

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

});
