require 'rails_helper'

describe UsersController do

  describe "GET #index" do
    it "should render index login page" do
      get :index
      expect(response).to render_template :index
    end
  end

  # describe "GET #index" do
  #   it "should render login form at index" do
  #     get :index

  #   end
  # end


end
