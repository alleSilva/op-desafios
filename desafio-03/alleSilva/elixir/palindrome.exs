defmodule Palindrome do
  def call do
    input1 = get_input("Digite o valor inicial: ")
    input2 = get_input("Digite o valor final: ")
    IO.puts("#{input1} + #{input2} = #{input1 + input2}")
  end
  def get_input(question) do
    result = 
    IO.gets(question)
    |>String.trim()
    |> Integer.parse()
    verify_parse(result, question)
  end

  def verify_parse(result, question) do
    case result do
      :error -> get_input("Valor inválido!\n#{question}")
      {num, _} -> num
    end
  end
end

Palindrome.call()
