---MARTINEZ CALDERON ADRIAN
--PROGRAMACION LOGICA Y FUNCIONAL
-- HASKELL


--1. Ejercicio average3Numbers.
--Definir la función average3Numbers tal que (average3Numbers x y z) es el promedio
--de los números ‘x’, ‘y’ y ‘z’.
average3Numbers :: Fractional a => a -> a -> a -> a
average3Numbers x y z = (x+y+z)/3


--2.- Ejercicio isLastDigit3.
--Definir la función isLastDigit3 tal que (isLastDigit2 x) determina si el último dígito del
--número ‘x’ es 3.

isLastDigit3 :: Integral a => a -> Bool
isLastDigit3 num
    | num `mod` 10==3 =True 
    | otherwise = False


-- 3.- Ejercicio has3Digits.
--Definir la función has3Digits tal que (has3Digits x) determina si el número ‘x’ tiene 3
--dígitos.
has3Digits :: (Ord a, Num a) => a -> Bool
has3Digits x 
  | (x>99) && (x<1000) = True
  | otherwise = False


---4 Ejercicio isNegative.
--Definir la función isNegative tal que (isNegative x) determina si el número ‘x’ es un
--número negativo.
isNegative :: (Ord a, Num a) => a -> Bool
isNegative x 
        | x<0=True
        | otherwise =False


--5 Ejercicio sum2Digits.
--Definir la función sum2Digits tal que (sum2Digit x) es la suma de los 2 dígitos que
--componen al número ‘x’, donde ‘x’ es un número de 2 dígitos.
sum2Digits:: Int->Int
sum2Digits x 
    | x>9 && x<100 = (x `mod` 10)+((x `div` 10) `mod` 10) 
    | x>99 = error "El numero no tiene dos digitos"




--6 Ejercicio even2Digits
--Definir la función even2Digits tal que (even2Digit x) determina si los 2 dígitos que
--componen al número ‘x’ son número pares, donde ‘x’ es un número de 2 dígitos.

even2Digit :: Integral a => a -> Bool
even2Digit x 
    | (x>9 && x<100) = even (x `mod` 10) && even((x `div` 10) `mod` 10) 
    | x>99 = error "El numero no es de dos digitos "





--7 Ejercicio isPrimeNumber
--Definir la función isPrimeNumber tal que (isPrimeNumber x) determina si el número
-- ‘x’ es alguno de los primeros 8 números primos.
isPrimeNumber :: (Eq a, Num a) => a -> Bool
isPrimeNumber x= elem x[2,3,5,7,11,13,17,19]


--8.Ejercicio isEvenAndPrimeNumber
--Definir la función isEvenAndPrimeNumber tal que (isEvenAndPrimeNumber x)
--determina si el número ‘x’ es alguno de los primeros 8 números primos, además si
--es un número par.
isEvenAndPrimeNumber :: Integral a => a -> Bool
isEvenAndPrimeNumber  x = isPrimeNumber x && even(x)


--9.Ejercicio isMultiple
--Definir la función isMultiple tal que (isMultiple x y) determina si el número ‘x’ es
--múltiplo de del número ‘y’.
isMultiple :: Integral a => a -> a -> Bool
isMultiple x y 
  | x `mod` y ==0 = True
  | otherwise = False


--10. Ejercicio isEqual2Digits
--Definir la función isEqual2Digits tal que (isEqual2Digits x) determina si los 2 dígitos
--que componen al número ‘x’ son número iguales, donde ‘x’ es un número de 2
--dígitos.
isEqual2Digits :: Integral a => a -> Bool
isEqual2Digits x 
    | x>9 && x<100 = if((x `mod` 10)==((x `div` 10) `mod` 10)) then True else False
    | x>99 = error "El numero no tiene dos digitos "
    | x<10 = error "El numero tiene 1 digito "
    

-- 11.Ejercicio higher
--Definir la función higher tal que (higher x y z) determina el número mayor de 3
--número ‘x’,’y’ y ‘z’
higher :: Ord a => a -> a -> a -> a
higher x y z 
  | x>y && x>z = x
  | y>x && y>z = y
  | z>x && z>y = z

