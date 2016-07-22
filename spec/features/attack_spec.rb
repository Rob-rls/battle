feature "Attack Player" do
  scenario "player attacks another" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(1..10).and_return(10)
    click_button "attack"
    expect(page).to have_content('Albie attacked Noby')
    click_button "ok"
    expect(page).not_to have_content("Noby's: 50HP")
    expect(page).to have_content("Noby's: 40HP")
  end

end
