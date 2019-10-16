import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
type alias Model =
  { list : Int
  , userlist : List Int
  }
model : Model
model =
  {  list = 0
  ,  userlist = []
  }
view model  =
    div []
    [ input [type_ " text", placeholder " enter number ", onInput Value1][]
    , br [][]
    , button [onClick (Value2 model.list)][text " Append"]
    , br[][]
    , div[][text (toString ( sum model.userlist))]
    , text (toString model.userlist)
    ]
type Msg = Value1 String | Value2 Int | None
update msg model =
   case msg of
       Value1 str ->
         {model | list = Result.withDefault 0 (String.toInt  str)}
       Value2  str ->
          { model | userlist = str :: model.userlist }
       None ->
         model
sum list =
  List.sum list
main =
 beginnerProgram
   {
     model = model
   , update =update
   , view = view
   }
