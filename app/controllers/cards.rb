get "/decks/:deck_id/:card_id" do
  @card = Card.find(params[:card_id])
  @card_count = Card.count(:deck_id)
  # @deck = Deck.find(params[:deck_id])


  erb :"cards/index"
end

post "/decks/:deck_id/:card_id" do

   @deck = params[:deck_id]

   @display = params[:display]
  begin
    @card = Card.find(params[:card_id])
  rescue ActiveRecord::RecordNotFound
    redirect "/decks"
  return
  end

   previous_id = params[:card_id].to_i - 1
   if @card.id != 1
     @card_previous = Card.find(previous_id)
     if params[:answer] == @card_previous.answer
       @display = "The previous answer was correct!"
     else
       @display = "Incorrect the answer was #{@card_previous.answer.capitalize}"
     end
   end
   erb :"cards/index"

end
