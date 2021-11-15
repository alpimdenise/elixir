Estudo sobre as funções que existem em Elixir

Em Elixir tem dois tipos de definições de função:
As funções no Elixir são identificadas por nome e aridade.
1- Funções definidas em um módulo com def, chamado usingmyfunction(param1, param2)
2- Funções anônimas definidas com fn, chamadas usandomyfn.(param1, param2)

Funções anônimas e nomeadas, Funções e pattern matching e Funções privadas

Funções anônimas 
obs: 
ex1:
sum = fn(a, b) -> a + b end
sum.(4, 3)
#=> 7
 
ex2: 
square = fn(x) -> x * x end
Enum.map [1, 2, 3, 4], square
#=> [1, 4, 9, 16]

ex3: Uma função com várias cláusulas:
x = 1
fun = fn				obs: fn é considerado fechamento!
  y when y < 0 -> x - y
  y -> x + y
end
fun.(2) #=> 3
fun.(-2) #=> 3

Funções nomeadas: As funções nomeadas, como o próprio nome sugere, 
tem um nome para identificar e podem receber argumentos. São definidas com a palavra-chave def dentro de um módulo. 
ex1: def hello(x, y) do
 	     x + y
     end
