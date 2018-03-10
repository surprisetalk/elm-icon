
module Icon.IonIcons exposing (..)

-- DOCS ------------------------------------------------------------------------

{-| Learn more at [IonIcons](http://ionicons.com/).

# Stylesheet
@docs stylesheet

# Html
@docs i

# Attributes
@docs toClass, toClassName

# Icons
@docs toString, Icon 

-}


-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char

-- STYLESHEET ------------------------------------------------------------------

{-| Include IonIcons 2.0.1 in your Elm project.

    import Icon.IonIcons as Icon exposing (stylesheet,Icon(..))

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , Icon.i Egg
        ]

-}
stylesheet : Html msg
stylesheet
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
    ]
    []


-- ICONS -----------------------------------------------------------------------

{-| 
    import Icon.IonIcons as Icon exposing (..)

    myLeafIcon : Html msg
    myLeafIcon
      = Icon.i Leaf
-}
i : Icon -> Html msg
i = flip Html.i [] << toAttributes

{-| 
    Icon.toString HelpBuoy
    -- "help-buoy"
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
    Icon.toClassName SoupCan
    -- "ion-soup-can"
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
    in "ion" ++ snakeCase (Basics.toString icon)

{-| 
    Icon.toClassName Bug
    -- Attribute.class "ion-bug"
-}
toClass : Icon -> Attribute msg
toClass = toClassName >> class

{-| -}
type Icon
  = AlertCircled
  | Alert
  | AndroidAddCircle
  | AndroidAdd
  | AndroidAlarmClock
  | AndroidAlert
  | AndroidApps
  | AndroidArchive
  | AndroidArrowBack
  | AndroidArrowDown
  | AndroidArrowDropdownCircle
  | AndroidArrowDropdown
  | AndroidArrowDropleftCircle
  | AndroidArrowDropleft
  | AndroidArrowDroprightCircle
  | AndroidArrowDropright
  | AndroidArrowDropupCircle
  | AndroidArrowDropup
  | AndroidArrowForward
  | AndroidArrowUp
  | AndroidAttach
  | AndroidBar
  | AndroidBicycle
  | AndroidBoat
  | AndroidBookmark
  | AndroidBulb
  | AndroidBus
  | AndroidCalendar
  | AndroidCall
  | AndroidCamera
  | AndroidCancel
  | AndroidCar
  | AndroidCart
  | AndroidChat
  | AndroidCheckboxBlank
  | AndroidCheckboxOutlineBlank
  | AndroidCheckboxOutline
  | AndroidCheckbox
  | AndroidCheckmarkCircle
  | AndroidClipboard
  | AndroidClose
  | AndroidCloudCircle
  | AndroidCloudDone
  | AndroidCloudOutline
  | AndroidCloud
  | AndroidColorPalette
  | AndroidCompass
  | AndroidContact
  | AndroidContacts
  | AndroidContract
  | AndroidCreate
  | AndroidDelete
  | AndroidDesktop
  | AndroidDocument
  | AndroidDoneAll
  | AndroidDone
  | AndroidDownload
  | AndroidDrafts
  | AndroidExit
  | AndroidExpand
  | AndroidFavoriteOutline
  | AndroidFavorite
  | AndroidFilm
  | AndroidFolderOpen
  | AndroidFolder
  | AndroidFunnel
  | AndroidGlobe
  | AndroidHand
  | AndroidHangout
  | AndroidHappy
  | AndroidHome
  | AndroidImage
  | AndroidLaptop
  | AndroidList
  | AndroidLocate
  | AndroidLock
  | AndroidMail
  | AndroidMap
  | AndroidMenu
  | AndroidMicrophoneOff
  | AndroidMicrophone
  | AndroidMoreHorizontal
  | AndroidMoreVertical
  | AndroidNavigate
  | AndroidNotificationsNone
  | AndroidNotificationsOff
  | AndroidNotifications
  | AndroidOpen
  | AndroidOptions
  | AndroidPeople
  | AndroidPersonAdd
  | AndroidPerson
  | AndroidPhoneLandscape
  | AndroidPhonePortrait
  | AndroidPin
  | AndroidPlane
  | AndroidPlaystore
  | AndroidPrint
  | AndroidRadioButtonOff
  | AndroidRadioButtonOn
  | AndroidRefresh
  | AndroidRemoveCircle
  | AndroidRemove
  | AndroidRestaurant
  | AndroidSad
  | AndroidSearch
  | AndroidSend
  | AndroidSettings
  | AndroidShareAlt
  | AndroidShare
  | AndroidStarHalf
  | AndroidStarOutline
  | AndroidStar
  | AndroidStopwatch
  | AndroidSubway
  | AndroidSunny
  | AndroidSync
  | AndroidTextsms
  | AndroidTime
  | AndroidTrain
  | AndroidUnlock
  | AndroidUpload
  | AndroidVolumeDown
  | AndroidVolumeMute
  | AndroidVolumeOff
  | AndroidVolumeUp
  | AndroidWalk
  | AndroidWarning
  | AndroidWatch
  | AndroidWifi
  | Aperture
  | Archive
  | ArrowDownA
  | ArrowDownB
  | ArrowDownC
  | ArrowExpand
  | ArrowGraphDownLeft
  | ArrowGraphDownRight
  | ArrowGraphUpLeft
  | ArrowGraphUpRight
  | ArrowLeftA
  | ArrowLeftB
  | ArrowLeftC
  | ArrowMove
  | ArrowResize
  | ArrowReturnLeft
  | ArrowReturnRight
  | ArrowRightA
  | ArrowRightB
  | ArrowRightC
  | ArrowShrink
  | ArrowSwap
  | ArrowUpA
  | ArrowUpB
  | ArrowUpC
  | Asterisk
  | At
  | BackspaceOutline
  | Backspace
  | Bag
  | BatteryCharging
  | BatteryEmpty
  | BatteryFull
  | BatteryHalf
  | BatteryLow
  | Beaker
  | Beer
  | Bluetooth
  | Bonfire
  | Bookmark
  | Bowtie
  | Briefcase
  | Bug
  | Calculator
  | Calendar
  | Camera
  | Card
  | Cash
  | ChatboxWorking
  | Chatbox
  | Chatboxes
  | ChatbubbleWorking
  | Chatbubble
  | Chatbubbles
  | CheckmarkCircled
  | CheckmarkRound
  | Checkmark
  | ChevronDown
  | ChevronLeft
  | ChevronRight
  | ChevronUp
  | Clipboard
  | Clock
  | CloseCircled
  | CloseRound
  | Close
  | ClosedCaptioning
  | Cloud
  | CodeDownload
  | CodeWorking
  | Code
  | Coffee
  | Compass
  | Compose
  | ConnectionBars
  | Contrast
  | Crop
  | Cube
  | Disc
  | DocumentText
  | Document
  | Drag
  | Earth
  | Easel
  | Edit
  | Egg
  | Eject
  | EmailUnread
  | Email
  | ErlenmeyerFlaskBubbles
  | ErlenmeyerFlask
  | EyeDisabled
  | Eye
  | Female
  | Filing
  | FilmMarker
  | Fireball
  | Flag
  | Flame
  | FlashOff
  | Flash
  | Folder
  | ForkRepo
  | Fork
  | Forward
  | Funnel
  | GearA
  | GearB
  | Grid
  | Hammer
  | HappyOutline
  | Happy
  | Headphone
  | HeartBroken
  | Heart
  | HelpBuoy
  | HelpCircled
  | Help
  | Home
  | Icecream
  | Image
  | Images
  | InformationCircled
  | Information
  | Ionic
  | IosAlarmOutline
  | IosAlarm
  | IosAlbumsOutline
  | IosAlbums
  | IosAmericanfootballOutline
  | IosAmericanfootball
  | IosAnalyticsOutline
  | IosAnalytics
  | IosArrowBack
  | IosArrowDown
  | IosArrowForward
  | IosArrowLeft
  | IosArrowRight
  | IosArrowThinDown
  | IosArrowThinLeft
  | IosArrowThinRight
  | IosArrowThinUp
  | IosArrowUp
  | IosAtOutline
  | IosAt
  | IosBarcodeOutline
  | IosBarcode
  | IosBaseballOutline
  | IosBaseball
  | IosBasketballOutline
  | IosBasketball
  | IosBellOutline
  | IosBell
  | IosBodyOutline
  | IosBody
  | IosBoltOutline
  | IosBolt
  | IosBookOutline
  | IosBook
  | IosBookmarksOutline
  | IosBookmarks
  | IosBoxOutline
  | IosBox
  | IosBriefcaseOutline
  | IosBriefcase
  | IosBrowsersOutline
  | IosBrowsers
  | IosCalculatorOutline
  | IosCalculator
  | IosCalendarOutline
  | IosCalendar
  | IosCameraOutline
  | IosCamera
  | IosCartOutline
  | IosCart
  | IosChatboxesOutline
  | IosChatboxes
  | IosChatbubbleOutline
  | IosChatbubble
  | IosCheckmarkEmpty
  | IosCheckmarkOutline
  | IosCheckmark
  | IosCircleFilled
  | IosCircleOutline
  | IosClockOutline
  | IosClock
  | IosCloseEmpty
  | IosCloseOutline
  | IosClose
  | IosCloudDownloadOutline
  | IosCloudDownload
  | IosCloudOutline
  | IosCloudUploadOutline
  | IosCloudUpload
  | IosCloud
  | IosCloudyNightOutline
  | IosCloudyNight
  | IosCloudyOutline
  | IosCloudy
  | IosCogOutline
  | IosCog
  | IosColorFilterOutline
  | IosColorFilter
  | IosColorWandOutline
  | IosColorWand
  | IosComposeOutline
  | IosCompose
  | IosContactOutline
  | IosContact
  | IosCopyOutline
  | IosCopy
  | IosCropStrong
  | IosCrop
  | IosDownloadOutline
  | IosDownload
  | IosDrag
  | IosEmailOutline
  | IosEmail
  | IosEyeOutline
  | IosEye
  | IosFastforwardOutline
  | IosFastforward
  | IosFilingOutline
  | IosFiling
  | IosFilmOutline
  | IosFilm
  | IosFlagOutline
  | IosFlag
  | IosFlameOutline
  | IosFlame
  | IosFlaskOutline
  | IosFlask
  | IosFlowerOutline
  | IosFlower
  | IosFolderOutline
  | IosFolder
  | IosFootballOutline
  | IosFootball
  | IosGameControllerAOutline
  | IosGameControllerA
  | IosGameControllerBOutline
  | IosGameControllerB
  | IosGearOutline
  | IosGear
  | IosGlassesOutline
  | IosGlasses
  | IosGridViewOutline
  | IosGridView
  | IosHeartOutline
  | IosHeart
  | IosHelpEmpty
  | IosHelpOutline
  | IosHelp
  | IosHomeOutline
  | IosHome
  | IosInfiniteOutline
  | IosInfinite
  | IosInformationEmpty
  | IosInformationOutline
  | IosInformation
  | IosIonicOutline
  | IosKeypadOutline
  | IosKeypad
  | IosLightbulbOutline
  | IosLightbulb
  | IosListOutline
  | IosList
  | IosLocationOutline
  | IosLocation
  | IosLockedOutline
  | IosLocked
  | IosLoopStrong
  | IosLoop
  | IosMedicalOutline
  | IosMedical
  | IosMedkitOutline
  | IosMedkit
  | IosMicOff
  | IosMicOutline
  | IosMic
  | IosMinusEmpty
  | IosMinusOutline
  | IosMinus
  | IosMonitorOutline
  | IosMonitor
  | IosMoonOutline
  | IosMoon
  | IosMoreOutline
  | IosMore
  | IosMusicalNote
  | IosMusicalNotes
  | IosNavigateOutline
  | IosNavigate
  | IosNutritionOutline
  | IosNutrition
  | IosPaperOutline
  | IosPaper
  | IosPaperplaneOutline
  | IosPaperplane
  | IosPartlysunnyOutline
  | IosPartlysunny
  | IosPauseOutline
  | IosPause
  | IosPawOutline
  | IosPaw
  | IosPeopleOutline
  | IosPeople
  | IosPersonOutline
  | IosPerson
  | IosPersonaddOutline
  | IosPersonadd
  | IosPhotosOutline
  | IosPhotos
  | IosPieOutline
  | IosPie
  | IosPintOutline
  | IosPint
  | IosPlayOutline
  | IosPlay
  | IosPlusEmpty
  | IosPlusOutline
  | IosPlus
  | IosPricetagOutline
  | IosPricetag
  | IosPricetagsOutline
  | IosPricetags
  | IosPrinterOutline
  | IosPrinter
  | IosPulseStrong
  | IosPulse
  | IosRainyOutline
  | IosRainy
  | IosRecordingOutline
  | IosRecording
  | IosRedoOutline
  | IosRedo
  | IosRefreshEmpty
  | IosRefreshOutline
  | IosRefresh
  | IosReload
  | IosReverseCameraOutline
  | IosReverseCamera
  | IosRewindOutline
  | IosRewind
  | IosRoseOutline
  | IosRose
  | IosSearchStrong
  | IosSearch
  | IosSettingsStrong
  | IosSettings
  | IosShuffleStrong
  | IosShuffle
  | IosSkipbackwardOutline
  | IosSkipbackward
  | IosSkipforwardOutline
  | IosSkipforward
  | IosSnowy
  | IosSpeedometerOutline
  | IosSpeedometer
  | IosStarHalf
  | IosStarOutline
  | IosStar
  | IosStopwatchOutline
  | IosStopwatch
  | IosSunnyOutline
  | IosSunny
  | IosTelephoneOutline
  | IosTelephone
  | IosTennisballOutline
  | IosTennisball
  | IosThunderstormOutline
  | IosThunderstorm
  | IosTimeOutline
  | IosTime
  | IosTimerOutline
  | IosTimer
  | IosToggleOutline
  | IosToggle
  | IosTrashOutline
  | IosTrash
  | IosUndoOutline
  | IosUndo
  | IosUnlockedOutline
  | IosUnlocked
  | IosUploadOutline
  | IosUpload
  | IosVideocamOutline
  | IosVideocam
  | IosVolumeHigh
  | IosVolumeLow
  | IosWineglassOutline
  | IosWineglass
  | IosWorldOutline
  | IosWorld
  | Ipad
  | Iphone
  | Ipod
  | Jet
  | Key
  | Knife
  | Laptop
  | Leaf
  | Levels
  | Lightbulb
  | Link
  | LoadA
  | LoadB
  | LoadC
  | LoadD
  | Location
  | LockCombination
  | Locked
  | LogIn
  | LogOut
  | Loop
  | Magnet
  | Male
  | Man
  | Map
  | Medkit
  | Merge
  | MicA
  | MicB
  | MicC
  | MinusCircled
  | MinusRound
  | Minus
  | ModelS
  | Monitor
  | More
  | Mouse
  | MusicNote
  | NaviconRound
  | Navicon
  | Navigate
  | Network
  | NoSmoking
  | Nuclear
  | Outlet
  | Paintbrush
  | Paintbucket
  | PaperAirplane
  | Paperclip
  | Pause
  | PersonAdd
  | PersonStalker
  | Person
  | PieGraph
  | Pin
  | Pinpoint
  | Pizza
  | Plane
  | Planet
  | Play
  | Playstation
  | PlusCircled
  | PlusRound
  | Plus
  | Podium
  | Pound
  | Power
  | Pricetag
  | Pricetags
  | Printer
  | PullRequest
  | QrScanner
  | Quote
  | RadioWaves
  | Record
  | Refresh
  | ReplyAll
  | Reply
  | RibbonA
  | RibbonB
  | SadOutline
  | Sad
  | Scissors
  | Search
  | Settings
  | Share
  | Shuffle
  | SkipBackward
  | SkipForward
  | SocialAndroidOutline
  | SocialAndroid
  | SocialAngularOutline
  | SocialAngular
  | SocialAppleOutline
  | SocialApple
  | SocialBitcoinOutline
  | SocialBitcoin
  | SocialBufferOutline
  | SocialBuffer
  | SocialChromeOutline
  | SocialChrome
  | SocialCodepenOutline
  | SocialCodepen
  | SocialCss3Outline
  | SocialCss3
  | SocialDesignernewsOutline
  | SocialDesignernews
  | SocialDribbbleOutline
  | SocialDribbble
  | SocialDropboxOutline
  | SocialDropbox
  | SocialEuroOutline
  | SocialEuro
  | SocialFacebookOutline
  | SocialFacebook
  | SocialFoursquareOutline
  | SocialFoursquare
  | SocialFreebsdDevil
  | SocialGithubOutline
  | SocialGithub
  | SocialGoogleOutline
  | SocialGoogle
  | SocialGoogleplusOutline
  | SocialGoogleplus
  | SocialHackernewsOutline
  | SocialHackernews
  | SocialHtml5Outline
  | SocialHtml5
  | SocialInstagramOutline
  | SocialInstagram
  | SocialJavascriptOutline
  | SocialJavascript
  | SocialLinkedinOutline
  | SocialLinkedin
  | SocialMarkdown
  | SocialNodejs
  | SocialOctocat
  | SocialPinterestOutline
  | SocialPinterest
  | SocialPython
  | SocialRedditOutline
  | SocialReddit
  | SocialRssOutline
  | SocialRss
  | SocialSass
  | SocialSkypeOutline
  | SocialSkype
  | SocialSnapchatOutline
  | SocialSnapchat
  | SocialTumblrOutline
  | SocialTumblr
  | SocialTux
  | SocialTwitchOutline
  | SocialTwitch
  | SocialTwitterOutline
  | SocialTwitter
  | SocialUsdOutline
  | SocialUsd
  | SocialVimeoOutline
  | SocialVimeo
  | SocialWhatsappOutline
  | SocialWhatsapp
  | SocialWindowsOutline
  | SocialWindows
  | SocialWordpressOutline
  | SocialWordpress
  | SocialYahooOutline
  | SocialYahoo
  | SocialYenOutline
  | SocialYen
  | SocialYoutubeOutline
  | SocialYoutube
  | SoupCanOutline
  | SoupCan
  | Speakerphone
  | Speedometer
  | Spoon
  | Star
  | StatsBars
  | Steam
  | Stop
  | Thermometer
  | Thumbsdown
  | Thumbsup
  | ToggleFilled
  | Toggle
  | Transgender
  | TrashA
  | TrashB
  | Trophy
  | TshirtOutline
  | Tshirt
  | Umbrella
  | University
  | Unlocked
  | Upload
  | Usb
  | Videocamera
  | VolumeHigh
  | VolumeLow
  | VolumeMedium
  | VolumeMute
  | Wand
  | Waterdrop
  | Wifi
  | Wineglass
  | Woman
  | Wrench
  | Xbox
