defmodule PhxHello.Test do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tests" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(test, attrs) do
    test
    |> cast(attrs, [:name, :email])
    |> validate_required([:name, :email])
  end
end
