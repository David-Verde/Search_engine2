require 'rails_helper'
require 'capybara/rspec'
RSpec.describe Article, type: :model do
title = "This is a title"
content = "This is a body"
article = Article.new(title: title, content: content)
  it "is valid with valid attributes" do
    expect(article).to be_valid
  end
  it "is not valid without a title" do
    article.title = nil
    expect(article).to_not be_valid
  end
  it "is not valid without a content" do
    article.content = nil
    expect(article).to_not be_valid
  end
  
  it "is not valid with a title that is too short" do
    article.title = "a"
    expect(article).to_not be_valid
  end

  it "is not valid with a title that is too long" do
    article.title = "a" * 51
    expect(article).to_not be_valid
  end

  it "is not valid with a content that is too short" do
    article.content = "a"
    expect(article).to_not be_valid
  end

  it "is not valid with a content that is too long" do
    article.content = "a" * 501
    expect(article).to_not be_valid
  end


end

