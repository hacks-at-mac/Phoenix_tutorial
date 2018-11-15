defmodule MacHack.Repo do
  use Ecto.Repo,
    otp_app: :mac_hack,
    adapter: Ecto.Adapters.Postgres
end
