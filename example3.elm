import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
main =
    view



type alias Model =
     {     
         todo : String
      ,  todos : List String
     }
model : Model
model =
  {     todo : " "
  , todos = []

type Msg =
  UpdateTodo String
  | AddTodo
  | RemoveAll

}
view =
   div []
     [ input [type_ " abc"] []
     , div [] []
     , button [] [ text " add"]
     , div [] []
     , button [] [ text " minus"]

     ]
