class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def self.liked?(post, user)
    self.where(post_id: post.id, user_id: user.id).exists?
  end
end
