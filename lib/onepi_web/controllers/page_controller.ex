defmodule OnepiWeb.PageController do
  use OnepiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