--12.Ejercicio isEvenSum2Number
--Definir la función isEvenSum2Number tal que (isEvenSum2Number x y) determina si
--la suma entre el número x y el número y origina un número par.
isEventSum2Number :: Integral a => a -> a -> Bool
isEventSum2Number x y
   | ((x+y) `mod` 2)==0 = True
   | otherwise = False


--13 Ejercicio sum2Digit2Number
--Definir la función sum2Digit2Number tal que (sum2Digit2Number x y ) es la suma de
--todos los dígitos de los números ‘x’ y ‘y’, siendo ‘x’ y ‘y’ número de 2 dígitos.
sum2Digit2Number :: Integral a => a -> a -> a
sum2Digit2Number x y
    | (x>9 && x<100) && (y>9 && y<100) 
    = (x `mod` 10)+((x `div` 10) `mod` 10) + (y `mod` 10)+((y `div` 10) `mod` 10) 

    | (x<99 || y<99) || (y<9 && x<9) 
    = error "Algún numero no tiene dos digitos "


--14. Ejercicio sum3Digits
--Definir la función sum3Digits tal que (sum3Digits x) es la suma de los 3 dígitos que
--componen al número ‘x’, donde ‘x’ es un número de 3 dígitos.
sum3Digits :: Integral a => a -> a
sum3Digits x
    | (x>99 && x<1000) 
    = (x `mod` 10)+((x `div` 10) `mod` 10)+((x `div` 100) `mod` 10)
    | (x<100 || x>999) 
    = error "El numero no tiene tres digitos "


--15. Ejercicio equal3Digits
--Definir la función equal3Digits tal que (equal3Digits x) determina si al menos dos de
--los tres dígitos de ‘x’ son iguales, donde ‘x es un número de 3 dígitos.’
equal3Digits :: Int -> Bool
equal3Digits  numero 
    | (numero>99 && numero<1000) = 
        (div numero 100) == (div (mod numero 100) 10) || 
        (mod (mod numero 100) 10) == (div numero 100) ||
        (mod (mod numero 100) 10) == (div (mod numero 100) 10)
    | otherwise = error "El numero no tiene 3 digitos"



--16. Ejercicio positionHigher3Digits
--Definir la función positionHigher3Digits tal que (positionHigher3Digits x) determina en
--qué posición está el dígito mayor del número ‘x’, donde ‘x’ es un número de 3 dígitos.
positionHigher3Digits:: Int->String
positionHigher3Digits x
 |(x<100 || x>999) = error "El numero no tiene tres digitos "
 | (x `mod` 10)>((x `div` 10) `mod` 10) && (x `mod` 10) > ((x `div` 100) `mod` 10) =
     "El mayor se encuentra en la pos 3"
 | ((x `div` 10) `mod` 10)>(x `mod` 10) && ((x `div` 10) `mod` 10)>((x `div` 100) `mod` 10) = 
     "El mayor se encuentra en la pos 2"
 | ((x `div` 100) `mod` 10)>(x `mod` 10) && ((x `div` 100) `mod` 10)> (x `mod` 10) = 
     "El mayor se encuentra en la pos 1"
    


--17. Ejercicio palindromo
--Definir la función palindrome tal que (palindrome xs) determina si xs es palíndromo;
--es decir, es lo mismo xs de izquierda a derecha que de derecha a izquierda, donde
--xs es una lista. (puede utilizar el sistema de tipos Eq )
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs



--18. Ejercicio safeDivision
--Definir la función safeDivision tal que (safeDivision x y) es la división de x/y,
--mostrando un error cuando ‘y’ es 0
safeDivision :: (Eq p, Fractional p) => p -> p -> p
safeDivision _ 0 = error"No es posible dividir entre 0"
safeDivision x y = x/y

--19. Ejercicio xor
--Definir la función xor tal que (xor x y), es el resultado de la operación lógica
--disyunción (x, y valores booleanos)
xor :: Bool -> Bool -> Bool
xor x y = (x || y) && not (x && y)


--20. Ejercicio distancia entre dos puntos
--Definir la función distance tal que (distance x y) es la distancia existente entre 2
--puntos, siendo ‘x’ y ‘y’ coordenada de un plano cartesiano.
distance :: Floating a => (a, a) -> (a, a) -> a
distance (x1,y1) (x2,y2) = sqrt((x1-x2)^2+(y1-y2)^2)