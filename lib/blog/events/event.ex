defmodule Blog.Events.Event do
  @moduledoc """
  The Event controller.
  """
  use Ecto.Schema
  import Ecto.Changeset


  schema "events" do
    field :due, :naive_datetime
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:title, :due])
    |> validate_required([:title, :due])
  end
end
