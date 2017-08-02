defmodule Locals.Router do
  use Locals.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Locals do
    pipe_through :api
  end
end
