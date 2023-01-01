defmodule Svdtest do

  def finurl, do:  "https://raw.githubusercontent.com/vegabook/nxtest/main/priv/data/dfc.csv"

  def url_to_tensor(url) do
    req = HTTPoison.get!(url)
    req.body 
    |> String.split("\n", trim: true) 
    |> Enum.map(fn x -> String.split(x, ",", trim: true) end) 
    |> Enum.map(fn x -> Enum.map(x, fn y -> String.to_float(y) end) end)
    |> Nx.tensor
  end

  def time_svd(tensor) do
    :timer.tc(&Nx.LinAlg.svd/1, [tensor])
  end

  def run_test(url) do
    tensor = url_to_tensor(url)
    {time, {u, s, vt}} = time_svd(tensor) 
    seconds = time / 1000000
    IO.inspect(s)
    IO.puts("Time taken: #{seconds} seconds")
  end

end


