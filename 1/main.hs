-- import Data.List (scanl')
import Data.IntSet (member, empty, insert)    
parse :: String -> [Int]
parse = map (read . dropWhile (== '+')) . lines

day1a :: [Int] -> Int
day1a = sum

day1b :: [Int] -> Int 
day1b input = fst . head . filter (uncurry member) . zip list $ scanl (flip insert) empty list
  where list = scanl (+) 0 $ cycle input

main :: IO()
main = do
  input <- readFile "/u/senso/personal/aoc/inputs/day1.txt"
  let parsed_input = parse input
  print (day1a parsed_input)
  print (day1b parsed_input)
  
  
