import Html exposing (..)
import Html.Events exposing (..)
import Htlm.Attributes exposing (..)
import List exposing (..)
import Array exposing (..)
main =
    beginnerProgram { model = model , update = update, view = view}
type alias Model =
    { number : Int
    , list1 : List Int
    , list2 : List Int
    , list3 : List Int
    }
model : Model
model =
   { number = 0
  ,  list1 = [1,2,3,4,5,6]
  ,  list2 = []
  ,  list3 = []                                                        {-   take first n numbers and pout them into another list anf then take another list and then and add the remaining elements into that list and concat both the lists-}
 }
view model =
   div []
   [ input[type_ " text", placeholder" Enter the value of n ", onInput Value1][]
   , br[][]
   , button[onClick Value2][text " Rotate"]
   , div [][text ( toString ( func1 (model.number model.list1)))]
   ]
type Msg = Value1 String | Value2 | None
update msg model =
     case msg of
        Value1 str ->
           {model | number = Result.withDefault 0 (String.toInt  str)}
        Value2 ->
           { model | list3 = func1 (model.number model.list3) }
        None ->
          model
func1 x li =
     let
      li = List.take x model.list1
     in
      func2
func2 =
     List.concat[ model.list1 , model.list2]

         
