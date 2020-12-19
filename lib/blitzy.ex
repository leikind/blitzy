defmodule Blitzy do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Task.Supervisor, name: Blitzy.TasksSupervisor}
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
