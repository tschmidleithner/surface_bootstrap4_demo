defmodule SurfaceBootstrap4DemoWeb.Components.AlertLive do
  use Surface.LiveComponent
  alias SurfaceBootstrap4.Alert

  data(is_open_primary, :boolean, default: true)
  data(is_open_danger, :boolean, default: true)

  def render(assigns) do
    ~H"""
    <div class="mt-4perf mb-5">
      <p>
        Interactive example to toggle alert on button click.
      </p>

      <Alert :if={{@is_open_primary}} color="primary" toggle="toggle_primary">A closeable primary alert</Alert>
      <Alert :if={{@is_open_danger}} color="danger" toggle="toggle_secondary">A closeable danger alert</Alert>
    </div>
    """
  end

  def handle_event("toggle_primary", _value, socket) do
    {:noreply, update(socket, :is_open_primary, &(!&1))}
  end

  def handle_event("toggle_secondary", _value, socket) do
    {:noreply, update(socket, :is_open_danger, &(!&1))}
  end
end
