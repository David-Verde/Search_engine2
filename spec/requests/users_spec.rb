require 'rails_helper'

RSpec.describe "Users", type: :feature do
  before do
    User.create(email: "test@test.com", password: "123123", password_confirmation: "123123")
  end

  it "should have a sign up form" do
    visit root_path
    expect(page).to have_selector("form")
  end

  it "should have a sign up button" do
    visit root_path
    expect(page).to have_selector("input[type=submit]")
  end

  it "should have a sign up field" do
    visit root_path
    expect(page).to have_selector("input[type=text]")
  end

  
end
