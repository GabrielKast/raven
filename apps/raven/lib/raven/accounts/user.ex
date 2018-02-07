defmodule Raven.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Raven.Accounts.User


  @required_fields ~w(username password password_confirmation)
  @optional_fields ~w()

  schema "users" do
    field :firstname, :string
    field :lastname, :string
    field :mail, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_digest, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:username, :password, :firstname, :lastname, :mail])
    |> validate_required([:username, :password, :firstname, :lastname, :mail])
    # |> validate_unique(:username, on: Phitter.Repo, downcase: true)
    |> validate_length(:password, min: 8)
  end
end
