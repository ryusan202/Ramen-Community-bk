class User < ApplicationRecord
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          validates :name, presence: true
end
