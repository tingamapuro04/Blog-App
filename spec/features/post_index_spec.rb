require 'rails_helper'
require '/experience_spec'

decsribe 'Post index' do
  it 'shows the index page' do
    visit('users/1/posts')
    expect(page).to have_content(@me.name)
  end
end
