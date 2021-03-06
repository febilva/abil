# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :abil,
  ecto_repos: [Abil.Repo]

# Configures the endpoint
config :abil, AbilWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3t7ZRFrRpqkg33PYLiCk1RF6ACY+hTmWAk53T/YS6N3CavpPaGS/ZQ30z52Asve5",
  render_errors: [view: AbilWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Abil.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


  config :ejabberd,
     file: "config/ejabberd.yml",
     log_path: 'logs/ejabberd.log'

   # Customize Mnesia directory:
   config :mnesia,
     dir: 'mnesiadb/'

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
