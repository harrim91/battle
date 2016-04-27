feature 'Display HP' do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "displays HP of player 2" do
    sign_in_and_play
    expect(page).to have_content("#{player_2_name} HP: #{Player::DEFAULT_HP}")
  end

end