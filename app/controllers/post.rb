get '/post/:id' do
  @post= Post.find(params[:id])
  erb :post
end

get '/post' do
  @all_post= Post.all
  erb :post_all
end

get '/post/:id/comments' do

end