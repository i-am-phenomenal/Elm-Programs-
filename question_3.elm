import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
type alias Model =
    { number : Float
    , sum : Float
    --,product : Float
    }
model : Model
model =
  { number = 0.0
  , sum = 0.0
  --, product = 0.0
  }
view model =
    div []
    [ input[placeholder " Enter a leap year ", onInput Value1][]
    , br[][]
    , button [onClick  Sum][text " + "]
    , button [onClick Product][text " x"]
    , br[][]
    , div[][text ( toString ( model.sum))]
    ]
type Msg = Value1 String | Sum | Product
update msg model =
     case msg of
        Value1 str ->
         { model | number = Result.withDefault 0 (String.toFloat str) }

        Sum ->
         { model | sum = add model.number }
        Product ->
        { model | product = abc model.number }
add x =
   x*(x+1)/2
abc y =
   if y == 0 then
     1
   else
    y*abc(y-1)


main =
  beginnerProgram
   { model = model
   , update =update
   , view = view
   }
