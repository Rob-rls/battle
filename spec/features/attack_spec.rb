feature "When you click attack" do
  scenario "it confirms an attack" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_text("Robert has sucessfully hit Richard")
  end
end
