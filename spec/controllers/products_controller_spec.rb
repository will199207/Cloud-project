require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "root route" do
    it "routes to products#index" do
      expect(:get => '/').to route_to(:controller => "products", :action => "index")
    end
  end
end
