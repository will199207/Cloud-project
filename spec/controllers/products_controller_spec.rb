require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "root route" do
    it "routes to products#index" do
      expect(:get => '/').to route_to(:controller => "products", :action => "index")
    end
  end

  describe "GET #index" do
    it "routes correctly" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET #show" do
    it "routes correctly" do
      expect(Product).to receive(:find).with("1") { p }
      get :show, id: 1
      p = Product.new
      expect(response.status).to eq(200)
    end

    it "renders the show template" do
      expect(Product).to receive(:find).with("1") { p }
      get :show, id: 1
      expect(response).to render_template(:show)
    end
  end
end