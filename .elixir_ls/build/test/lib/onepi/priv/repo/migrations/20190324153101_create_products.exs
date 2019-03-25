defmodule Onepi.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :picode, :string
      add :name, :string
      add :colour, :string
      add :image, :string
      add :blockchain_id, :string
      add :count, :integer

      timestamps()
    end

  end
end
