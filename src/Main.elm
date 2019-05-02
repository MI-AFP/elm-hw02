module Main exposing (main)

import Browser
import Html exposing (Html, a, button, div, h1, h2, input, label, text, textarea)
import Html.Attributes exposing (type_)
import Styles


main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }


type Msg
    = NoOp


type alias Model =
    {}


init : () -> ( Model, Cmd Msg )
init _ =
    ( {}, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Books" ]
        , viewContent
        ]


viewContent : Html Msg
viewContent =
    div Styles.content
        [ viewBookList
        , viewBookDetail
        , viewAddBook
        ]


viewAddBook : Html Msg
viewAddBook =
    div Styles.addBook
        [ div []
            [ label Styles.label [ text "Book Name" ]
            , input (Styles.input ++ [ type_ "text" ]) []
            ]
        , div []
            [ label Styles.label [ text "Book Description" ]
            , textarea Styles.textarea []
            ]
        , button [] [ text "Submit" ]
        ]


viewBookList : Html Msg
viewBookList =
    div Styles.bookList
        [ viewBookListItem
        , viewBookListItem
        , viewBookListItem
        ]


viewBookListItem : Html Msg
viewBookListItem =
    div Styles.bookListItem
        [ a Styles.bookListItemLink [ text "Book title" ]
        ]


viewBookDetail : Html Msg
viewBookDetail =
    div Styles.bookDetail
        [ h2 [] [ text "Book title" ]
        , a Styles.bookDetailDelete [ text "Delete" ]
        , div [] [ text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius lacus at risus interdum tempor. Nullam ac tortor ut risus vestibulum eleifend. Curabitur aliquam venenatis nunc maximus sagittis. Quisque at lacus at ante efficitur congue. Phasellus commodo neque vel magna mollis, vitae porta velit interdum. Nunc sit amet faucibus odio. Aliquam in efficitur massa, id consectetur libero. Nunc at volutpat ante. Integer a tortor dictum, eleifend lacus sit amet, faucibus est. Aliquam suscipit, felis in consequat sollicitudin, arcu risus dapibus elit, id tempus eros urna ac ante. Integer diam nibh, feugiat id lacus fermentum, porttitor efficitur leo. Maecenas efficitur nunc non pretium laoreet." ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )
