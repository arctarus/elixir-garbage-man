defmodule GarbageMan.Mixfile do
  use Mix.Project

  def project do
    [
      app: :garbage_man,
      version: "0.1.1",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp description do
    """
    Some code to trigger garbage collection in Erlang and Elixir.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :garbage_man,
     files: ["lib", "example", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Julius Beckmann"],
     licenses: ["Apache 2.0"],
     links: %{
      "GitHub" => "https://github.com/digimondo/elixir-garbage-man",
      "Docs" => "https://hexdocs.pm/garbage_man/",
     }
   ]
  end
end
