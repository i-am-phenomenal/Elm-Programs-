import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Random
main =
     program
     {
       init = init
      , view = view
      , update = update
      , subscriptions = subscriptions
     }
init : (Model, Cmd Msg)
init =
     ( 0, Cmd.None)
view model =
      div [] [
              text (toString  model)
             ]
type msg   =   Roll
               | OnResult Int
update msg model =
       case msg of
             Roll ->
                  ( model, Random.generate onresult (Random.int 1,10))
             OnResult res ->
                  (res, Cmd.none )
