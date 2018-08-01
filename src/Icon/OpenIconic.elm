
module Icon.OpenIconic exposing (..)

-- DOCS ------------------------------------------------------------------------

{-| <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css"/>
Learn more at [Open Iconic](https://useiconic.com/open).

    import Icon.OpenIconic as Icon 
      exposing ( stylesheet
               , Icon(Fork)
               , fork
               )

    forkIcon1 : Html msg
    forkIcon1 = Html.i [] Fork

    forkIcon2 : Html msg
    forkIcon2 = fork

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , forkIcon1
        , forkIcon2
        ]

# Stylesheet
@docs stylesheet

# Html
@docs i

# Attributes
@docs toClass, toClassName

# Icons
@docs toString

## Union Type
@docs Icon

-}

-- ## HTML Helpers
-- @docs accountLogin, accountLogout, actionRedo, actionUndo, alignCenter, alignLeft, alignRight, aperture, arrowBottom, arrowCircleBottom, arrowCircleLeft, arrowCircleRight, arrowCircleTop, arrowLeft, arrowRight, arrowThickBottom, arrowThickLeft, arrowThickRight, arrowThickTop, arrowTop, audio, audioSpectrum, badge, ban, barChart, basket, batteryEmpty, batteryFull, beaker, bell, bluetooth, bold, bolt, book, bookmark, box, briefcase, britishPound, browser, brush, bug, bullhorn, calculator, calendar, cameraSlr, caretBottom, caretLeft, caretRight, caretTop, cart, chat, check, chevronBottom, chevronLeft, chevronRight, chevronTop, circleCheck, circleX, clipboard, clock, cloud, cloudDownload, cloudUpload, cloudy, code, cog, collapseDown, collapseLeft, collapseRight, collapseUp, command, commentSquare, compass, contrast, copywriting, creditCard, crop, dashboard, dataTransferDownload, dataTransferUpload, delete, dial, document, dollar, doubleQuoteSansLeft, doubleQuoteSansRight, doubleQuoteSerifLeft, doubleQuoteSerifRight, droplet, eject, elevator, ellipses, envelopeClosed, envelopeOpen, euro, excerpt, expandDown, expandLeft, expandRight, expandUp, externalLink, eye, eyedropper, file, fire, flag, flash, folder, fork, fullscreenEnter, fullscreenExit, globe, graph, gridFourUp, gridThreeUp, gridTwoUp, hardDrive, header, headphones, heart, home, image, inbox, infinity, info, italic, justifyCenter, justifyLeft, justifyRight, key, laptop, layers, lightbulb, linkBroken, linkIntact, list, listRich, location, lockLocked, lockUnlocked, loop, loopCircular, loopSquare, magnifyingGlass, map, mapMarker, mediaPause, mediaPlay, mediaRecord, mediaSkipBackward, mediaSkipForward, mediaStepBackward, mediaStepForward, mediaStop, medicalCross, menu, microphone, minus, monitor, moon, move, musicalNote, paperclip, pencil, people, person, phone, pieChart, pin, playCircle, plus, powerStandby, print, project, pulse, puzzlePiece, questionMark, rain, random, reload, resizeBoth, resizeHeight, resizeWidth, rss, rssAlt, script, share, shareBoxed, shield, signal, signpost, sortAscending, sortDescending, spreadsheet, star, sun, tablet, tag, tags, target, task, terminal, text, thumbDown, thumbUp, timer, transfer, trash, underline, verticalAlignBottom, verticalAlignCenter, verticalAlignTop, video, volumeHigh, volumeLow, volumeOff, warning, wifi, wrench, x, yen, zoomIn, zoomOut


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
        , Icon.i [] Trash
        ]

-}
stylesheet : Html msg
stylesheet
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "https://cdnjs.cloudflare.com/ajax/libs/open-iconic/1.1.1/font/css/open-iconic-bootstrap.min.css"
    ]
    []


-- ICONS -----------------------------------------------------------------------

{-| 
    import Icon.OpenIconic as Icon exposing (..)

    myPaperclipIcon : Html msg
    myPaperclipIcon
      = Icon.i [] Paperclip
-}
i : List (Attribute msg) -> Icon -> Html msg
i attrs icon = Html.i (toClass icon :: attrs) []

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

