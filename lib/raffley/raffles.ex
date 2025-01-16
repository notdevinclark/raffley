defmodule Raffley.Raffles do
  alias Raffley.Repo
  alias Raffley.Raffles.Raffle

  def list_raffles() do
    Repo.all(Raffle)
  end

  def get_raffle(id) when is_binary(id) do
    id
    |> String.to_integer()
    |> get_raffle()
  end

  def get_raffle(id) when is_integer(id) do
    Repo.get(Raffle, id)
  end

  def featured_raffles(raffle) do
    list_raffles() |> List.delete(raffle)
  end
end
