class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :post, class_name: 'Post'

  scope :recent_five, ->(postid) { where(postid == :post_id).limit(5).order(created_at: :desc) }
end
