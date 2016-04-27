feature "Switching turns" do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "player 1's turn" do
    sign_in_and_play
    expect(page).to have_content "#{player_1_name}'s turn"
  end

  scenario "after player 1's turn" do
    sign_in_and_play
    click_button "Throw Poop"
    click_link 'End Turn'
    expect(page).not_to have_content "#{player_1_name}'s turn"
    expect(page).to have_content "#{player_2_name}'s turn"
  end
end