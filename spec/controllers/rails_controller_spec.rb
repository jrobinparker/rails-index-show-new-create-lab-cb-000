require 'rails_helper'

RSpec.describe RailsController, type: :controller do

  describe "GET #g" do
    it "returns http success" do
      get :g
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #controller" do
    it "returns http success" do
      get :controller
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Coupons" do
    it "returns http success" do
      get :Coupons
      expect(response).to have_http_status(:success)
    end
  end

end
