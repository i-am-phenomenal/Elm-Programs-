import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
main =
  Html.beginnerProgram
  { model = model
  , view = view
  , update = update
  }

model: { name : String}
model =
     { name = " Aditya "}
type Msg = Noop
update : Msg -> { name : String, age : Int} -> { name : String, age : Int}
update msg model =
          model
view : { name : String, age : Int} -> Html Msg
view model =
         div[] [ text ( toString model )]
