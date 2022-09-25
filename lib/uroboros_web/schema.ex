defmodule Uroboros.Schema do
  use Absinthe.Schema

  # The registry must be included alongside the api to ensure the schema is properly recompiled on changes.
  @apis [{Uroboros.Support, Uroboros.Support.Registry}]

  use AshGraphql, apis: @apis

  query do
  end

  mutation do
  end

  def context(ctx) do
    AshGraphql.add_context(ctx, @apis)
  end

  def plugins() do
    [Absinthe.Middleware.Dataloader | Absinthe.Plugin.defaults()]
  end
end
