defmodule SurfaceBootstrap4DemoWeb.ComponentsLive do
  use SurfaceBootstrap4DemoWeb, :live_view

  alias SurfaceBootstrap4.Container
  alias SurfaceBootstrap4.Container.{Row, Col}
  alias SurfaceBootstrap4.Button

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, page_title: "Components")}
  end
end
