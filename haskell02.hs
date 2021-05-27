-- Prática 02 de Haskell
-- Nome: Álisson Braga Canabarro

-- 1)Recebe uma lista de temp. e seleciona as com Febre
-- testa se é febre
tempFebre :: Float -> Bool
tempFebre x = x > 38.8

-- filtra as temp. de febre de uma lista
comFebre :: [Float] -> [Float]
comFebre lx = filter tempFebre lx


-- 2)Mesma coisa que a anteriror, porém utilizando lambda
comFebre' :: [Float] -> [Float]
comFebre' lx = filter (\lx -> lx > 38.8) lx


-- 3)Adiciona tags HTML em uma lista de Strings
itemize :: [String] -> [String]
itemize lstr = map (\lstr -> "<li>" ++ lstr ++ "</li>") lstr


--4)Recebe um numero e uma lista de raios, retorna os raios em que a área é maior que o número digitado
-- Calcula a área do circulo com seu raio
circleArea :: Float -> Float
circleArea r = pi*(r^2)

-- Testa se a área do circulo é maior que o valor escolhido
testaArea :: Float -> Float -> Bool
testaArea x y = x < (circleArea y)

-- Só consegui mudando Int pra Float :(
bigCircles :: Float -> [Float] -> [Float]
bigCircles float lint = filter (testaArea float) lint


-- 5)Receba uma lista de tuplas com nomes e temp., retorna as que temp.>38.8
quarentena :: [(String,Float)] -> [(String,Float)]
quarentena lisTuplas = filter (\(_,temp) -> temp > 38.8) lisTuplas


-- 6) Calcula todas idades de uma lista de anos de nascimento, com base em um ano escolhido

idadesEm :: [Int] -> Int -> [Int]
idadesEm lNasc ano = map (\nasc -> ano - nasc) lNasc


--7) adiciona "Super " na str, se seu primeiro char for 'A'

superPrefixo :: String -> String
superPrefixo str = if (str !! 0) == 'A' then "Super " ++ str else str

changeNames :: [String] -> [String]
changeNames lNomes = map superPrefixo lNomes


--8) Mantem, de uma lista, apenas palavras pequenas
-- Utilizei a 'isLongWord' da pratica 1 como referencia:

--isLongWord :: String -> Bool
--isLongWord s = length s > 10

-- mantem apenas as palavras com menos de 5 char
onlyShorts :: [String] -> [String]
onlyShorts lstr = filter (\str -> length str < 5) lstr