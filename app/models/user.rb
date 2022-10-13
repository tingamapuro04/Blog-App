class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :likes, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id

  # validates :name, presence: true
  # validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def recent_posts
    posts.order('created_at Desc').limit(3)
  end

  def count_comments
    comments.count
  end

  def count_likes
    likes.count
  end

  def count_posts
    posts.count
  end

  after_initialize :set_defaults

  def set_defaults
    self.posts_counter ||= 0
  end
end