{-| 
    Icon.toClassName ZoomOut
    -- "oi oi-zoom-out"
-}
toClassName : Icon -> String
toClassName icon
  = let snakeCase : String -> String
        snakeCase
          = flip String.foldr ""
            (\c s ->
               case Char.isUpper c of
                 True  -> String.cons '-' <| String.cons (Char.toLower c) <| s
                 False ->                   String.cons               c  <| s
            )
    in "oi oi" ++ snakeCase (Basics.toString icon)

{-| 
    Icon.toAttribute EnvelopeOpen
    -- Attribute.class "oi oi-envelope-open"
-}
toClass : Icon -> Attribute msg
toClass = toClassName >> class

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

-- {-| <i class="oi oi-account-login"></i> -}
-- accountLogin : Html msg
-- accountLogin = i [] AccountLogin
-- {-| <i class="oi oi-account-logout"></i> -}
-- accountLogout : Html msg
-- accountLogout = i [] AccountLogout
-- {-| <i class="oi oi-action-redo"></i> -}
-- actionRedo : Html msg
-- actionRedo = i [] ActionRedo
-- {-| <i class="oi oi-action-undo"></i> -}
-- actionUndo : Html msg
-- actionUndo = i [] ActionUndo
-- {-| <i class="oi oi-align-center"></i> -}
-- alignCenter : Html msg
-- alignCenter = i [] AlignCenter
-- {-| <i class="oi oi-align-left"></i> -}
-- alignLeft : Html msg
-- alignLeft = i [] AlignLeft
-- {-| <i class="oi oi-align-right"></i> -}
-- alignRight : Html msg
-- alignRight = i [] AlignRight
-- {-| <i class="oi oi-aperture"></i> -}
-- aperture : Html msg
-- aperture = i [] Aperture
-- {-| <i class="oi oi-arrow-bottom"></i> -}
-- arrowBottom : Html msg
-- arrowBottom = i [] ArrowBottom
-- {-| <i class="oi oi-arrow-circle-bottom"></i> -}
-- arrowCircleBottom : Html msg
-- arrowCircleBottom = i [] ArrowCircleBottom
-- {-| <i class="oi oi-arrow-circle-left"></i> -}
-- arrowCircleLeft : Html msg
-- arrowCircleLeft = i [] ArrowCircleLeft
-- {-| <i class="oi oi-arrow-circle-right"></i> -}
-- arrowCircleRight : Html msg
-- arrowCircleRight = i [] ArrowCircleRight
-- {-| <i class="oi oi-arrow-circle-top"></i> -}
-- arrowCircleTop : Html msg
-- arrowCircleTop = i [] ArrowCircleTop
-- {-| <i class="oi oi-arrow-left"></i> -}
-- arrowLeft : Html msg
-- arrowLeft = i [] ArrowLeft
-- {-| <i class="oi oi-arrow-right"></i> -}
-- arrowRight : Html msg
-- arrowRight = i [] ArrowRight
-- {-| <i class="oi oi-arrow-thick-bottom"></i> -}
-- arrowThickBottom : Html msg
-- arrowThickBottom = i [] ArrowThickBottom
-- {-| <i class="oi oi-arrow-thick-left"></i> -}
-- arrowThickLeft : Html msg
-- arrowThickLeft = i [] ArrowThickLeft
-- {-| <i class="oi oi-arrow-thick-right"></i> -}
-- arrowThickRight : Html msg
-- arrowThickRight = i [] ArrowThickRight
-- {-| <i class="oi oi-arrow-thick-top"></i> -}
-- arrowThickTop : Html msg
-- arrowThickTop = i [] ArrowThickTop
-- {-| <i class="oi oi-arrow-top"></i> -}
-- arrowTop : Html msg
-- arrowTop = i [] ArrowTop
-- {-| <i class="oi oi-audio"></i> -}
-- audio : Html msg
-- audio = i [] Audio
-- {-| <i class="oi oi-audio-spectrum"></i> -}
-- audioSpectrum : Html msg
-- audioSpectrum = i [] AudioSpectrum
-- {-| <i class="oi oi-badge"></i> -}
-- badge : Html msg
-- badge = i [] Badge
-- {-| <i class="oi oi-ban"></i> -}
-- ban : Html msg
-- ban = i [] Ban
-- {-| <i class="oi oi-bar-chart"></i> -}
-- barChart : Html msg
-- barChart = i [] BarChart
-- {-| <i class="oi oi-basket"></i> -}
-- basket : Html msg
-- basket = i [] Basket
-- {-| <i class="oi oi-battery-empty"></i> -}
-- batteryEmpty : Html msg
-- batteryEmpty = i [] BatteryEmpty
-- {-| <i class="oi oi-battery-full"></i> -}
-- batteryFull : Html msg
-- batteryFull = i [] BatteryFull
-- {-| <i class="oi oi-beaker"></i> -}
-- beaker : Html msg
-- beaker = i [] Beaker
-- {-| <i class="oi oi-bell"></i> -}
-- bell : Html msg
-- bell = i [] Bell
-- {-| <i class="oi oi-bluetooth"></i> -}
-- bluetooth : Html msg
-- bluetooth = i [] Bluetooth
-- {-| <i class="oi oi-bold"></i> -}
-- bold : Html msg
-- bold = i [] Bold
-- {-| <i class="oi oi-bolt"></i> -}
-- bolt : Html msg
-- bolt = i [] Bolt
-- {-| <i class="oi oi-book"></i> -}
-- book : Html msg
-- book = i [] Book
-- {-| <i class="oi oi-bookmark"></i> -}
-- bookmark : Html msg
-- bookmark = i [] Bookmark
-- {-| <i class="oi oi-box"></i> -}
-- box : Html msg
-- box = i [] Box
-- {-| <i class="oi oi-briefcase"></i> -}
-- briefcase : Html msg
-- briefcase = i [] Briefcase
-- {-| <i class="oi oi-british-pound"></i> -}
-- britishPound : Html msg
-- britishPound = i [] BritishPound
-- {-| <i class="oi oi-browser"></i> -}
-- browser : Html msg
-- browser = i [] Browser
-- {-| <i class="oi oi-brush"></i> -}
-- brush : Html msg
-- brush = i [] Brush
-- {-| <i class="oi oi-bug"></i> -}
-- bug : Html msg
-- bug = i [] Bug
-- {-| <i class="oi oi-bullhorn"></i> -}
-- bullhorn : Html msg
-- bullhorn = i [] Bullhorn
-- {-| <i class="oi oi-calculator"></i> -}
-- calculator : Html msg
-- calculator = i [] Calculator
-- {-| <i class="oi oi-calendar"></i> -}
-- calendar : Html msg
-- calendar = i [] Calendar
-- {-| <i class="oi oi-camera-slr"></i> -}
-- cameraSlr : Html msg
-- cameraSlr = i [] CameraSlr
-- {-| <i class="oi oi-caret-bottom"></i> -}
-- caretBottom : Html msg
-- caretBottom = i [] CaretBottom
-- {-| <i class="oi oi-caret-left"></i> -}
-- caretLeft : Html msg
-- caretLeft = i [] CaretLeft
-- {-| <i class="oi oi-caret-right"></i> -}
-- caretRight : Html msg
-- caretRight = i [] CaretRight
-- {-| <i class="oi oi-caret-top"></i> -}
-- caretTop : Html msg
-- caretTop = i [] CaretTop
-- {-| <i class="oi oi-cart"></i> -}
-- cart : Html msg
-- cart = i [] Cart
-- {-| <i class="oi oi-chat"></i> -}
-- chat : Html msg
-- chat = i [] Chat
-- {-| <i class="oi oi-check"></i> -}
-- check : Html msg
-- check = i [] Check
-- {-| <i class="oi oi-chevron-bottom"></i> -}
-- chevronBottom : Html msg
-- chevronBottom = i [] ChevronBottom
-- {-| <i class="oi oi-chevron-left"></i> -}
-- chevronLeft : Html msg
-- chevronLeft = i [] ChevronLeft
-- {-| <i class="oi oi-chevron-right"></i> -}
-- chevronRight : Html msg
-- chevronRight = i [] ChevronRight
-- {-| <i class="oi oi-chevron-top"></i> -}
-- chevronTop : Html msg
-- chevronTop = i [] ChevronTop
-- {-| <i class="oi oi-circle-check"></i> -}
-- circleCheck : Html msg
-- circleCheck = i [] CircleCheck
-- {-| <i class="oi oi-circle-x"></i> -}
-- circleX : Html msg
-- circleX = i [] CircleX
-- {-| <i class="oi oi-clipboard"></i> -}
-- clipboard : Html msg
-- clipboard = i [] Clipboard
-- {-| <i class="oi oi-clock"></i> -}
-- clock : Html msg
-- clock = i [] Clock
-- {-| <i class="oi oi-cloud"></i> -}
-- cloud : Html msg
-- cloud = i [] Cloud
-- {-| <i class="oi oi-cloud-download"></i> -}
-- cloudDownload : Html msg
-- cloudDownload = i [] CloudDownload
-- {-| <i class="oi oi-cloud-upload"></i> -}
-- cloudUpload : Html msg
-- cloudUpload = i [] CloudUpload
-- {-| <i class="oi oi-cloudy"></i> -}
-- cloudy : Html msg
-- cloudy = i [] Cloudy
-- {-| <i class="oi oi-code"></i> -}
-- code : Html msg
-- code = i [] Code
-- {-| <i class="oi oi-cog"></i> -}
-- cog : Html msg
-- cog = i [] Cog
-- {-| <i class="oi oi-collapse-down"></i> -}
-- collapseDown : Html msg
-- collapseDown = i [] CollapseDown
-- {-| <i class="oi oi-collapse-left"></i> -}
-- collapseLeft : Html msg
-- collapseLeft = i [] CollapseLeft
-- {-| <i class="oi oi-collapse-right"></i> -}
-- collapseRight : Html msg
-- collapseRight = i [] CollapseRight
-- {-| <i class="oi oi-collapse-up"></i> -}
-- collapseUp : Html msg
-- collapseUp = i [] CollapseUp
-- {-| <i class="oi oi-command"></i> -}
-- command : Html msg
-- command = i [] Command
-- {-| <i class="oi oi-comment-square"></i> -}
-- commentSquare : Html msg
-- commentSquare = i [] CommentSquare
-- {-| <i class="oi oi-compass"></i> -}
-- compass : Html msg
-- compass = i [] Compass
-- {-| <i class="oi oi-contrast"></i> -}
-- contrast : Html msg
-- contrast = i [] Contrast
-- {-| <i class="oi oi-copywriting"></i> -}
-- copywriting : Html msg
-- copywriting = i [] Copywriting
-- {-| <i class="oi oi-credit-card"></i> -}
-- creditCard : Html msg
-- creditCard = i [] CreditCard
-- {-| <i class="oi oi-crop"></i> -}
-- crop : Html msg
-- crop = i [] Crop
-- {-| <i class="oi oi-dashboard"></i> -}
-- dashboard : Html msg
-- dashboard = i [] Dashboard
-- {-| <i class="oi oi-data-transfer-download"></i> -}
-- dataTransferDownload : Html msg
-- dataTransferDownload = i [] DataTransferDownload
-- {-| <i class="oi oi-data-transfer-upload"></i> -}
-- dataTransferUpload : Html msg
-- dataTransferUpload = i [] DataTransferUpload
-- {-| <i class="oi oi-delete"></i> -}
-- delete : Html msg
-- delete = i [] Delete
-- {-| <i class="oi oi-dial"></i> -}
-- dial : Html msg
-- dial = i [] Dial
-- {-| <i class="oi oi-document"></i> -}
-- document : Html msg
-- document = i [] Document
-- {-| <i class="oi oi-dollar"></i> -}
-- dollar : Html msg
-- dollar = i [] Dollar
-- {-| <i class="oi oi-double-quote-sans-left"></i> -}
-- doubleQuoteSansLeft : Html msg
-- doubleQuoteSansLeft = i [] DoubleQuoteSansLeft
-- {-| <i class="oi oi-double-quote-sans-right"></i> -}
-- doubleQuoteSansRight : Html msg
-- doubleQuoteSansRight = i [] DoubleQuoteSansRight
-- {-| <i class="oi oi-double-quote-serif-left"></i> -}
-- doubleQuoteSerifLeft : Html msg
-- doubleQuoteSerifLeft = i [] DoubleQuoteSerifLeft
-- {-| <i class="oi oi-double-quote-serif-right"></i> -}
-- doubleQuoteSerifRight : Html msg
-- doubleQuoteSerifRight = i [] DoubleQuoteSerifRight
-- {-| <i class="oi oi-droplet"></i> -}
-- droplet : Html msg
-- droplet = i [] Droplet
-- {-| <i class="oi oi-eject"></i> -}
-- eject : Html msg
-- eject = i [] Eject
-- {-| <i class="oi oi-elevator"></i> -}
-- elevator : Html msg
-- elevator = i [] Elevator
-- {-| <i class="oi oi-ellipses"></i> -}
-- ellipses : Html msg
-- ellipses = i [] Ellipses
-- {-| <i class="oi oi-envelope-closed"></i> -}
-- envelopeClosed : Html msg
-- envelopeClosed = i [] EnvelopeClosed
-- {-| <i class="oi oi-envelope-open"></i> -}
-- envelopeOpen : Html msg
-- envelopeOpen = i [] EnvelopeOpen
-- {-| <i class="oi oi-euro"></i> -}
-- euro : Html msg
-- euro = i [] Euro
-- {-| <i class="oi oi-excerpt"></i> -}
-- excerpt : Html msg
-- excerpt = i [] Excerpt
-- {-| <i class="oi oi-expand-down"></i> -}
-- expandDown : Html msg
-- expandDown = i [] ExpandDown
-- {-| <i class="oi oi-expand-left"></i> -}
-- expandLeft : Html msg
-- expandLeft = i [] ExpandLeft
-- {-| <i class="oi oi-expand-right"></i> -}
-- expandRight : Html msg
-- expandRight = i [] ExpandRight
-- {-| <i class="oi oi-expand-up"></i> -}
-- expandUp : Html msg
-- expandUp = i [] ExpandUp
-- {-| <i class="oi oi-external-link"></i> -}
-- externalLink : Html msg
-- externalLink = i [] ExternalLink
-- {-| <i class="oi oi-eye"></i> -}
-- eye : Html msg
-- eye = i [] Eye
-- {-| <i class="oi oi-eyedropper"></i> -}
-- eyedropper : Html msg
-- eyedropper = i [] Eyedropper
-- {-| <i class="oi oi-file"></i> -}
-- file : Html msg
-- file = i [] File
-- {-| <i class="oi oi-fire"></i> -}
-- fire : Html msg
-- fire = i [] Fire
-- {-| <i class="oi oi-flag"></i> -}
-- flag : Html msg
-- flag = i [] Flag
-- {-| <i class="oi oi-flash"></i> -}
-- flash : Html msg
-- flash = i [] Flash
-- {-| <i class="oi oi-folder"></i> -}
-- folder : Html msg
-- folder = i [] Folder
-- {-| <i class="oi oi-fork"></i> -}
-- fork : Html msg
-- fork = i [] Fork
-- {-| <i class="oi oi-fullscreen-enter"></i> -}
-- fullscreenEnter : Html msg
-- fullscreenEnter = i [] FullscreenEnter
-- {-| <i class="oi oi-fullscreen-exit"></i> -}
-- fullscreenExit : Html msg
-- fullscreenExit = i [] FullscreenExit
-- {-| <i class="oi oi-globe"></i> -}
-- globe : Html msg
-- globe = i [] Globe
-- {-| <i class="oi oi-graph"></i> -}
-- graph : Html msg
-- graph = i [] Graph
-- {-| <i class="oi oi-grid-four-up"></i> -}
-- gridFourUp : Html msg
-- gridFourUp = i [] GridFourUp
-- {-| <i class="oi oi-grid-three-up"></i> -}
-- gridThreeUp : Html msg
-- gridThreeUp = i [] GridThreeUp
-- {-| <i class="oi oi-grid-two-up"></i> -}
-- gridTwoUp : Html msg
-- gridTwoUp = i [] GridTwoUp
-- {-| <i class="oi oi-hard-drive"></i> -}
-- hardDrive : Html msg
-- hardDrive = i [] HardDrive
-- {-| <i class="oi oi-header"></i> -}
-- header : Html msg
-- header = i [] Header
-- {-| <i class="oi oi-headphones"></i> -}
-- headphones : Html msg
-- headphones = i [] Headphones
-- {-| <i class="oi oi-heart"></i> -}
-- heart : Html msg
-- heart = i [] Heart
-- {-| <i class="oi oi-home"></i> -}
-- home : Html msg
-- home = i [] Home
-- {-| <i class="oi oi-image"></i> -}
-- image : Html msg
-- image = i [] Image
-- {-| <i class="oi oi-inbox"></i> -}
-- inbox : Html msg
-- inbox = i [] Inbox
-- {-| <i class="oi oi-infinity"></i> -}
-- infinity : Html msg
-- infinity = i [] Infinity
-- {-| <i class="oi oi-info"></i> -}
-- info : Html msg
-- info = i [] Info
-- {-| <i class="oi oi-italic"></i> -}
-- italic : Html msg
-- italic = i [] Italic
-- {-| <i class="oi oi-justify-center"></i> -}
-- justifyCenter : Html msg
-- justifyCenter = i [] JustifyCenter
-- {-| <i class="oi oi-justify-left"></i> -}
-- justifyLeft : Html msg
-- justifyLeft = i [] JustifyLeft
-- {-| <i class="oi oi-justify-right"></i> -}
-- justifyRight : Html msg
-- justifyRight = i [] JustifyRight
-- {-| <i class="oi oi-key"></i> -}
-- key : Html msg
-- key = i [] Key
-- {-| <i class="oi oi-laptop"></i> -}
-- laptop : Html msg
-- laptop = i [] Laptop
-- {-| <i class="oi oi-layers"></i> -}
-- layers : Html msg
-- layers = i [] Layers
-- {-| <i class="oi oi-lightbulb"></i> -}
-- lightbulb : Html msg
-- lightbulb = i [] Lightbulb
-- {-| <i class="oi oi-link-broken"></i> -}
-- linkBroken : Html msg
-- linkBroken = i [] LinkBroken
-- {-| <i class="oi oi-link-intact"></i> -}
-- linkIntact : Html msg
-- linkIntact = i [] LinkIntact
-- {-| <i class="oi oi-list"></i> -}
-- list : Html msg
-- list = i [] List
-- {-| <i class="oi oi-list-rich"></i> -}
-- listRich : Html msg
-- listRich = i [] ListRich
-- {-| <i class="oi oi-location"></i> -}
-- location : Html msg
-- location = i [] Location
-- {-| <i class="oi oi-lock-locked"></i> -}
-- lockLocked : Html msg
-- lockLocked = i [] LockLocked
-- {-| <i class="oi oi-lock-unlocked"></i> -}
-- lockUnlocked : Html msg
-- lockUnlocked = i [] LockUnlocked
-- {-| <i class="oi oi-loop"></i> -}
-- loop : Html msg
-- loop = i [] Loop
-- {-| <i class="oi oi-loop-circular"></i> -}
-- loopCircular : Html msg
-- loopCircular = i [] LoopCircular
-- {-| <i class="oi oi-loop-square"></i> -}
-- loopSquare : Html msg
-- loopSquare = i [] LoopSquare
-- {-| <i class="oi oi-magnifying-glass"></i> -}
-- magnifyingGlass : Html msg
-- magnifyingGlass = i [] MagnifyingGlass
-- {-| <i class="oi oi-map"></i> -}
-- map : Html msg
-- map = i [] Map
-- {-| <i class="oi oi-map-marker"></i> -}
-- mapMarker : Html msg
-- mapMarker = i [] MapMarker
-- {-| <i class="oi oi-media-pause"></i> -}
-- mediaPause : Html msg
-- mediaPause = i [] MediaPause
-- {-| <i class="oi oi-media-play"></i> -}
-- mediaPlay : Html msg
-- mediaPlay = i [] MediaPlay
-- {-| <i class="oi oi-media-record"></i> -}
-- mediaRecord : Html msg
-- mediaRecord = i [] MediaRecord
-- {-| <i class="oi oi-media-skip-backward"></i> -}
-- mediaSkipBackward : Html msg
-- mediaSkipBackward = i [] MediaSkipBackward
-- {-| <i class="oi oi-media-skip-forward"></i> -}
-- mediaSkipForward : Html msg
-- mediaSkipForward = i [] MediaSkipForward
-- {-| <i class="oi oi-media-step-backward"></i> -}
-- mediaStepBackward : Html msg
-- mediaStepBackward = i [] MediaStepBackward
-- {-| <i class="oi oi-media-step-forward"></i> -}
-- mediaStepForward : Html msg
-- mediaStepForward = i [] MediaStepForward
-- {-| <i class="oi oi-media-stop"></i> -}
-- mediaStop : Html msg
-- mediaStop = i [] MediaStop
-- {-| <i class="oi oi-medical-cross"></i> -}
-- medicalCross : Html msg
-- medicalCross = i [] MedicalCross
-- {-| <i class="oi oi-menu"></i> -}
-- menu : Html msg
-- menu = i [] Menu
-- {-| <i class="oi oi-microphone"></i> -}
-- microphone : Html msg
-- microphone = i [] Microphone
-- {-| <i class="oi oi-minus"></i> -}
-- minus : Html msg
-- minus = i [] Minus
-- {-| <i class="oi oi-monitor"></i> -}
-- monitor : Html msg
-- monitor = i [] Monitor
-- {-| <i class="oi oi-moon"></i> -}
-- moon : Html msg
-- moon = i [] Moon
-- {-| <i class="oi oi-move"></i> -}
-- move : Html msg
-- move = i [] Move
-- {-| <i class="oi oi-musical-note"></i> -}
-- musicalNote : Html msg
-- musicalNote = i [] MusicalNote
-- {-| <i class="oi oi-paperclip"></i> -}
-- paperclip : Html msg
-- paperclip = i [] Paperclip
-- {-| <i class="oi oi-pencil"></i> -}
-- pencil : Html msg
-- pencil = i [] Pencil
-- {-| <i class="oi oi-people"></i> -}
-- people : Html msg
-- people = i [] People
-- {-| <i class="oi oi-person"></i> -}
-- person : Html msg
-- person = i [] Person
-- {-| <i class="oi oi-phone"></i> -}
-- phone : Html msg
-- phone = i [] Phone
-- {-| <i class="oi oi-pie-chart"></i> -}
-- pieChart : Html msg
-- pieChart = i [] PieChart
-- {-| <i class="oi oi-pin"></i> -}
-- pin : Html msg
-- pin = i [] Pin
-- {-| <i class="oi oi-play-circle"></i> -}
-- playCircle : Html msg
-- playCircle = i [] PlayCircle
-- {-| <i class="oi oi-plus"></i> -}
-- plus : Html msg
-- plus = i [] Plus
-- {-| <i class="oi oi-power-standby"></i> -}
-- powerStandby : Html msg
-- powerStandby = i [] PowerStandby
-- {-| <i class="oi oi-print"></i> -}
-- print : Html msg
-- print = i [] Print
-- {-| <i class="oi oi-project"></i> -}
-- project : Html msg
-- project = i [] Project
-- {-| <i class="oi oi-pulse"></i> -}
-- pulse : Html msg
-- pulse = i [] Pulse
-- {-| <i class="oi oi-puzzle-piece"></i> -}
-- puzzlePiece : Html msg
-- puzzlePiece = i [] PuzzlePiece
-- {-| <i class="oi oi-question-mark"></i> -}
-- questionMark : Html msg
-- questionMark = i [] QuestionMark
-- {-| <i class="oi oi-rain"></i> -}
-- rain : Html msg
-- rain = i [] Rain
-- {-| <i class="oi oi-random"></i> -}
-- random : Html msg
-- random = i [] Random
-- {-| <i class="oi oi-reload"></i> -}
-- reload : Html msg
-- reload = i [] Reload
-- {-| <i class="oi oi-resize-both"></i> -}
-- resizeBoth : Html msg
-- resizeBoth = i [] ResizeBoth
-- {-| <i class="oi oi-resize-height"></i> -}
-- resizeHeight : Html msg
-- resizeHeight = i [] ResizeHeight
-- {-| <i class="oi oi-resize-width"></i> -}
-- resizeWidth : Html msg
-- resizeWidth = i [] ResizeWidth
-- {-| <i class="oi oi-rss"></i> -}
-- rss : Html msg
-- rss = i [] Rss
-- {-| <i class="oi oi-rss-alt"></i> -}
-- rssAlt : Html msg
-- rssAlt = i [] RssAlt
-- {-| <i class="oi oi-script"></i> -}
-- script : Html msg
-- script = i [] Script
-- {-| <i class="oi oi-share"></i> -}
-- share : Html msg
-- share = i [] Share
-- {-| <i class="oi oi-share-boxed"></i> -}
-- shareBoxed : Html msg
-- shareBoxed = i [] ShareBoxed
-- {-| <i class="oi oi-shield"></i> -}
-- shield : Html msg
-- shield = i [] Shield
-- {-| <i class="oi oi-signal"></i> -}
-- signal : Html msg
-- signal = i [] Signal
-- {-| <i class="oi oi-signpost"></i> -}
-- signpost : Html msg
-- signpost = i [] Signpost
-- {-| <i class="oi oi-sort-ascending"></i> -}
-- sortAscending : Html msg
-- sortAscending = i [] SortAscending
-- {-| <i class="oi oi-sort-descending"></i> -}
-- sortDescending : Html msg
-- sortDescending = i [] SortDescending
-- {-| <i class="oi oi-spreadsheet"></i> -}
-- spreadsheet : Html msg
-- spreadsheet = i [] Spreadsheet
-- {-| <i class="oi oi-star"></i> -}
-- star : Html msg
-- star = i [] Star
-- {-| <i class="oi oi-sun"></i> -}
-- sun : Html msg
-- sun = i [] Sun
-- {-| <i class="oi oi-tablet"></i> -}
-- tablet : Html msg
-- tablet = i [] Tablet
-- {-| <i class="oi oi-tag"></i> -}
-- tag : Html msg
-- tag = i [] Tag
-- {-| <i class="oi oi-tags"></i> -}
-- tags : Html msg
-- tags = i [] Tags
-- {-| <i class="oi oi-target"></i> -}
-- target : Html msg
-- target = i [] Target
-- {-| <i class="oi oi-task"></i> -}
-- task : Html msg
-- task = i [] Task
-- {-| <i class="oi oi-terminal"></i> -}
-- terminal : Html msg
-- terminal = i [] Terminal
-- {-| <i class="oi oi-text"></i> -}
-- text : Html msg
-- text = i [] Text
-- {-| <i class="oi oi-thumb-down"></i> -}
-- thumbDown : Html msg
-- thumbDown = i [] ThumbDown
-- {-| <i class="oi oi-thumb-up"></i> -}
-- thumbUp : Html msg
-- thumbUp = i [] ThumbUp
-- {-| <i class="oi oi-timer"></i> -}
-- timer : Html msg
-- timer = i [] Timer
-- {-| <i class="oi oi-transfer"></i> -}
-- transfer : Html msg
-- transfer = i [] Transfer
-- {-| <i class="oi oi-trash"></i> -}
-- trash : Html msg
-- trash = i [] Trash
-- {-| <i class="oi oi-underline"></i> -}
-- underline : Html msg
-- underline = i [] Underline
-- {-| <i class="oi oi-vertical-align-bottom"></i> -}
-- verticalAlignBottom : Html msg
-- verticalAlignBottom = i [] VerticalAlignBottom
-- {-| <i class="oi oi-vertical-align-center"></i> -}
-- verticalAlignCenter : Html msg
-- verticalAlignCenter = i [] VerticalAlignCenter
-- {-| <i class="oi oi-vertical-align-top"></i> -}
-- verticalAlignTop : Html msg
-- verticalAlignTop = i [] VerticalAlignTop
-- {-| <i class="oi oi-video"></i> -}
-- video : Html msg
-- video = i [] Video
-- {-| <i class="oi oi-volume-high"></i> -}
-- volumeHigh : Html msg
-- volumeHigh = i [] VolumeHigh
-- {-| <i class="oi oi-volume-low"></i> -}
-- volumeLow : Html msg
-- volumeLow = i [] VolumeLow
-- {-| <i class="oi oi-volume-off"></i> -}
-- volumeOff : Html msg
-- volumeOff = i [] VolumeOff
-- {-| <i class="oi oi-warning"></i> -}
-- warning : Html msg
-- warning = i [] Warning
-- {-| <i class="oi oi-wifi"></i> -}
-- wifi : Html msg
-- wifi = i [] Wifi
-- {-| <i class="oi oi-wrench"></i> -}
-- wrench : Html msg
-- wrench = i [] Wrench
-- {-| <i class="oi oi-x"></i> -}
-- x : Html msg
-- x = i [] X
-- {-| <i class="oi oi-yen"></i> -}
-- yen : Html msg
-- yen = i [] Yen
-- {-| <i class="oi oi-zoom-in"></i> -}
-- zoomIn : Html msg
-- zoomIn = i [] ZoomIn
-- {-| <i class="oi oi-zoom-out"></i> -}
-- zoomOut : Html msg
-- zoomOut = i [] ZoomOut
