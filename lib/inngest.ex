defmodule Inngest do
  @external_resource "README.md"
  @moduledoc @external_resource
             |> File.read!()
             |> String.split("<!-- MDOC ! -->")
             |> Enum.fetch!(1)

  defdelegate send(payload), to: Inngest.Client
end
