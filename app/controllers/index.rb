get '/' do
  @user = User.new
  erb :index
end

post '/' do
  User.create!(name: params[:name])
  erb :'decks/index'
end
