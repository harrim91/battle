feature "Reducing HP" do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "attacking player 2" do
    sign_in_and_play
    click_button "Throw Poop"
    expect(page).to have_content "Right in the kisser! #{player_2_name} now has 90 HP remaining..."
  end
end