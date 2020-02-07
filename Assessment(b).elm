--module Main exposing (main)


{-     Algorithm

    1) Take 3 variables named as count1 ( for brackets) , count2 ( for braces ) and count3 ( for parenthesis )
      1.a) also take 3 variables named as open1 , open2 , open 3

    2) Take the input string from a user via a textbox ( the user would be entered in userinput)
      2.a) Check whether in the string, the first bracket in the pair is the opening bracket i.e. '['
      2.b) if that is the case then, open1 = 1
      2.c) similar would be the cases for braces and parenthesis
    3) if ( (userinput == " {" && open == 1 )
       3.a)  count1 ++
       3.b) else if ( open == 1 && userinput == " ] "
        3.c) count --
       3.d) similarly do for braces and parenthesis

    4) if the value of count1 , count2 , count3 is 0 at the end , then print True
      4.a) print False



-}
import Html exposing (..)
import Html.Events exposing (..)
main =
    beginnerprogram
    {
     model = model
   , view = view
   , update = update
    }
type alias Model =
     {   userinput : String
     ,   count1 : Int
     ,   count2 : Int
     ,   count3 : Int
     ,   open1  : Int
     ,   open2  : Int
     ,   open3  : Int
     }
model : Model
model =
     {  userinput = ""
      , count1 = 0
      , count2 = 0
      , count3 = 0
      , open1 = 0
      , open2 = 0
      , open3 = 0
     }
view model =
   div []
   [ input [type_ "text", placeholder "Enter String ", onInput Check][]
   , br [][]
   , button [onClick Check2] []
   --,div [][text ( toString model.count1, model.count2, model.count3)]
   , abc model
   ]
type Msg
   =  Check String
   |  Check2 String
update msg model =
     case msg of
       Check str1  ->
       { model | userinput = str1 }
       Check2 ->
            abc
 model =
    if userinput ==  "{" && open1 == 0 then
         open1 = 1
       if
    else if (userinput == "(" || userinput == ")") then
         count2 + 1

    else if (userinput == "[" || userinput == "]") then
         count3 + 1

    else
        "Invalid Input"


    {-if (count1%2 == 0 && count2%2 ==0 && count3%2 == 0 ) then
         "True "
    else
         "False "   -}

        
