defmodule BlogPhoenix.Comment do
  use BlogPhoenix.Web, :model

  schema "comments" do
    field :name, :string
    field :comment, :string
    belongs_to :post, BlogPhoenix.Post, foreign_key: :post_id

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :comment])
    |> validate_required([:name, :comment])
  end
end
