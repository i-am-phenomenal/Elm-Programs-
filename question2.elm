module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import List exposing (..)


type alias Model =
    { year : Int

    --  , times : Int
    }


model : Model
model =
    { year = 0

    -- , times = 80
    }


view model =
    div []
        [ input [ placeholder " Enter a leap year ", onInput Value1 ] []
        , br [] []
        , div [] [ text (toString (calc4 model.year)) ]
        ]


type Msg
    = Value1 String
    | None


update msg model =
    case msg of
        Value1 str ->
            { model | year = Result.withDefault 0 (String.toInt str) }

        None ->
            model


calc0 str =
    str + 4


calc1 str =
    List.range str (str + 20)


calc2 x =
    List.map calc0 (calc1 x)


calc3 a =
    filterMap onlyeven a


onlyeven a =
    if (a % 4 == 0 && a % 100 == 0 && a % 400 == 0) then
        Just a
    else
        Nothing


calc4 x =
    calc2 x
        |> calc3
        |> toString


main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }
