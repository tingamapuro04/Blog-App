require 'rails_helper'

RSpec.describe "Posts", type: :request do
  it "Shows the status of the request" do
    get('/users/1/posts')
    expect(response).to have_http_status(200)
  end

  it 'Shows the sample text on view' do
    get('/users/1/posts')
    expect(response.body).to include 'I am a post'
  end

  it 'Renders the correct view' do
    get('/users/1/posts')
    expect(response).to render_template('index')
  end
end
