defmodule LiveviewtestWeb.Live.LiveParent do
  @moduledoc """
  """
  use Phoenix.LiveView

  @doc """
  Even though @parent_value is changed by `handle_params`, the change never makes it into `LiveChild`.
  """
  def render(assigns) do
    ~L"""
    Parent value: <%= @parent_value %>
    <br/>
    <%= live_render(
          @socket,
          LiveviewtestWeb.Live.LiveChild,
          id: "child",
          session: %{value: @parent_value}
        )
    %>
    """
  end

  def mount(_session, socket) do
    {:ok,
     socket
     |> assign(parent_value: 0)}
  end

  def handle_params(%{"id" => id}, _, socket) do
    {:noreply, socket |> assign(parent_value: id)}
  end
end
