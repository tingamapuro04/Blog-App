class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  def recent_comments
    comments.order('created_at Desc').limit(5)
  end

  def update_comments_counter
    post.increment!(:commentscounter)
  end
end
