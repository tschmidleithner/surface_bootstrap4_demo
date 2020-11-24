defmodule SurfaceBootstrap4DemoWeb.LayoutLive do
  use SurfaceBootstrap4DemoWeb, :live_view

  alias SurfaceBootstrap4.Container
  alias SurfaceBootstrap4.Container.{Row, Col}

  @impl true
  def mount(_params, _session, socket) do
    socket = Surface.init(socket)
    {:ok, assign(socket, page_title: "Layout")}
  end
end
