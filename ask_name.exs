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

end
