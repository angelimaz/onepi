defmodule OnepiWeb.Router do
  use OnepiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", OnepiWeb do
    pipe_through :browser

    get "/", PageController, :index
    resources "/users", UserController
    get "/picode/:id", CheckController, :index
    resources "/products", ProductController
  end

  # Other scopes may use custom stacks.
  # scope "/api", OnepiWeb do
  #   pipe_through :api
  # end
end
