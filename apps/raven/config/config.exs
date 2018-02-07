use Mix.Config

config :raven, ecto_repos: [Raven.Repo]

import_config "#{Mix.env}.exs"
