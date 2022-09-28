class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  scope :recent_five, ->(postid) { where(:post_id == postid) }
end
