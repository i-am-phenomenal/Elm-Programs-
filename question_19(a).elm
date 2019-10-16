import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import String exposing (..)
type alias Model =
    { user : String
   ,  mylist : List String
    }
model : Model
model =
  { user = ""
  , mylist = []
   }
view model =
  div []
  [  input [type_ " text ", placeholder " Enter string ", onInput Value1][]
   , br[][]
   , button [onClick Value2][text " Start"]
   , br[][]
   --, Html.li [][model.mylist]
   , div [][text ( toString (start model.mylist ))]
  ]
type Msg = Value1 String | Value2 | None
update msg model =
  case msg of
     Value1 str ->
       { model | user = str}
     Value2 ->
       { model | mylist =  model.user :: model.mylist }
     None ->
        model
start  li =
   let
   -- li1 = str :: li
    texts = List.map Html.text li
    textToItem text = Html.li [][text]
    items = List.map textToItem texts
   in
    Html.ol [] items
{-start str list =
    let
     texts = List.map Html.text list
     texttoItem text = Html.li [][ text]
     items = List.map texttoItem texts
    in
     Html.ul [] items  -}
main =
   beginnerProgram { model = model, update = update, view = view}
 
