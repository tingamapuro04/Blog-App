require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Tests for Like model' do
    usr = User.create(name: 'Ram', photo: 'https://unsplash.com/photos/6PP8DrhY0aA', bio: 'Hindu god.')
    post = Post.create(author: usr, title: 'Intro', text: 'Welcome to this blog!')

    subject { Like.new }
    before { subject.save }

    it '#update_post_likes_counter' do
      post.likescounter = 2
      subject.post = post
      expect(subject.post.likescounter).to eq 2
    end
  end
end
