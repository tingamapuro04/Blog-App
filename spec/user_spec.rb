require 'rails_helper'

RSpec.describe 'User Page', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit('users')
      expect(page).to have_content('')
    end
  end
end
