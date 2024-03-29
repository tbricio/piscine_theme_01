defmodule ApiProject.Models.Workingtime do
  use Ecto.Schema
  import Ecto.Changeset


  schema "workingtimes" do
    field :end, :utc_datetime
    field :start, :utc_datetime
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(workingtime, attrs) do
    workingtime
    |> cast(attrs, [:start, :end])
    |> validate_required([:start, :end])
  end
end
