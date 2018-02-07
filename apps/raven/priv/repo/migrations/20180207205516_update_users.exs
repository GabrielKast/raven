defmodule Raven.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    rename table(:users), :login, to: :username
  end
end
