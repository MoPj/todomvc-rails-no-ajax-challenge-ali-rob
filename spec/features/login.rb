require "rails_helper"

feature "Login Form" do

  scenario "GET #index" do
    # it "should render login form at index that works" do
      visit users_path
      click_link("Login")
      fill_in('Username', :with => 'John')
      fill_in('Password', :with => 'Seekrit')
      click_button("submit")
      expect(response).to redirect_to(user_path)
    # end
  end

  scenario "GET #index" do
    # it "should render login form at index that works" do
      visit users_path
      click_link("Signup")
      fill_in('Username', :with => 'John')
      fill_in('Password', :with => 'Seekrit')
      fill_in('Password_confirmation', :with => 'Seekrit')
      save_and_open_page
      click_button("submit")
      expect(response).to redirect_to(user_path)
    # end
  end

end
