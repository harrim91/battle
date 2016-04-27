feature "Entering players" do
  let(:player_1_name) { "Michael" }
  let(:player_2_name) { "Emmett" }

  scenario "two players enter their names" do
    sign_in_and_play
    expect(page).to have_content("#{player_1_name} and #{player_2_name}.")
  end
end