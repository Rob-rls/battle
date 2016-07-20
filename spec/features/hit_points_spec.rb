feature "Viewing hit points" do
  scenario "Player1 sees player2's hit points" do
    visit "/"
    fill_in "player1", :with => "Robert"
    fill_in "player2", :with => "Richard"
    click_button "Play"

    expect(page).to have_text("Richard HP: 20")
  end
end
