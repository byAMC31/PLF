

--MARTINEZ CALDERON ADRIAN
--PLF
-- GRUPO: 9:00- 10:00

--1. Ejercicio: firstToEnd
--Definir la función firstToEnd tal que (firstToEnd xs) es una lista donde el primer
--elemento de xs, pasa a ser el último elemento de la nueva lista

firstToEnd :: [a] -> [a]
firstToEnd [] = []
firstToEnd (x:xs) = firstToEnd xs ++ [x]


--2. Ejercicio : minAndMax
--Definir la función minAndMax tal que (minAndMax xs) es una lista con únicamente 2
--elementos (elemento mínimo de xs y elemento máximo de xs), donde xs es una lista
minAndMax :: Ord a => [a] -> [a]
minAndMax []= error "Lista vacia"
minAndMax [x]= error "Falta 1 elemento"
minAndMax xs= [minimum xs, maximum xs]


--3. Ejercicio: minorsFirstElement
--Definir la función minorsFirstElement tal que (minorsFirstElement xs) es una lista con
--los elementos menores al primer elemento de xs, donde xs es una lista.(El primer
--elemento se ignora)
minorsFirstElement :: Ord a => [a] -> [a]
minorsFirstElement (x:xs)= [z | z<-xs, x>z]


--4. Ejercicio: greaterOrEqualFirstElement
--Definir la función greaterOrEqualFirstElement tal que (greaterOrEqualFirstElement
--xs) es una lista con los elementos mayores o iguales al primer elemento de xs,
--donde xs es una lista.(El primer elemento se ignora)

greaterOrEqualFirstElement :: Ord a => [a] -> [a]
greaterOrEqualFirstElement (x:xs)= [z | z<-xs, x<=z]

--5. Ejercicio: minorsToSumFirstAndSecondElem
--Definir la función minorsToSumFirstAndSecondElem tal que
--(minorsToSumFirstAndSecondElem xs) es una lista con los elementos menores a la
--suma del primer y segundo elemento de xs (sin tomar en cuenta los primeros 2
--elementos), donde xs es una lista.

minorsToSumFirstAndSecondElem :: (Ord a, Num a) => [a] -> [a]
minorsToSumFirstAndSecondElem (x:y:xs)= [z | z<-xs, [x+y]>[z]]

--6. Ejercicio: listSumDuplaToList
--Definir la función listSumDuplaToList tal que (listSumDuplaToList xs) es una lista en
--la que cada elemento es la suma de los elementos de cada dupla, donde xs es una
--lista de duplas.

listaSumaDuplaToList :: Num a => [(a, a)] -> [a]
listaSumaDuplaToList xs= [x+y | (x,y)<-xs]

--7. Ejercicio: listMultTripletaToList
--Definir la función listMultTripletaToList tal que (listMultTripletaToList xs) es una lista
--en la que cada elemento es la multiplicación de los elementos de cada tripleta,
--donde xs es una lista de tripletas.
listMultTripletaToList :: (Integral a)=>[(a,a,a)]->[a] 
listMultTripletaToList []= []
listMultTripletaToList xs = [x*y*z|(x,y,z)<-xs]


--8. Ejercicio: changeFstToSnd
--Definir la función changeFstToSnd tal que (changeFstToSnd xs) es una lista en
--donde los elementos de una dupla cambian de posición, donde xs es una lista de
--duplas.
changeFstToSnd :: [(b, a)] -> [(a, b)]
changeFstToSnd xs = [(y,x) | (x,y)<-xs]



--9. Ejercicio: sumVectors
--Definir la función sumVectors tal que (sumVectors xs) es un vector resultante de la
--suma de los diferentes vectores de xs, donde xs es una lista de duplas.
--Material de apoyo: https://www.educaplus.org/movi/1_4sumavector.html

sumVectors :: (Num a1, Num a2) => [(a1, a2)] -> (a1, a2)
sumVectors [(x,y)] = (x,y)
sumVectors ((x,y):xs) = (sumx+x,sumy+y)
    where (sumx,sumy) = sumVectors xs



--10. Ejercicio: dividers
--Definir la función dividers tal que (dividers n) es una lista de los divisores de n, donde
--n es un número.

dividers :: Int -> [Int]
dividers n = divisoresD n 1
divisoresD :: Integral a => a -> a -> [a]
divisoresD n m
    | n == m = [n]
    | n > m && (n `mod` m == 0) = m:(divisoresD n (m+1))
    | n > m && (n `mod` m /= 0) = divisoresD n (m+1)


--11. Ejercicio: primeNumbers
--Definir la función primeNumbers tal que (primeNumbers n) es una lista con los
--números primos existentes de 1 a n, donde n es un número.
--Recuerda: un número primo tiene únicamente 2 divisores 1 y el mismo número.

-- Será primo solo si sus factores son 1 y él mismo
esPrimo :: Integral a => a -> Bool
esPrimo n = [x | x <- [1..n], n `mod` x == 0] == [1,n]
-- Filtrar los números naturales
primeNumbers :: Integral a => a -> [a]
primeNumbers n = [x | x <- [2..n], esPrimo x]



--12. Ejercicio:infinitePrimeNumbers
--Definir la función infinitePrimeNumbers tal que (infinitePrimeNumbers) es una lista
--infinita de los números primos.
infinitePrimeNumbers :: [Integer]
infinitePrimeNumbers = filtrarPrimos [2..]
  where filtrarPrimos (y:xs) = y : filtrarPrimos [x | x <- xs, x `mod` y /= 0]
 
