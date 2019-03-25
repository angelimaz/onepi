# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :onepi,
  ecto_repos: [Onepi.Repo]

# Configures the endpoint
config :onepi, OnepiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VqK59Kd07MWpHo8PjD8V9aoYN4lrcyqbiWm4K/sjHEowHPBdhOg54EuU7g8pNYBk",
  render_errors: [view: OnepiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Onepi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
