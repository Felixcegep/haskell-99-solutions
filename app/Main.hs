module Main (main) where
import Micuit
main :: IO ()
numberLst :: [Int]
numberLst = [1,2,70]



--main = print(listToList [1,2,2,4,3])
main = print(removeDuplicate' [1,2,2,4,3] )

--main = print(1 ++ 2 ++ [] )
--main = print(reverse2 [4,4,4,1,2,3,4])
--main = print(maximum2 [0,1,2,3,100])
--main = print(remplaceAndFilterTemp [1,2,3])
--main = print(calculateTwoNumber 1 2)
--main = print( remplaceAndFilter "hello horld")
