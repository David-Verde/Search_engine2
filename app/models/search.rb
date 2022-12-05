class Search < ApplicationRecord
validates :query, presence: true, length: { minimum: 3, maximum: 100 }
    validates :user_id, presence: true

    def searched?(search)
        jarow = FuzzyStringMatch::JaroWinkler.create( :native )
        similarity_percentage = jarow.getDistance(search, self.query)
        similarity_percentage > 0.8
    end
    
end
