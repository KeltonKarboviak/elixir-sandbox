defmodule KV.SupervisorTest do
  use ExUnit.Case, async: true

  test "supervises single KV.Registry instance" do
    [{_, _registry, _, _}] = Supervisor.which_children(KV.Supervisor)
  end
end
