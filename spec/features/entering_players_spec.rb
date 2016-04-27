feature "Entering players" do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "two players enter their names" do
    visit("/")
    fill_in :player_1_name, with: player_1_name
    fill_in :player_2_name, with: player_2_name
    click_button "Submit"

    expect(page).to have_content("#{player_1_name} and #{player_2_name}.")
  end
end