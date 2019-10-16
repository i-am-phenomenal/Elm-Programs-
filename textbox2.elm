import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
main =
    Html.beginnerProgram
         {   model = model
           , view = view
           , update = update
         }

type alias Model
