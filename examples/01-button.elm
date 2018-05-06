-- 
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL

-- New model integer type
type alias Model = Int


model : Model
model =
  0



-- UPDATE

-- Set of two message types
-- Msg type makes these data
type Msg
  = Increment
  | Decrement
  | Reset


-- What is update here? a Function?
-- It takes a Msg, passes it to a Model and produces a Model result
update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1
    Reset ->
       0
-- VIEW

-- View prodcues a Html Msg value
view : Model -> Html Msg
-- dom elements here are just functions. They take a list of attributes and a list of child nodes
-- [] replaces <> in html
view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [onClick Reset ] [ text "Reset"]
    ]
