class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :author_id

  belongs_to :post
end
