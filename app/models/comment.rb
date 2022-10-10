class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  # validates :text, length: { minimum: 1 }

  after_save :update_comments_counter

  def update_comments_counter
    post.increment!(:commentscounter)
  end
end
