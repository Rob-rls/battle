def sign_in_and_play
  visit "/"
  fill_in "player1", :with => "Robert"
  fill_in "player2", :with => "Richard"
  click_button "Play"
end
