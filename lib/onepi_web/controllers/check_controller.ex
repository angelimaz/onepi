defmodule OnepiWeb.CheckController do
  use OnepiWeb, :controller

  def index(conn,  %{"id" => id}) do
    IO.inspect(id)
    registration = Onepi.Repo.get_by(Onepi.Products.Product, picode: id)
    IO.inspect(registration)
    products = Onepi.Products.list_products()

    count = products
    |> length()

    render(conn, "index.html", id: id, registration: registration, count: registration.count)
  end
end
