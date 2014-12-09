get '/follow/:id' do
  @user = User.where(username: session[:username]).first
  if session[:username] == nil
      redirect to ('/error')
  else
      @follow = Follow.find_or_create_by(following: params[:id], user: @user)
  end

  redirect "/users/#{@user.id}"
end