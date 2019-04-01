require 'rails_helper'

RSpec.feature "Signin", type: :feature do

  scenario "A user can access the signin form" do
    visit "/signin"
    expect(page).to have_content("Username")
  end

  scenario "Signs in and goes to next page" do
    visit '/signup'
    fill_in 'signup[username]', with: "Foo"
    fill_in 'signup[password]', with: "Bar"
    fill_in 'signup[email]', with: "Foo@Bar.com"
    click_button "Submit"
    visit '/'
  end
  
end
