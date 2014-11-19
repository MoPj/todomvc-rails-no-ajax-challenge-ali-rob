require 'rails_helper'

describe UsersController do

  describe "GET #show" do
    it "should render user's page" do
      user = FactoryGirl.create(:user)
      get :show, id: user
      expect(response).to render_template :show
    end
  end

end
