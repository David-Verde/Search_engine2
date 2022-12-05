require 'rails_helper'

RSpec.describe "Articles", type: :feature do
  before do
   Search.create(query: "test", user_id: 1)
  end

  it "should have a search form" do
    visit root_path
    expect(page).to have_selector("form")
  end

  it "should have a search button" do
    visit root_path
    expect(page).to have_selector("input[type=submit]")
  end

  it "should have a search field" do
    visit root_path
    expect(page).to have_selector("input[type=text]")
  end

  it "should have a search field with a name" do
    visit root_path
    expect(page).to have_selector("input[name=query]")
  end




end
