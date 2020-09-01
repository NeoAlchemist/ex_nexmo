defmodule ExNexmo.Mixfile do

  use Mix.Project

  def project do
    [
      app: :ex_nexmo,
      version: "0.1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
      description: "Elixir Nexmo API Client"
    ]
  end

  def application do
    [applications: [:logger, :httpoison],
      mod: {ExNexmo, []}]
  end

  defp deps do
    [
      {:httpoison, "~> 1.6"},
      {:poison, "~> 3.1"}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      licenses: ["MIT"],
      maintainers: ["Craig Paterson", "Sina Karimi"],
      links: %{"Github" => "https://github.com/KindyNowApp/ex_nexmo"}
    ]
  end

end
