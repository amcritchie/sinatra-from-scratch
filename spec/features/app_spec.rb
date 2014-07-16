require "spec_helper"

feature "Add email" do
  scenario "visit home" do
    visit "/"
    expect(page).to have_content("Please enter your email")
  end
  scenario "Add an email" do
    visit "/"
    fill_in "email", with: 'fake@fake.com'
    click_button "Submit"
    expect(page).to have_content("Thanks for the email")
  end
  scenario "delete user" do

  end
  # scenario "create fish" do
  #   create_users
  #   alex_login
  #   fill_in "fishname", with: 'Clownfish'
  #   fill_in "wikilink", with: 'http://en.wikipedia.org/wiki/Amphiprioninae'
  #   click_button "Create"
  #   expect(page).to have_content("Clownfish")
  # end
  # scenario "check user fish" do
  #   create_users
  #   alex_create_fish
  #   visit "/"
  #   click_button "Logout"
  #   fill_in 'username', with: 'Phil'
  #   fill_in 'password', with: 'phil1'
  #   click_button "Login"
  #   expect(page).to have_no_content("Clownfish Pufferfish")
  # end
  # scenario "check other user's fish" do
  #   create_users
  #   alex_create_fish
  #   click_button "Logout"
  #   fill_in 'username', with: 'Phil'
  #   fill_in 'password', with: 'phil1'
  #   click_button "Login"
  #   select "Alex", from: "fish_list"
  #   click_button "Check Fish"
  #   expect(page).to have_content("Clownfish")
  # end

end