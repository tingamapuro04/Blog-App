require 'rails_helper'

RSpec.describe 'Users', type: :request do
  it 'Get the status' do
    get('/users/show')

    expect(response).to have_http_status(200)
  end

  it 'Shows the output on the view' do
    get('/users/show')
    expect(response.body).to include 'I am a list of users'
  end

  it 'Render the correct view' do
    get('/users/show')
    expect(response).to render_template('show')
  end
end
