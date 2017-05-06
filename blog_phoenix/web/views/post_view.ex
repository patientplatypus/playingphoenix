defmodule BlogPhoenix.PostView do
  use BlogPhoenix.Web, :view

  def show(conn, %{"id" => id}) do
    post = Repo.get(Post, id) |> Repo.preload([:comments])
    changeset = Comment.changeset(%Comment{})
    render(conn, "show.html", post: post, changeset: changeset)
  end

end
