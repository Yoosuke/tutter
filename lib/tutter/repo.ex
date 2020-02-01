defmodule Tutter.Repo do
  use Ecto.Repo,
    otp_app: :tutter,
    adapter: Ecto.Adapters.Postgres
end
