defmodule Onepi.Repo do
  use Ecto.Repo,
    otp_app: :onepi,
    adapter: Ecto.Adapters.Postgres
end
