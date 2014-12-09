enable :sessions
set :protection, except: :session_hijacking

get '/signup' do
  erb :signup
end

get '/login' do
  erb :login
end

post '/signup' do
  @user = User.create(params[:user])

  redirect to('/login')
end

post '/login' do

  # if @user
  #   if @user = User.authenticate(params[:user][:username], params[:user][:password])
      session[:username] = params[:user][:username]

      redirect '/'
    # else
    #   redirect to ('/error')
    # end
  # end
end

get '/error' do

  erb :error
end

get '/logout' do
  session[:username] = nil
  redirect to ('/')
end

get '/users/:id' do
  @user = User.find(params[:id])
  @following_ids = Follow.where(user_id: @user.id)
  @following = []
  @following_ids.each do |f|
    @following << User.find(f.following)
  end
  erb :profile
end

