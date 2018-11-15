class Blog < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :thumbnail

  def sample_content
    self.content[0..100]
  end

end
