
module Icon.FontAwesome exposing (..)

-- DOCS ------------------------------------------------------------------------

{-| TODO

@docs Animation
@docs HorizontalPosition
@docs Icon
@docs Layer
@docs Position
@docs Scale
@docs Size
@docs Style
@docs Transform
@docs VerticalPosition
@docs Weight
@docs cdn
@docs i
@docs layers
@docs mask
@docs toAttributes
@docs toString

-}

-- TODO: support for 4.7


-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char

import Debug


-- CDN -------------------------------------------------------------------------

{-| TODO
-}
cdn : Html msg
cdn
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "https://use.fontawesome.com/releases/v5.0.6/css/all.css"
    ]
    []


-- ICONS -----------------------------------------------------------------------

{-| TODO
-}
i : Style msg -> Icon -> Html msg
i style icon
  = Html.i (toAttributes style icon) []

-- {-| TODO
-- -}
-- i_ : Style msg -> (Weight -> Icon) -> Html msg
-- i_ style icon
-- -- recommend a separate function like this to those who don't need the icon weights
--   = Html.i (toAttributes style (icon Regular)) []

{-| TODO
-}
layers : List (Attribute msg) -> List (Layer msg) -> Html msg
layers attrs
-- BUG: we should be able to use styles on the composite icon
  = Html.span [ class "fa-layers fa-fw" ]
    << List.map
      (\layer ->
        case layer of
          _ -> Html.text "TODO"
          -- LayerIcon    style icon -> i style icon
          -- LayerText    style text -> Html.span 
          -- LayerCounter style icon -> Html.span
      )

type alias LayerStyle transform msg
  = { size       : Maybe Size
    , transform  : Maybe transform
    , inverted   : Bool
    , attributes : List (Attribute msg)
    }

{-| TODO
-}
type Layer msg
  = LayerIcon    (LayerStyle Transform msg) Icon
  | LayerText    (LayerStyle Transform msg) String
  | LayerCounter (LayerStyle Corner    msg) String

{-| TODO
-}
mask : Style msg -> Icon -> Icon -> Html msg
mask style i i_
  = Html.i (Attr.attribute "data-fa-mask" (toClassName i_) :: toAttributes style i) []

-- ul : List (Attribute msg) -> List (Html msg) -> Html msg
-- ul attrs body
--   = Html.ul (class "fa-ul" :: attrs) body

-- li : Style -> Icon -> List (Attribute msg) -> List (Html msg) -> Html msg
-- -- KLUDGE: we could also just make this accept plain html...
-- li style i attrs body
--   = Html.li attrs
--     <| span [ class "fa-li" ] [ icon style i ]

{-| TODO
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

{-| TODO
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

toClass : Icon -> Attribute msg
toClass = toClassName >> class

{-| TODO
-}
toAttributes : Style msg -> Icon -> List (Attribute msg)
toAttributes _ _ = [ Attr.attribute "" "" ]

{-| TODO
-}
type alias Style msg
  = { size       : Maybe Size
    , fixedWidth : Bool
    , bordered   : Bool
    , inverted   : Bool
    , pull       : Maybe (ShiftX ())
    , animation  : Maybe Animation
    , transform  : Maybe Transform
    , attributes : List (Attribute msg)
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
  = { scale  : Maybe ( Scale Float)
    , shiftX : Maybe (ShiftX Float)
    , shiftY : Maybe (ShiftY Float)
    , rotate : Maybe (       Float)
    }

{-| TODO
-}
type Scale a
  = Grow   a
  | Shrink a

type alias Corner
  = ( ShiftX ()
    , ShiftY ()
    )

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

{-| TODO
-}
type Weight
  = Solid
  | Regular
  | Light

{-| TODO
-}
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
