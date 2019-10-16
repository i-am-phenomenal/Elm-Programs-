import Html exposing(..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
main =
     Html.beginnerProgram
     {
        view = view
      , model = model
      , update = update
     }
type alias Model =
    {
       username : String
     , password : String
     , password1 : String
    }
model : Model
model =
    {
      username = ""
    , password = ""
    , password1 = ""
    }
view model =
     div [] [
      input[type_ " text " ,placeholder " Enter username" , onInput User ] []
    , br [][]
    , input[type_ " text" , placeholder " Enter Password" , onInput Pass] []
    , br[][]
    , input[type_ " text" , placeholder " Enter Password again" , onInput Pass1 ] []
  --  , button [text " re-Enter the username= " , onInput Str3] []
    --, br [][]
    --, div [] [text( toString mod) ]
    , ismatch model
     ]
type Msg = User String | Pass String | Pass1 String
update msg model =
     case msg of
          User user ->
            {  model | username = user }
          Pass pass ->
            {  model | password = pass}
          Pass1 pass1 ->
            {  model | password1 = pass1}


ismatch model =
  let
    (color, message) =
        if model.password == model.password1 then
         ("#C0C0C0", " OK")
     --  text " OK "
        else
          ("#C0C0C0", " Passwords dont match")
        --  text " Not Ok"
  in
         div[ style [ ("color", color)] ] [text message]
