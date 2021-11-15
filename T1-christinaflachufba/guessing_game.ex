# Guessing Game
#T1 E1 guessing_game.exe 
#Programa como adivinhar um número?


defmodule GuessingGame do

  def numero_pensado(a,b) when a>b do

      numero_pensado(b,a)

  end

  def numero_pensado(inf, sup) do

      resposta = IO.gets("O número pensado é...#{meio(inf, sup)}?\n")

      case String.trim(resposta) do

          "alto" ->
              alto(inf, sup)

          "baixo" ->
              baixo(inf, sup)

          "acerto" ->
              "Parabéns, você acertou !!!!!!!"

          _ ->
              IO.puts ~s{"alto", "baixo", ou "acerto"}
              numero_pensado(inf, sup)

      end

  end

  def meio(inf, sup) do

      div(inf + sup, 2)

  end

  def alto(inf, sup) do

      numero_inferior = min sup, meio(inf, sup) + 1
      numero_pensado(numero_inferior, sup)

  end

  def baixo(inf, sup) do

      numero_superior= max inf, meio(inf, sup) - 1
      numero_pensado(inf, numero_superior)

  end

end
