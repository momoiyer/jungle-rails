require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    it "is valid if both password and password confirmation value are provided" do
      user = User.new({
        first_name: 'John',
        last_name: 'Doe',
        email: 'johndoe1@mail.com',
        password: 'password',
        password_confirmation: 'password'
      })
      expect(user).to be_valid          
    end

    it "is not valid if password confirmation value is not present" do
      user = User.new({
        first_name: 'John',
        last_name: 'Doe',
        email: 'johndoe1@mail.com',
        password: 'password',
        password_confirmation: nil
      })
      expect(user).to_not be_valid          
    end

    it "is not valid if password value is not present" do
      user = User.new({
        first_name: 'John',
        last_name: 'Doe',
        email: 'johndoe1@mail.com',
        password: nil,
        password_confirmation: 'password'
      })
      expect(user).to_not be_valid          
    end

    it "is not valid if value for password and password confirmation are not the same" do
      user = User.new({
        first_name: 'John',
        last_name: 'Doe',
        email: 'johndoe1@mail.com',
        password: 'password',
        password_confirmation: 'test'
      })
      expect(user).to_not be_valid          
    end

    it "is not valid if email is not unique" do
      user = User.new({
        first_name: 'John',
        last_name: 'Doe',
        email: 'johndoe@mail.com',
        password: 'password',
        password_confirmation: 'password'
      })
      expect(user).to_not be_valid          
    end

    it "is not valid without an email" do
      user = User.new({
        first_name: 'John',
        last_name: 'Doe',
        email: nil,
        password: 'password',
        password_confirmation: 'password'
      })
      expect(user).to_not be_valid    
      expect(user.errors.full_messages_for(:email)).to include("Email can't be blank")
    end

    it "is not valid without an first name" do
      user = User.new({
        first_name: nil,
        last_name: 'Doe',
        email: 'johndoe1@mail.com',
        password: 'password',
        password_confirmation: 'password'
      })
      expect(user).to_not be_valid    
      expect(user.errors.full_messages_for(:first_name)).to include("First name can't be blank")
    end

    it "is not valid without an last name" do
      user = User.new({
        first_name: "John",
        last_name: nil,
        email: 'johndoe1@mail.com',
        password: 'password',
        password_confirmation: 'password'
      })
      expect(user).to_not be_valid    
      expect(user.errors.full_messages_for(:last_name)).to include("Last name can't be blank")
    end
  end  

  describe '.authenticate_with_credentials' do
    
    it "is not valid if email and password are not correct" do
      email= 'johndoe@mail.com'
      password= '1231234'
      user = User.authenticate_with_credentials(email, password)    
      expect(user).to be_nil
    end
    
    it "is valid if email and password are correct" do
      email= 'johndoe@mail.com'
      password= '123123'
      user = User.authenticate_with_credentials(email, password)    
      expect(user).to_not be_nil
    end
    
    it "is valid even if email has whitespace or wrong case" do
      email= ' johndoE@mail.Com   '
      password= '123123'
      user = User.authenticate_with_credentials(email, password)    
      expect(user).to_not be_nil
    end

  end
end
