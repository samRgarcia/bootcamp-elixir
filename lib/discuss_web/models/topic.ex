defmodule Discuss.Topic do
  use Ecto.Schema
  import Ecto.Changeset
  alias Discuss.Topic

  schema "topics" do
  field :title, :string
  belongs_to :user, Discuss.User
  has_many :comments, Discuss.Comment
  end

  #@doc false
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title])
    |> validate_required([:title])
  end
end