require 'rails_helper'

RSpec.describe PrimeNumbersController do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    it "returns 200" do
      get :show
      expect(response).to have_http_status(200)
    end

    it "returns json" do
      get :show
      expect(response.content_type).to eq("application/json")
    end

    it "returns an array of the first 1000 prime numbers" do
      get :show
      expect(assigns(:results)).to eq(Prime.take(1000))
    end
  end
end