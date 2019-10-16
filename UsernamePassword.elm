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
    { username : String
    , password : String
    }
model : Model
model =
     {  username = ""
      , password = ""
     }

 {-model = { username = ""
         , password = ""
        }   -}
type Msg =
    Submit  String -- | Delete String
view model  =
    div []
    [
    Html.form [] [input [ type_ " abc "] []
    , div [] []
    , input [ type_ " abc "] []
    , div [] []
    , button [onClick Submit ] [ text " Submit"]
    , div [] []
    , button [type_ " text " ] []
  --  , button [onClick Delete] [ text " Delete "]]
    ]
update : Msg -> Model -> Model
update msg model =
     case msg of
         Submit  newContent ->
                { model | username = newContent
                , model | password = newContent
                }

          {-Delete text  ->
               { model | username = text
              ,  model | password = text
               }   -}




abc =
     text " Submitted "
