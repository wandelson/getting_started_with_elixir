# getting_started_with_elixir
Write distributed and scalable applications easier than ever with Elixir. This course will teach the basic syntax of Elixir and will culminate in creating a functional application.




Elixir

Numbers


Para acessar o terminal

iex 

1)Numbers

a)Multipliação

i 5 * 5

b)Divisão

i 10/5

c)Resto da divisão

rem(10,5)

d)Hexadecimal

OxFF + 0x02 

Resultado:257
f)Exponencial

2.0e2

Resultado:200.0

g)Números grandes
1_000_000_000


Em C# o valor máximo de um inteiro é de 2.1 bilhões.


Em Elixir não há limite em números, o limite é a quantidade de memória disponível do sistema.



Other Types

Atoms,Strings,Tuples,Lists,Maps


Atomsm = Átomo (Não existe em C# ou JAVA)

São usadas extensivamente, devido a eficiência deles em memória.

Desta forma eles são semelhantes aos enums em outras linguagens de programação.

Exemplos:

"this is alsoan atom"

true,false,nill


Strings

iex(11)> euro= "$"
"$"
iex(12)> byte_size(euro)
1
iex(13)> String.length(euro)
1
iex(14)> hello = "Hello, "
"Hello, "
iex(15)> name ="Wans"
"Wans"
iex(16)> hello <> name
"Hello, Wans"
iex(17)> one = 1
1
iex(18)> "Test: #{one}"
"Test: 1"



Tuples

Serve para coleções pequenas

iex(1)> book = {"Elixir", "Wans", 25.00}
{"Elixir", "Wans", 25.0}
iex(2)> {:ok. "line 1\nile 2\nline 3"}
{:ok, "line 1\nile 2\nline 3"}
iex(3)> put_elem(book,2,77.00)
{"Elixir", "Wans", 77.0}
iex(4)> book
{"Elixir", "Wans", 25.0}

Isso ocorre porque Elixir é imutável. Assim a tupla não será atualizada.Em Vez disso uma 
nova cópia será criada. Nós vamos cobrir imutabilidade posteriormente.
Isso nós dará a oportunidade de falar de um dos recursos mais poderosos do Elixir 
que é padrão de correspondência(Pattern Matching)

Em Elixir o sinal de igual não é um operador de atribuição.

Quando fazemos 

a = 1 + 1

Estamos falando para o Elixir coincidir o lado esquerdo contra a expressão da direita.
Resultado :2


iex(5)> book
{"Elixir", "Wans", 25.0}
iex(6)> author = elem(book,1)
"Wans"
iex(7)> {title,author,price} = book
{"Elixir", "Wans", 25.0}

caso não quero todos valoes

Devemos usar o undescore

{title3,_,price3} = book


Lists

A Lista do Elixir é baseada em lista ligada. cabeça e cauda.

iex(11)> first_list = [1,2,3]
[1, 2, 3]
iex(12)> hd(first_list)
1
iex(13)> [:ok | first_list]
[:ok, 1, 2, 3]

iex(14)> [head | tail]= first_list
[1, 2, 3]
iex(15)> head
1
iex(16)> tail
[2, 3]
iex(17)> options =  [{:is_active,false},{:notify_user,true}]
[is_active: false, notify_user: true]
iex(18)> options[:notify_user]
true


Immutability

Uma vez criada uma lista, esa lista não pode mudar.


Beneficios da imutabilidade

 Elixir lida muito bem comconcorrência.Não precisamos se preocupar com os outros processos, ou qualquer 
 outras transformações realizadas com novos itens.

 Elixir é capaz de reutilizar memória, ele sabe que a localização de memória não vai mudar,
 então ele faz  a cópia 

 Elixir não altera dados è possivel permitir que vários processos diferentes operam nos mesmos dados, ao mesmo 
 tempo, sem medo que um processo terá impacto a um processo diferente;



Maps 

Os maps é uma coleção de chaves e valores.

São mais eficientes que as listas

Trabalha de forma eficiente com milhoes de chaves.


iex(1)> mymap= %{1 => {"Nate","Taylor", "Jose"}, 2=> { "Charles", "Ramirez", "Jusue"}}
%{1 => {"Nate", "Taylor", "Jose"}, 2 => {"Charles", "Ramirez", "Jusue"}}

iex(1)> another_map = %{{:ok,1} => true, {:ok,2} => false}
%{{:ok, 1} => true, {:ok, 2} => false}


iex(3)> other_maps = %{:names => ["Josue","Mara"], "gender" => "male"}
%{:names => ["Josue", "Mara"], "gender" => "male"}
iex(4)> other_maps["gender"]
"male"

iex(5)> other_maps.names
["Josue", "Mara"]

Copiar os valores para outra lista.

iex(6)> %{:names => names_copy} = other_maps
%{:names => ["Josue", "Mara"], "gender" => "male"}
iex(7)> names_copy
["Josue", "Mara"]






Modules and Functions


Definindo um modulo



Extensão VS code
    - vscode-elixir




Os Arquivos .exs são destinados para execução de scripts e vai ficar name
memória quando executado.


Isso está em contraste com os arquivos .EX que vão ser compilados em 
código de byte e serão gravados no disco.



import -> Trará as funções do módulo especificado vc é capaz de trazer
todas as funções dos módulos ou apenas as que vocÊ especificar.


Alias -> Fornecer alia para os módulos renomea-los 

require -> Permitir o uso de macros em seu módulo



Funções


Matching - correspondência de padrão


Quard Clauses

Comparing

(==,!=,===,!==,>,>=,<,<=)

Boolean

(nd,or,not)

arithmetic(+,-,*,/)

arithmetic(+,-)

the binary concatenation operator <>

the IN operator as long as the right side is a range or a lista



Type Check Functions

is_atom
is_binary
is_boolean
is_float
is_integer
is_list

Etcc....


Additional Functions

abs(number)
hd(list)
length(list)
map_size(map)
self()
rem(integer,integer)
elem(tuple,n)



Default parameters- > não entendi

Parâmetros padrão

Nós podemos fonecer Parâmetros para uma função e especificarmos um valor 
padrão.


Private Functions(ok)

Functions as First Class Citizens

Isso significa que Elixir suporta passar funções como argumentos
para outras funções, retornando os valores

list = [1,2,3,4]

Enum.map(list, &Sample.Utils.square/1)

[1,4,9,16]

Enum.reduce(list, 0, &Sample.Utils.sum/2)
10



Anonymous Functions

list = [1,2,3,4]

Enum.map(list, fn(x) -> x * x end)
[1,4,9,16]

Enum.reduce(list, 0, fn( x, acc) -> acc + end)
10

Reduzir ainda mais

Enum.map(list, &(&1 * &1))
[1,4,9,16]

Enum.reduce(list,0, &(&1 + &2))

10




Control Flow

if length(list) == 0, do: nil, else: hd(list)

unless (nao sei)

Listar parametros 

quote do if length(list) == 0, do: nil, else: hd(list) end


Cond

    def day_abbreviation2(day) do
        cond do
           day == :Monday -> "M"
           day == :Tuesday -> "TU"
           day == :Wednesday -> "W"
           day == :Thursday ->  "TH"
           day == :Friday ->  "F"
           day == :Saturday ->  "SA"
           day == :Sunday ->  "SU"
           true -> 'Invalid Day'
        end        

    end

Case


    def day_abbreviation4(day) do
        case day do 
            :Monday ->  "M"
            :Tuesday -> "TU"
            :Wednesday -> "W"    
            :Thurday -> "TH"
            :Friday -> "Fr" 
            :Saturday -> "SA"
            :Sunday -> "SU"
            _ -> "Invalid day"       
        end
    end


Recursion( nao sei)


Recursion Tails -> Alto desempenho evitar stackoverflow (nao sei)




Ecosystems


Mix- è a ferramenta de construção Elixir, mais ele realmente oferece
mais funcionalidades do que apenas compilar um aplicativo

mix help

mix help hex.seach

mix hex.search package

mix hex.search facebook

Criando um app

 mix new pluralsight_tweet --sup

 cd pluralsight_tweet\ && mix test


Hex-é o gerenciador de pacotes para Elixir



Supervisors and Umbrelas


Supervisors 

Supervisor reinicia o app

Nesse cenário você é o supervisor.Você está monitorando o seu aplicativo
e reiniciálo quando ele trava.

Não é a forma mais eficiente, mais é util,pelo menos por um tempo.


Launch Service -> Process Request -> Crash


Umbrella App 

Umbrella App é um projeto que um outro projeto.

Parecido com a Solution do .NET

Ex:
Uma aplicação de faturação.
Onde tem um projeto que controla o número de peças fabricas 
e lida com todo o rastreamento .
VocÊ pode outro app separado que foi responsavel por determinar 
o preço do trabalho.
E a terceira opção enviar fatura  ao cliente


baixar os pacotes 

mix deps.get

Compilar e Executar



iex -S mix


behaviours = Interface em OO

Define um conjunto de funções que tem de ser implementadas por um módulo, e garantir que um módulo implementa todos.


Matar o processo

 Process.whereis(:tweet_server) |> Process.exit(:kill)



Process.whereis(:tweet_server)

