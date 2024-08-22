-- Importe a biblioteca de threads
local threads = require("threads")

-- Defina a função que será executada em uma thread
local function minhaThread(id)
   print("Thread " .. id .. " iniciada")
   -- Faça o processamento desejado aqui
   print("Thread " .. id .. " finalizada")
end

-- Crie uma nova thread
local minhaThread1 = threads.new(minhaThread)
-- Inicie a thread
minhaThread1:start(1) -- Passe o ID da thread como argumento

-- Aguarde a finalização da thread
minhaThread1:join()
