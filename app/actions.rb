get '/' do
    @cutestagram_posts = CutestagramPost.order(created_at: :desc)
    erb(:index)
end

get '/signup' do
    @user = User.new
    erb :signup
end

post '/signup' do
    email      = params[:email]
    avatar_url = params[:avatar_url]
    username   = params[:username]
    password   = params[:password]

    @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })
    
    if @user.save
        "Your account with username #{username} has been created!"
    else
        erb :signup
    end
end