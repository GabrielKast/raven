use Mix.Config

# Configure your database
config :raven, Raven.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "raven_dev",
  hostname: "localhost",
  pool_size: 10
