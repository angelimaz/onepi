defmodule Onepi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :name, :string
    field :nationality, :string
    field :address, :string
    field :telephone, :string
    field :email, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :nationality, :address, :telephone, :email])
    |> validate_required([:name, :nationality, :address, :telephone, :email])
  end
end
