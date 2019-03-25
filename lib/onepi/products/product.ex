defmodule Onepi.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :blockchain_id, :string
    field :colour, :string
    field :image, :string
    field :name, :string
    field :picode, :string
    field :count, :integer

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:picode, :name, :colour, :image, :blockchain_id, :count])
    |> validate_required([:picode, :name, :colour, :image, :blockchain_id, :count])
  end
end
