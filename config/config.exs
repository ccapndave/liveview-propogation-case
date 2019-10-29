# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveviewtest, LiveviewtestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ExYjgiBIVf3duGUHfmCnOKl+dOxhx10tohJ/gUr8+p91xk+AwS3ankqxFEd9niRo",
  render_errors: [view: LiveviewtestWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Liveviewtest.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "dkLWtJLLBi5s7Se+wYjl9zUWB13HhRZD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :phoenix, template_engines: [leex: Phoenix.LiveView.Engine]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
