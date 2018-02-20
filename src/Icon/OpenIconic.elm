
module Icon.OpenIconic exposing (..)

-- DOCS ------------------------------------------------------------------------

{-| Learn more at [Open Iconic](https://useiconic.com/open).

# Stylesheet
@docs stylesheet

# Html
@docs i

# Attributes
@docs toAttributes

# Icons
@docs toString, Icon 

-}


-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char

-- STYLESHEET ------------------------------------------------------------------

{-| Include Open Iconic 1.1.1 in your Elm project.

    import Icon.OpenIconic as Icon exposing (stylesheet,Icon(..))

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , Icon.i Trash
        ]

-}
stylesheet : Html msg
stylesheet
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic.min.css"
    ]
    []


-- ICONS -----------------------------------------------------------------------

{-| 
    import Icon.OpenIconic as Icon exposing (..)

    myPaperclipIcon : Html msg
    myPaperclipIcon
      = Icon.i Paperclip
-}
i : Icon -> Html msg
i = flip Html.i [] << toAttributes

{-| 
    Icon.toString PieChart
    -- "pie-chart"
-}
toString : Icon -> String
toString icon
  = let snakeCase : String -> String
        snakeCase
          = flip String.foldr ""
            (\c s ->
               case Char.isUpper c of
                 True  -> String.cons '-' <| String.cons (Char.toLower c) <| s
                 False ->                   String.cons               c  <| s
            )
    in String.dropLeft 1 <| snakeCase <| Basics.toString icon

{-| -}
toAttributes : Icon -> List (Attribute msg)
toAttributes icon =
  [ class "oi"
  , Attr.attribute "data-glyph"
    <| toString icon
  ]

{-| -}
type Icon
  = AccountLogin
  | AccountLogout
  | ActionRedo
  | ActionUndo
  | AlignCenter
  | AlignLeft
  | AlignRight
  | Aperture
  | ArrowBottom
  | ArrowCircleBottom
  | ArrowCircleLeft
  | ArrowCircleRight
  | ArrowCircleTop
  | ArrowLeft
  | ArrowRight
  | ArrowThickBottom
  | ArrowThickLeft
  | ArrowThickRight
  | ArrowThickTop
  | ArrowTop
  | Audio
  | AudioSpectrum
  | Badge
  | Ban
  | BarChart
  | Basket
  | BatteryEmpty
  | BatteryFull
  | Beaker
  | Bell
  | Bluetooth
  | Bold
  | Bolt
  | Book
  | Bookmark
  | Box
  | Briefcase
  | BritishPound
  | Browser
  | Brush
  | Bug
  | Bullhorn
  | Calculator
  | Calendar
  | CameraSlr
  | CaretBottom
  | CaretLeft
  | CaretRight
  | CaretTop
  | Cart
  | Chat
  | Check
  | ChevronBottom
  | ChevronLeft
  | ChevronRight
  | ChevronTop
  | CircleCheck
  | CircleX
  | Clipboard
  | Clock
  | Cloud
  | CloudDownload
  | CloudUpload
  | Cloudy
  | Code
  | Cog
  | CollapseDown
  | CollapseLeft
  | CollapseRight
  | CollapseUp
  | Command
  | CommentSquare
  | Compass
  | Contrast
  | Copywriting
  | CreditCard
  | Crop
  | Dashboard
  | DataTransferDownload
  | DataTransferUpload
  | Delete
  | Dial
  | Document
  | Dollar
  | DoubleQuoteSansLeft
  | DoubleQuoteSansRight
  | DoubleQuoteSerifLeft
  | DoubleQuoteSerifRight
  | Droplet
  | Eject
  | Elevator
  | Ellipses
  | EnvelopeClosed
  | EnvelopeOpen
  | Euro
  | Excerpt
  | ExpandDown
  | ExpandLeft
  | ExpandRight
  | ExpandUp
  | ExternalLink
  | Eye
  | Eyedropper
  | File
  | Fire
  | Flag
  | Flash
  | Folder
  | Fork
  | FullscreenEnter
  | FullscreenExit
  | Globe
  | Graph
  | GridFourUp
  | GridThreeUp
  | GridTwoUp
  | HardDrive
  | Header
  | Headphones
  | Heart
  | Home
  | Image
  | Inbox
  | Infinity
  | Info
  | Italic
  | JustifyCenter
  | JustifyLeft
  | JustifyRight
  | Key
  | Laptop
  | Layers
  | Lightbulb
  | LinkBroken
  | LinkIntact
  | List
  | ListRich
  | Location
  | LockLocked
  | LockUnlocked
  | Loop
  | LoopCircular
  | LoopSquare
  | MagnifyingGlass
  | Map
  | MapMarker
  | MediaPause
  | MediaPlay
  | MediaRecord
  | MediaSkipBackward
  | MediaSkipForward
  | MediaStepBackward
  | MediaStepForward
  | MediaStop
  | MedicalCross
  | Menu
  | Microphone
  | Minus
  | Monitor
  | Moon
  | Move
  | MusicalNote
  | Paperclip
  | Pencil
  | People
  | Person
  | Phone
  | PieChart
  | Pin
  | PlayCircle
  | Plus
  | PowerStandby
  | Print
  | Project
  | Pulse
  | PuzzlePiece
  | QuestionMark
  | Rain
  | Random
  | Reload
  | ResizeBoth
  | ResizeHeight
  | ResizeWidth
  | Rss
  | RssAlt
  | Script
  | Share
  | ShareBoxed
  | Shield
  | Signal
  | Signpost
  | SortAscending
  | SortDescending
  | Spreadsheet
  | Star
  | Sun
  | Tablet
  | Tag
  | Tags
  | Target
  | Task
  | Terminal
  | Text
  | ThumbDown
  | ThumbUp
  | Timer
  | Transfer
  | Trash
  | Underline
  | VerticalAlignBottom
  | VerticalAlignCenter
  | VerticalAlignTop
  | Video
  | VolumeHigh
  | VolumeLow
  | VolumeOff
  | Warning
  | Wifi
  | Wrench
  | X
  | Yen
  | ZoomIn
  | ZoomOut
