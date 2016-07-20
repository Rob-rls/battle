feature "Viewing hit points" do
  scenario "Player1 sees player2's hit points" do
    sign_in_and_play
    expect(page).to have_text("Richard HP: 20")
  end
end
