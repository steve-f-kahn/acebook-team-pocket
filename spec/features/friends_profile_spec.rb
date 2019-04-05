require 'rails_helper'
RSpec.feature "see friends profile page", type: :feature, js: true do 

  scenario "user can see list of his/her friends" do
    visit '/friends?id=1' #going to signup user 1's profile
    expect(page).to have_content "Cauliflower"
  end


    scenario "can add a friend and see ureself on the friend list" do
    signin("Elizabeth", "Regina")
    visit "/friends?id=1"
    click_button "Add"
    expect(page).to have_content "Elizabeth"

  end


end
def signin(name, pass)
  visit "/"
  fill_in 'signin[username]', with: name
  fill_in 'signin[password]', with: pass
  click_button "Signin"
end
