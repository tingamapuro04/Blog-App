require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = User.create(name: 'Alphonce', photo: 'https:/photo.com', bio: 'Teacher', posts_counter: 5)
  post1 = Post.create(author: user, title: 'Chinua', commentscounter: 10, likescounter: 7)

  subject { Comment.new }
  before { subject.save }

  it 'Test comments_counter' do
    post1.commentscounter = 3
    subject.post = post1
    expect(subject.post.commentscounter).to eq 3
  end
end
