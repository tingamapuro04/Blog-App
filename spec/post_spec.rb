require 'rails_helper'

RSpec.describe Post, type: :model do
  user = User.create(name: 'Alphonce', photo: 'https:/photo.com', bio: 'Teacher', posts_counter: 5)
  subject { Post.new(author: user, title: 'Chinua', commentscounter: 10, likescounter: 7) }

  before { subject.save }

  it 'Title must be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'Title length should be less than 250' do
    subject.title = 'Toto'
    expect(subject).to be_valid
  end

  it 'likes counter to be greater than zero' do
    subject.likescounter = -8
    expect(subject).to_not be_valid
  end

  it 'Comments counter to be greater than zero' do
    subject.likescounter = -8
    expect(subject).to_not be_valid
  end

  it 'likes counter to be greater than zero' do
    subject.likescounter = 9
    expect(subject).to be_valid
  end
end
