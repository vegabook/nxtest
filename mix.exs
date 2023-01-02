defmodule Nxtest.MixProject do
  use Mix.Project

  def project do
    [
      app: :nxtest,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      #{:axon, "~> 0.3.0"},
      #{:exla, "~> 0.4.0"},
      {:nx, "~> 0.4.0"},
      {:exla, "~> 0.4.0"},
      {:xla, "~> 0.4.3"},
      {:csv, "~> 3.0"},
      {:httpoison, "~> 1.8"},
      #{:torchx, "~> 0.4.1"}
      #{:explorer, "~> 0.4.0"},
    ]
  end
end
