import Json.Decode exposing (..)
import Html exposing (..)
import String exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)

type alias Model =
 { name : String
 , name1 : Maybe String
 }
model : Model
model =
  { name = ""
  , name1 = Nothing
  }

decodetrw str2 =
     let
        a =  decodeString string str2
        _ =
          Debug.log "a ==>" str2
     in
        case a of
         Result.Ok a  -> Just a
         Result.Err a -> Nothing

view model =div[][
               input[onInput Nam][]
         --     ,input[onInput Nam1][]
              , button[onClick Add][text "add"]
              , div [][text ( toString  model.name1)]
              ]

type Msg = Nam String | Add

update msg model =
  case msg of
      Nam str ->
        {model | name = str}
    --  Nam1 str ->
      --  {model | number = Result.wthDefault 0 ( String.toInt str) }
      Add ->
        { model | name1 = decodetrw model.name }
main =
   beginnerProgram { model = model , update = update , view = view }
