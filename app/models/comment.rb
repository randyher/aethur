class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :video
  belongs_to :blog
end
