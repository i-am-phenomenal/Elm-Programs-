import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Mouse
import Keyboard


type alias model =
     Int
init : ( model, Cmd Msg)
init =
     ( 0, Cmd.none)
type Msg
      =  Mousemsg Mouse.Position
       | Keyboardmsg Keyboard.KeyCode

view model =
            div[]
            [
              text (toString model)

            ]
update msg model =
           case msg of
                Mousemsg mousemsg ->
                    ( model + 1, Cmd.none)
                Keyboardmsg keyboardmsg ->
                      ( model +100 , Cmd.none)
subscriptions model =
       Sub.batch
           [
           Mouse.clicks Mousemsg
           Keyboard.downs Keyboardmsg
           ]
main =
     Html.program
     {
        init =init
      , update =update
      , view = view
      , subscriptions = subscriptions
     }
