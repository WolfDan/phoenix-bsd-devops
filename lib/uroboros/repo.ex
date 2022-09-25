defmodule Uroboros.Repo do
  use AshPostgres.Repo,
    otp_app: :uroboros
end
