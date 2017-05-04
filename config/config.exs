# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :buffer,
  ecto_repos: [Buffer.Repo]

# Configures the endpoint
config :buffer, Buffer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ne50PnUHu9kb86I5ZvS9nmHMm1HZ9+zfPxICjhGUNuKUm6df9M4WdJfkHi5ZMfj6",
  render_errors: [view: Buffer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Buffer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
