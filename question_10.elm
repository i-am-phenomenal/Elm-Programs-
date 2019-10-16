import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import String exposing (..)

type alias Model =
 {  list1 : List Int
  , list2 : List Int
  , list3 : List Int
  , str : String

 }
model : Model
model =
 { list1 = [1,2,3]
 , list2 = [4,5,6]
 , list3 = []
 , str = ""

 }
view model =
 div [][
         button[onClick Add][text "add"]
        ,br[][]
        ,div[][text (toString model.list3)]
       ]
type Msg = Add |None

update msg model =
  case msg of
     Add ->
       { model | list3 = fun model.list1 model.list2 model.list3 }
     None ->
       model

fun li1 li2 li3   =
   let
     c = List.take 1 li1
     e = List.drop 1 li1
     d = List.take 1 li2

     f = List.drop 1 li2
     li = c ++ d ++ li3
    -- li = (c,d)
    -- str1 = String.fromList li
     --str2 = String.concat [str1]
    in
      if ((List.length e > 0) && (List.length f > 0)) then
       fun e f li3
      else
        li

main= beginnerProgram{
         model = model
        ,view = view
        ,update = update
        }
