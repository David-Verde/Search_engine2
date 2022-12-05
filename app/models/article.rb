class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
    validates :content, presence: true, length: { minimum: 10, maximum: 300 }
end
