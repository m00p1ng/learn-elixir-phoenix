defmodule Discuss.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add(:content, :string)
      add(:user_id, references(:users, on_delete: :nothing))
      add(:topic_id, references(:topics, on_delete: :nothing))

      timestamps()
    end
  end
end
