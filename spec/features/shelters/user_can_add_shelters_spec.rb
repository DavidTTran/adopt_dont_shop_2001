require 'rails_helper'

describe "shelters new page" do
  it "can ask for information, return to index, and post the new shelter" do

    shelter_1 = Shelter.create(name:    "Dumb Friends League",
                               address: "123 Fake Street",
                               city:    "Castle Rock",
                               state:   "CO",
                               zip:     "80104")

    shelter_2 = Shelter.create(name:    "Pawty Please",
                               address: "000 Another Fake St",
                               city:    "Denver",
                               state:   "CO",
                               zip:     "80204")

    visit "/shelters/new"

    expect(page).to have_text("Name:")
    expect(page).to have_text("Address:")
    expect(page).to have_text("City:")
    expect(page).to have_text("State:")
    expect(page).to have_text("Zip Code:")
    expect(page).to have_selector(:link_or_button, "Create Shelter")
    expect(page).to have_field("shelter[name]", :type=>"text")

    fill_in "shelter[name]", with: "Test Shelter"
    fill_in "shelter[address]", with: "Test Address"
    fill_in "shelter[city]", with: "Test City"
    fill_in "shelter[state]", with: "Test State"
    fill_in "shelter[zip]", with: "Test Zip"

    click_button("Create Shelter")

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Test Shelter")
  end
end
