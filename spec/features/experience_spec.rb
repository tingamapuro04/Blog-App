require 'rails_helper'

RSpec.describe 'User index and show pages', type: :feature do
  before(:all) do
    @me = User.create(name: 'murife', photo: 'https://www.andbeyond.com/wp-content/uploads/sites/5/giraffe-and-sky-line-nairobi.jpg', bio: 'Murife don\'t run', id: 1)

    @post1 = Post.create(title: 'title1', text: 'Texting', author_id: @me.id)
    @post2 = Post.create(title: 'title2', text: 'Texting1', author_id: @me.id)
  end

  describe 'index page' do
    it 'should show the username' do
      visit users_path
      expect(page).to have_content('Number of posts')
    end

    it 'should show the text' do
      visit users_path
      expect(page).to have_content(@me.name)
    end

    it 'should have image tag' do
      visit users_path
      expect(page).to have_css('img')
    end

    it 'should have a paragraph' do
      visit("/users/1")
      expect(page).to have_css('p')
    end


  end


end