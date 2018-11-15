# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mac_hack,
  ecto_repos: [MacHack.Repo]

# Configures the endpoint
config :mac_hack, MacHackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jxFWX+qkl5p57CBz5KIFKCP2ifibDntMiUN1weG98G1HxLQYvbZCYbLLK7/2z08s",
  render_errors: [view: MacHackWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MacHack.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
