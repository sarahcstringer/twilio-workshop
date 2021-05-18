defmodule TwilioWorkshop.Repo do
  use Ecto.Repo,
    otp_app: :twilio_workshop,
    adapter: Ecto.Adapters.Postgres
end
