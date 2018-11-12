class User < ApplicationRecord
    has_many :blogs
    has_many :videos
    has_many :categories, through: :blogs
    has_many :categories, through: :videos
end
