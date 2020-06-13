# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :surface_bootstrap4_demo,
  ecto_repos: [SurfaceBootstrap4Demo.Repo]

# Configures the endpoint
config :surface_bootstrap4_demo, SurfaceBootstrap4DemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hvE+V4MrEJKVUF4vWgffWs8NS2+Ci1UWBQkJoduVogb+8wpd9cx6ORgs+/YcuJ3+",
  render_errors: [view: SurfaceBootstrap4DemoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SurfaceBootstrap4Demo.PubSub,
  live_view: [signing_salt: "qS9LWko1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
