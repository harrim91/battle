feature "Entering players" do
  scenario "two players enter their names" do
    visit("/")
    fill_in :player1, with: "Michael"
    fill_in :player2, with: "Lucy"
    click_button "Submit"

    expect(page).to have_content("Welcome Michael and Lucy.")
  end
end