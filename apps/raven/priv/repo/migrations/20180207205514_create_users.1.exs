defmodule Raven.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :login, :string
      add :password, :string
      add :firstname, :string
      add :lastname, :string
      add :mail, :string

      timestamps()
    end

  end
end
