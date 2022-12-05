require 'rails_helper'

RSpec.describe "Articles", type: :feature do
  Article.create(title: "This is a title")

it "should have a title" do
    visit root_path
    expect(page).to have_content("This is a title")
  end



  
end
