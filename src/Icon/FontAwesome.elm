
module Icon.FontAwesome exposing (..)

-- DOCS ------------------------------------------------------------------------

-- TODO: figure out an elegant way to implement Html.Attributes
-- TODO:  maybe just the important ones? like fontWeight and color
-- TODO:  this is esp. important for layers

-- TODO: consider splitting this into four different repositories
-- TODO:   or keep this one, but also make elm-fontawesome, elm-ionicons, etc

-- TODO: support for 4.7
-- TODO: Icon.FontAwesome.Old

{-| Learn more at [FontAwesome](https://fontawesome.com/).

# Table of Contents
- [Stylesheet](#stylesheet)
- [Html](#html)
- [Attributes](#attributes)
- [Style](#style)
- [Combinations](#combinations)
- [Icons](#icons)

# Stylesheet
@docs stylesheet

# Html
@docs i
@docs ul, li

# Attributes
@docs toClass, toClassName
@docs bordered, fixedWidth, inverted, pullLeft, pullRight, pulse, size, spin

# Style
@docs Style
@docs Size, Animation
@docs style

## Transform
@docs Transform
@docs Scale, ShiftX, ShiftY
@docs transform

# Combinations

## Layers
@docs Layer, Corner
@docs layers

## Mask
@docs mask

# Icons
@docs toString, Weight, Icon 

-}

-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char


-- STYLESHEET ------------------------------------------------------------------

{-| Include FontAwesome 5.0.6 in your Elm project.

    import Icon.FontAwesome as Icon exposing (stylesheet,Icon(..))

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , Icon.i myIconStyle Meh
        ]

-}
stylesheet : Html msg
stylesheet
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "https://use.fontawesome.com/releases/v5.0.6/css/all.css"
    ]
    []


-- ICONS -----------------------------------------------------------------------

{-| 
    import Icon.FontAwesome as Icon exposing (..)

    myIconStyle : Style
    myIconStyle
      = { size       = Nothing
        , fixedWidth = False
        , bordered   = False
        , inverted   = False
        , pull       = Nothing
        , animation  = Nothing
        , transform  = Nothing
        }

    myFlaskIcon : Html msg
    myFlaskIcon 
      = Icon.i [ Icon.style myIconStyle ] (Flask Regular)
      
    i_ : (Weight -> Icon) -> Html msg
    i_ icon 
      = Icon.i [ Icon.style myIconStyle ] (icon Regular)
      
    myEasyFlaskIcon : Html msg
      = i_ Flask
-}
i : List (Attribute msg) -> Icon -> Html msg
i attrs icon
  = Html.i (toClass icon :: attrs) []

{-| Compose multiple icons into a single icon!

    layers []
    [ LayerIcon    [ transform myTransform ] (Envelope Regular)
    , LayerCounter [                       ] TopRight "42"
    ]
-}
layers : List (Attribute msg) -> List (Layer msg) -> Html msg
layers attrs
  = Html.span (class "fa-layers fa-fw" :: attrs)
    << List.map
      (\layer ->
        case layer of
          LayerIcon attrs icon ->
            i attrs icon
          LayerText attrs text ->
            flip Html.span [ Html.text text ]
            <| (++) attrs
            <| [ class "fa-layers-text"
              ]
          LayerCounter attrs c text ->
            flip Html.span [ Html.text text ]
            <| (++) attrs
            <| [ class "fa-layers-counter"
              , case c of
                  BottomLeft  -> class "fa-layers-bottom-left"
                  BottomRight -> class "fa-layers-bottom-right"
                  TopLeft     -> class "fa-layers-top-left"
                  TopRight    -> class "fa-layers-top-right"
              ]
      )

{-| -}
type Layer msg
  = LayerIcon    (List (Attribute msg))        Icon
  | LayerText    (List (Attribute msg))        String
  | LayerCounter (List (Attribute msg)) Corner String

{-| Compose two icons, where one is subtracted from the other.

    mask []
    FacebookF         -- cutout icon (see-thru)
    (Circle Regular)  -- outer icon (opaque)
-}
mask : List (Attribute msg) -> Icon -> Icon -> Html msg
mask attrs icon icon_
  = i (Attr.attribute "data-fa-mask" (toClassName icon_) :: attrs) icon

{-| Creates an icon list! Use this to make unordered lists with your favorite icons as bullets.
-}
ul : List (Attribute msg) -> List (Html msg) -> Html msg
ul attrs body
  = Html.ul (class "fa-ul" :: attrs) body

{-| 
    myList 
      = Icon.li 
        [              ]  -- Html.li attributes
        [              ]  -- Icon.i  attributes
        (Square Regular)  -- Icon.i  body
        [ text "Howdy" ]  -- Html.li body
        
-}
li : List (Attribute msg) -> List (Attribute msg) -> Icon -> List (Html msg) -> Html msg
-- KLUDGE: we could also just make this accept plain html...
li attrs attrs_ icon body
  = Html.li attrs
    <| flip (++) body
    <| [ Html.span [ class "fa-li" ]
        [ i attrs_ icon
        ]
      ]

{-| 
    Icon.toString (HandLizard Solid)
    -- "hand-lizard"
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
    in case String.words (Basics.toString icon) of
         it :: [           ] -> String.dropLeft 1 <| snakeCase it
         it :: [ "Solid"   ] -> String.dropLeft 1 <| snakeCase it
         it :: [ "Regular" ] -> String.dropLeft 1 <| snakeCase it
         it :: [ "Light"   ] -> String.dropLeft 1 <| snakeCase it
         _                   -> ""

{-| 
    Icon.toClassName (PaintBrush Regular)
    -- "far fa-paint-brush"

    Icon.toClassName (PaintBrush Solid)
    -- "fas fa-paint-brush"

    Icon.toClassName (PaintBrush Light)
    -- "fal fa-paint-brush"

    Icon.toClassName PiedPiper
    -- "fab fa-pied-piper"
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
    in case String.words (Basics.toString icon) of
         it :: [           ] -> "fab fa" ++ snakeCase it
         it :: [ "Solid"   ] -> "fas fa" ++ snakeCase it
         it :: [ "Regular" ] -> "far fa" ++ snakeCase it
         it :: [ "Light"   ] -> "fal fa" ++ snakeCase it
         _                   -> ""

{-| -}
toClass : Icon -> Attribute msg
toClass = toClassName >> class

{-| TODO
-}
style : Style -> Attribute msg
-- TODO: consider replacing this with a few different (a -> Attribute msg) functions that can be used individually
-- TODO:   eg size : Size -> Attribute msg
style _ = Attr.attribute "" ""

-- TODO: not sure if I like the individual attributes or not

{-| TODO
-}
size : Size -> Attribute msg
size _ = class "TODO"

{-| TODO
-}
fixedWidth : Attribute msg
fixedWidth = class "TODO"

{-| TODO
-}
bordered : Attribute msg
bordered = class "TODO"

{-| TODO
-}
inverted : Attribute msg
inverted = class "TODO"

{-| TODO
-}
pullLeft : Attribute msg
pullLeft = class "TODO"

{-| TODO
-}
pullRight : Attribute msg
pullRight = class "TODO"

{-| TODO
-}
spin : Attribute msg
spin = class "TODO"

{-| TODO
-}
pulse : Attribute msg
pulse = class "TODO"

{-| -}
type alias Style
  = { size       : Maybe Size
    , fixedWidth : Bool
    , bordered   : Bool
    , inverted   : Bool
    , pull       : Maybe (ShiftX ())
    , animation  : Maybe Animation
    }

{-| TODO
-}
type Size
  = ExtraSmall
  | Small
  | Large
  | X2
  | X3
  | X4
  | X5
  | X6
  | X7
  | X8
  | X9
  | X10

{-| TODO
-}
type Animation
  = Spin
  | Pulse

{-| TODO
-}
type alias Transform
-- TODO: i think we can make a better api for this
  = { scale  : Maybe ( Scale Float)
    , shiftX : Maybe (ShiftX Float)
    , shiftY : Maybe (ShiftY Float)
    , rotate : Maybe (       Float)
    }

{-| TODO
-}
transform : Transform -> Attribute msg
transform {scale,shiftX,shiftY,rotate}
  = Attr.attribute "data-fa-transform"
    <| String.join " "
      [ case scale of
          Just (Grow   n) ->   "grow-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Just (Shrink n) -> "shrink-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Nothing         -> ""
      , case shiftX of
          Just (Left  n) ->  "left-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Just (Right n) -> "right-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Nothing        -> ""
      , case shiftY of
          Just (Up    n) ->   "up-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Just (Down  n) -> "down-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Nothing        -> ""
      , case rotate of
          Just n  -> "rotate-" ++ Basics.toString (n * 10 |> round |> toFloat |> flip (/) 10)
          Nothing -> ""
      ]

{-| TODO
-}
type Scale a
  = Grow   a
  | Shrink a

{-| TODO
-}
type Corner
  = BottomLeft
  | BottomRight
  | TopLeft
  | TopRight

{-| TODO
-}
type ShiftY a
  = Up    a
  | Down  a

{-| TODO
-}
type ShiftX a
  = Left  a
  | Right a

-- {-| TODO
-- -}
-- type Styled icon brand
-- -- TODO: Styled Icon Brand
-- -- TODO: we could possible do something like this
--   = Solid   icon
--   | Regular icon
--   | Light   icon
--   | Brand   brand
-- 
-- {-| TODO
-- -}
-- type Styled weight
-- -- TODO: Family ()
-- -- TODO: Family Weight
-- -- TODO: we could possible do something like this
--   = StyledIcon  weight Icon
--   | StyledBrand        Brand

{-| TODO
-}
type Weight
  = Solid
  | Regular
  | Light

{-| -}
type Icon
  = AccessibleIcon
  | Accusoft
  | AddressBook Weight
  | AddressCard Weight
  | Adjust Weight
  | Adn
  | Adversal
  | Affiliatetheme
  | AlarmClock Weight
  | Algolia
  | AlignCenter Weight
  | AlignJustify Weight
  | AlignLeft Weight
  | AlignRight Weight
  | Amazon
  | AmazonPay
  | Ambulance Weight
  | AmericanSignLanguageInterpreting Weight
  | Amilia
  | Anchor Weight
  | Android
  | Angellist
  | AngleDoubleDown Weight
  | AngleDoubleLeft Weight
  | AngleDoubleRight Weight
  | AngleDoubleUp Weight
  | AngleDown Weight
  | AngleLeft Weight
  | AngleRight Weight
  | AngleUp Weight
  | Angrycreative
  | Angular
  | AppStore
  | AppStoreIos
  | Apper
  | Apple
  | ApplePay
  | Archive Weight
  | ArrowAltCircleDown Weight
  | ArrowAltCircleLeft Weight
  | ArrowAltCircleRight Weight
  | ArrowAltCircleUp Weight
  | ArrowAltDown Weight
  | ArrowAltFromBottom Weight
  | ArrowAltFromLeft Weight
  | ArrowAltFromRight Weight
  | ArrowAltFromTop Weight
  | ArrowAltLeft Weight
  | ArrowAltRight Weight
  | ArrowAltSquareDown Weight
  | ArrowAltSquareLeft Weight
  | ArrowAltSquareRight Weight
  | ArrowAltSquareUp Weight
  | ArrowAltToBottom Weight
  | ArrowAltToLeft Weight
  | ArrowAltToRight Weight
  | ArrowAltToTop Weight
  | ArrowAltUp Weight
  | ArrowCircleDown Weight
  | ArrowCircleLeft Weight
  | ArrowCircleRight Weight
  | ArrowCircleUp Weight
  | ArrowDown Weight
  | ArrowFromBottom Weight
  | ArrowFromLeft Weight
  | ArrowFromRight Weight
  | ArrowFromTop Weight
  | ArrowLeft Weight
  | ArrowRight Weight
  | ArrowSquareDown Weight
  | ArrowSquareLeft Weight
  | ArrowSquareRight Weight
  | ArrowSquareUp Weight
  | ArrowToBottom Weight
  | ArrowToLeft Weight
  | ArrowToRight Weight
  | ArrowToTop Weight
  | ArrowUp Weight
  | Arrows Weight
  | ArrowsAlt Weight
  | ArrowsAltH Weight
  | ArrowsAltV Weight
  | ArrowsH Weight
  | ArrowsV Weight
  | AssistiveListeningSystems Weight
  | Asterisk Weight
  | Asymmetrik
  | At Weight
  | Audible
  | AudioDescription Weight
  | Autoprefixer
  | Avianex
  | Aviato
  | Aws
  | Backward Weight
  | Badge Weight
  | BadgeCheck Weight
  | BalanceScale Weight
  | Ban Weight
  | Bandcamp
  | Barcode Weight
  | Bars Weight
  | Baseball Weight
  | BaseballBall Weight
  | BasketballBall Weight
  | BasketballHoop Weight
  | Bath Weight
  | BatteryBolt Weight
  | BatteryEmpty Weight
  | BatteryFull Weight
  | BatteryHalf Weight
  | BatteryQuarter Weight
  | BatterySlash Weight
  | BatteryThreeQuarters Weight
  | Bed Weight
  | Beer Weight
  | Behance
  | BehanceSquare
  | Bell Weight
  | BellSlash Weight
  | Bicycle Weight
  | Bimobject
  | Binoculars Weight
  | BirthdayCake Weight
  | Bitbucket
  | Bitcoin
  | Bity
  | BlackTie
  | Blackberry
  | Blind Weight
  | Blogger
  | BloggerB
  | Bluetooth
  | BluetoothB
  | Bold Weight
  | Bolt Weight
  | Bomb Weight
  | Book Weight
  | Bookmark Weight
  | BowlingBall Weight
  | BowlingPins Weight
  | BoxingGlove Weight
  | Braille Weight
  | Briefcase Weight
  | Browser Weight
  | Btc
  | Bug Weight
  | Building Weight
  | Bullhorn Weight
  | Bullseye Weight
  | Buromobelexperte
  | Bus Weight
  | Buysellads
  | Calculator Weight
  | Calendar Weight
  | CalendarAlt Weight
  | CalendarCheck Weight
  | CalendarEdit Weight
  | CalendarExclamation Weight
  | CalendarMinus Weight
  | CalendarPlus Weight
  | CalendarTimes Weight
  | Camera Weight
  | CameraAlt Weight
  | CameraRetro Weight
  | Car Weight
  | CaretCircleDown Weight
  | CaretCircleLeft Weight
  | CaretCircleRight Weight
  | CaretCircleUp Weight
  | CaretDown Weight
  | CaretLeft Weight
  | CaretRight Weight
  | CaretSquareDown Weight
  | CaretSquareLeft Weight
  | CaretSquareRight Weight
  | CaretSquareUp Weight
  | CaretUp Weight
  | CartArrowDown Weight
  | CartPlus Weight
  | CcAmazonPay
  | CcAmex
  | CcApplePay
  | CcDinersClub
  | CcDiscover
  | CcJcb
  | CcMastercard
  | CcPaypal
  | CcStripe
  | CcVisa
  | Centercode
  | Certificate Weight
  | ChartArea Weight
  | ChartBar Weight
  | ChartLine Weight
  | ChartPie Weight
  | Check Weight
  | CheckCircle Weight
  | CheckSquare Weight
  | Chess Weight
  | ChessBishop Weight
  | ChessBishopAlt Weight
  | ChessBoard Weight
  | ChessClock Weight
  | ChessClockAlt Weight
  | ChessKing Weight
  | ChessKingAlt Weight
  | ChessKnight Weight
  | ChessKnightAlt Weight
  | ChessPawn Weight
  | ChessPawnAlt Weight
  | ChessQueen Weight
  | ChessQueenAlt Weight
  | ChessRook Weight
  | ChessRookAlt Weight
  | ChevronCircleDown Weight
  | ChevronCircleLeft Weight
  | ChevronCircleRight Weight
  | ChevronCircleUp Weight
  | ChevronDoubleDown Weight
  | ChevronDoubleLeft Weight
  | ChevronDoubleRight Weight
  | ChevronDoubleUp Weight
  | ChevronDown Weight
  | ChevronLeft Weight
  | ChevronRight Weight
  | ChevronSquareDown Weight
  | ChevronSquareLeft Weight
  | ChevronSquareRight Weight
  | ChevronSquareUp Weight
  | ChevronUp Weight
  | Child Weight
  | Chrome
  | Circle Weight
  | CircleNotch Weight
  | Clipboard Weight
  | Clock Weight
  | Clone Weight
  | ClosedCaptioning Weight
  | Cloud Weight
  | CloudDownload Weight
  | CloudDownloadAlt Weight
  | CloudUpload Weight
  | CloudUploadAlt Weight
  | Cloudscale
  | Cloudsmith
  | Cloudversify
  | Club Weight
  | Code Weight
  | CodeBranch Weight
  | CodeCommit Weight
  | CodeMerge Weight
  | Codepen
  | Codiepie
  | Coffee Weight
  | Cog Weight
  | Cogs Weight
  | Columns Weight
  | Comment Weight
  | CommentAlt Weight
  | Comments Weight
  | Compass Weight
  | Compress Weight
  | CompressAlt Weight
  | CompressWide Weight
  | Connectdevelop
  | Contao
  | Copy Weight
  | Copyright Weight
  | Cpanel
  | CreativeCommons
  | CreditCard Weight
  | CreditCardBlank Weight
  | CreditCardFront Weight
  | Cricket Weight
  | Crop Weight
  | Crosshairs Weight
  | Css3
  | Css3Alt
  | Cube Weight
  | Cubes Weight
  | Curling Weight
  | Cut Weight
  | Cuttlefish
  | DAndD
  | Dashcube
  | Database Weight
  | Deaf Weight
  | Delicious
  | Deploydog
  | Deskpro
  | Desktop Weight
  | DesktopAlt Weight
  | Deviantart
  | Diamond Weight
  | Digg
  | DigitalOcean
  | Discord
  | Discourse
  | Dochub
  | Docker
  | DollarSign Weight
  | DotCircle Weight
  | Download Weight
  | Draft2digital
  | Dribbble
  | DribbbleSquare
  | Dropbox
  | Drupal
  | Dumbbell Weight
  | Dyalog
  | Earlybirds
  | Edge
  | Edit Weight
  | Eject Weight
  | Elementor
  | EllipsisH Weight
  | EllipsisHAlt Weight
  | EllipsisV Weight
  | EllipsisVAlt Weight
  | Ember
  | Empire
  | Envelope Weight
  | EnvelopeOpen Weight
  | EnvelopeSquare Weight
  | Envira
  | Eraser Weight
  | Erlang
  | Ethereum
  | Etsy
  | EuroSign Weight
  | Exchange Weight
  | ExchangeAlt Weight
  | Exclamation Weight
  | ExclamationCircle Weight
  | ExclamationSquare Weight
  | ExclamationTriangle Weight
  | Expand Weight
  | ExpandAlt Weight
  | ExpandArrows Weight
  | ExpandArrowsAlt Weight
  | ExpandWide Weight
  | Expeditedssl
  | ExternalLink Weight
  | ExternalLinkAlt Weight
  | ExternalLinkSquare Weight
  | ExternalLinkSquareAlt Weight
  | Eye Weight
  | EyeDropper Weight
  | EyeSlash Weight
  | Facebook
  | FacebookF
  | FacebookMessenger
  | FacebookSquare
  | FastBackward Weight
  | FastForward Weight
  | Fax Weight
  | Female Weight
  | FieldHockey Weight
  | FighterJet Weight
  | File Weight
  | FileAlt Weight
  | FileArchive Weight
  | FileAudio Weight
  | FileCheck Weight
  | FileCode Weight
  | FileEdit Weight
  | FileExcel Weight
  | FileExclamation Weight
  | FileImage Weight
  | FileMinus Weight
  | FilePdf Weight
  | FilePlus Weight
  | FilePowerpoint Weight
  | FileTimes Weight
  | FileVideo Weight
  | FileWord Weight
  | Film Weight
  | FilmAlt Weight
  | Filter Weight
  | Fire Weight
  | FireExtinguisher Weight
  | Firefox
  | FirstOrder
  | Firstdraft
  | Flag Weight
  | FlagCheckered Weight
  | Flask Weight
  | Flickr
  | Flipboard
  | Fly
  | Folder Weight
  | FolderOpen Weight
  | Font Weight
  | FontAwesome
  | FontAwesomeAlt
  | FontAwesomeFlag
  | Fonticons
  | FonticonsFi
  | FootballBall Weight
  | FootballHelmet Weight
  | FortAwesome
  | FortAwesomeAlt
  | Forumbee
  | Forward Weight
  | Foursquare
  | FreeCodeCamp
  | Freebsd
  | Frown Weight
  | Futbol Weight
  | Gamepad Weight
  | Gavel Weight
  | Gem Weight
  | Genderless Weight
  | GetPocket
  | Gg
  | GgCircle
  | Gift Weight
  | Git
  | GitSquare
  | Github
  | GithubAlt
  | GithubSquare
  | Gitkraken
  | Gitlab
  | Gitter
  | GlassMartini Weight
  | Glide
  | GlideG
  | Globe Weight
  | Gofore
  | GolfBall Weight
  | GolfClub Weight
  | Goodreads
  | GoodreadsG
  | Google
  | GoogleDrive
  | GooglePlay
  | GooglePlus
  | GooglePlusG
  | GooglePlusSquare
  | GoogleWallet
  | GraduationCap Weight
  | Gratipay
  | Grav
  | Gripfire
  | Grunt
  | Gulp
  | HSquare Weight
  | H1 Weight
  | H2 Weight
  | H3 Weight
  | HackerNews
  | HackerNewsSquare
  | HandLizard Weight
  | HandPaper Weight
  | HandPeace Weight
  | HandPointDown Weight
  | HandPointLeft Weight
  | HandPointRight Weight
  | HandPointUp Weight
  | HandPointer Weight
  | HandRock Weight
  | HandScissors Weight
  | HandSpock Weight
  | Handshake Weight
  | Hashtag Weight
  | Hdd Weight
  | Heading Weight
  | Headphones Weight
  | Heart Weight
  | Heartbeat Weight
  | Hexagon Weight
  | Hips
  | HireAHelper
  | History Weight
  | HockeyPuck Weight
  | HockeySticks Weight
  | Home Weight
  | Hooli
  | Hospital Weight
  | Hotjar
  | Hourglass Weight
  | HourglassEnd Weight
  | HourglassHalf Weight
  | HourglassStart Weight
  | Houzz
  | Html5
  | Hubspot
  | ICursor Weight
  | IdBadge Weight
  | IdCard Weight
  | Image Weight
  | Images Weight
  | Imdb
  | Inbox Weight
  | InboxIn Weight
  | InboxOut Weight
  | Indent Weight
  | Industry Weight
  | IndustryAlt Weight
  | Info Weight
  | InfoCircle Weight
  | InfoSquare Weight
  | Instagram
  | InternetExplorer
  | Ioxhost
  | Italic Weight
  | Itunes
  | ItunesNote
  | JackOLantern Weight
  | Jenkins
  | Joget
  | Joomla
  | Js
  | JsSquare
  | Jsfiddle
  | Key Weight
  | Keyboard Weight
  | Keycdn
  | Kickstarter
  | KickstarterK
  | Korvue
  | Language Weight
  | Laptop Weight
  | Laravel
  | Lastfm
  | LastfmSquare
  | Leaf Weight
  | Leanpub
  | Lemon Weight
  | Less
  | LevelDown Weight
  | LevelDownAlt Weight
  | LevelUp Weight
  | LevelUpAlt Weight
  | LifeRing Weight
  | Lightbulb Weight
  | Line Weight
  | Link
  | Linkedin
  | LinkedinIn
  | Linode
  | Linux
  | LiraSign Weight
  | List Weight
  | ListAlt Weight
  | ListOl Weight
  | ListUl Weight
  | LocationArrow Weight
  | Lock Weight
  | LockAlt Weight
  | LockOpen Weight
  | LockOpenAlt Weight
  | LongArrowAltDown Weight
  | LongArrowAltLeft Weight
  | LongArrowAltRight Weight
  | LongArrowAltUp Weight
  | LongArrowDown Weight
  | LongArrowLeft Weight
  | LongArrowRight Weight
  | LongArrowUp Weight
  | LowVision Weight
  | Luchador Weight
  | Lyft
  | Magento
  | Magic Weight
  | Magnet Weight
  | Male Weight
  | Map Weight
  | MapMarker Weight
  | MapMarkerAlt Weight
  | MapPin Weight
  | MapSigns Weight
  | Mars Weight
  | MarsDouble Weight
  | MarsStroke Weight
  | MarsStrokeH Weight
  | MarsStrokeV Weight
  | Maxcdn
  | Medapps
  | Medium
  | MediumM
  | Medkit Weight
  | Medrt
  | Meetup
  | Meh Weight
  | Mercury Weight
  | Microchip Weight
  | Microphone Weight
  | MicrophoneAlt Weight
  | MicrophoneSlash Weight
  | Microsoft
  | Minus Weight
  | MinusCircle Weight
  | MinusHexagon Weight
  | MinusOctagon Weight
  | MinusSquare Weight
  | Mix
  | Mixcloud
  | Mizuni
  | Mobile Weight
  | MobileAlt Weight
  | MobileAndroid Weight
  | MobileAndroidAlt Weight
  | Modx
  | Monero
  | MoneyBill Weight
  | MoneyBillAlt Weight
  | Moon Weight
  | Motorcycle Weight
  | MousePointer Weight
  | Music Weight
  | Napster
  | Neuter Weight
  | Newspaper Weight
  | NintendoSwitch
  | Node
  | NodeJs
  | Npm
  | Ns8
  | Nutritionix
  | ObjectGroup Weight
  | ObjectUngroup Weight
  | Octagon Weight
  | Odnoklassniki
  | OdnoklassnikiSquare
  | Opencart
  | Openid
  | Opera
  | OptinMonster
  | Osi
  | Outdent Weight
  | Page4
  | Pagelines
  | PaintBrush Weight
  | Palfed
  | PaperPlane Weight
  | Paperclip Weight
  | Paragraph Weight
  | Paste Weight
  | Patreon
  | Pause Weight
  | PauseCircle Weight
  | Paw Weight
  | Paypal
  | Pen Weight
  | PenAlt Weight
  | PenSquare Weight
  | Pencil Weight
  | PencilAlt Weight
  | Pennant Weight
  | Percent Weight
  | Periscope
  | Phabricator
  | PhoenixFramework
  | Phone Weight
  | PhoneSlash Weight
  | PhoneSquare Weight
  | PhoneVolume Weight
  | Php
  | PiedPiper
  | PiedPiperAlt
  | PiedPiperPp
  | Pinterest
  | PinterestP
  | PinterestSquare
  | Plane Weight
  | PlaneAlt Weight
  | Play Weight
  | PlayCircle Weight
  | Playstation
  | Plug Weight
  | Plus Weight
  | PlusCircle Weight
  | PlusHexagon Weight
  | PlusOctagon Weight
  | PlusSquare Weight
  | Podcast Weight
  | Poo Weight
  | Portrait Weight
  | PoundSign Weight
  | PowerOff Weight
  | Print Weight
  | ProductHunt
  | Pushed
  | PuzzlePiece Weight
  | Python
  | Qq
  | Qrcode Weight
  | Question Weight
  | QuestionCircle Weight
  | QuestionSquare Weight
  | Quidditch Weight
  | Quinscape
  | Quora
  | QuoteLeft Weight
  | QuoteRight Weight
  | Racquet Weight
  | Random Weight
  | Ravelry
  | React
  | Rebel
  | RectangleLandscape Weight
  | RectanglePortrait Weight
  | RectangleWide Weight
  | Recycle Weight
  | RedRiver
  | Reddit
  | RedditAlien
  | RedditSquare
  | Redo Weight
  | RedoAlt Weight
  | Registered Weight
  | Rendact
  | Renren
  | Repeat Weight
  | Repeat1 Weight
  | Repeat1Alt Weight
  | RepeatAlt Weight
  | Reply Weight
  | ReplyAll Weight
  | Replyd
  | Resolving
  | Retweet Weight
  | RetweetAlt Weight
  | Road Weight
  | Rocket Weight
  | Rocketchat
  | Rockrms
  | Rss Weight
  | RssSquare Weight
  | RubleSign Weight
  | RupeeSign Weight
  | Safari
  | Sass
  | Save Weight
  | Schlix
  | Scribd
  | Scrubber Weight
  | Search Weight
  | SearchMinus Weight
  | SearchPlus Weight
  | Searchengin
  | Sellcast
  | Sellsy
  | Server Weight
  | Servicestack
  | Share Weight
  | ShareAll Weight
  | ShareAlt Weight
  | ShareAltSquare Weight
  | ShareSquare Weight
  | ShekelSign Weight
  | Shield Weight
  | ShieldAlt Weight
  | ShieldCheck Weight
  | Ship Weight
  | Shirtsinbulk
  | ShoppingBag Weight
  | ShoppingBasket Weight
  | ShoppingCart Weight
  | Shower Weight
  | Shuttlecock Weight
  | SignIn Weight
  | SignInAlt Weight
  | SignLanguage Weight
  | SignOut Weight
  | SignOutAlt Weight
  | Signal Weight
  | Simplybuilt
  | Sistrix
  | Sitemap Weight
  | Skyatlas
  | Skype
  | Slack
  | SlackHash
  | SlidersH Weight
  | SlidersHSquare Weight
  | SlidersV Weight
  | SlidersVSquare Weight
  | Slideshare
  | Smile Weight
  | Snapchat
  | SnapchatGhost
  | SnapchatSquare
  | Snowflake Weight
  | Sort Weight
  | SortAlphaDown Weight
  | SortAlphaUp Weight
  | SortAmountDown Weight
  | SortAmountUp Weight
  | SortDown Weight
  | SortNumericDown Weight
  | SortNumericUp Weight
  | SortUp Weight
  | Soundcloud
  | SpaceShuttle Weight
  | Spade Weight
  | Speakap
  | Spinner Weight
  | SpinnerThird Weight
  | Spotify
  | Square Weight
  | SquareFull Weight
  | StackExchange
  | StackOverflow
  | Star Weight
  | StarExclamation Weight
  | StarHalf Weight
  | Staylinked
  | Steam
  | SteamSquare
  | SteamSymbol
  | StepBackward Weight
  | StepForward Weight
  | Stethoscope Weight
  | StickerMule
  | StickyNote Weight
  | Stop Weight
  | StopCircle Weight
  | Stopwatch Weight
  | Strava
  | StreetView Weight
  | Strikethrough Weight
  | Stripe
  | StripeS
  | Studiovinari
  | Stumbleupon
  | StumbleuponCircle
  | Subscript Weight
  | Subway Weight
  | Suitcase Weight
  | Sun Weight
  | Superpowers
  | Superscript Weight
  | Supple
  | Sync Weight
  | SyncAlt Weight
  | Table Weight
  | TableTennis Weight
  | Tablet Weight
  | TabletAlt Weight
  | TabletAndroid Weight
  | TabletAndroidAlt Weight
  | Tachometer Weight
  | TachometerAlt Weight
  | Tag Weight
  | Tags Weight
  | Tasks Weight
  | Taxi Weight
  | Telegram
  | TelegramPlane
  | TencentWeibo
  | TennisBall Weight
  | Terminal Weight
  | TextHeight Weight
  | TextWidth Weight
  | Th Weight
  | ThLarge Weight
  | ThList Weight
  | Themeisle
  | ThermometerEmpty Weight
  | ThermometerFull Weight
  | ThermometerHalf Weight
  | ThermometerQuarter Weight
  | ThermometerThreeQuarters Weight
  | ThumbsDown Weight
  | ThumbsUp Weight
  | Thumbtack Weight
  | Ticket Weight
  | TicketAlt Weight
  | Times Weight
  | TimesCircle Weight
  | TimesHexagon Weight
  | TimesOctagon Weight
  | TimesSquare Weight
  | Tint Weight
  | ToggleOff Weight
  | ToggleOn Weight
  | Trademark Weight
  | Train Weight
  | Transgender Weight
  | TransgenderAlt Weight
  | Trash Weight
  | TrashAlt Weight
  | Tree Weight
  | TreeAlt Weight
  | Trello
  | Triangle Weight
  | Tripadvisor
  | Trophy Weight
  | TrophyAlt Weight
  | Truck Weight
  | Tty Weight
  | Tumblr
  | TumblrSquare
  | Tv Weight
  | TvRetro Weight
  | Twitch
  | Twitter
  | TwitterSquare
  | Typo3
  | Uber
  | Uikit
  | Umbrella Weight
  | Underline Weight
  | Undo Weight
  | UndoAlt Weight
  | Uniregistry
  | UniversalAccess Weight
  | University Weight
  | Unlink Weight
  | Unlock Weight
  | UnlockAlt Weight
  | Untappd
  | Upload Weight
  | Usb
  | UsdCircle Weight
  | UsdSquare Weight
  | User Weight
  | UserAlt Weight
  | UserCircle Weight
  | UserMd Weight
  | UserPlus Weight
  | UserSecret Weight
  | UserTimes Weight
  | Users Weight
  | Ussunnah
  | UtensilFork Weight
  | UtensilKnife Weight
  | UtensilSpoon Weight
  | Utensils Weight
  | UtensilsAlt Weight
  | Vaadin
  | Venus Weight
  | VenusDouble Weight
  | VenusMars Weight
  | Viacoin
  | Viadeo
  | ViadeoSquare
  | Viber
  | Video Weight
  | Vimeo
  | VimeoSquare
  | VimeoV
  | Vine
  | Vk
  | Vnv
  | VolleyballBall Weight
  | VolumeDown Weight
  | VolumeMute Weight
  | VolumeOff Weight
  | VolumeUp Weight
  | Vuejs
  | Watch Weight
  | Weibo
  | Weixin
  | Whatsapp
  | WhatsappSquare
  | Wheelchair Weight
  | Whistle Weight
  | Whmcs
  | Wifi Weight
  | WikipediaW
  | Window Weight
  | WindowAlt Weight
  | WindowClose Weight
  | WindowMaximize Weight
  | WindowMinimize Weight
  | WindowRestore Weight
  | Windows
  | WonSign Weight
  | Wordpress
  | WordpressSimple
  | Wpbeginner
  | Wpexplorer
  | Wpforms
  | Wrench Weight
  | Xbox
  | Xing
  | XingSquare
  | YCombinator
  | Yahoo
  | Yandex
  | YandexInternational
  | Yelp
  | YenSign Weight
  | Yoast
  | Youtube
  | YoutubeSquare
