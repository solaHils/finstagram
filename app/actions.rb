helpers do
    def current_user
        User.find_by(id: session[:user_id])
    end
end

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
        redirect to('/login')
    else
        erb :signup
    end
end

get '/login' do
    erb :login
end

post '/login' do
    username = params[:username]
    password = params[:password]

    user = User.find_by(username: username)

    if user && user.password == password
        session[:user_id] = user.id
        redirect to('/')
    else
        @error_message = "Login failed."
        erb :login
    end
end

get '/logout' do
    session[:user_id] = nil
    redirect to('/')
end

get '/cutestagram_posts/new' do
    @cutestagram_post = CutestagramPost.new
    #why is the above line required cos it is also defined under the post method. get for login doesnt have anything too
    erb(:"cutestagram_posts/new")
end

post '/cutestagram_posts' do
    photo_url = params[:photo_url]
    @cutestagram_post = CutestagramPost.new({ photo_url: photo_url, user_id: current_user.id })
    
    if @cutestagram_post.save
        redirect(to('/'))
    else
        erb(:"cutestagram_posts/new")
    end
end

get '/cutestagram_posts/:id' do
    @cutestagram_post = CutestagramPost.find(params[:id])
    erb(:"cutestagram_posts/show")
end