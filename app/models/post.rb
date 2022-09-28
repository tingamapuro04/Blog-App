class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: :post_id
  has_many :likes

  def recent_post
    posts.order('created_at Desc').limit(3)
  end

  def update_likes_counter
    post.increment!(:likescounter)
  end
end
