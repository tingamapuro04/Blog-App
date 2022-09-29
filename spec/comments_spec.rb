require 'rails_helper'

RSpec.describe Comment, type: :model do
  user = User.create(name: 'Alphonce', photo: 'https:/photo.com', bio: 'Teacher', posts_counter: 5)
  post1 = Post.create(author: user, title: 'Chinua', commentscounter: 10, likescounter: 7)

  subject { Comment.new(post: post1, author: user, text: 'I am writing my first comment!') }
  before { subject.save }

  it 'Text should not be empty' do
    subject.text = 'rerer'
    expect(subject).to be_valid
  end
end
