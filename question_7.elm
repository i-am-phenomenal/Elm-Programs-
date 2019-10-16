import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import String exposing (..)
type alias Model =
  {  number : String
  ,  userlist : List Int
  }
model : Model
model =
  {  number = ""
  ,  userlist = []
  }
view model =
   div []
    [ input [type_ " text", placeholder " Enter comma separate values ", onInput Value1][]
    , br[][]
    , button [onClick(Value2 )][text "Convert to List"]
    , br[][]
    , button [onClick Value3 ][text " sort "]
    , br[][]
  --  , button [onClick Value4][text "Convert to Interger List"]
    , br[][]
    , text (toString model.userlist)

    ]
type Msg = Value1 String | Value2  | Value3  | None
update msg model =
     case msg of
        Value1 str ->
         {model | number = str }
        Value2  ->
         { model | userlist = func model.number }
        Value3 ->
         { model | userlist = List.sort model.userlist }
       {- Value4 ->
          { model | userlist = List.map convert model.number } -}
        None ->
           model
convert x =
           Result.withDefault 0 (String.toInt x)
func n =
     n
       |> String.split ","
       |> List.map convert
main =
 beginnerProgram
    { model = model , update  = update , view = view }
