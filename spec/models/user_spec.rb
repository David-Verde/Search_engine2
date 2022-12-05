require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(email: "example@test.com", password: "123123", password_confirmation: "123123") }
  it "is valid with valid attributes" do
    expect(user).to be_valid
  end
  it "is not valid without a email" do
    user.email = nil
    expect(user).to_not be_valid
  end
  it "is not valid without a password" do
    user.password = nil
    expect(user).to_not be_valid
  end
 
  it "is not valid with a password that is too short" do
    user.password = "a"
    user.password_confirmation = "a"
    expect(user).to_not be_valid
  end
  

end
