require 'rails_helper'

RSpec.feature "Signin", type: :feature do
  scenario "Can sign in" do
    visit "/signin"
    expect(page).to have _content("Username")

  end
end
