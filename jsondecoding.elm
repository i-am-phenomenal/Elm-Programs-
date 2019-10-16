import Html exposing (text)
import Json.Decode exposing (..)
json = """{ "login": "carlo",
    "id": 1501,
    "avatar_url": "https://avatars0.githubusercontent.com/u/1501?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/carlo",
    "html_url": "https://github.com/carlo",
    "followers_url": "https://api.github.com/users/carlo/followers",
    "following_url": "https://api.github.com/users/carlo/following{/other_user}",
    "gists_url": "https://api.github.com/users/carlo/gists{/gist_id}"

    }"""
type alias Model =
 { login : String
 , id : Int
 , gravatar_url : String
 , url : String
 , html_url : String
 , followers_url : String
 , following_url : String
 , gists_url : String

 }
model : Decoder Model
model =
     map8 Model
      (at ["login"] string)
      (at ["id"] int)
      (at ["gravatar_id"] string)
      (at ["url"] string)
      (at ["html_url"] string)
      (at ["followers_url"] string)
      (at ["following_url"] string)
      (at ["gists_url"] string)
main =
  text ( toString (decodeString model json))
  
