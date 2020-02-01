# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tutter,
  ecto_repos: [Tutter.Repo]

# Configures the endpoint
config :tutter, TutterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YHzniU2eh9CnjYw7bnW0QCgdwek6jhMvq/hRgWVNRVkpl/dAqSoAdyfmMC3CgOgm",
  render_errors: [view: TutterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tutter.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
     signing_salt: "prSMj/Y21SiaxK1PKEU069pGXH3E2Kjt"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
