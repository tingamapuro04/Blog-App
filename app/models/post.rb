class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: :post_id
  has_many :likes

  validates :title, presence: true, length: { maximum: 250 }
  validates :commentscounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likescounter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def update_user_posts_count
    author.increment!(:posts_counter)
  end

  def recent_comments
    comments.order('created_at Desc').limit(5)
  end
end
