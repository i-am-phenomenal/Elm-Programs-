import Html exposing(..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import Array exposing (..)
import Tuple exposing (..)
main =
   beginnerProgram { model = model, update = update, view = view }
type alias Model =
  { number : Int
  , mylist : String
  , sum : Int
  , mylist1 : List Int
  }
model : Model
model =
  { number = 0
  , mylist = ""
  , sum = 0
  , mylist1 = []
  }
view model =
  div []
  [ input[type_ " text" , placeholder " Enter the binary number", onInput Value1][]
  , br[][]
  , button [onClick Value3][text " Add to List"]
--  , button[onClick Value2][text "Convert"]
  , br[][]
  --, input[type_ " text ", placeholder " ", onInput Value3][]
  , div [][text ( toString ( model.sum))]
  ]
type Msg = Value1 String | Value3 | None
update msg model =
  case msg of
     Value1 str ->
       { model | mylist = str }
     Value3 ->
      { model | sum = add model.mylist model.mylist1 }
     None ->
       model
add num li =
   let
    sum = 0
    r = String.left 1 num
    a = Result.withDefault 0 (String.toInt r )
    --myli  = a :: li1
    d = String.dropLeft 1 num
    c = a * 2^((String.length num) - 1 )
    myli = c :: li
   in
     if (String.length num > 0 ) then
        add d myli
     else
        List.sum myli
{-func1 myli =
    let
      sum1 = 0
      a = List.take 1 myli
      d =List.drop 1 myli
      b = Result.withDefault 0 (String.toInt a )
      c = b * 2
    in
     sum1 + c
-}
