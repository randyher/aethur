class Video < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_one_attached :thumbnail

    def sample_description
      self.description[0..100]
    end
    def self.turn_to_embed(link)
     link_array= link.split("watch?v=")
     link_array.insert(1, "embed/")
     link_array.join
   end

end
