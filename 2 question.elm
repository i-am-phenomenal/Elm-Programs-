import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import String
type alias Model =
   {
       word : String
     , count11 : Int
     , count12 : Int
     , count21 : Int
     , count22 : Int
     , count31 : Int
     , count32 : Int
   }
model : Model
model =
  {
     word = ""
   , count11 = 0
   , count12 = 0
   , count21 = 0
   , count22 = 0
   , count31 = 0
   , count32 = 0
  }

view model =
   div []
   [
     input[type_ " text ", placeholder " Enter String ", onInput Value1][]
     , br[][]
     , div[][ text (toString ( compare ))]
     --, div[][te]
   ]
type Msg = Value1 String | None
update msg model =
     case msg of
       Value1 str ->
        { model | word = str }
       None ->
          model
--result : Model -> Bool
result str =
    if String.startsWith "(" str || String.contains "(" str then
      model.count11 + 1
    else if  String.startsWith "[" str || String.contains "[" str then
      model.count21 + 1
    else if String.startsWith "{" str || String.contains "{" str then
      model.count31 + 1
    else if  String.startsWith ")" str || String.contains ")" str then
      model.count12 + 1
    else if  String.startsWith "]" str || String.contains "]" str then
      model.count22 + 1
    else if  String.startsWith "}" str || String.contains "}" str then
       model.count32 + 1
    else
      0
compare : Bool
compare =
  {-  if model.count11 == model.count12 then
      True
    else if model.count21 == model.count22 then
      False
    else if model.count31 == model.count32 then
      False
    else if model.count11 == model.count12 then
      False
    else
      False -}
   if  (model.count11 == model.count12 && model.count21 == model.count22 && model.count31 == model.count32 ) then
    False
   else
     True

main =
 beginnerProgram {
      model = model
    , view = view
    , update = update
    }

        
