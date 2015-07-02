helpers do

  def show(placeholder, placeholder_id)
    a= placeholder.find_by(placeholder_id)
  end

  def comments_all_from(post)
    post.comments.each do |comment|
    end
  end

end