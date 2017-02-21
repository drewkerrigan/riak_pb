defmodule RiakPb.Mixfile do
  use Mix.Project

  @version File.read!("VERSION") |> String.strip

  def project do
    [app: :riak_pb,
     version: @version,
     description: "Riak Protocol Buffers Messages",
     package: package(),
     deps: deps()]
  end

  defp deps do
    [
      {:hamcrest, "~> 0.1"}
    ]
  end

  defp package do
    [files: ~w(src plugins include rebar.config tools.mk README.md VERSION LICENSE Makefile),
     maintainers: ["Drew Kerrigan"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/basho/riak_pb"}]
  end
end
