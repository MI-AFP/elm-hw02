module Styles exposing
    ( addBook
    , bookDetail
    , bookDetailDelete
    , bookList
    , bookListItem
    , bookListItemLink
    , content
    , input
    , label
    , textarea
    )

import Html exposing (Attribute)
import Html.Attributes as Attributes


content : List (Attribute msg)
content =
    [ Attributes.style "display" "flex" ]


bookList : List (Attribute msg)
bookList =
    [ Attributes.style "flex-basis" "15%"
    , Attributes.style "margin" "1rem"
    , Attributes.style "padding-right" "1rem"
    , Attributes.style "border-right" "1px solid #000"
    ]


bookListItem : List (Attribute msg)
bookListItem =
    [ Attributes.style "padding" ".25rem 0" ]


bookListItemLink : List (Attribute msg)
bookListItemLink =
    [ Attributes.style "color" "blue"
    , Attributes.style "text-decoration" "underline"
    , Attributes.style "cursor" "pointer"
    ]


bookDetail : List (Attribute msg)
bookDetail =
    [ Attributes.style "flex-basis" "65%"
    , Attributes.style "position" "relative"
    ]


bookDetailDelete : List (Attribute msg)
bookDetailDelete =
    [ Attributes.style "position" "absolute"
    , Attributes.style "top" ".5rem"
    , Attributes.style "right" ".5rem"
    , Attributes.style "padding" ".5rem"
    , Attributes.style "color" "red"
    , Attributes.style "cursor" "pointer"
    ]


addBook : List (Attribute msg)
addBook =
    [ Attributes.style "flex-basis" "20%"
    , Attributes.style "margin" "1rem"
    , Attributes.style "padding-left" "1rem"
    , Attributes.style "border-left" "1px solid #000"
    ]


label : List (Attribute msg)
label =
    [ Attributes.style "display" "block"
    , Attributes.style "font-weight" "bold"
    , Attributes.style "margin-bottom" ".5rem"
    ]


input : List (Attribute msg)
input =
    [ Attributes.style "width" "100%"
    , Attributes.style "padding" "0.25rem"
    , Attributes.style "margin-bottom" "1rem"
    ]


textarea : List (Attribute msg)
textarea =
    [ Attributes.style "width" "100%"
    , Attributes.style "padding" "0.25rem"
    , Attributes.style "margin-bottom" "1rem"
    , Attributes.style "resize" "vertical"
    , Attributes.style "min-height" "5rem"
    ]
