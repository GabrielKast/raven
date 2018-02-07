defmodule Raven.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    rename table(:users), :password, to: :password_digest
  end
end
