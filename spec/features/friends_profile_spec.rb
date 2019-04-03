require 'rails_helper'

RSpec.feature "see friends profile page", type: :feature do

  scenario "A user can see friends suggestions list" do
    visit '/signin/new'
    fill_in 'signin[username]', with: "bobby"
    fill_in 'signin[password]', with: "boblord95"
    click_button "Signin"
    click_link "Friends suggestions"
    expect(page).to have_content("Friend1")
  end

  scenario "User can click to 'Add friend' button and see profile" do
    visit '/signin/new'
    fill_in 'signin[username]', with: "bobby"
    fill_in 'signin[password]', with: "boblord95"
    click_button "Signin"
    click_link "Friends suggestions"
    click_button "Add friend"
    expect(page).to have_content "Friend request sent"

  end

end
