defmodule Discuss.User do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Poison.Encoder, only: [:email]}

  schema "users" do
    field(:email, :string)
    field(:provider, :string)
    field(:token, :string)
    has_many(:topics, Discuss.Topic)
    has_many(:comments, Disccus.Comment)

    timestamps()
  end

  @doc false
  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:email, :provider, :token])
    |> validate_required([:email, :provider, :token])
  end
end
