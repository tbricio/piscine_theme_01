defmodule ApiProject.Models.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :password, :string
    field :token, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :password, :token, :email])
    |> validate_required([:username, :password, :token, :email])
    |> unique_constraint(:email)
  end
end
