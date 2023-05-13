class Post < ApplicationRecord
  has_many :likes
  has_many :liking_users, through: :likes, source: :user
  has_one_attached :image

  validates :title, presence: true
  validates :body, presence: true

  def liked?(user)
    likes.where(user_id: user.id).exists?
  end  
end
