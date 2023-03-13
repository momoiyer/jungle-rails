require 'rails_helper'

RSpec.describe Product, type: :model do  
  describe 'Validations' do

    it "should save successfully with all four fields value set" do
      expect {
        #create category obj      
        category = Category.find_or_create_by! name: 'Succulent'
        #create product obj on category and provide all detail data
        category.products.create!({
          name:  'Aloe',      
          quantity: 3,
          price: 3.33
        })
        #expect the product to get created successfully
      }.to change(Product, :count).by(1)          
    end

    it "is not valid without a name" do
      category = Category.find_or_create_by! name: 'Succulent'
      product = category.products.new({
        name:  nil,      
        quantity: 3,
        price: 3.33
      })
      expect(product).to_not be_valid
      expect(product.errors.full_messages_for(:name)).to include("Name can't be blank")
    end

    it "is not valid without a price" do
      category = Category.find_or_create_by! name: 'Succulent'
      product = category.products.new({
        name: 'Aloe',      
        quantity: 3
      })
      expect(product).to_not be_valid
      expect(product.errors.full_messages_for(:price)).to include("Price can't be blank")
    end

    it "is not valid without a quantity" do
      category = Category.find_or_create_by! name: 'Succulent'
      product = category.products.new({
        name:  "Aloe",      
        quantity: nil,
        price: 3.33
      })
      expect(product).to_not be_valid
      expect(product.errors.full_messages_for(:quantity)).to include("Quantity can't be blank")
    end

    it "is not valid without a category" do
      product = Product.new({
        name:  "Aloe",      
        quantity: nil,
        price: 3.33
      })
      expect(product).to_not be_valid
      expect(product.errors.full_messages_for(:category)).to include("Category can't be blank")
    end

  end
end
