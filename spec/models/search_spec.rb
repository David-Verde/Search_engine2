require 'rails_helper'

RSpec.describe Search, type: :model do
  long_title = "a" * 51
  long_content = "a" * 501
  short_title = "a"
  short_content = "a"
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
    article.title = short_title
    expect(article).to_not be_valid
  end

  it "is not valid with a title that is too long" do
    article.title = long_title
    expect(article).to_not be_valid
  end

  it "is not valid with a content that is too short" do
    article.content = short_content
    expect(article).to_not be_valid
  end

  it "is not valid with a content that is too long" do
    article.content = long_content
    expect(article).to_not be_valid
  end

  

end

