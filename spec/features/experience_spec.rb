require 'rails_helper'

RSpec.describe 'User index and show pages', type: :feature do
  before(:all) do
    @me = User.create(name: 'murife', photo: 'https://www.andbeyond.com/wp-content/uploads/sites/5/giraffe-and-sky-line-nairobi.jpg', bio: 'Murife don\'t run', id: 1)

    @post1 = Post.create(id: 10, title: 'title1', text: 'Texting', author_id: @me.id)
    @post2 = Post.create(id: 12, title: 'title2', text: 'Texting1', author_id: @me.id)

    @comment1 = Comment.create(author_id: @me.id, post_id: @post1.id, text: 'I am a testing comment')

    @comment2  = Comment.create(author_id: @me.id, post_id: @post1.id, text: 'I am a just a tester')

    @comment3 = Comment.create(author_id: @me.id, post_id: @post1.id, text: 'I am also here')

    @you = User.create(name: 'Wafula', photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn1lEs_QwtQAHvtgmrPvVAb04SZF78jqQ9GRms2UYqmHIhXuz72OimxgN58_dHKQhaD0o&usqp=CAU', bio: 'Mimi ni wafula', id: 2)

    @post3 = Post.create(title: 'title3', text: 'wewe wewewe', author_id:@you.id)
    @post = Post.create(title: 'title4', text: 'jaroror', author_id:@you.id)
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
      expect(page).to have_css('img')
    end

    it 'should have a bio' do
      visit("/users/1")
      expect(page).to have_content('Murife don\'t run')
    end

    it 'should have a profile image' do
      visit("/users/1")
      expect(page).to have_selector("img[src='#{@me.photo}']")
    end

    it 'should have username murife' do
      visit("/users/1")
      expect(page).to have_content('murife')
    end

    it 'should have the number of posts' do
      visit("/users/1")
      expect(page).to have_content('Number of posts: 2')
    end

    it 'should show the users bio' do
      visit("/users/1")
      expect(page).to have_content('Murife don\'t run')
    end

    it 'should show a button element' do
      visit("/users/1")
      expect(page).to have_selector(:button, 'See posts')
    end

    it 'should redirect me to the posts show page' do
      visit("/users/1")
      click_on @post1.title
      expect(page).to have_current_path('/users/1/posts/10')
    end

    describe 'Post index page' do
      it 'show the user profile image' do
        visit('users/1/posts')
        expect(page).to have_selector("img[src='#{@me.photo}']")
      end


      it 'shows the username' do
        visit('users/1/posts')
        expect(page).to have_content(@me.name)
      end

      it 'shows a posts title' do
        visit('users/1/posts')
        expect(page).to have_content(@post1.title)
      end

      it 'shows a posts body' do
        visit('users/1/posts')
        expect(page).to have_content(@post1.text)
      end

      it 'shows the number of comments' do
        visit('users/1/posts/10')
        expect(page).to have_content('Comments: 3')
      end

      it 'shows the number of likes' do
        visit('users/1/posts/10')
        expect(page).to have_content('Likes: 0')
      end

      it 'Redirects to the post show page' do
        visit('users/1/posts')
        click_on @post1.title
        expect(page).to have_current_path('/users/1/posts/10')
      end

    end

  end

  describe 'Post show page' do

    it 'shows the posts title' do
      visit('users/1/posts/10')
      expect(page).to have_content(@post1.title)
    end

    it 'shows the username' do
      visit('users/1/posts/10')
      expect(page).to have_content(@me.name)
    end

    it 'shows the number of comments' do
      visit('users/1/posts/10')
      expect(page).to have_content('Comments: 3')
    end

    it 'shows the number of Likes' do
      visit('users/1/posts/10')
      expect(page).to have_content('Likes: 0')
    end

    it 'shows the body of the post' do
      visit('users/1/posts/10')
      expect(page).to have_content(@post1.text)
    end

    it 'shows the comment left' do
      visit('users/1/posts/10')
      expect(page).to have_content(@comment1.text)
    end

  end


end