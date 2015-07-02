User.create(username: "donkey", password: "donkey")
User.create(username: "shrek", password: "shrek")

Post.create(title: "First Post", content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an", user_id: 1)
Post.create(title: "Second Post", content: " type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", user_id: 2)

