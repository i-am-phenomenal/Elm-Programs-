import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)
import String exposing (..)

type alias Model ={
                  --num : String
                     sum : Int
                  }

model : Model
model ={
       -- num = 0
       sum = 0
       }

view : Model -> Html Msg
view model =div[][
 fieldset []
   [ label []
       [ input [ type_ "checkbox", onClick T1 ] []
       , text "Eggs"
       ]
   , label []
       [ input [ type_ "checkbox", onClick T2 ] []
       , text "Peanuts"
       ]
   , label []
       [ input [ type_ "checkbox", onClick T3 ] []
       , text "Shelfish"
       ]
        , label []
       [ input [ type_ "checkbox", onClick T4 ] []
       , text "Strawberries"
       ]
        , label []
       [ input [ type_ "checkbox", onClick T5 ] []
       , text "Tomatoes"
       ]
        , label []
       [ input [ type_ "checkbox", onClick T6 ] []
       , text "Chocolates"
       ]
        , label []
       [ input [ type_ "checkbox", onClick T7 ] []
       , text "Cats"
       ]
        , label []
       [ input [ type_ "checkbox", onClick T3 ] []
       , text "Cats"
       ]
   ]
   ,div[][text (toString model.sum)]
   ]

type Msg = T1 |T2|T3| T4| T5 | T6 | T7 | T8 | None

update msg model=
 case msg of
        T1 ->
         {model | sum = model.sum + 1}
        T2 ->
          {model | sum = model.sum + 2}
        T3 ->
          {model | sum = model.sum + 3}
        T4 ->
         { model | sum = model.sum + 4}
        T5 ->
         { model | sum = model.sum + 5}
        T6 ->
         { model | sum = model.sum + 6}
        T7 ->
         { model | sum = model.sum + 7}
        T8 ->
         { model | sum = model.sum + 8}

        None ->
          model


main = beginnerProgram{
                       model = model
                      ,view = view
                      ,update = update
                     }
