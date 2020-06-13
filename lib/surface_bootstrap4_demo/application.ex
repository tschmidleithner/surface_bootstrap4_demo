defmodule SurfaceBootstrap4Demo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      SurfaceBootstrap4DemoWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: SurfaceBootstrap4Demo.PubSub},
      # Start the Endpoint (http/https)
      SurfaceBootstrap4DemoWeb.Endpoint
      # Start a worker by calling: SurfaceBootstrap4Demo.Worker.start_link(arg)
      # {SurfaceBootstrap4Demo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SurfaceBootstrap4Demo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    SurfaceBootstrap4DemoWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
