defmodule SurfaceBootstrap4DemoWeb.ComponentsLive do
  use SurfaceBootstrap4DemoWeb, :live_view

  alias SurfaceBootstrap4.Alert
  alias SurfaceBootstrap4.Button
  alias SurfaceBootstrap4.Container
  alias SurfaceBootstrap4.Container.{Row, Col}
  alias SurfaceBootstrap4.Nav
  alias SurfaceBootstrap4.Nav.{NavItem, NavLink}
  alias SurfaceBootstrap4DemoWeb.Components.AlertLive
  alias SurfaceBootstrap4DemoWeb.Components.ProgressLive

  @impl true
  def mount(_params, _session, socket) do
    socket = Surface.init(socket)
    {:ok, assign(socket, page_title: "Components")}
  end
end
