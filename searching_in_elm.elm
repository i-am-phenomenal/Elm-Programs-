import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import Array exposing (..)
main =
    beginnerProgram { model = model ,  update  = update , view = view}
type alias Model =
     { prime : Int
     , mylist : Array Int
     , counter1 : Int
     , counter2 : Int
      }
model : Model
model =
   { prime = 0
   , mylist = Array.fromList [7,5,3,2]
   , counter1 = 8
   , counter2 = 0
 }
view model =
    div []
    [ input[type_ " text ", placeholder "Enter the value of n", onInput Value1][]
    , br[][]
    , div [][text (toString (func4 model.counter1))]
    , div [][text ( toString model.mylist )]
    , br[][]
    , button[onClick Value2][text " Start"]
  --  , button[onClick Value2][text " Calculate"]
     -- call a function here
    ]
type Msg = Value1 String | Value2 | None
update msg model =
  case msg of
       Value1 str ->
        { model | prime = Result.withDefault 0 (String.toInt  str) }
       Value2 ->
           { model | mylist = func4 model.counter1 }
       None ->
           model
{-calculate x =

          Array.repeat model.prime (func4 x )  -}

{-ml x =
     List.range 2 x  -}
func4 : Int -> Array Int
func4 x =
     if (x % 2 /= 0 && x % 3 /= 0  && x % 5 /= 0 && x % 7 /= 0) then
       --  Array.push (x) (model.mylist)
       func5 x model.mylist
     else
         func4 (x + 1)
func5 x li = -- to push values in the array
    let
       myli = (Array.push (x) (li))   -- range and iteration

    in
      --func4 (x + 1)   {-  -}
      func6 x
func6 x =
    if  (Array.length model.mylist) > model.prime then
       model.mylist
    else
        func7 x
{-func7 y =
   if y > (Array.length model.mylist) then
     Just y
   else
     func4 (y + 1)
       -}
func7 x =
   func4 (x + 1)
