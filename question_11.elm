import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
main =
  beginnerProgram {model = model, update = update, view = view}
type alias Model =
  { ele : Int
  , ele2 : Int
  , list1 : List Int
  , list2 : List Int
  , list3 : List Int
   }
model : Model
model =
  { ele = 0
  , ele2 = 0
  , list1 = []
  , list2 = []
  , list3 = []
  }
view model =
     div []
     [ input [type_ "text", placeholder " Enter list 1 ", onInput Value1][]
     , input[type_ " text", placeholder " Enter list 2 ", onInput Value2][]
     , button[onClick Add1][text " Add to list 1"]
     , button[onClick Add2][text " Add to List 2"]
     , br[][]
     , button[onClick Sort1][text " Sort List 1 "]
     , button[onClick Sort2][text " Sort List 2"]
     , br[][]
     , button[onClick Add3][text " Add to list 3"]
     , div [][text ( toString ( model.list3))]
     ]
type Msg = Value1 String | Value2 String | Sort1 | Sort2 | Add1 | Add2 | Add3 | None
update msg model =
  case msg of
   Value1 str ->
      { model | ele = Result.withDefault 0 (String.toInt str)}
   Value2 str1 ->
      { model | ele2 = Result.withDefault 0 (String.toInt str1)}
   Add1  ->
     { model | list1 = model.ele :: model.list1}
   Add2 ->
     { model | list2 = model.ele2 :: model.list2 }
   Sort1 ->
     { model | list1 = List.sort model.list1}
   Sort2 ->
     { model | list2 = List.sort  model.list2}
   Add3 ->
    { model | list3 = List.sort (List.concat [model.list1 , model.list2])}
   None ->
      model


    
