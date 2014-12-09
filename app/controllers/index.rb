get '/' do
  # Look in app/views/index.erb
  @tweet = Tweet.all

  erb :index
end
