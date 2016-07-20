feature "Entering players" do
  scenario "User enters player names" do
    visit "/"
    fill_in "player1", :with => "Robert"
    fill_in "player2", :with => "Richard"
    click_button "Play"

    expect(page).to have_text("Robert vs. Richard!")
  end
end
