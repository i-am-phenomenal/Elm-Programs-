import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import String exposing (..)
type alias Model =
   {  number : String
   }
model : Model
model =
     { number = "" }
view model =
    div []
     [ input [type_ " text ", placeholder " Enter any number ", onInput Value1][]
     , br[][]
    , div[][text (toString ( func model.number))]
     ]
type Msg = Value1 String | None
update msg model =
     case msg of
         Value1 str ->
            { model | number = str }
         None ->
            model
func str =
     String.toList str
main =
  beginnerProgram
   { model = model
   , update =update
   , view = view
   }

                       
