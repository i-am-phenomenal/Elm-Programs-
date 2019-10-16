 import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
main =
    Html.beginnerProgram
    {
        model = model
      , view = view
      , update = update
    }

type alias Model =
    {  value1 : Int
    ,  value2 : Int
    ,  c      : Int
    }

model : Model
model =
  {
    value1 = 0
  , value2 = 0
  , c = 0
  }
view model =
      div []
      [ input [ type_ " text ", placeholder " Enter value 1", onInput Value1] []
      , br [] []
      , input [ type_ " text ", placeholder " Enter value 2", onInput Value2] []
      , br [] []
      , button [onClick Add] [ text " Add"]
      , br [] []
      , div [] [text (toString model.c) ]]
type Msg
     = Value1 String
     | Value2 String
     | Add
update msg model =
      case msg of
        Value1 str ->
           {model | value1 = Result.withDefault 0 (String.toInt str)}
        Value2 num ->
           {model | value2 = Result.withDefault 0 (String.toInt num)}
        Add ->
           {model | c =  model.value1 + model.value2}
