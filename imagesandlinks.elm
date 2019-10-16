import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
main =
   Html.beginnerProgram
   {
       view = view
      , model = model
      , update = update
   }
type alias Model =
     {

     }
model : Model
model = {}
view model =
       div []waaw
       [ a[href " https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=WhGyWu0T6Zxf46iqiAI" , target " _sameWindow" , stylesheet ][text " Click here"]
      --  ,img [src "image1.png"] []
       ]
update msg model =
      model
stylesheet = style
      [
          ( "padding-left" , "1000px")
      ]
