defmodule YourProjectWeb.Router do
  use YourProjectWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {YourProjectWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", YourProjectWeb do
    pipe_through :api

    get "/", PageController, :home
  end

  # Other scopes may use custom stacks.
  # scope "/api", YourProjectWeb do
  #   pipe_through :api
  # end
end
