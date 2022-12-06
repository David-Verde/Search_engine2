class Search < ApplicationRecord
validates :query, presence: true, length: { minimum: 3, maximum: 100 }
    validates :user_id, presence: true

def searched?(search)
    jarowinkler_distance(search) > 0.8
    similarity_percentage = (jarowinkler_distance(search) * 100).round(2)
    similarity_percentage > 0.8
end
    
end
