# require 'rails_helper'

# RSpec.describe Post, type: :model do
#   user = User.create(name: 'Alphonce', photo: 'https:/photo.com', bio: 'Teacher', posts_counter: 5)
#   subject { Post.new(author: user, title: 'Chinua', commentscounter: 10, likescounter: 7) }

#   before { subject.save }

#   it 'update_user_posts_count' do
#     user.posts_counter = 5
#     subject.author = user
#     expect(subject.author.posts_counter).to eq 5
#   end

#   it 'Title must be present' do
#     subject.title = nil
#     expect(subject).to_not be_valid
#   end

#   it 'Title length should be less than 250' do
#     subject.title = 'Toto'
#     expect(subject).to be_valid
#   end

#   it 'likes counter to be greater than zero' do
#     subject.likescounter = -8
#     expect(subject).to_not be_valid
#   end

#   it 'Comments counter to be greater than zero' do
#     subject.likescounter = -8
#     expect(subject).to_not be_valid
#   end

#   it 'likes counter to be greater than zero' do
#     subject.likescounter = 9
#     expect(subject).to be_valid
#   end

#   describe 'Tests for Post model methods' do
#     test_user = User.create(name: 'Tom',
# photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
#     before { 10.times { Comment.create(post_id: subject, author: test_user, text: 'Hola Tom!') } }

#     it '#five_recent_comments should return 5 comments' do
#       expect(subject.recent_comments.size).to eql(subject.comments.last(5).size)
#     end
#   end
# end
