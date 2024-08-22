
local numeros = {10, 20, 30, 40, 50}

function exibirArray(arr)
   for i = 1, #arr do
      print(arr[i])
   end
end

exibirArray(numeros)

-- Junção de arrays
function juntarArrays(arr1, arr2)
   local novoArray = {}
   for i = 1, #arr1 do
      table.insert(novoArray, arr1[i])
   end
   for i = 1, #arr2 do
      table.insert(novoArray, arr2[i])
   end
   return novoArray
end

local array1 = {1, 2, 3}
local array2 = {4, 5, 6}
local resultado = juntarArrays(array1, array2)
exibirArray(resultado)
