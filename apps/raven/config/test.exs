use Mix.Config

# Configure your database
config :raven, Raven.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "raven_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
