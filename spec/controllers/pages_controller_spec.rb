require "rails_helper"

RSpec.describe PagesController, type: :controller do
  describe "GET index" do

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "renders the welcome page" do
      get :index
      expect(response).to render_template(:index)
    end

  end
end