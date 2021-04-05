module Main exposing (main)

import Browser
import Html as Html exposing (Html)
import Html.Attributes as Attributes
import Styles


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
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
    Html.div []
        [ Html.h1 [] [ Html.text "Books" ]
        , viewContent
        ]


viewContent : Html Msg
viewContent =
    Html.div Styles.content
        [ viewBookList
        , viewBookDetail
        , viewAddBook
        ]


viewAddBook : Html Msg
viewAddBook =
    Html.div Styles.addBook
        [ Html.div []
            [ Html.label Styles.label [ Html.text "Book Name" ]
            , Html.input (Styles.input ++ [ Attributes.type_ "text" ]) []
            ]
        , Html.div []
            [ Html.label Styles.label [ Html.text "Book Description" ]
            , Html.textarea Styles.textarea []
            ]
        , Html.button [] [ Html.text "Submit" ]
        ]


viewBookList : Html Msg
viewBookList =
    Html.div Styles.bookList
        [ viewBookListItem
        , viewBookListItem
        , viewBookListItem
        ]


viewBookListItem : Html Msg
viewBookListItem =
    Html.div Styles.bookListItem
        [ Html.a Styles.bookListItemLink [ Html.text "Book title" ]
        ]


viewBookDetail : Html Msg
viewBookDetail =
    Html.div Styles.bookDetail
        [ Html.h2 [] [ Html.text "Book title" ]
        , Html.a Styles.bookDetailDelete [ Html.text "Delete" ]
        , Html.div [] [ Html.text "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras varius lacus at risus interdum tempor. Nullam ac tortor ut risus vestibulum eleifend. Curabitur aliquam venenatis nunc maximus sagittis. Quisque at lacus at ante efficitur congue. Phasellus commodo neque vel magna mollis, vitae porta velit interdum. Nunc sit amet faucibus odio. Aliquam in efficitur massa, id consectetur libero. Nunc at volutpat ante. Integer a tortor dictum, eleifend lacus sit amet, faucibus est. Aliquam suscipit, felis in consequat sollicitudin, arcu risus dapibus elit, id tempus eros urna ac ante. Integer diam nibh, feugiat id lacus fermentum, porttitor efficitur leo. Maecenas efficitur nunc non pretium laoreet." ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update NoOp model =
    ( model, Cmd.none )
