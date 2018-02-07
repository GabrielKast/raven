# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :raven_web,
  namespace: RavenWeb,
  ecto_repos: [Raven.Repo],
  default_locale: "fr", locales: ~w(en fr)

# Configures the endpoint
config :raven_web, RavenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v2KgaZ3f467QEMx0/7bMSkz9MU3bhCRL5+fJUJwfkl8op/fFOuvnGfS3uxVD8EbI",
  render_errors: [view: RavenWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RavenWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :raven_web, :generators,
  context_app: :raven

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
