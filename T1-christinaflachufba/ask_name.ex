# Ask Name
#Programa como perguntar um nome
T1E1 primeira forma
IO.puts("Qual é o seu nome?")
       valorDigitado = IO.gets("");
IO.puts("Ola #{String.trim(valorDigitado)}, seja bem-vindo!!")

_____  x x x _________
T1 E1 
 ask_name.ex 
 
 defmodule AskName do

  def nome() do

     valorDigitado = IO.gets("Qual o seu nome?\n")

     case String.trim(valorDigitado) do

         "Nome da pessoa" ->
		 IO.puts("Ola #{String.trim(valorDigitado)}, seja bem-vindo(a)!!")

         _ ->
             "Oi, #{String.trim(valorDigitado)}!"

     end

 end
