import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
type alias Model =
 { userinput : Int
 }
model : Model
model =
  {
    userinput = 0
  }
view model =
  div []
  [
    input[{-type_ " text ", placeholder " Enter the Number ", -}onInput Value1][]
  , br [][]
  , div [][text ( toString ( mylist model.userinput))]
  ]
type Msg = Value1 String | None
update msg model =
   case msg of
     Value1 str ->
        {model | userinput = Result.withDefault 0 (String.toInt str)}
     None ->
       model
mylist a =
    let
      list = [1,2,3,4,5,6]
    in
      check a list
check : Int -> List Int -> Bool
check x list =
   if List.member x list then
     True
   else
     False

main =
  beginnerProgram
     {
      model = model
    , view = view
    , update = update
     }
