resources "/posts", PostController do
  post "/comment", PostController, :add_comment
end
