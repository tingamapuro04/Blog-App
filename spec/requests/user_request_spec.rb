require 'rails_helper'

RSpec.describe "Users", type: :request do
  it 'Get the status of the response' do
    get('/users/index')
    expect(response).to have_http_status(200)
  end

  it 'Output on the view' do
    get('/users')
    expect(response.body).to include 'I am a user'
  end

  it 'Render the correct view' do
    get("/users")
    expect(response).to render_template('index')
  end

end
