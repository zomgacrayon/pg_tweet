post '/tweets/create' do

  if session[:username] == nil
      redirect to ('/error')
  else
      @tweet = Tweet.create(text: params[:tweet], user: User.where(username: session[:username]).first)
  end
  redirect to ('/')

end

