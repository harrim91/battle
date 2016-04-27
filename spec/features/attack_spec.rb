feature "Attacking" do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "attacking player 2" do
    sign_in_and_play
    click_button "Throw Poop"

    expect(page).to have_content("#{player_1_name} threw his own faeces at #{player_2_name}!")
  end
end