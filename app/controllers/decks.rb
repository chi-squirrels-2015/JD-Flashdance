# Show all decks
get "/decks" do
  @decks = Deck.all

  erb :"/decks/index"
end

# Show a specific deck (by id)
get "/decks/:entry_id" do
  @entry = Entry.find(params[:entry_id])

  erb :"/decks/index"
end
