class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments, foreign_key: :post_id
  has_many :likes

  scope :recent_three, ->(aut) { where (aut == :author_id).limit(3).order(created_at: :desc) }
end
