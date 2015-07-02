
get '/user/login' do
  @error= params[:error]
  @success= params[:success]
  erb :submit
end

post '/user' do
  @new_user= User.new(params[:user])
  if @new_user.save
    redirect to "/user/login?success='Account Successfully Created'"
  else
    redirect to "/user/login?error='Account Creation Fail'"
  end
end

get '/user/:id' do
  @user= User.find(params[:id])
  authenticate
  erb :user
end

get '/user/:id/posts' do
  @user= User.find(params[:id])
  authenticate
  erb :user_posts
end

get '/user/:id/comments' do
  @user= User.find(params[:id])
  authenticate
  erb :user_comments
end
