import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Array
import Dict exposing (..)
import String exposing (..)
type alias Model =
      {  word : String


      }
model : Model
model =
    {
       word = ""

    }

view model =
      div []
      [ input [type_ "text" , placeholder " Enter the Scrabble word", onInput Word] []
      , br [] []
    --  , button [onClick count] [ text " Calculate"]
      --, br [] []
      , div [] [text (toString (count model.word)) ]
      ]
type Msg = Word String -- | Score String
update msg model =
    case msg of
         Word str ->
            { model | word = str}



count : String -> Int
count word1 =
--  List.map Points (List.map  String.toUpper (String.split "" word1))
  word1
    |> String.split ""
    |> List.map String.toUpper
    |> List.map points
    |> List.sum
rules =
   {  one = ["A","E","I","O","U","L","N","R","S","T" ]
   ,  two = ["D","G"]
   ,  three = ["B","C","M","P"]
   ,  four = ["F","H","V","W","Y"]
   ,  five = ["K"]
   ,  eight = ["J","X"]
   ,  ten = ["Q","Z"]
   }
points : String -> Int
points points1 =
{-}  points
    |> flip Dict.get points
    |> Maybe.withDefault 0  -}
    if List.member points1 rules.one then
      1
    else if List.member points1 rules.two then
      2
    else if List.member points1 rules.three then
      3
    else if List.member points1 rules.four then
      4
    else if List.member points1 rules.five then
      5
    else if List.member points1 rules.eight then
      8
    else if List.member points1 rules.ten then
      10
    else
      0
main =
    Html.beginnerProgram
          {
            model = model
          , view = view
          , update = update
          }
