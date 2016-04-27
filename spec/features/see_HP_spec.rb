feature 'Display HP' do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "display HP of player 2" do
    visit("/")
    fill_in :player_1_name, with: player_1_name
    fill_in :player_2_name, with: player_2_name
    click_button "Submit"
    expect(page).to have_content("#{player_2_name} HP: #{Battle::PLAYER_2_HP}")
  end

end