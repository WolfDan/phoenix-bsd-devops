defmodule Uroboros.Support.Registry do
  use Ash.Registry,
    extensions: [
      # This extension adds helpful compile time validations
      Ash.Registry.ResourceValidations
    ]

  entries do
    entry Uroboros.Support.Ticket
  end
end
