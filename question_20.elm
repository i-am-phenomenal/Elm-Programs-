import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import Task exposing (..)
import String exposing (..)
main =
   Html.program { init = ( initModel, Cmd.none ), update = update, subscriptions = subscriptions, view = view }
type alias Model =
     {  mylist : List String
      , str1 : String
      , str2 : List String
     }
initModel : Model
initModel =
   { mylist = []
   , str1 = ""
   , str2 = []
   }
view model =
     div[]
     [ input[type_ " text", placeholder " Enter the string", onInput Value1][]
     , br [][]
     , button [onClick Value2][text "calculate"]
     , br[][]
     , button [onClick Value5][text " Sort"]
     , div[][text ( toString model.mylist )]
     ]
type Msg = NoOp | Value1 String | Value2 | Value4 | Value5
update msg model =
    case msg of
       NoOp ->
          (model, Cmd.none )
       Value1 str ->
          ( { model | str1 = str }, Cmd.none )
       Value2 ->
          ( { model | str2 = model.str1 :: model.str2 }, Task.perform identity (Task.succeed Value4))
       Value4 ->
          ( { model | mylist = List.append model.mylist model.str2 }, Cmd.none )
       Value5 ->
         ( { model | mylist = List.sort model.mylist }, Cmd.none )
subscriptions _ =
    Sub.none
{-addtolist s myli  =
      let
        li = s :: myli
      in
       li
-}
