require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Alphonce', photo: 'https:/photo.com', bio: 'Teacher', posts_counter: 5) }

  before { subject.save }

  it 'Name should be given' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name is given' do
    subject.name = 'apondi'
    expect(subject).to be_valid
  end

  it 'Should not be a string' do
    subject.posts_counter = 'tyty'
    expect(subject).to_not be_valid
  end

  it 'Should be an integer' do
    subject.posts_counter = 5
    expect(subject).to be_valid
  end

  it 'Should be an integer greater or equal to zero' do
    subject.posts_counter = -5
    expect(subject).to_not be_valid
  end

  describe '#three_recent_posts' do
    before { 6.times { Post.create(author: subject, title: 'Intro', text: 'Welcome to this blog!') } }

    it 'three_recent_posts should return 3 posts' do
      expect(subject.recent_posts.size).to eql(subject.posts.last(3).size)
    end
  end

end
