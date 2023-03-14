describe('Add to cart from home page', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it("Clicking on product should go to product detail page", () => {
    cy.get('.end-0 > .nav-link').should('contains.text', 'My Cart (0)');;
    cy.get(".products article").first();
    cy.contains('Add').click({ force: true });
    cy.get('.end-0 > .nav-link').should('contains.text', 'My Cart (1)');;
  });

});
