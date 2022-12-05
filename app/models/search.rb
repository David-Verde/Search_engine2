class Search < ApplicationRecord
validates :query, presence: true, length: { minimum: 3, maximum: 100 }
    validates :user_id, presence: true


    
end
