local valor = 2

-- Switch case usando if-elseif-else
if valor == 1 then
   print("Valor é igual a 1")
elseif valor == 2 then
   print("Valor é igual a 2")
elseif valor == 3 then
   print("Valor é igual a 3")
else
   print("Valor não é igual a 1, 2 ou 3")
end

-- Switch case usando uma tabela de casos
local valor = 2

local casos = {
   [1] = function()
      print("Valor é igual a 1")
   end,
   [2] = function()
      print("Valor é igual a 2")
   end,
   [3] = function()
      print("Valor é igual a 3")
   end,
   default = function()
      print("Valor não é igual a 1, 2 ou 3")
   end
}

local caso = casos[valor] or casos.default
caso()
