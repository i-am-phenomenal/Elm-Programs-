import Html exposing (..)
import Html.Events exposing (..)
import List exposing (..)
import Html.Attributes exposing (..)
mylist =
     let
       list = [10,20,30,40,50]
     in
       func list
func list =
     toString (List.maximum list)

main =
    text mylist
