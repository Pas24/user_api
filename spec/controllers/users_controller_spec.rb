require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "GET /users/:id/welcome" do
    let!(:user) { create(:user) }

    it "should return a user" do
      get "/users/#{user.id}/welcome" 
      payload = JSON.parse(response.body)
      expect(payload).to_not be_empty
      expect(payload["id"]).to eq(user.id)
      expect(payload["email"]).to eq(user.email)
      expect(payload["name"]).to eq(user.name)
      expect(payload["password"]).to eq(user.password)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /users/first" do
    let!(:users) { create_list(:user, 5) }

    it "should return first user" do
      get "/users/first"
      payload = JSON.parse(response.body)
      expect(payload).to_not be_empty
      expect(payload["id"]).to eq(users[0].id)
      expect(response).to have_http_status(200)
    end
  end
end
