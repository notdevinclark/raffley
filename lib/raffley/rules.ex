defmodule Raffley.Rules do
  def list_rules() do
    [
      %{
        id: 1,
        text: "Do not talk about Raffley Club. 👊"
      },
      %{
        id: 2,
        text: "Do NOT talk about RAFFLEY CLUB. 👊👊👊"
      },
      %{
        id: 3,
        text: "Participants must have a high tolerance for puns and dad jokes. 🙃"
      },
      %{
        id: 4,
        text: "Winner must do a victory dance when claiming their prize. 💃"
      },
      %{
        id: 5,
        text: "Have fun! 🎟️"
      }
    ]
  end

  def get_rule(id) when is_binary(id) do
    id
    |> String.to_integer()
    |> get_rule()
  end

  def get_rule(id) when is_integer(id) do
    list_rules()
    |> Enum.find(fn rule ->
      rule.id == id
    end)
  end
end
