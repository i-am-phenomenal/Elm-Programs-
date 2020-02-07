{-
  ALGORITHM
  1)  Take input from the user
  2) Initialise sum = 0
  2)  Generate a fibonacci series till the given number
  3)  The generated fibonacci series would be stored in a list
  4)  We would be applying List.isEven function to check whether the given list element is and even number or not
  5)  if the list member is an even number , then we would add it with sum.
  6)  Display the value of sum



-}
--module Main exposing (main)

import Html exposing (..)
import Html.Events exposing (..)

--main : Html msg
main =
  beginnerProgram
  {  model = model
  ,  update = update
  ,  view = view
  }
type alias Model =
   {  number : Int
   ,  sum   : Int
   }
model : Model
model =
  {
     number = 0
   , sum = 0
  }
view model =
   div []
     [ input [onInput Value1][]
      , br [][]
      --,  div [] [text (toString model.c) ]]
      , div[] [toString( fibs model.sum) ]
     ]
type Msg = Value1 String
update msg model =
      case msg of
         Value1 str ->
         {model | value1 = Result.withDefault 0 (String.toInt str)}
fibs : model -> Int
fibs x =
     case x of
        0 -> 1
        1 -> 1
        _ -> fibs(x-1) + fibs(x-2)
         --if( (fibs(model.number - 1)%2 == 0) && (fibs(model.number - 2)%2) ==0) then
        --fibs(model.number - 1) + fibs(model.number - 2)
        --if ( sum

  
