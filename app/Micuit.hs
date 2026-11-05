module Micuit where

analyseNumbers :: [Int] -> String
analyseNumbers [] = "la liste est vide"
analyseNumbers xs
    | total > 100  = "grande somme"
    | total > 50 = "moyen"
    | otherwise  = "mini"
    where
        total = sum xs

compareTwoNumer :: Int -> Int -> String
compareTwoNumer x y
    | x > y = "GT"
    | x < y = "LT"
    | otherwise = "Same"

remplaceAndFilter :: String -> String
remplaceAndFilter xs =
    map (\x -> if x == 'h' then 'C' else x ) (filter (\x -> x /= ' ') xs)


remplaceAndFilterTemp :: [Int] -> [Int]
remplaceAndFilterTemp xs =
    map (\x -> let
        value1 = x * 2
        in value1 + 1
    ) xs

calculateTwoNumber x y =
    let
    doublex = x * 2
    doubley = y * 2
    doublez = 5

    in doublex + doubley + 5



sum2 :: Num a => [a] -> a
sum2 [] = 0
sum2(x:xs) = x  + sum2 xs

length2 :: Num a => [a] -> a
length2 [] = 0
length2(_:xs) = 1 + length2 xs



reverse2 :: Num a => [a] -> [a] -> [a]
-- when the first has nothing and is completly reverse return acc
reverse2 [] acc = acc
reverse2(x:xs) acc = reverse2 xs (x : acc)

-- [2,1,3] []
--  [1,3] [2]
--  [3], [1,2]
-- [], [3,1,2]

listToList :: [a] -> [a]
listToList [] = []
listToList (x:xs) = x : xs



removeDuplicate :: Eq a => [a] -> [a] -> [a]
removeDuplicate [] acc = acc
removeDuplicate (x : xs) acc
    | acc == [] = x : removeDuplicate xs (x : acc)
    | x == currentAcc = removeDuplicate xs acc
    | otherwise =  x : removeDuplicate xs (x : acc)
    where currentAcc = head acc

-- faut regarder le dernier x ajouter et le comparer au xs

removeDuplicate' :: Eq a => [a] -> [a]
removeDuplicate' [] = []
removeDuplicate' (x : xs ) = x : removeDuplicateHelper' xs x

removeDuplicateHelper' :: Eq a => [a] -> a -> [a]
removeDuplicateHelper' [] _ = []
removeDuplicateHelper' (x : xs ) a
    | x == a = removeDuplicateHelper' xs a
    | otherwise = x : removeDuplicateHelper' xs x
-- premiere etape deconstruire le premiere et envoyer dans removehelp
-- si le dernier de la liste est comme







-- donc comparer  au  dernier acc si
-- comparer xs1 a current1 si la meme chose ne pas append a acc
-- sinon append et renvoyer la liste
-- [2,2,1,1,3] []
-- [2,1,1,3] [2]
-- [1,1,3] [2]
-- [1,3] [2,1]
-- [3] [3,2,1]
