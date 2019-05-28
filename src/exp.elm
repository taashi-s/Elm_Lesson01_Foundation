module Exp exposing(..)

qpVolume : Float -> Float -> Float -> Float
qpVolume w d h =
  (1 / 3) * w * d * h


fizzbuzz_ i =
  case (modBy 3 i, modBy 5 i) of
    (0, 0) ->
      "fizzbuzz"
    (0, _) ->
      "fizz"
    (_, 0) ->
      "buzz"
    _ ->
      String.fromInt i

fizzbuzz : Int -> List String
fizzbuzz n =
  if n < 2 then
    (String.fromInt n) :: []
  else
    (fizzbuzz (n - 1)) ++ [fizzbuzz_ n]




fizzbuzz : Int -> String
fizzbuzz n =
    List.map (\ i ->
                case (modBy 3 i, modBy 5 i) of
                    ( 0, 0 ) ->
                        "FizzBuzz"
                    ( 0, _ ) ->
                        "Fizz"
                    ( _, 0 ) ->
                        "Buzz"
                    _ ->
                        String.fromInt i
             )
             <| List.range 1 n

