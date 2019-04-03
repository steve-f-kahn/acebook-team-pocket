require 'rails_helper'

RSpec.feature "see friends profile page", type: :feature do

  scenario "A user can see friends suggestions list" do
    visit '/signup'
    fill_in 'signup[username]', with: "Foo"
    fill_in 'signup[password]', with: "Bar"
    fill_in 'signup[email]', with: "Foo@Bar.com"
    click_button "Submit"
    visit '/signin/new'
    fill_in 'signin[username]', with: "Foo"
    fill_in 'signin[password]', with: "Bar"
    click_button "Signin"
    click_link "Friends suggestions"
    expect(page).to have_content("Friend1")
  end
end
