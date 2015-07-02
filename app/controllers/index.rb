get '/' do
  # Look in app/views/index.erb
  # @all_post= Post.all
  @all_post= Post.all
  erb :index
end
