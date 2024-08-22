-- Configurar o terminal para UTF-8 (no Windows).
if os.getenv("OS") == "Windows_NT" then
   os.execute("chcp 65001 > nul")
end

-- Funções para testar a linguagem Lua.
print("╔═════════════════════════════════╗")
print("║             M E N U             ║");
print("╠═════════════════════════════════╣");
print("║                                 ║");
print("║ Escolha uma opção:              ║");
print("║ 1 - Hello World                 ║");
print("║ 2 - For                         ║");
print("║ 3 - While                       ║");
print("║ 4 - Repeat                      ║");
print("║ 5 - Função                      ║");
print("║ 6 - Função com retorno múltiplo ║");
print("║ 7 - Switch case                 ║");
print("║ 8 - Array                       ║");
print("║ 9 - Sair                        ║");
print("║                                 ║");
print("╚═════════════════════════════════╝")

-- | Ler a opção do usuário |

-- = io.read() -> string / comando para o usuário digitar no terminal.
-- = tonumber() -> number / converter a string para número.

function obterMensagem()
   entrada = tonumber(io.read());
   return entrada;
end

entrada = tonumber(io.read());
print("Digite a opção desejada: " .. entrada);
print("=================================\n");
-- Função menu
function menu(entrada)

   -- | Switch case improvisado |

   if entrada == 1 then
      -- Printar algo na tela
      print("Hello World!");

   elseif entrada == 2 then
      
      -- For loop
      for i = 1, 10 do
         print(i);
      end

   elseif entrada == 3 then

      -- While loop
      local i = 1;

      while i <= 10 do
         print(i);
         i = i + 1;
      end

   elseif entrada == 4 then

      -- Repeat loop
      local a = 1;

      repeat
         print(a);
         a = a + 1;
      until a > 10;
      
   elseif entrada == 5 then

      -- Função
      function somar(a, b)
         return a + b;
      end

      print(somar(10, 20));

   elseif entrada == 6 then

      -- Função com retorno múltiplo
      function somarSubtrair(a, b)
         return a + b, a - b;
      end

      local soma, subtracao = somarSubtrair(10, 20);

      print(soma, subtracao);

   elseif entrada == 7 then

      -- Função com switch case
      function verificarDiaSemana(dia)
         local mensagem = "";

         -- Switch case
         if dia == 1 then
            mensagem = "Domingo";
         elseif dia == 2 then
            mensagem = "Segunda-feira";
         elseif dia == 3 then
            mensagem = "Terça-feira";
         elseif dia == 4 then
            mensagem = "Quarta-feira";
         elseif dia == 5 then
            mensagem = "Quinta-feira";
         elseif dia == 6 then
            mensagem = "Sexta-feira";
         elseif dia == 7 then
            mensagem = "Sábado";
         else
            mensagem = "Dia inválido";
         end

         return mensagem;
      end

      -- Testar a função
      local dia = 3
      local mensagemDia = verificarDiaSemana(dia);
      print("Dia da semana:", mensagemDia);

   elseif entrada == 8 then

      -- Array
      local frutas = {"Maçã", "Banana", "Laranja", "Uva", "Pera"};

      -- Percorrer o array
      for i = 1, #frutas do
         print(frutas[i]);
      end
      
   else if entrada == 9 then

      print("Saindo do programa...");

   else
      print("Opção inválida!");
   end
end

-- Chamar a função menu
menu(entrada);

--[[

// Palavras reservadas da linguagem Lua

   and    | break    | do   | else | elseif | end

   for    | function | if   | in   | local  | nil

   repeat | return   | then | true | until  | while

   goto   | false    | not  | or

]]