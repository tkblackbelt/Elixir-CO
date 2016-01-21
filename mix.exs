defmodule ConquerServer.Mixfile do
  use Mix.Project

  def project do
    [apps_path: "apps",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  defp deps do
    [
      {:ecto,    "~> 1.1"},
      {:mariaex, ">= 0.0.0"},
      {:reagent, "~> 0.1.5"},
      {:table_rex, "~> 0.8.0"}
     ]
  end
end