import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

type alias Model =
  {   a : Int
    , b : Int

}
model : Model
model = 0  0



view model =
  div []
  [ button [onClick Add] [ text " +"]
--  , button [onClick Minus] [ text " - "  ]
  , div [] [ text (toString model)]
  , input [placeholder " answer" , onInput add] []
  --, button [onClick  Multiply] [ text " * "]
--  , button [onClick Divide ] [ text " /"]
  ]
type Message = Add Int Int--| Minus | Divide | Multiply
update msg model =
    case msg of
      Add d v->
           toString (add)
{-     Minumodel | a = dmodel | a = ds ->
        model - 10
      Divide ->
        model / 10
      Multiply ->
        model * 10  -}
main =
   Html.beginnerProgram
   {  model = model
   ,  view = view
   ,  update = update
   }


add =
    { model | value1 = model.value1
