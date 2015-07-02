require 'byebug'

post '/postvote/:post_id/new' do

  if logged_in?

    if !Postvote.where(post_id: params[:post_id], user_id: @current_user.id).empty?
      redirect to '/'
    else
      if params[:vote] == "up"
        Postvote.create(post_id: params[:post_id], user_id: @current_user.id, count: 1)
        redirect to '/'
      else
        Postvote.create(post_id: params[:post_id], user_id: @current_user.id, count: -1)
        redirect to '/'
      end
    end
  else
    redirect to '/user/login'
  end
end