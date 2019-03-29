require 'rails_helper'

RSpec.feature "Signin", type: :feature do
  scenario "Can sign in" do
    visit "/signin"
    expect(page).to have_content("Username")

  end
end
