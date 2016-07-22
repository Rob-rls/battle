feature "End game" do

  scenario "when a player has zero HP" do
    sign_in_and_play
    allow(Kernel).to receive(:rand).with(1..10).and_return(50)
    click_button "attack"
    # Game.any_instance.stub(:gameover).and_return(true)
    # allow(Game).to receive(:gameover).and_return(true)
    click_button "ok"
    expect(page).to have_content("loses!")
  end
end
