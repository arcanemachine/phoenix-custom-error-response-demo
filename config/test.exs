import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :your_project, YourProjectWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "xwf2GwyiIXH6sNdi73ohLLS9YQ1NsAMvG8tcDmZeakQmfYSO9DIIH0wDp0BftwV0",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
