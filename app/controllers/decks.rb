# Show all decks
get "/decks" do
  @decks = Deck.all
  erb :"/decks/index"
end

# Show a specific deck (by id)
get "/decks/:deck_id" do
  @deck = Deck.find(params[:deck_id])

  erb :"/decks/index"
end
