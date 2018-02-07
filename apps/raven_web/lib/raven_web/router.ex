defmodule RavenWeb.Router do
  use RavenWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
    plug(RavenWeb.Locale)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", RavenWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/", PageController, :index)
    resources("/users", UserController)
    resources("/registrations", RegistrationController, only: [:new, :create])
  end

  # Other scopes may use custom stacks.
  # scope "/api", RavenWeb do
  #   pipe_through :api
  # end
end
