defmodule SurfaceBootstrap4DemoWeb.Components.ProgressLive do
  use Surface.LiveComponent
  alias SurfaceBootstrap4.Progress
  alias SurfaceBootstrap4.Button

  data value, :integer, default: 50

  def render(assigns) do
    ~H"""
    <div>
      <div class="mb-5">
        <p>
          Interactive example so increment or decrement <code>value</code> of the progress bar.
        </p>
        <Progress value={{ @value }} class={{ "my-1" }}>{{ @value }}%</Progress>

        <Button color="secondary" click="dec"> - </Button>
        <Button color="secondary" click="inc"> + </Button>
      </div>

      <Progress value=25 color="danger" class={{ "my-1" }}>25%</Progress>
      <Progress value=50 color="warning" class={{ "my-1" }}>50%</Progress>
      <Progress value=75 color="primary" class={{ "my-1" }} striped>75% striped</Progress>
      <Progress value=100 color="success" class={{ "my-1" }} striped animated>100% striped animated</Progress>
    </div>
    """
  end

  def handle_event("inc", _value, socket) do
    {:noreply, update(socket, :value, &(&1 + 1))}
  end

  def handle_event("dec", _value, socket) do
    {:noreply, update(socket, :value, &(&1 - 1))}
  end
end
