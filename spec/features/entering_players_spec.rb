feature "Entering players" do
  scenario "User enters player names" do
    sign_in_and_play
    expect(page).to have_text("Robert vs. Richard!")
  end
end
