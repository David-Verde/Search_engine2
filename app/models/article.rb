class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 100 }
    validates :content, presence: true, length: { minimum: 10, maximum: 300 }

    def searched?(search)
        jarow = FuzzyStringMatch::JaroWinkler.create(:native)
        similarity_percentage = jarow.getDistance(search, query)
        similarity_percentage > 0.8
      end
end
