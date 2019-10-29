defmodule LiveviewtestWeb.Live.LiveChild do
  @moduledoc """
  """
  use Phoenix.LiveView

  alias LiveviewtestWeb.Router.Helpers
  alias LiveviewtestWeb.Endpoint
  alias LiveviewtestWeb.Live.LiveParent

  def render(assigns) do
    ~L"""
      Child value: <%= @value %>
      <br/>
      <ol>
        <li><%= live_link "Change the value to 1", to: Helpers.live_path(Endpoint, LiveParent, 1) %></li>
        <li><%= live_link "Change the value to 2", to: Helpers.live_path(Endpoint, LiveParent, 2) %></li>
        <li><%= live_link "Change the value to 3", to: Helpers.live_path(Endpoint, LiveParent, 3) %></li>
      </ol>
    """
  end

  def mount(session, socket) do
    {:ok,
     socket
     |> assign(value: session.value)}
  end
end
