describe('Product Detail Page', () => {
  beforeEach(() => {
    cy.visit('/');
  });

  it("Clicking on product should go to product detail page", () => {
    cy.get(".products article").first().click();
    cy.get(':nth-child(2) > h1').should('have.text', 'Scented Blade');
  });

});
