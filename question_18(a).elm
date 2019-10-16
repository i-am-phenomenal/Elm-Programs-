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
    , str2 : String
    , mylist2 : List String
    , ordernumber : List Int
    , number : Int
    , total1 : List Int
    , total : List Int
   }
initModel : Model
initModel =
 { mylist = []
 , str1 = ""
 , str2 = ""
 , mylist2 = []
 , ordernumber = []
 , number = 1
 , total1 = []
 , total = []
 }
view model =
   div []
   [
      input[placeholder "Enter text", onInput Value1][]
    , input[placeholder "Enter text", onInput Value2][]
    , br[][]
    , button [onClick Value3][text " submit "]
    , br [][]
    , button [onClick Value4][text " Amount "]
    , table []
      [
      thead []
            [th [][text " Order Number"],
             th [][text "Product"],
             th [][text "Amount"],
             th [][text " Total "]
            -- th [][text "Total"]--
            ],
--        List.map toTableRow myList,
      tr []
         [
         -- td [][text "Total"],
           td [] (List.map (\x -> div [] [text ( toString x)] ) model.ordernumber),
           td [] (List.map (\x -> div [] [text x] ) model.mylist)
         , td [] (List.map (\x -> div [] [text x] ) model.mylist2)
         , td [] (List.map (\x -> div [] [text ( toString x)] ) model.total)
         ]






      ]



   ]

type Msg = Value1 String | Value2 String | Value3 | Value4 | Value5 | Value6 | NoOp
update msg model =
 case msg of
   Value1 str ->
      ({model | str1 = str}, Cmd.none)
   Value2 str ->
    ({model | str2 = str}, Cmd.none)
   Value3 ->
      ({ model | mylist =  model.str1 :: model.mylist }, Cmd.none)
   Value4 ->
    ({model |  mylist2 = model.str2 :: model.mylist2 }, Task.perform identity ( Task.succeed Value5))
   Value5 ->
    ({ model | ordernumber = model.number :: model.ordernumber, number = func model.number }, Task.perform identity ( Task.succeed Value6))
   Value6 ->
     ({ model | total = (func2 model.str1 model.str2 model.total)  , total1 = func2 model.str1 model.str2 model.total},  Cmd.none)
   NoOp ->
     (model, Cmd.none)

func2 str3 str4 li =
    case str3 of
       "Coffee" -> ((Result.withDefault 0 (String.toInt str4)) * 10 ) :: li
       "Tea" -> ((Result.withDefault 0 (String.toInt str4)) * 20 ) :: li
       _ -> 0 :: li

subscriptions _ =
 Sub.none
func x =
 x + 1
