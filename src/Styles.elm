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

import Html.Attributes exposing (style)


content =
    [ style "display" "flex" ]


bookList =
    [ style "flex-basis" "15%"
    , style "margin" "1rem"
    , style "padding-right" "1rem"
    , style "border-right" "1px solid #000"
    ]


bookListItem =
    [ style "padding" ".25rem 0" ]


bookListItemLink =
    [ style "color" "blue"
    , style "text-decoration" "underline"
    , style "cursor" "pointer"
    ]


bookDetail =
    [ style "flex-basis" "65%"
    , style "position" "relative"
    ]


bookDetailDelete =
    [ style "position" "absolute"
    , style "top" ".5rem"
    , style "right" ".5rem"
    , style "padding" ".5rem"
    , style "color" "red"
    , style "cursor" "pointer"
    ]


addBook =
    [ style "flex-basis" "20%"
    , style "margin" "1rem"
    , style "padding-left" "1rem"
    , style "border-left" "1px solid #000"
    ]


label =
    [ style "display" "block"
    , style "font-weight" "bold"
    , style "margin-bottom" ".5rem"
    ]


input =
    [ style "width" "100%"
    , style "padding" "0.25rem"
    , style "margin-bottom" "1rem"
    ]


textarea =
    [ style "width" "100%"
    , style "padding" "0.25rem"
    , style "margin-bottom" "1rem"
    , style "resize" "vertical"
    , style "min-height" "5rem"
    ]
