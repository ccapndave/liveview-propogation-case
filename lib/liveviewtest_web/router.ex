defmodule LiveviewtestWeb.Router do
  use LiveviewtestWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug Phoenix.LiveView.Flash

    # TODO: Disable this until Phoenix 1.5 because of https://github.com/phoenixframework/phoenix_live_view/issues/111
    # plug :protect_from_forgery

    plug :put_secure_browser_headers
  end

  scope "/" do
    live "/", LiveviewtestWeb.Live.LiveParent
    live "/:id", LiveviewtestWeb.Live.LiveParent
  end
end
