defmodule Raven.Application do
  @moduledoc """
  The Raven Application Service.

  The raven system business domain lives in this application.

  Exposes API to clients such as the `RavenWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Raven.Repo, []),
    ], strategy: :one_for_one, name: Raven.Supervisor)
  end
end
