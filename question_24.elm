import Html exposing(..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import Array exposing (..)
import Tuple exposing (..)
import Dict exposing (..)
main =
   beginnerProgram { model = model, update = update, view = view }
type alias Model =
 { dict : Dict.Dict String String
 , country : String
 , x : Maybe String
 , dummy_value : String

 }
model : Model
model =
  { dict = Dict.fromList [( "India","Delhi"), (" Nepal", " Kathmandu")]
  , country = ""
  , x = Nothing
  , isBool = True
  , dummyType = DummyType
  }
  
type alias TestingType = 
	{
	  a : String
	, b : Int
	, c : Bool
	, d : Int
	}
 
type Dummytype = Yes | No | None 

view : Model -> Html Msg 
view model =
 div[]
 [ input[type_" text", placeholder "Enter data", onInput Value1][]
 , br[][]
 , button [onClick Value2][text " Check"]
 , div [][text ( toString (model.x))]
 ]
 
type Msg = Value1 String | Value2 | None

update : Msg -> Model ->  (model, Cmd Msg)
update msg model =
  case msg of
     Value1 str ->
      { model | country = str }
     Value2 ->
      { model | x = func1 model.country model.dict }
     None ->
        model

func1 : String -> Dict.Dict -> Maybe String
func1 str d =
   if Dict.member str d == True then
     Dict.get str d
   else
    Nothing
	
dummyFunction : Model -> Bool 
dummyFunction model = 
 if model.isBool then 
    case model.dummyType of  
		Yes -> True 
		No -> False  
		None -> False 
 else 
   True 
   
