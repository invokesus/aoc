import Data.List (group, sort, (\\), intersect)
count :: [String] -> Int -> Int
count boxes freq =
  length $ filtered_boxes
  where filtered_boxes = filter (box_with_count freq) boxes

  
box_with_count:: Int ->  String -> Bool  
box_with_count freq box_id = filtered_boxes > 0
  where filtered_boxes = length (filter (==freq) $ map length $ group . sort $ box_id)

day2a :: [String] -> Int
day2a boxes = count boxes 2 * count boxes 3

day2b :: [String] -> String
day2b boxes = head [intersect ls rs | ls <- boxes, rs <-boxes,
                    (length . filter (\(l,r) -> l /= r) $ zip ls rs) == 1]

parse :: String -> [String]
parse input = lines input
  
main :: IO()
main = do
  input <- readFile "/u/senso/personal/aoc/inputs/day2.txt"
  let parsed_input = parse input
  print (day2a parsed_input)
  print (day2b parsed_input)

  
