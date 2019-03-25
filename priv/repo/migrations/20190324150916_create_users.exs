defmodule Onepi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :nationality, :string
      add :address, :string
      add :telephone, :string
      add :email, :string


      timestamps()
    end

  end
end
