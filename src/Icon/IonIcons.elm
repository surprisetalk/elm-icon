
module Icon.IonIcons exposing (..)

-- DOCS ------------------------------------------------------------------------

{-| Learn more at [IonIcons](http://ionicons.com/).

    import Icon.IonIcons as Icon 
      exposing ( stylesheet
               , Icon(Spoon)
               , spoon
               )

    spoonIcon1 : Html msg
    spoonIcon1 = Html.i [] Spoon

    spoonIcon2 : Html msg
    spoonIcon2 = spoon

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , spoonIcon1
        , spoonIcon2
        ]

# Stylesheet
@docs stylesheet

# Html
@docs i

# Attributes
@docs toClass, toClassName

# Icons
@docs toString

## HTML Helpers
@docs alert, alertCircled, androidAdd, androidAddCircle, androidAlarmClock, androidAlert, androidApps, androidArchive, androidArrowBack, androidArrowDown, androidArrowDropdown, androidArrowDropdownCircle, androidArrowDropleft, androidArrowDropleftCircle, androidArrowDropright, androidArrowDroprightCircle, androidArrowDropup, androidArrowDropupCircle, androidArrowForward, androidArrowUp, androidAttach, androidBar, androidBicycle, androidBoat, androidBookmark, androidBulb, androidBus, androidCalendar, androidCall, androidCamera, androidCancel, androidCar, androidCart, androidChat, androidCheckbox, androidCheckboxBlank, androidCheckboxOutline, androidCheckboxOutlineBlank, androidCheckmarkCircle, androidClipboard, androidClose, androidCloud, androidCloudCircle, androidCloudDone, androidCloudOutline, androidColorPalette, androidCompass, androidContact, androidContacts, androidContract, androidCreate, androidDelete, androidDesktop, androidDocument, androidDone, androidDoneAll, androidDownload, androidDrafts, androidExit, androidExpand, androidFavorite, androidFavoriteOutline, androidFilm, androidFolder, androidFolderOpen, androidFunnel, androidGlobe, androidHand, androidHangout, androidHappy, androidHome, androidImage, androidLaptop, androidList, androidLocate, androidLock, androidMail, androidMap, androidMenu, androidMicrophone, androidMicrophoneOff, androidMoreHorizontal, androidMoreVertical, androidNavigate, androidNotifications, androidNotificationsNone, androidNotificationsOff, androidOpen, androidOptions, androidPeople, androidPerson, androidPersonAdd, androidPhoneLandscape, androidPhonePortrait, androidPin, androidPlane, androidPlaystore, androidPrint, androidRadioButtonOff, androidRadioButtonOn, androidRefresh, androidRemove, androidRemoveCircle, androidRestaurant, androidSad, androidSearch, androidSend, androidSettings, androidShare, androidShareAlt, androidStar, androidStarHalf, androidStarOutline, androidStopwatch, androidSubway, androidSunny, androidSync, androidTextsms, androidTime, androidTrain, androidUnlock, androidUpload, androidVolumeDown, androidVolumeMute, androidVolumeOff, androidVolumeUp, androidWalk, androidWarning, androidWatch, androidWifi, aperture, archive, arrowDownA, arrowDownB, arrowDownC, arrowExpand, arrowGraphDownLeft, arrowGraphDownRight, arrowGraphUpLeft, arrowGraphUpRight, arrowLeftA, arrowLeftB, arrowLeftC, arrowMove, arrowResize, arrowReturnLeft, arrowReturnRight, arrowRightA, arrowRightB, arrowRightC, arrowShrink, arrowSwap, arrowUpA, arrowUpB, arrowUpC, asterisk, at, backspace, backspaceOutline, bag, batteryCharging, batteryEmpty, batteryFull, batteryHalf, batteryLow, beaker, beer, bluetooth, bonfire, bookmark, bowtie, briefcase, bug, calculator, calendar, camera, card, cash, chatbox, chatboxWorking, chatboxes, chatbubble, chatbubbleWorking, chatbubbles, checkmark, checkmarkCircled, checkmarkRound, chevronDown, chevronLeft, chevronRight, chevronUp, clipboard, clock, close, closeCircled, closeRound, closedCaptioning, cloud, code, codeDownload, codeWorking, coffee, compass, compose, connectionBars, contrast, crop, cube, disc, document, documentText, drag, earth, easel, edit, egg, eject, email, emailUnread, erlenmeyerFlask, erlenmeyerFlaskBubbles, eye, eyeDisabled, female, filing, filmMarker, fireball, flag, flame, flash, flashOff, folder, fork, forkRepo, forward, funnel, gearA, gearB, grid, hammer, happy, happyOutline, headphone, heart, heartBroken, help, helpBuoy, helpCircled, home, icecream, image, images, information, informationCircled, ionic, iosAlarm, iosAlarmOutline, iosAlbums, iosAlbumsOutline, iosAmericanfootball, iosAmericanfootballOutline, iosAnalytics, iosAnalyticsOutline, iosArrowBack, iosArrowDown, iosArrowForward, iosArrowLeft, iosArrowRight, iosArrowThinDown, iosArrowThinLeft, iosArrowThinRight, iosArrowThinUp, iosArrowUp, iosAt, iosAtOutline, iosBarcode, iosBarcodeOutline, iosBaseball, iosBaseballOutline, iosBasketball, iosBasketballOutline, iosBell, iosBellOutline, iosBody, iosBodyOutline, iosBolt, iosBoltOutline, iosBook, iosBookOutline, iosBookmarks, iosBookmarksOutline, iosBox, iosBoxOutline, iosBriefcase, iosBriefcaseOutline, iosBrowsers, iosBrowsersOutline, iosCalculator, iosCalculatorOutline, iosCalendar, iosCalendarOutline, iosCamera, iosCameraOutline, iosCart, iosCartOutline, iosChatboxes, iosChatboxesOutline, iosChatbubble, iosChatbubbleOutline, iosCheckmark, iosCheckmarkEmpty, iosCheckmarkOutline, iosCircleFilled, iosCircleOutline, iosClock, iosClockOutline, iosClose, iosCloseEmpty, iosCloseOutline, iosCloud, iosCloudDownload, iosCloudDownloadOutline, iosCloudOutline, iosCloudUpload, iosCloudUploadOutline, iosCloudy, iosCloudyNight, iosCloudyNightOutline, iosCloudyOutline, iosCog, iosCogOutline, iosColorFilter, iosColorFilterOutline, iosColorWand, iosColorWandOutline, iosCompose, iosComposeOutline, iosContact, iosContactOutline, iosCopy, iosCopyOutline, iosCrop, iosCropStrong, iosDownload, iosDownloadOutline, iosDrag, iosEmail, iosEmailOutline, iosEye, iosEyeOutline, iosFastforward, iosFastforwardOutline, iosFiling, iosFilingOutline, iosFilm, iosFilmOutline, iosFlag, iosFlagOutline, iosFlame, iosFlameOutline, iosFlask, iosFlaskOutline, iosFlower, iosFlowerOutline, iosFolder, iosFolderOutline, iosFootball, iosFootballOutline, iosGameControllerA, iosGameControllerAOutline, iosGameControllerB, iosGameControllerBOutline, iosGear, iosGearOutline, iosGlasses, iosGlassesOutline, iosGridView, iosGridViewOutline, iosHeart, iosHeartOutline, iosHelp, iosHelpEmpty, iosHelpOutline, iosHome, iosHomeOutline, iosInfinite, iosInfiniteOutline, iosInformation, iosInformationEmpty, iosInformationOutline, iosIonicOutline, iosKeypad, iosKeypadOutline, iosLightbulb, iosLightbulbOutline, iosList, iosListOutline, iosLocation, iosLocationOutline, iosLocked, iosLockedOutline, iosLoop, iosLoopStrong, iosMedical, iosMedicalOutline, iosMedkit, iosMedkitOutline, iosMic, iosMicOff, iosMicOutline, iosMinus, iosMinusEmpty, iosMinusOutline, iosMonitor, iosMonitorOutline, iosMoon, iosMoonOutline, iosMore, iosMoreOutline, iosMusicalNote, iosMusicalNotes, iosNavigate, iosNavigateOutline, iosNutrition, iosNutritionOutline, iosPaper, iosPaperOutline, iosPaperplane, iosPaperplaneOutline, iosPartlysunny, iosPartlysunnyOutline, iosPause, iosPauseOutline, iosPaw, iosPawOutline, iosPeople, iosPeopleOutline, iosPerson, iosPersonOutline, iosPersonadd, iosPersonaddOutline, iosPhotos, iosPhotosOutline, iosPie, iosPieOutline, iosPint, iosPintOutline, iosPlay, iosPlayOutline, iosPlus, iosPlusEmpty, iosPlusOutline, iosPricetag, iosPricetagOutline, iosPricetags, iosPricetagsOutline, iosPrinter, iosPrinterOutline, iosPulse, iosPulseStrong, iosRainy, iosRainyOutline, iosRecording, iosRecordingOutline, iosRedo, iosRedoOutline, iosRefresh, iosRefreshEmpty, iosRefreshOutline, iosReload, iosReverseCamera, iosReverseCameraOutline, iosRewind, iosRewindOutline, iosRose, iosRoseOutline, iosSearch, iosSearchStrong, iosSettings, iosSettingsStrong, iosShuffle, iosShuffleStrong, iosSkipbackward, iosSkipbackwardOutline, iosSkipforward, iosSkipforwardOutline, iosSnowy, iosSpeedometer, iosSpeedometerOutline, iosStar, iosStarHalf, iosStarOutline, iosStopwatch, iosStopwatchOutline, iosSunny, iosSunnyOutline, iosTelephone, iosTelephoneOutline, iosTennisball, iosTennisballOutline, iosThunderstorm, iosThunderstormOutline, iosTime, iosTimeOutline, iosTimer, iosTimerOutline, iosToggle, iosToggleOutline, iosTrash, iosTrashOutline, iosUndo, iosUndoOutline, iosUnlocked, iosUnlockedOutline, iosUpload, iosUploadOutline, iosVideocam, iosVideocamOutline, iosVolumeHigh, iosVolumeLow, iosWineglass, iosWineglassOutline, iosWorld, iosWorldOutline, ipad, iphone, ipod, jet, key, knife, laptop, leaf, levels, lightbulb, link, loadA, loadB, loadC, loadD, location, lockCombination, locked, logIn, logOut, loop, magnet, male, man, map, medkit, merge, micA, micB, micC, minus, minusCircled, minusRound, modelS, monitor, more, mouse, musicNote, navicon, naviconRound, navigate, network, noSmoking, nuclear, outlet, paintbrush, paintbucket, paperAirplane, paperclip, pause, person, personAdd, personStalker, pieGraph, pin, pinpoint, pizza, plane, planet, play, playstation, plus, plusCircled, plusRound, podium, pound, power, pricetag, pricetags, printer, pullRequest, qrScanner, quote, radioWaves, record, refresh, reply, replyAll, ribbonA, ribbonB, sad, sadOutline, scissors, search, settings, share, shuffle, skipBackward, skipForward, socialAndroid, socialAndroidOutline, socialAngular, socialAngularOutline, socialApple, socialAppleOutline, socialBitcoin, socialBitcoinOutline, socialBuffer, socialBufferOutline, socialChrome, socialChromeOutline, socialCodepen, socialCodepenOutline, socialCss3, socialCss3Outline, socialDesignernews, socialDesignernewsOutline, socialDribbble, socialDribbbleOutline, socialDropbox, socialDropboxOutline, socialEuro, socialEuroOutline, socialFacebook, socialFacebookOutline, socialFoursquare, socialFoursquareOutline, socialFreebsdDevil, socialGithub, socialGithubOutline, socialGoogle, socialGoogleOutline, socialGoogleplus, socialGoogleplusOutline, socialHackernews, socialHackernewsOutline, socialHtml5, socialHtml5Outline, socialInstagram, socialInstagramOutline, socialJavascript, socialJavascriptOutline, socialLinkedin, socialLinkedinOutline, socialMarkdown, socialNodejs, socialOctocat, socialPinterest, socialPinterestOutline, socialPython, socialReddit, socialRedditOutline, socialRss, socialRssOutline, socialSass, socialSkype, socialSkypeOutline, socialSnapchat, socialSnapchatOutline, socialTumblr, socialTumblrOutline, socialTux, socialTwitch, socialTwitchOutline, socialTwitter, socialTwitterOutline, socialUsd, socialUsdOutline, socialVimeo, socialVimeoOutline, socialWhatsapp, socialWhatsappOutline, socialWindows, socialWindowsOutline, socialWordpress, socialWordpressOutline, socialYahoo, socialYahooOutline, socialYen, socialYenOutline, socialYoutube, socialYoutubeOutline, soupCan, soupCanOutline, speakerphone, speedometer, spoon, star, statsBars, steam, stop, thermometer, thumbsdown, thumbsup, toggle, toggleFilled, transgender, trashA, trashB, trophy, tshirt, tshirtOutline, umbrella, university, unlocked, upload, usb, videocamera, volumeHigh, volumeLow, volumeMedium, volumeMute, wand, waterdrop, wifi, wineglass, woman, wrench, xbox

## Union Type
@docs Icon

-}


-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char

-- STYLESHEET ------------------------------------------------------------------

{-| <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>
Include IonIcons 2.0.1 in your Elm project.

    import Icon.IonIcons as Icon exposing (stylesheet,Icon(..))

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , Icon.i [] Egg
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
      = Icon.i [] Leaf
-}
i : List (Attribute msg) -> Icon -> Html msg
i attrs icon = Html.i (toClass icon :: attrs) []


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
    Icon.toClass Bug
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

{-| <i class="ion-alert-circled"></i> -}
alertCircled : Html msg
alertCircled = i [] AlertCircled
{-| <i class="ion-alert"></i> -}
alert : Html msg
alert = i [] Alert
{-| <i class="ion-android-add-circle"></i> -}
androidAddCircle : Html msg
androidAddCircle = i [] AndroidAddCircle
{-| <i class="ion-android-add"></i> -}
androidAdd : Html msg
androidAdd = i [] AndroidAdd
{-| <i class="ion-android-alarm-clock"></i> -}
androidAlarmClock : Html msg
androidAlarmClock = i [] AndroidAlarmClock
{-| <i class="ion-android-alert"></i> -}
androidAlert : Html msg
androidAlert = i [] AndroidAlert
{-| <i class="ion-android-apps"></i> -}
androidApps : Html msg
androidApps = i [] AndroidApps
{-| <i class="ion-android-archive"></i> -}
androidArchive : Html msg
androidArchive = i [] AndroidArchive
{-| <i class="ion-android-arrow-back"></i> -}
androidArrowBack : Html msg
androidArrowBack = i [] AndroidArrowBack
{-| <i class="ion-android-arrow-down"></i> -}
androidArrowDown : Html msg
androidArrowDown = i [] AndroidArrowDown
{-| <i class="ion-android-arrow-dropdown-circle"></i> -}
androidArrowDropdownCircle : Html msg
androidArrowDropdownCircle = i [] AndroidArrowDropdownCircle
{-| <i class="ion-android-arrow-dropdown"></i> -}
androidArrowDropdown : Html msg
androidArrowDropdown = i [] AndroidArrowDropdown
{-| <i class="ion-android-arrow-dropleft-circle"></i> -}
androidArrowDropleftCircle : Html msg
androidArrowDropleftCircle = i [] AndroidArrowDropleftCircle
{-| <i class="ion-android-arrow-dropleft"></i> -}
androidArrowDropleft : Html msg
androidArrowDropleft = i [] AndroidArrowDropleft
{-| <i class="ion-android-arrow-dropright-circle"></i> -}
androidArrowDroprightCircle : Html msg
androidArrowDroprightCircle = i [] AndroidArrowDroprightCircle
{-| <i class="ion-android-arrow-dropright"></i> -}
androidArrowDropright : Html msg
androidArrowDropright = i [] AndroidArrowDropright
{-| <i class="ion-android-arrow-dropup-circle"></i> -}
androidArrowDropupCircle : Html msg
androidArrowDropupCircle = i [] AndroidArrowDropupCircle
{-| <i class="ion-android-arrow-dropup"></i> -}
androidArrowDropup : Html msg
androidArrowDropup = i [] AndroidArrowDropup
{-| <i class="ion-android-arrow-forward"></i> -}
androidArrowForward : Html msg
androidArrowForward = i [] AndroidArrowForward
{-| <i class="ion-android-arrow-up"></i> -}
androidArrowUp : Html msg
androidArrowUp = i [] AndroidArrowUp
{-| <i class="ion-android-attach"></i> -}
androidAttach : Html msg
androidAttach = i [] AndroidAttach
{-| <i class="ion-android-bar"></i> -}
androidBar : Html msg
androidBar = i [] AndroidBar
{-| <i class="ion-android-bicycle"></i> -}
androidBicycle : Html msg
androidBicycle = i [] AndroidBicycle
{-| <i class="ion-android-boat"></i> -}
androidBoat : Html msg
androidBoat = i [] AndroidBoat
{-| <i class="ion-android-bookmark"></i> -}
androidBookmark : Html msg
androidBookmark = i [] AndroidBookmark
{-| <i class="ion-android-bulb"></i> -}
androidBulb : Html msg
androidBulb = i [] AndroidBulb
{-| <i class="ion-android-bus"></i> -}
androidBus : Html msg
androidBus = i [] AndroidBus
{-| <i class="ion-android-calendar"></i> -}
androidCalendar : Html msg
androidCalendar = i [] AndroidCalendar
{-| <i class="ion-android-call"></i> -}
androidCall : Html msg
androidCall = i [] AndroidCall
{-| <i class="ion-android-camera"></i> -}
androidCamera : Html msg
androidCamera = i [] AndroidCamera
{-| <i class="ion-android-cancel"></i> -}
androidCancel : Html msg
androidCancel = i [] AndroidCancel
{-| <i class="ion-android-car"></i> -}
androidCar : Html msg
androidCar = i [] AndroidCar
{-| <i class="ion-android-cart"></i> -}
androidCart : Html msg
androidCart = i [] AndroidCart
{-| <i class="ion-android-chat"></i> -}
androidChat : Html msg
androidChat = i [] AndroidChat
{-| <i class="ion-android-checkbox-blank"></i> -}
androidCheckboxBlank : Html msg
androidCheckboxBlank = i [] AndroidCheckboxBlank
{-| <i class="ion-android-checkbox-outline-blank"></i> -}
androidCheckboxOutlineBlank : Html msg
androidCheckboxOutlineBlank = i [] AndroidCheckboxOutlineBlank
{-| <i class="ion-android-checkbox-outline"></i> -}
androidCheckboxOutline : Html msg
androidCheckboxOutline = i [] AndroidCheckboxOutline
{-| <i class="ion-android-checkbox"></i> -}
androidCheckbox : Html msg
androidCheckbox = i [] AndroidCheckbox
{-| <i class="ion-android-checkmark-circle"></i> -}
androidCheckmarkCircle : Html msg
androidCheckmarkCircle = i [] AndroidCheckmarkCircle
{-| <i class="ion-android-clipboard"></i> -}
androidClipboard : Html msg
androidClipboard = i [] AndroidClipboard
{-| <i class="ion-android-close"></i> -}
androidClose : Html msg
androidClose = i [] AndroidClose
{-| <i class="ion-android-cloud-circle"></i> -}
androidCloudCircle : Html msg
androidCloudCircle = i [] AndroidCloudCircle
{-| <i class="ion-android-cloud-done"></i> -}
androidCloudDone : Html msg
androidCloudDone = i [] AndroidCloudDone
{-| <i class="ion-android-cloud-outline"></i> -}
androidCloudOutline : Html msg
androidCloudOutline = i [] AndroidCloudOutline
{-| <i class="ion-android-cloud"></i> -}
androidCloud : Html msg
androidCloud = i [] AndroidCloud
{-| <i class="ion-android-color-palette"></i> -}
androidColorPalette : Html msg
androidColorPalette = i [] AndroidColorPalette
{-| <i class="ion-android-compass"></i> -}
androidCompass : Html msg
androidCompass = i [] AndroidCompass
{-| <i class="ion-android-contact"></i> -}
androidContact : Html msg
androidContact = i [] AndroidContact
{-| <i class="ion-android-contacts"></i> -}
androidContacts : Html msg
androidContacts = i [] AndroidContacts
{-| <i class="ion-android-contract"></i> -}
androidContract : Html msg
androidContract = i [] AndroidContract
{-| <i class="ion-android-create"></i> -}
androidCreate : Html msg
androidCreate = i [] AndroidCreate
{-| <i class="ion-android-delete"></i> -}
androidDelete : Html msg
androidDelete = i [] AndroidDelete
{-| <i class="ion-android-desktop"></i> -}
androidDesktop : Html msg
androidDesktop = i [] AndroidDesktop
{-| <i class="ion-android-document"></i> -}
androidDocument : Html msg
androidDocument = i [] AndroidDocument
{-| <i class="ion-android-done-all"></i> -}
androidDoneAll : Html msg
androidDoneAll = i [] AndroidDoneAll
{-| <i class="ion-android-done"></i> -}
androidDone : Html msg
androidDone = i [] AndroidDone
{-| <i class="ion-android-download"></i> -}
androidDownload : Html msg
androidDownload = i [] AndroidDownload
{-| <i class="ion-android-drafts"></i> -}
androidDrafts : Html msg
androidDrafts = i [] AndroidDrafts
{-| <i class="ion-android-exit"></i> -}
androidExit : Html msg
androidExit = i [] AndroidExit
{-| <i class="ion-android-expand"></i> -}
androidExpand : Html msg
androidExpand = i [] AndroidExpand
{-| <i class="ion-android-favorite-outline"></i> -}
androidFavoriteOutline : Html msg
androidFavoriteOutline = i [] AndroidFavoriteOutline
{-| <i class="ion-android-favorite"></i> -}
androidFavorite : Html msg
androidFavorite = i [] AndroidFavorite
{-| <i class="ion-android-film"></i> -}
androidFilm : Html msg
androidFilm = i [] AndroidFilm
{-| <i class="ion-android-folder-open"></i> -}
androidFolderOpen : Html msg
androidFolderOpen = i [] AndroidFolderOpen
{-| <i class="ion-android-folder"></i> -}
androidFolder : Html msg
androidFolder = i [] AndroidFolder
{-| <i class="ion-android-funnel"></i> -}
androidFunnel : Html msg
androidFunnel = i [] AndroidFunnel
{-| <i class="ion-android-globe"></i> -}
androidGlobe : Html msg
androidGlobe = i [] AndroidGlobe
{-| <i class="ion-android-hand"></i> -}
androidHand : Html msg
androidHand = i [] AndroidHand
{-| <i class="ion-android-hangout"></i> -}
androidHangout : Html msg
androidHangout = i [] AndroidHangout
{-| <i class="ion-android-happy"></i> -}
androidHappy : Html msg
androidHappy = i [] AndroidHappy
{-| <i class="ion-android-home"></i> -}
androidHome : Html msg
androidHome = i [] AndroidHome
{-| <i class="ion-android-image"></i> -}
androidImage : Html msg
androidImage = i [] AndroidImage
{-| <i class="ion-android-laptop"></i> -}
androidLaptop : Html msg
androidLaptop = i [] AndroidLaptop
{-| <i class="ion-android-list"></i> -}
androidList : Html msg
androidList = i [] AndroidList
{-| <i class="ion-android-locate"></i> -}
androidLocate : Html msg
androidLocate = i [] AndroidLocate
{-| <i class="ion-android-lock"></i> -}
androidLock : Html msg
androidLock = i [] AndroidLock
{-| <i class="ion-android-mail"></i> -}
androidMail : Html msg
androidMail = i [] AndroidMail
{-| <i class="ion-android-map"></i> -}
androidMap : Html msg
androidMap = i [] AndroidMap
{-| <i class="ion-android-menu"></i> -}
androidMenu : Html msg
androidMenu = i [] AndroidMenu
{-| <i class="ion-android-microphone-off"></i> -}
androidMicrophoneOff : Html msg
androidMicrophoneOff = i [] AndroidMicrophoneOff
{-| <i class="ion-android-microphone"></i> -}
androidMicrophone : Html msg
androidMicrophone = i [] AndroidMicrophone
{-| <i class="ion-android-more-horizontal"></i> -}
androidMoreHorizontal : Html msg
androidMoreHorizontal = i [] AndroidMoreHorizontal
{-| <i class="ion-android-more-vertical"></i> -}
androidMoreVertical : Html msg
androidMoreVertical = i [] AndroidMoreVertical
{-| <i class="ion-android-navigate"></i> -}
androidNavigate : Html msg
androidNavigate = i [] AndroidNavigate
{-| <i class="ion-android-notifications-none"></i> -}
androidNotificationsNone : Html msg
androidNotificationsNone = i [] AndroidNotificationsNone
{-| <i class="ion-android-notifications-off"></i> -}
androidNotificationsOff : Html msg
androidNotificationsOff = i [] AndroidNotificationsOff
{-| <i class="ion-android-notifications"></i> -}
androidNotifications : Html msg
androidNotifications = i [] AndroidNotifications
{-| <i class="ion-android-open"></i> -}
androidOpen : Html msg
androidOpen = i [] AndroidOpen
{-| <i class="ion-android-options"></i> -}
androidOptions : Html msg
androidOptions = i [] AndroidOptions
{-| <i class="ion-android-people"></i> -}
androidPeople : Html msg
androidPeople = i [] AndroidPeople
{-| <i class="ion-android-person-add"></i> -}
androidPersonAdd : Html msg
androidPersonAdd = i [] AndroidPersonAdd
{-| <i class="ion-android-person"></i> -}
androidPerson : Html msg
androidPerson = i [] AndroidPerson
{-| <i class="ion-android-phone-landscape"></i> -}
androidPhoneLandscape : Html msg
androidPhoneLandscape = i [] AndroidPhoneLandscape
{-| <i class="ion-android-phone-portrait"></i> -}
androidPhonePortrait : Html msg
androidPhonePortrait = i [] AndroidPhonePortrait
{-| <i class="ion-android-pin"></i> -}
androidPin : Html msg
androidPin = i [] AndroidPin
{-| <i class="ion-android-plane"></i> -}
androidPlane : Html msg
androidPlane = i [] AndroidPlane
{-| <i class="ion-android-playstore"></i> -}
androidPlaystore : Html msg
androidPlaystore = i [] AndroidPlaystore
{-| <i class="ion-android-print"></i> -}
androidPrint : Html msg
androidPrint = i [] AndroidPrint
{-| <i class="ion-android-radio-button-off"></i> -}
androidRadioButtonOff : Html msg
androidRadioButtonOff = i [] AndroidRadioButtonOff
{-| <i class="ion-android-radio-button-on"></i> -}
androidRadioButtonOn : Html msg
androidRadioButtonOn = i [] AndroidRadioButtonOn
{-| <i class="ion-android-refresh"></i> -}
androidRefresh : Html msg
androidRefresh = i [] AndroidRefresh
{-| <i class="ion-android-remove-circle"></i> -}
androidRemoveCircle : Html msg
androidRemoveCircle = i [] AndroidRemoveCircle
{-| <i class="ion-android-remove"></i> -}
androidRemove : Html msg
androidRemove = i [] AndroidRemove
{-| <i class="ion-android-restaurant"></i> -}
androidRestaurant : Html msg
androidRestaurant = i [] AndroidRestaurant
{-| <i class="ion-android-sad"></i> -}
androidSad : Html msg
androidSad = i [] AndroidSad
{-| <i class="ion-android-search"></i> -}
androidSearch : Html msg
androidSearch = i [] AndroidSearch
{-| <i class="ion-android-send"></i> -}
androidSend : Html msg
androidSend = i [] AndroidSend
{-| <i class="ion-android-settings"></i> -}
androidSettings : Html msg
androidSettings = i [] AndroidSettings
{-| <i class="ion-android-share-alt"></i> -}
androidShareAlt : Html msg
androidShareAlt = i [] AndroidShareAlt
{-| <i class="ion-android-share"></i> -}
androidShare : Html msg
androidShare = i [] AndroidShare
{-| <i class="ion-android-star-half"></i> -}
androidStarHalf : Html msg
androidStarHalf = i [] AndroidStarHalf
{-| <i class="ion-android-star-outline"></i> -}
androidStarOutline : Html msg
androidStarOutline = i [] AndroidStarOutline
{-| <i class="ion-android-star"></i> -}
androidStar : Html msg
androidStar = i [] AndroidStar
{-| <i class="ion-android-stopwatch"></i> -}
androidStopwatch : Html msg
androidStopwatch = i [] AndroidStopwatch
{-| <i class="ion-android-subway"></i> -}
androidSubway : Html msg
androidSubway = i [] AndroidSubway
{-| <i class="ion-android-sunny"></i> -}
androidSunny : Html msg
androidSunny = i [] AndroidSunny
{-| <i class="ion-android-sync"></i> -}
androidSync : Html msg
androidSync = i [] AndroidSync
{-| <i class="ion-android-textsms"></i> -}
androidTextsms : Html msg
androidTextsms = i [] AndroidTextsms
{-| <i class="ion-android-time"></i> -}
androidTime : Html msg
androidTime = i [] AndroidTime
{-| <i class="ion-android-train"></i> -}
androidTrain : Html msg
androidTrain = i [] AndroidTrain
{-| <i class="ion-android-unlock"></i> -}
androidUnlock : Html msg
androidUnlock = i [] AndroidUnlock
{-| <i class="ion-android-upload"></i> -}
androidUpload : Html msg
androidUpload = i [] AndroidUpload
{-| <i class="ion-android-volume-down"></i> -}
androidVolumeDown : Html msg
androidVolumeDown = i [] AndroidVolumeDown
{-| <i class="ion-android-volume-mute"></i> -}
androidVolumeMute : Html msg
androidVolumeMute = i [] AndroidVolumeMute
{-| <i class="ion-android-volume-off"></i> -}
androidVolumeOff : Html msg
androidVolumeOff = i [] AndroidVolumeOff
{-| <i class="ion-android-volume-up"></i> -}
androidVolumeUp : Html msg
androidVolumeUp = i [] AndroidVolumeUp
{-| <i class="ion-android-walk"></i> -}
androidWalk : Html msg
androidWalk = i [] AndroidWalk
{-| <i class="ion-android-warning"></i> -}
androidWarning : Html msg
androidWarning = i [] AndroidWarning
{-| <i class="ion-android-watch"></i> -}
androidWatch : Html msg
androidWatch = i [] AndroidWatch
{-| <i class="ion-android-wifi"></i> -}
androidWifi : Html msg
androidWifi = i [] AndroidWifi
{-| <i class="ion-aperture"></i> -}
aperture : Html msg
aperture = i [] Aperture
{-| <i class="ion-archive"></i> -}
archive : Html msg
archive = i [] Archive
{-| <i class="ion-arrow-down-a"></i> -}
arrowDownA : Html msg
arrowDownA = i [] ArrowDownA
{-| <i class="ion-arrow-down-b"></i> -}
arrowDownB : Html msg
arrowDownB = i [] ArrowDownB
{-| <i class="ion-arrow-down-c"></i> -}
arrowDownC : Html msg
arrowDownC = i [] ArrowDownC
{-| <i class="ion-arrow-expand"></i> -}
arrowExpand : Html msg
arrowExpand = i [] ArrowExpand
{-| <i class="ion-arrow-graph-down-left"></i> -}
arrowGraphDownLeft : Html msg
arrowGraphDownLeft = i [] ArrowGraphDownLeft
{-| <i class="ion-arrow-graph-down-right"></i> -}
arrowGraphDownRight : Html msg
arrowGraphDownRight = i [] ArrowGraphDownRight
{-| <i class="ion-arrow-graph-up-left"></i> -}
arrowGraphUpLeft : Html msg
arrowGraphUpLeft = i [] ArrowGraphUpLeft
{-| <i class="ion-arrow-graph-up-right"></i> -}
arrowGraphUpRight : Html msg
arrowGraphUpRight = i [] ArrowGraphUpRight
{-| <i class="ion-arrow-left-a"></i> -}
arrowLeftA : Html msg
arrowLeftA = i [] ArrowLeftA
{-| <i class="ion-arrow-left-b"></i> -}
arrowLeftB : Html msg
arrowLeftB = i [] ArrowLeftB
{-| <i class="ion-arrow-left-c"></i> -}
arrowLeftC : Html msg
arrowLeftC = i [] ArrowLeftC
{-| <i class="ion-arrow-move"></i> -}
arrowMove : Html msg
arrowMove = i [] ArrowMove
{-| <i class="ion-arrow-resize"></i> -}
arrowResize : Html msg
arrowResize = i [] ArrowResize
{-| <i class="ion-arrow-return-left"></i> -}
arrowReturnLeft : Html msg
arrowReturnLeft = i [] ArrowReturnLeft
{-| <i class="ion-arrow-return-right"></i> -}
arrowReturnRight : Html msg
arrowReturnRight = i [] ArrowReturnRight
{-| <i class="ion-arrow-right-a"></i> -}
arrowRightA : Html msg
arrowRightA = i [] ArrowRightA
{-| <i class="ion-arrow-right-b"></i> -}
arrowRightB : Html msg
arrowRightB = i [] ArrowRightB
{-| <i class="ion-arrow-right-c"></i> -}
arrowRightC : Html msg
arrowRightC = i [] ArrowRightC
{-| <i class="ion-arrow-shrink"></i> -}
arrowShrink : Html msg
arrowShrink = i [] ArrowShrink
{-| <i class="ion-arrow-swap"></i> -}
arrowSwap : Html msg
arrowSwap = i [] ArrowSwap
{-| <i class="ion-arrow-up-a"></i> -}
arrowUpA : Html msg
arrowUpA = i [] ArrowUpA
{-| <i class="ion-arrow-up-b"></i> -}
arrowUpB : Html msg
arrowUpB = i [] ArrowUpB
{-| <i class="ion-arrow-up-c"></i> -}
arrowUpC : Html msg
arrowUpC = i [] ArrowUpC
{-| <i class="ion-asterisk"></i> -}
asterisk : Html msg
asterisk = i [] Asterisk
{-| <i class="ion-at"></i> -}
at : Html msg
at = i [] At
{-| <i class="ion-backspace-outline"></i> -}
backspaceOutline : Html msg
backspaceOutline = i [] BackspaceOutline
{-| <i class="ion-backspace"></i> -}
backspace : Html msg
backspace = i [] Backspace
{-| <i class="ion-bag"></i> -}
bag : Html msg
bag = i [] Bag
{-| <i class="ion-battery-charging"></i> -}
batteryCharging : Html msg
batteryCharging = i [] BatteryCharging
{-| <i class="ion-battery-empty"></i> -}
batteryEmpty : Html msg
batteryEmpty = i [] BatteryEmpty
{-| <i class="ion-battery-full"></i> -}
batteryFull : Html msg
batteryFull = i [] BatteryFull
{-| <i class="ion-battery-half"></i> -}
batteryHalf : Html msg
batteryHalf = i [] BatteryHalf
{-| <i class="ion-battery-low"></i> -}
batteryLow : Html msg
batteryLow = i [] BatteryLow
{-| <i class="ion-beaker"></i> -}
beaker : Html msg
beaker = i [] Beaker
{-| <i class="ion-beer"></i> -}
beer : Html msg
beer = i [] Beer
{-| <i class="ion-bluetooth"></i> -}
bluetooth : Html msg
bluetooth = i [] Bluetooth
{-| <i class="ion-bonfire"></i> -}
bonfire : Html msg
bonfire = i [] Bonfire
{-| <i class="ion-bookmark"></i> -}
bookmark : Html msg
bookmark = i [] Bookmark
{-| <i class="ion-bowtie"></i> -}
bowtie : Html msg
bowtie = i [] Bowtie
{-| <i class="ion-briefcase"></i> -}
briefcase : Html msg
briefcase = i [] Briefcase
{-| <i class="ion-bug"></i> -}
bug : Html msg
bug = i [] Bug
{-| <i class="ion-calculator"></i> -}
calculator : Html msg
calculator = i [] Calculator
{-| <i class="ion-calendar"></i> -}
calendar : Html msg
calendar = i [] Calendar
{-| <i class="ion-camera"></i> -}
camera : Html msg
camera = i [] Camera
{-| <i class="ion-card"></i> -}
card : Html msg
card = i [] Card
{-| <i class="ion-cash"></i> -}
cash : Html msg
cash = i [] Cash
{-| <i class="ion-chatbox-working"></i> -}
chatboxWorking : Html msg
chatboxWorking = i [] ChatboxWorking
{-| <i class="ion-chatbox"></i> -}
chatbox : Html msg
chatbox = i [] Chatbox
{-| <i class="ion-chatboxes"></i> -}
chatboxes : Html msg
chatboxes = i [] Chatboxes
{-| <i class="ion-chatbubble-working"></i> -}
chatbubbleWorking : Html msg
chatbubbleWorking = i [] ChatbubbleWorking
{-| <i class="ion-chatbubble"></i> -}
chatbubble : Html msg
chatbubble = i [] Chatbubble
{-| <i class="ion-chatbubbles"></i> -}
chatbubbles : Html msg
chatbubbles = i [] Chatbubbles
{-| <i class="ion-checkmark-circled"></i> -}
checkmarkCircled : Html msg
checkmarkCircled = i [] CheckmarkCircled
{-| <i class="ion-checkmark-round"></i> -}
checkmarkRound : Html msg
checkmarkRound = i [] CheckmarkRound
{-| <i class="ion-checkmark"></i> -}
checkmark : Html msg
checkmark = i [] Checkmark
{-| <i class="ion-chevron-down"></i> -}
chevronDown : Html msg
chevronDown = i [] ChevronDown
{-| <i class="ion-chevron-left"></i> -}
chevronLeft : Html msg
chevronLeft = i [] ChevronLeft
{-| <i class="ion-chevron-right"></i> -}
chevronRight : Html msg
chevronRight = i [] ChevronRight
{-| <i class="ion-chevron-up"></i> -}
chevronUp : Html msg
chevronUp = i [] ChevronUp
{-| <i class="ion-clipboard"></i> -}
clipboard : Html msg
clipboard = i [] Clipboard
{-| <i class="ion-clock"></i> -}
clock : Html msg
clock = i [] Clock
{-| <i class="ion-close-circled"></i> -}
closeCircled : Html msg
closeCircled = i [] CloseCircled
{-| <i class="ion-close-round"></i> -}
closeRound : Html msg
closeRound = i [] CloseRound
{-| <i class="ion-close"></i> -}
close : Html msg
close = i [] Close
{-| <i class="ion-closed-captioning"></i> -}
closedCaptioning : Html msg
closedCaptioning = i [] ClosedCaptioning
{-| <i class="ion-cloud"></i> -}
cloud : Html msg
cloud = i [] Cloud
{-| <i class="ion-code-download"></i> -}
codeDownload : Html msg
codeDownload = i [] CodeDownload
{-| <i class="ion-code-working"></i> -}
codeWorking : Html msg
codeWorking = i [] CodeWorking
{-| <i class="ion-code"></i> -}
code : Html msg
code = i [] Code
{-| <i class="ion-coffee"></i> -}
coffee : Html msg
coffee = i [] Coffee
{-| <i class="ion-compass"></i> -}
compass : Html msg
compass = i [] Compass
{-| <i class="ion-compose"></i> -}
compose : Html msg
compose = i [] Compose
{-| <i class="ion-connection-bars"></i> -}
connectionBars : Html msg
connectionBars = i [] ConnectionBars
{-| <i class="ion-contrast"></i> -}
contrast : Html msg
contrast = i [] Contrast
{-| <i class="ion-crop"></i> -}
crop : Html msg
crop = i [] Crop
{-| <i class="ion-cube"></i> -}
cube : Html msg
cube = i [] Cube
{-| <i class="ion-disc"></i> -}
disc : Html msg
disc = i [] Disc
{-| <i class="ion-document-text"></i> -}
documentText : Html msg
documentText = i [] DocumentText
{-| <i class="ion-document"></i> -}
document : Html msg
document = i [] Document
{-| <i class="ion-drag"></i> -}
drag : Html msg
drag = i [] Drag
{-| <i class="ion-earth"></i> -}
earth : Html msg
earth = i [] Earth
{-| <i class="ion-easel"></i> -}
easel : Html msg
easel = i [] Easel
{-| <i class="ion-edit"></i> -}
edit : Html msg
edit = i [] Edit
{-| <i class="ion-egg"></i> -}
egg : Html msg
egg = i [] Egg
{-| <i class="ion-eject"></i> -}
eject : Html msg
eject = i [] Eject
{-| <i class="ion-email-unread"></i> -}
emailUnread : Html msg
emailUnread = i [] EmailUnread
{-| <i class="ion-email"></i> -}
email : Html msg
email = i [] Email
{-| <i class="ion-erlenmeyer-flask-bubbles"></i> -}
erlenmeyerFlaskBubbles : Html msg
erlenmeyerFlaskBubbles = i [] ErlenmeyerFlaskBubbles
{-| <i class="ion-erlenmeyer-flask"></i> -}
erlenmeyerFlask : Html msg
erlenmeyerFlask = i [] ErlenmeyerFlask
{-| <i class="ion-eye-disabled"></i> -}
eyeDisabled : Html msg
eyeDisabled = i [] EyeDisabled
{-| <i class="ion-eye"></i> -}
eye : Html msg
eye = i [] Eye
{-| <i class="ion-female"></i> -}
female : Html msg
female = i [] Female
{-| <i class="ion-filing"></i> -}
filing : Html msg
filing = i [] Filing
{-| <i class="ion-film-marker"></i> -}
filmMarker : Html msg
filmMarker = i [] FilmMarker
{-| <i class="ion-fireball"></i> -}
fireball : Html msg
fireball = i [] Fireball
{-| <i class="ion-flag"></i> -}
flag : Html msg
flag = i [] Flag
{-| <i class="ion-flame"></i> -}
flame : Html msg
flame = i [] Flame
{-| <i class="ion-flash-off"></i> -}
flashOff : Html msg
flashOff = i [] FlashOff
{-| <i class="ion-flash"></i> -}
flash : Html msg
flash = i [] Flash
{-| <i class="ion-folder"></i> -}
folder : Html msg
folder = i [] Folder
{-| <i class="ion-fork-repo"></i> -}
forkRepo : Html msg
forkRepo = i [] ForkRepo
{-| <i class="ion-fork"></i> -}
fork : Html msg
fork = i [] Fork
{-| <i class="ion-forward"></i> -}
forward : Html msg
forward = i [] Forward
{-| <i class="ion-funnel"></i> -}
funnel : Html msg
funnel = i [] Funnel
{-| <i class="ion-gear-a"></i> -}
gearA : Html msg
gearA = i [] GearA
{-| <i class="ion-gear-b"></i> -}
gearB : Html msg
gearB = i [] GearB
{-| <i class="ion-grid"></i> -}
grid : Html msg
grid = i [] Grid
{-| <i class="ion-hammer"></i> -}
hammer : Html msg
hammer = i [] Hammer
{-| <i class="ion-happy-outline"></i> -}
happyOutline : Html msg
happyOutline = i [] HappyOutline
{-| <i class="ion-happy"></i> -}
happy : Html msg
happy = i [] Happy
{-| <i class="ion-headphone"></i> -}
headphone : Html msg
headphone = i [] Headphone
{-| <i class="ion-heart-broken"></i> -}
heartBroken : Html msg
heartBroken = i [] HeartBroken
{-| <i class="ion-heart"></i> -}
heart : Html msg
heart = i [] Heart
{-| <i class="ion-help-buoy"></i> -}
helpBuoy : Html msg
helpBuoy = i [] HelpBuoy
{-| <i class="ion-help-circled"></i> -}
helpCircled : Html msg
helpCircled = i [] HelpCircled
{-| <i class="ion-help"></i> -}
help : Html msg
help = i [] Help
{-| <i class="ion-home"></i> -}
home : Html msg
home = i [] Home
{-| <i class="ion-icecream"></i> -}
icecream : Html msg
icecream = i [] Icecream
{-| <i class="ion-image"></i> -}
image : Html msg
image = i [] Image
{-| <i class="ion-images"></i> -}
images : Html msg
images = i [] Images
{-| <i class="ion-information-circled"></i> -}
informationCircled : Html msg
informationCircled = i [] InformationCircled
{-| <i class="ion-information"></i> -}
information : Html msg
information = i [] Information
{-| <i class="ion-ionic"></i> -}
ionic : Html msg
ionic = i [] Ionic
{-| <i class="ion-ios-alarm-outline"></i> -}
iosAlarmOutline : Html msg
iosAlarmOutline = i [] IosAlarmOutline
{-| <i class="ion-ios-alarm"></i> -}
iosAlarm : Html msg
iosAlarm = i [] IosAlarm
{-| <i class="ion-ios-albums-outline"></i> -}
iosAlbumsOutline : Html msg
iosAlbumsOutline = i [] IosAlbumsOutline
{-| <i class="ion-ios-albums"></i> -}
iosAlbums : Html msg
iosAlbums = i [] IosAlbums
{-| <i class="ion-ios-americanfootball-outline"></i> -}
iosAmericanfootballOutline : Html msg
iosAmericanfootballOutline = i [] IosAmericanfootballOutline
{-| <i class="ion-ios-americanfootball"></i> -}
iosAmericanfootball : Html msg
iosAmericanfootball = i [] IosAmericanfootball
{-| <i class="ion-ios-analytics-outline"></i> -}
iosAnalyticsOutline : Html msg
iosAnalyticsOutline = i [] IosAnalyticsOutline
{-| <i class="ion-ios-analytics"></i> -}
iosAnalytics : Html msg
iosAnalytics = i [] IosAnalytics
{-| <i class="ion-ios-arrow-back"></i> -}
iosArrowBack : Html msg
iosArrowBack = i [] IosArrowBack
{-| <i class="ion-ios-arrow-down"></i> -}
iosArrowDown : Html msg
iosArrowDown = i [] IosArrowDown
{-| <i class="ion-ios-arrow-forward"></i> -}
iosArrowForward : Html msg
iosArrowForward = i [] IosArrowForward
{-| <i class="ion-ios-arrow-left"></i> -}
iosArrowLeft : Html msg
iosArrowLeft = i [] IosArrowLeft
{-| <i class="ion-ios-arrow-right"></i> -}
iosArrowRight : Html msg
iosArrowRight = i [] IosArrowRight
{-| <i class="ion-ios-arrow-thin-down"></i> -}
iosArrowThinDown : Html msg
iosArrowThinDown = i [] IosArrowThinDown
{-| <i class="ion-ios-arrow-thin-left"></i> -}
iosArrowThinLeft : Html msg
iosArrowThinLeft = i [] IosArrowThinLeft
{-| <i class="ion-ios-arrow-thin-right"></i> -}
iosArrowThinRight : Html msg
iosArrowThinRight = i [] IosArrowThinRight
{-| <i class="ion-ios-arrow-thin-up"></i> -}
iosArrowThinUp : Html msg
iosArrowThinUp = i [] IosArrowThinUp
{-| <i class="ion-ios-arrow-up"></i> -}
iosArrowUp : Html msg
iosArrowUp = i [] IosArrowUp
{-| <i class="ion-ios-at-outline"></i> -}
iosAtOutline : Html msg
iosAtOutline = i [] IosAtOutline
{-| <i class="ion-ios-at"></i> -}
iosAt : Html msg
iosAt = i [] IosAt
{-| <i class="ion-ios-barcode-outline"></i> -}
iosBarcodeOutline : Html msg
iosBarcodeOutline = i [] IosBarcodeOutline
{-| <i class="ion-ios-barcode"></i> -}
iosBarcode : Html msg
iosBarcode = i [] IosBarcode
{-| <i class="ion-ios-baseball-outline"></i> -}
iosBaseballOutline : Html msg
iosBaseballOutline = i [] IosBaseballOutline
{-| <i class="ion-ios-baseball"></i> -}
iosBaseball : Html msg
iosBaseball = i [] IosBaseball
{-| <i class="ion-ios-basketball-outline"></i> -}
iosBasketballOutline : Html msg
iosBasketballOutline = i [] IosBasketballOutline
{-| <i class="ion-ios-basketball"></i> -}
iosBasketball : Html msg
iosBasketball = i [] IosBasketball
{-| <i class="ion-ios-bell-outline"></i> -}
iosBellOutline : Html msg
iosBellOutline = i [] IosBellOutline
{-| <i class="ion-ios-bell"></i> -}
iosBell : Html msg
iosBell = i [] IosBell
{-| <i class="ion-ios-body-outline"></i> -}
iosBodyOutline : Html msg
iosBodyOutline = i [] IosBodyOutline
{-| <i class="ion-ios-body"></i> -}
iosBody : Html msg
iosBody = i [] IosBody
{-| <i class="ion-ios-bolt-outline"></i> -}
iosBoltOutline : Html msg
iosBoltOutline = i [] IosBoltOutline
{-| <i class="ion-ios-bolt"></i> -}
iosBolt : Html msg
iosBolt = i [] IosBolt
{-| <i class="ion-ios-book-outline"></i> -}
iosBookOutline : Html msg
iosBookOutline = i [] IosBookOutline
{-| <i class="ion-ios-book"></i> -}
iosBook : Html msg
iosBook = i [] IosBook
{-| <i class="ion-ios-bookmarks-outline"></i> -}
iosBookmarksOutline : Html msg
iosBookmarksOutline = i [] IosBookmarksOutline
{-| <i class="ion-ios-bookmarks"></i> -}
iosBookmarks : Html msg
iosBookmarks = i [] IosBookmarks
{-| <i class="ion-ios-box-outline"></i> -}
iosBoxOutline : Html msg
iosBoxOutline = i [] IosBoxOutline
{-| <i class="ion-ios-box"></i> -}
iosBox : Html msg
iosBox = i [] IosBox
{-| <i class="ion-ios-briefcase-outline"></i> -}
iosBriefcaseOutline : Html msg
iosBriefcaseOutline = i [] IosBriefcaseOutline
{-| <i class="ion-ios-briefcase"></i> -}
iosBriefcase : Html msg
iosBriefcase = i [] IosBriefcase
{-| <i class="ion-ios-browsers-outline"></i> -}
iosBrowsersOutline : Html msg
iosBrowsersOutline = i [] IosBrowsersOutline
{-| <i class="ion-ios-browsers"></i> -}
iosBrowsers : Html msg
iosBrowsers = i [] IosBrowsers
{-| <i class="ion-ios-calculator-outline"></i> -}
iosCalculatorOutline : Html msg
iosCalculatorOutline = i [] IosCalculatorOutline
{-| <i class="ion-ios-calculator"></i> -}
iosCalculator : Html msg
iosCalculator = i [] IosCalculator
{-| <i class="ion-ios-calendar-outline"></i> -}
iosCalendarOutline : Html msg
iosCalendarOutline = i [] IosCalendarOutline
{-| <i class="ion-ios-calendar"></i> -}
iosCalendar : Html msg
iosCalendar = i [] IosCalendar
{-| <i class="ion-ios-camera-outline"></i> -}
iosCameraOutline : Html msg
iosCameraOutline = i [] IosCameraOutline
{-| <i class="ion-ios-camera"></i> -}
iosCamera : Html msg
iosCamera = i [] IosCamera
{-| <i class="ion-ios-cart-outline"></i> -}
iosCartOutline : Html msg
iosCartOutline = i [] IosCartOutline
{-| <i class="ion-ios-cart"></i> -}
iosCart : Html msg
iosCart = i [] IosCart
{-| <i class="ion-ios-chatboxes-outline"></i> -}
iosChatboxesOutline : Html msg
iosChatboxesOutline = i [] IosChatboxesOutline
{-| <i class="ion-ios-chatboxes"></i> -}
iosChatboxes : Html msg
iosChatboxes = i [] IosChatboxes
{-| <i class="ion-ios-chatbubble-outline"></i> -}
iosChatbubbleOutline : Html msg
iosChatbubbleOutline = i [] IosChatbubbleOutline
{-| <i class="ion-ios-chatbubble"></i> -}
iosChatbubble : Html msg
iosChatbubble = i [] IosChatbubble
{-| <i class="ion-ios-checkmark-empty"></i> -}
iosCheckmarkEmpty : Html msg
iosCheckmarkEmpty = i [] IosCheckmarkEmpty
{-| <i class="ion-ios-checkmark-outline"></i> -}
iosCheckmarkOutline : Html msg
iosCheckmarkOutline = i [] IosCheckmarkOutline
{-| <i class="ion-ios-checkmark"></i> -}
iosCheckmark : Html msg
iosCheckmark = i [] IosCheckmark
{-| <i class="ion-ios-circle-filled"></i> -}
iosCircleFilled : Html msg
iosCircleFilled = i [] IosCircleFilled
{-| <i class="ion-ios-circle-outline"></i> -}
iosCircleOutline : Html msg
iosCircleOutline = i [] IosCircleOutline
{-| <i class="ion-ios-clock-outline"></i> -}
iosClockOutline : Html msg
iosClockOutline = i [] IosClockOutline
{-| <i class="ion-ios-clock"></i> -}
iosClock : Html msg
iosClock = i [] IosClock
{-| <i class="ion-ios-close-empty"></i> -}
iosCloseEmpty : Html msg
iosCloseEmpty = i [] IosCloseEmpty
{-| <i class="ion-ios-close-outline"></i> -}
iosCloseOutline : Html msg
iosCloseOutline = i [] IosCloseOutline
{-| <i class="ion-ios-close"></i> -}
iosClose : Html msg
iosClose = i [] IosClose
{-| <i class="ion-ios-cloud-download-outline"></i> -}
iosCloudDownloadOutline : Html msg
iosCloudDownloadOutline = i [] IosCloudDownloadOutline
{-| <i class="ion-ios-cloud-download"></i> -}
iosCloudDownload : Html msg
iosCloudDownload = i [] IosCloudDownload
{-| <i class="ion-ios-cloud-outline"></i> -}
iosCloudOutline : Html msg
iosCloudOutline = i [] IosCloudOutline
{-| <i class="ion-ios-cloud-upload-outline"></i> -}
iosCloudUploadOutline : Html msg
iosCloudUploadOutline = i [] IosCloudUploadOutline
{-| <i class="ion-ios-cloud-upload"></i> -}
iosCloudUpload : Html msg
iosCloudUpload = i [] IosCloudUpload
{-| <i class="ion-ios-cloud"></i> -}
iosCloud : Html msg
iosCloud = i [] IosCloud
{-| <i class="ion-ios-cloudy-night-outline"></i> -}
iosCloudyNightOutline : Html msg
iosCloudyNightOutline = i [] IosCloudyNightOutline
{-| <i class="ion-ios-cloudy-night"></i> -}
iosCloudyNight : Html msg
iosCloudyNight = i [] IosCloudyNight
{-| <i class="ion-ios-cloudy-outline"></i> -}
iosCloudyOutline : Html msg
iosCloudyOutline = i [] IosCloudyOutline
{-| <i class="ion-ios-cloudy"></i> -}
iosCloudy : Html msg
iosCloudy = i [] IosCloudy
{-| <i class="ion-ios-cog-outline"></i> -}
iosCogOutline : Html msg
iosCogOutline = i [] IosCogOutline
{-| <i class="ion-ios-cog"></i> -}
iosCog : Html msg
iosCog = i [] IosCog
{-| <i class="ion-ios-color-filter-outline"></i> -}
iosColorFilterOutline : Html msg
iosColorFilterOutline = i [] IosColorFilterOutline
{-| <i class="ion-ios-color-filter"></i> -}
iosColorFilter : Html msg
iosColorFilter = i [] IosColorFilter
{-| <i class="ion-ios-color-wand-outline"></i> -}
iosColorWandOutline : Html msg
iosColorWandOutline = i [] IosColorWandOutline
{-| <i class="ion-ios-color-wand"></i> -}
iosColorWand : Html msg
iosColorWand = i [] IosColorWand
{-| <i class="ion-ios-compose-outline"></i> -}
iosComposeOutline : Html msg
iosComposeOutline = i [] IosComposeOutline
{-| <i class="ion-ios-compose"></i> -}
iosCompose : Html msg
iosCompose = i [] IosCompose
{-| <i class="ion-ios-contact-outline"></i> -}
iosContactOutline : Html msg
iosContactOutline = i [] IosContactOutline
{-| <i class="ion-ios-contact"></i> -}
iosContact : Html msg
iosContact = i [] IosContact
{-| <i class="ion-ios-copy-outline"></i> -}
iosCopyOutline : Html msg
iosCopyOutline = i [] IosCopyOutline
{-| <i class="ion-ios-copy"></i> -}
iosCopy : Html msg
iosCopy = i [] IosCopy
{-| <i class="ion-ios-crop-strong"></i> -}
iosCropStrong : Html msg
iosCropStrong = i [] IosCropStrong
{-| <i class="ion-ios-crop"></i> -}
iosCrop : Html msg
iosCrop = i [] IosCrop
{-| <i class="ion-ios-download-outline"></i> -}
iosDownloadOutline : Html msg
iosDownloadOutline = i [] IosDownloadOutline
{-| <i class="ion-ios-download"></i> -}
iosDownload : Html msg
iosDownload = i [] IosDownload
{-| <i class="ion-ios-drag"></i> -}
iosDrag : Html msg
iosDrag = i [] IosDrag
{-| <i class="ion-ios-email-outline"></i> -}
iosEmailOutline : Html msg
iosEmailOutline = i [] IosEmailOutline
{-| <i class="ion-ios-email"></i> -}
iosEmail : Html msg
iosEmail = i [] IosEmail
{-| <i class="ion-ios-eye-outline"></i> -}
iosEyeOutline : Html msg
iosEyeOutline = i [] IosEyeOutline
{-| <i class="ion-ios-eye"></i> -}
iosEye : Html msg
iosEye = i [] IosEye
{-| <i class="ion-ios-fastforward-outline"></i> -}
iosFastforwardOutline : Html msg
iosFastforwardOutline = i [] IosFastforwardOutline
{-| <i class="ion-ios-fastforward"></i> -}
iosFastforward : Html msg
iosFastforward = i [] IosFastforward
{-| <i class="ion-ios-filing-outline"></i> -}
iosFilingOutline : Html msg
iosFilingOutline = i [] IosFilingOutline
{-| <i class="ion-ios-filing"></i> -}
iosFiling : Html msg
iosFiling = i [] IosFiling
{-| <i class="ion-ios-film-outline"></i> -}
iosFilmOutline : Html msg
iosFilmOutline = i [] IosFilmOutline
{-| <i class="ion-ios-film"></i> -}
iosFilm : Html msg
iosFilm = i [] IosFilm
{-| <i class="ion-ios-flag-outline"></i> -}
iosFlagOutline : Html msg
iosFlagOutline = i [] IosFlagOutline
{-| <i class="ion-ios-flag"></i> -}
iosFlag : Html msg
iosFlag = i [] IosFlag
{-| <i class="ion-ios-flame-outline"></i> -}
iosFlameOutline : Html msg
iosFlameOutline = i [] IosFlameOutline
{-| <i class="ion-ios-flame"></i> -}
iosFlame : Html msg
iosFlame = i [] IosFlame
{-| <i class="ion-ios-flask-outline"></i> -}
iosFlaskOutline : Html msg
iosFlaskOutline = i [] IosFlaskOutline
{-| <i class="ion-ios-flask"></i> -}
iosFlask : Html msg
iosFlask = i [] IosFlask
{-| <i class="ion-ios-flower-outline"></i> -}
iosFlowerOutline : Html msg
iosFlowerOutline = i [] IosFlowerOutline
{-| <i class="ion-ios-flower"></i> -}
iosFlower : Html msg
iosFlower = i [] IosFlower
{-| <i class="ion-ios-folder-outline"></i> -}
iosFolderOutline : Html msg
iosFolderOutline = i [] IosFolderOutline
{-| <i class="ion-ios-folder"></i> -}
iosFolder : Html msg
iosFolder = i [] IosFolder
{-| <i class="ion-ios-football-outline"></i> -}
iosFootballOutline : Html msg
iosFootballOutline = i [] IosFootballOutline
{-| <i class="ion-ios-football"></i> -}
iosFootball : Html msg
iosFootball = i [] IosFootball
{-| <i class="ion-ios-game-controller-a-outline"></i> -}
iosGameControllerAOutline : Html msg
iosGameControllerAOutline = i [] IosGameControllerAOutline
{-| <i class="ion-ios-game-controller-a"></i> -}
iosGameControllerA : Html msg
iosGameControllerA = i [] IosGameControllerA
{-| <i class="ion-ios-game-controller-b-outline"></i> -}
iosGameControllerBOutline : Html msg
iosGameControllerBOutline = i [] IosGameControllerBOutline
{-| <i class="ion-ios-game-controller-b"></i> -}
iosGameControllerB : Html msg
iosGameControllerB = i [] IosGameControllerB
{-| <i class="ion-ios-gear-outline"></i> -}
iosGearOutline : Html msg
iosGearOutline = i [] IosGearOutline
{-| <i class="ion-ios-gear"></i> -}
iosGear : Html msg
iosGear = i [] IosGear
{-| <i class="ion-ios-glasses-outline"></i> -}
iosGlassesOutline : Html msg
iosGlassesOutline = i [] IosGlassesOutline
{-| <i class="ion-ios-glasses"></i> -}
iosGlasses : Html msg
iosGlasses = i [] IosGlasses
{-| <i class="ion-ios-grid-view-outline"></i> -}
iosGridViewOutline : Html msg
iosGridViewOutline = i [] IosGridViewOutline
{-| <i class="ion-ios-grid-view"></i> -}
iosGridView : Html msg
iosGridView = i [] IosGridView
{-| <i class="ion-ios-heart-outline"></i> -}
iosHeartOutline : Html msg
iosHeartOutline = i [] IosHeartOutline
{-| <i class="ion-ios-heart"></i> -}
iosHeart : Html msg
iosHeart = i [] IosHeart
{-| <i class="ion-ios-help-empty"></i> -}
iosHelpEmpty : Html msg
iosHelpEmpty = i [] IosHelpEmpty
{-| <i class="ion-ios-help-outline"></i> -}
iosHelpOutline : Html msg
iosHelpOutline = i [] IosHelpOutline
{-| <i class="ion-ios-help"></i> -}
iosHelp : Html msg
iosHelp = i [] IosHelp
{-| <i class="ion-ios-home-outline"></i> -}
iosHomeOutline : Html msg
iosHomeOutline = i [] IosHomeOutline
{-| <i class="ion-ios-home"></i> -}
iosHome : Html msg
iosHome = i [] IosHome
{-| <i class="ion-ios-infinite-outline"></i> -}
iosInfiniteOutline : Html msg
iosInfiniteOutline = i [] IosInfiniteOutline
{-| <i class="ion-ios-infinite"></i> -}
iosInfinite : Html msg
iosInfinite = i [] IosInfinite
{-| <i class="ion-ios-information-empty"></i> -}
iosInformationEmpty : Html msg
iosInformationEmpty = i [] IosInformationEmpty
{-| <i class="ion-ios-information-outline"></i> -}
iosInformationOutline : Html msg
iosInformationOutline = i [] IosInformationOutline
{-| <i class="ion-ios-information"></i> -}
iosInformation : Html msg
iosInformation = i [] IosInformation
{-| <i class="ion-ios-ionic-outline"></i> -}
iosIonicOutline : Html msg
iosIonicOutline = i [] IosIonicOutline
{-| <i class="ion-ios-keypad-outline"></i> -}
iosKeypadOutline : Html msg
iosKeypadOutline = i [] IosKeypadOutline
{-| <i class="ion-ios-keypad"></i> -}
iosKeypad : Html msg
iosKeypad = i [] IosKeypad
{-| <i class="ion-ios-lightbulb-outline"></i> -}
iosLightbulbOutline : Html msg
iosLightbulbOutline = i [] IosLightbulbOutline
{-| <i class="ion-ios-lightbulb"></i> -}
iosLightbulb : Html msg
iosLightbulb = i [] IosLightbulb
{-| <i class="ion-ios-list-outline"></i> -}
iosListOutline : Html msg
iosListOutline = i [] IosListOutline
{-| <i class="ion-ios-list"></i> -}
iosList : Html msg
iosList = i [] IosList
{-| <i class="ion-ios-location-outline"></i> -}
iosLocationOutline : Html msg
iosLocationOutline = i [] IosLocationOutline
{-| <i class="ion-ios-location"></i> -}
iosLocation : Html msg
iosLocation = i [] IosLocation
{-| <i class="ion-ios-locked-outline"></i> -}
iosLockedOutline : Html msg
iosLockedOutline = i [] IosLockedOutline
{-| <i class="ion-ios-locked"></i> -}
iosLocked : Html msg
iosLocked = i [] IosLocked
{-| <i class="ion-ios-loop-strong"></i> -}
iosLoopStrong : Html msg
iosLoopStrong = i [] IosLoopStrong
{-| <i class="ion-ios-loop"></i> -}
iosLoop : Html msg
iosLoop = i [] IosLoop
{-| <i class="ion-ios-medical-outline"></i> -}
iosMedicalOutline : Html msg
iosMedicalOutline = i [] IosMedicalOutline
{-| <i class="ion-ios-medical"></i> -}
iosMedical : Html msg
iosMedical = i [] IosMedical
{-| <i class="ion-ios-medkit-outline"></i> -}
iosMedkitOutline : Html msg
iosMedkitOutline = i [] IosMedkitOutline
{-| <i class="ion-ios-medkit"></i> -}
iosMedkit : Html msg
iosMedkit = i [] IosMedkit
{-| <i class="ion-ios-mic-off"></i> -}
iosMicOff : Html msg
iosMicOff = i [] IosMicOff
{-| <i class="ion-ios-mic-outline"></i> -}
iosMicOutline : Html msg
iosMicOutline = i [] IosMicOutline
{-| <i class="ion-ios-mic"></i> -}
iosMic : Html msg
iosMic = i [] IosMic
{-| <i class="ion-ios-minus-empty"></i> -}
iosMinusEmpty : Html msg
iosMinusEmpty = i [] IosMinusEmpty
{-| <i class="ion-ios-minus-outline"></i> -}
iosMinusOutline : Html msg
iosMinusOutline = i [] IosMinusOutline
{-| <i class="ion-ios-minus"></i> -}
iosMinus : Html msg
iosMinus = i [] IosMinus
{-| <i class="ion-ios-monitor-outline"></i> -}
iosMonitorOutline : Html msg
iosMonitorOutline = i [] IosMonitorOutline
{-| <i class="ion-ios-monitor"></i> -}
iosMonitor : Html msg
iosMonitor = i [] IosMonitor
{-| <i class="ion-ios-moon-outline"></i> -}
iosMoonOutline : Html msg
iosMoonOutline = i [] IosMoonOutline
{-| <i class="ion-ios-moon"></i> -}
iosMoon : Html msg
iosMoon = i [] IosMoon
{-| <i class="ion-ios-more-outline"></i> -}
iosMoreOutline : Html msg
iosMoreOutline = i [] IosMoreOutline
{-| <i class="ion-ios-more"></i> -}
iosMore : Html msg
iosMore = i [] IosMore
{-| <i class="ion-ios-musical-note"></i> -}
iosMusicalNote : Html msg
iosMusicalNote = i [] IosMusicalNote
{-| <i class="ion-ios-musical-notes"></i> -}
iosMusicalNotes : Html msg
iosMusicalNotes = i [] IosMusicalNotes
{-| <i class="ion-ios-navigate-outline"></i> -}
iosNavigateOutline : Html msg
iosNavigateOutline = i [] IosNavigateOutline
{-| <i class="ion-ios-navigate"></i> -}
iosNavigate : Html msg
iosNavigate = i [] IosNavigate
{-| <i class="ion-ios-nutrition-outline"></i> -}
iosNutritionOutline : Html msg
iosNutritionOutline = i [] IosNutritionOutline
{-| <i class="ion-ios-nutrition"></i> -}
iosNutrition : Html msg
iosNutrition = i [] IosNutrition
{-| <i class="ion-ios-paper-outline"></i> -}
iosPaperOutline : Html msg
iosPaperOutline = i [] IosPaperOutline
{-| <i class="ion-ios-paper"></i> -}
iosPaper : Html msg
iosPaper = i [] IosPaper
{-| <i class="ion-ios-paperplane-outline"></i> -}
iosPaperplaneOutline : Html msg
iosPaperplaneOutline = i [] IosPaperplaneOutline
{-| <i class="ion-ios-paperplane"></i> -}
iosPaperplane : Html msg
iosPaperplane = i [] IosPaperplane
{-| <i class="ion-ios-partlysunny-outline"></i> -}
iosPartlysunnyOutline : Html msg
iosPartlysunnyOutline = i [] IosPartlysunnyOutline
{-| <i class="ion-ios-partlysunny"></i> -}
iosPartlysunny : Html msg
iosPartlysunny = i [] IosPartlysunny
{-| <i class="ion-ios-pause-outline"></i> -}
iosPauseOutline : Html msg
iosPauseOutline = i [] IosPauseOutline
{-| <i class="ion-ios-pause"></i> -}
iosPause : Html msg
iosPause = i [] IosPause
{-| <i class="ion-ios-paw-outline"></i> -}
iosPawOutline : Html msg
iosPawOutline = i [] IosPawOutline
{-| <i class="ion-ios-paw"></i> -}
iosPaw : Html msg
iosPaw = i [] IosPaw
{-| <i class="ion-ios-people-outline"></i> -}
iosPeopleOutline : Html msg
iosPeopleOutline = i [] IosPeopleOutline
{-| <i class="ion-ios-people"></i> -}
iosPeople : Html msg
iosPeople = i [] IosPeople
{-| <i class="ion-ios-person-outline"></i> -}
iosPersonOutline : Html msg
iosPersonOutline = i [] IosPersonOutline
{-| <i class="ion-ios-person"></i> -}
iosPerson : Html msg
iosPerson = i [] IosPerson
{-| <i class="ion-ios-personadd-outline"></i> -}
iosPersonaddOutline : Html msg
iosPersonaddOutline = i [] IosPersonaddOutline
{-| <i class="ion-ios-personadd"></i> -}
iosPersonadd : Html msg
iosPersonadd = i [] IosPersonadd
{-| <i class="ion-ios-photos-outline"></i> -}
iosPhotosOutline : Html msg
iosPhotosOutline = i [] IosPhotosOutline
{-| <i class="ion-ios-photos"></i> -}
iosPhotos : Html msg
iosPhotos = i [] IosPhotos
{-| <i class="ion-ios-pie-outline"></i> -}
iosPieOutline : Html msg
iosPieOutline = i [] IosPieOutline
{-| <i class="ion-ios-pie"></i> -}
iosPie : Html msg
iosPie = i [] IosPie
{-| <i class="ion-ios-pint-outline"></i> -}
iosPintOutline : Html msg
iosPintOutline = i [] IosPintOutline
{-| <i class="ion-ios-pint"></i> -}
iosPint : Html msg
iosPint = i [] IosPint
{-| <i class="ion-ios-play-outline"></i> -}
iosPlayOutline : Html msg
iosPlayOutline = i [] IosPlayOutline
{-| <i class="ion-ios-play"></i> -}
iosPlay : Html msg
iosPlay = i [] IosPlay
{-| <i class="ion-ios-plus-empty"></i> -}
iosPlusEmpty : Html msg
iosPlusEmpty = i [] IosPlusEmpty
{-| <i class="ion-ios-plus-outline"></i> -}
iosPlusOutline : Html msg
iosPlusOutline = i [] IosPlusOutline
{-| <i class="ion-ios-plus"></i> -}
iosPlus : Html msg
iosPlus = i [] IosPlus
{-| <i class="ion-ios-pricetag-outline"></i> -}
iosPricetagOutline : Html msg
iosPricetagOutline = i [] IosPricetagOutline
{-| <i class="ion-ios-pricetag"></i> -}
iosPricetag : Html msg
iosPricetag = i [] IosPricetag
{-| <i class="ion-ios-pricetags-outline"></i> -}
iosPricetagsOutline : Html msg
iosPricetagsOutline = i [] IosPricetagsOutline
{-| <i class="ion-ios-pricetags"></i> -}
iosPricetags : Html msg
iosPricetags = i [] IosPricetags
{-| <i class="ion-ios-printer-outline"></i> -}
iosPrinterOutline : Html msg
iosPrinterOutline = i [] IosPrinterOutline
{-| <i class="ion-ios-printer"></i> -}
iosPrinter : Html msg
iosPrinter = i [] IosPrinter
{-| <i class="ion-ios-pulse-strong"></i> -}
iosPulseStrong : Html msg
iosPulseStrong = i [] IosPulseStrong
{-| <i class="ion-ios-pulse"></i> -}
iosPulse : Html msg
iosPulse = i [] IosPulse
{-| <i class="ion-ios-rainy-outline"></i> -}
iosRainyOutline : Html msg
iosRainyOutline = i [] IosRainyOutline
{-| <i class="ion-ios-rainy"></i> -}
iosRainy : Html msg
iosRainy = i [] IosRainy
{-| <i class="ion-ios-recording-outline"></i> -}
iosRecordingOutline : Html msg
iosRecordingOutline = i [] IosRecordingOutline
{-| <i class="ion-ios-recording"></i> -}
iosRecording : Html msg
iosRecording = i [] IosRecording
{-| <i class="ion-ios-redo-outline"></i> -}
iosRedoOutline : Html msg
iosRedoOutline = i [] IosRedoOutline
{-| <i class="ion-ios-redo"></i> -}
iosRedo : Html msg
iosRedo = i [] IosRedo
{-| <i class="ion-ios-refresh-empty"></i> -}
iosRefreshEmpty : Html msg
iosRefreshEmpty = i [] IosRefreshEmpty
{-| <i class="ion-ios-refresh-outline"></i> -}
iosRefreshOutline : Html msg
iosRefreshOutline = i [] IosRefreshOutline
{-| <i class="ion-ios-refresh"></i> -}
iosRefresh : Html msg
iosRefresh = i [] IosRefresh
{-| <i class="ion-ios-reload"></i> -}
iosReload : Html msg
iosReload = i [] IosReload
{-| <i class="ion-ios-reverse-camera-outline"></i> -}
iosReverseCameraOutline : Html msg
iosReverseCameraOutline = i [] IosReverseCameraOutline
{-| <i class="ion-ios-reverse-camera"></i> -}
iosReverseCamera : Html msg
iosReverseCamera = i [] IosReverseCamera
{-| <i class="ion-ios-rewind-outline"></i> -}
iosRewindOutline : Html msg
iosRewindOutline = i [] IosRewindOutline
{-| <i class="ion-ios-rewind"></i> -}
iosRewind : Html msg
iosRewind = i [] IosRewind
{-| <i class="ion-ios-rose-outline"></i> -}
iosRoseOutline : Html msg
iosRoseOutline = i [] IosRoseOutline
{-| <i class="ion-ios-rose"></i> -}
iosRose : Html msg
iosRose = i [] IosRose
{-| <i class="ion-ios-search-strong"></i> -}
iosSearchStrong : Html msg
iosSearchStrong = i [] IosSearchStrong
{-| <i class="ion-ios-search"></i> -}
iosSearch : Html msg
iosSearch = i [] IosSearch
{-| <i class="ion-ios-settings-strong"></i> -}
iosSettingsStrong : Html msg
iosSettingsStrong = i [] IosSettingsStrong
{-| <i class="ion-ios-settings"></i> -}
iosSettings : Html msg
iosSettings = i [] IosSettings
{-| <i class="ion-ios-shuffle-strong"></i> -}
iosShuffleStrong : Html msg
iosShuffleStrong = i [] IosShuffleStrong
{-| <i class="ion-ios-shuffle"></i> -}
iosShuffle : Html msg
iosShuffle = i [] IosShuffle
{-| <i class="ion-ios-skipbackward-outline"></i> -}
iosSkipbackwardOutline : Html msg
iosSkipbackwardOutline = i [] IosSkipbackwardOutline
{-| <i class="ion-ios-skipbackward"></i> -}
iosSkipbackward : Html msg
iosSkipbackward = i [] IosSkipbackward
{-| <i class="ion-ios-skipforward-outline"></i> -}
iosSkipforwardOutline : Html msg
iosSkipforwardOutline = i [] IosSkipforwardOutline
{-| <i class="ion-ios-skipforward"></i> -}
iosSkipforward : Html msg
iosSkipforward = i [] IosSkipforward
{-| <i class="ion-ios-snowy"></i> -}
iosSnowy : Html msg
iosSnowy = i [] IosSnowy
{-| <i class="ion-ios-speedometer-outline"></i> -}
iosSpeedometerOutline : Html msg
iosSpeedometerOutline = i [] IosSpeedometerOutline
{-| <i class="ion-ios-speedometer"></i> -}
iosSpeedometer : Html msg
iosSpeedometer = i [] IosSpeedometer
{-| <i class="ion-ios-star-half"></i> -}
iosStarHalf : Html msg
iosStarHalf = i [] IosStarHalf
{-| <i class="ion-ios-star-outline"></i> -}
iosStarOutline : Html msg
iosStarOutline = i [] IosStarOutline
{-| <i class="ion-ios-star"></i> -}
iosStar : Html msg
iosStar = i [] IosStar
{-| <i class="ion-ios-stopwatch-outline"></i> -}
iosStopwatchOutline : Html msg
iosStopwatchOutline = i [] IosStopwatchOutline
{-| <i class="ion-ios-stopwatch"></i> -}
iosStopwatch : Html msg
iosStopwatch = i [] IosStopwatch
{-| <i class="ion-ios-sunny-outline"></i> -}
iosSunnyOutline : Html msg
iosSunnyOutline = i [] IosSunnyOutline
{-| <i class="ion-ios-sunny"></i> -}
iosSunny : Html msg
iosSunny = i [] IosSunny
{-| <i class="ion-ios-telephone-outline"></i> -}
iosTelephoneOutline : Html msg
iosTelephoneOutline = i [] IosTelephoneOutline
{-| <i class="ion-ios-telephone"></i> -}
iosTelephone : Html msg
iosTelephone = i [] IosTelephone
{-| <i class="ion-ios-tennisball-outline"></i> -}
iosTennisballOutline : Html msg
iosTennisballOutline = i [] IosTennisballOutline
{-| <i class="ion-ios-tennisball"></i> -}
iosTennisball : Html msg
iosTennisball = i [] IosTennisball
{-| <i class="ion-ios-thunderstorm-outline"></i> -}
iosThunderstormOutline : Html msg
iosThunderstormOutline = i [] IosThunderstormOutline
{-| <i class="ion-ios-thunderstorm"></i> -}
iosThunderstorm : Html msg
iosThunderstorm = i [] IosThunderstorm
{-| <i class="ion-ios-time-outline"></i> -}
iosTimeOutline : Html msg
iosTimeOutline = i [] IosTimeOutline
{-| <i class="ion-ios-time"></i> -}
iosTime : Html msg
iosTime = i [] IosTime
{-| <i class="ion-ios-timer-outline"></i> -}
iosTimerOutline : Html msg
iosTimerOutline = i [] IosTimerOutline
{-| <i class="ion-ios-timer"></i> -}
iosTimer : Html msg
iosTimer = i [] IosTimer
{-| <i class="ion-ios-toggle-outline"></i> -}
iosToggleOutline : Html msg
iosToggleOutline = i [] IosToggleOutline
{-| <i class="ion-ios-toggle"></i> -}
iosToggle : Html msg
iosToggle = i [] IosToggle
{-| <i class="ion-ios-trash-outline"></i> -}
iosTrashOutline : Html msg
iosTrashOutline = i [] IosTrashOutline
{-| <i class="ion-ios-trash"></i> -}
iosTrash : Html msg
iosTrash = i [] IosTrash
{-| <i class="ion-ios-undo-outline"></i> -}
iosUndoOutline : Html msg
iosUndoOutline = i [] IosUndoOutline
{-| <i class="ion-ios-undo"></i> -}
iosUndo : Html msg
iosUndo = i [] IosUndo
{-| <i class="ion-ios-unlocked-outline"></i> -}
iosUnlockedOutline : Html msg
iosUnlockedOutline = i [] IosUnlockedOutline
{-| <i class="ion-ios-unlocked"></i> -}
iosUnlocked : Html msg
iosUnlocked = i [] IosUnlocked
{-| <i class="ion-ios-upload-outline"></i> -}
iosUploadOutline : Html msg
iosUploadOutline = i [] IosUploadOutline
{-| <i class="ion-ios-upload"></i> -}
iosUpload : Html msg
iosUpload = i [] IosUpload
{-| <i class="ion-ios-videocam-outline"></i> -}
iosVideocamOutline : Html msg
iosVideocamOutline = i [] IosVideocamOutline
{-| <i class="ion-ios-videocam"></i> -}
iosVideocam : Html msg
iosVideocam = i [] IosVideocam
{-| <i class="ion-ios-volume-high"></i> -}
iosVolumeHigh : Html msg
iosVolumeHigh = i [] IosVolumeHigh
{-| <i class="ion-ios-volume-low"></i> -}
iosVolumeLow : Html msg
iosVolumeLow = i [] IosVolumeLow
{-| <i class="ion-ios-wineglass-outline"></i> -}
iosWineglassOutline : Html msg
iosWineglassOutline = i [] IosWineglassOutline
{-| <i class="ion-ios-wineglass"></i> -}
iosWineglass : Html msg
iosWineglass = i [] IosWineglass
{-| <i class="ion-ios-world-outline"></i> -}
iosWorldOutline : Html msg
iosWorldOutline = i [] IosWorldOutline
{-| <i class="ion-ios-world"></i> -}
iosWorld : Html msg
iosWorld = i [] IosWorld
{-| <i class="ion-ipad"></i> -}
ipad : Html msg
ipad = i [] Ipad
{-| <i class="ion-iphone"></i> -}
iphone : Html msg
iphone = i [] Iphone
{-| <i class="ion-ipod"></i> -}
ipod : Html msg
ipod = i [] Ipod
{-| <i class="ion-jet"></i> -}
jet : Html msg
jet = i [] Jet
{-| <i class="ion-key"></i> -}
key : Html msg
key = i [] Key
{-| <i class="ion-knife"></i> -}
knife : Html msg
knife = i [] Knife
{-| <i class="ion-laptop"></i> -}
laptop : Html msg
laptop = i [] Laptop
{-| <i class="ion-leaf"></i> -}
leaf : Html msg
leaf = i [] Leaf
{-| <i class="ion-levels"></i> -}
levels : Html msg
levels = i [] Levels
{-| <i class="ion-lightbulb"></i> -}
lightbulb : Html msg
lightbulb = i [] Lightbulb
{-| <i class="ion-link"></i> -}
link : Html msg
link = i [] Link
{-| <i class="ion-load-a"></i> -}
loadA : Html msg
loadA = i [] LoadA
{-| <i class="ion-load-b"></i> -}
loadB : Html msg
loadB = i [] LoadB
{-| <i class="ion-load-c"></i> -}
loadC : Html msg
loadC = i [] LoadC
{-| <i class="ion-load-d"></i> -}
loadD : Html msg
loadD = i [] LoadD
{-| <i class="ion-location"></i> -}
location : Html msg
location = i [] Location
{-| <i class="ion-lock-combination"></i> -}
lockCombination : Html msg
lockCombination = i [] LockCombination
{-| <i class="ion-locked"></i> -}
locked : Html msg
locked = i [] Locked
{-| <i class="ion-log-in"></i> -}
logIn : Html msg
logIn = i [] LogIn
{-| <i class="ion-log-out"></i> -}
logOut : Html msg
logOut = i [] LogOut
{-| <i class="ion-loop"></i> -}
loop : Html msg
loop = i [] Loop
{-| <i class="ion-magnet"></i> -}
magnet : Html msg
magnet = i [] Magnet
{-| <i class="ion-male"></i> -}
male : Html msg
male = i [] Male
{-| <i class="ion-man"></i> -}
man : Html msg
man = i [] Man
{-| <i class="ion-map"></i> -}
map : Html msg
map = i [] Map
{-| <i class="ion-medkit"></i> -}
medkit : Html msg
medkit = i [] Medkit
{-| <i class="ion-merge"></i> -}
merge : Html msg
merge = i [] Merge
{-| <i class="ion-mic-a"></i> -}
micA : Html msg
micA = i [] MicA
{-| <i class="ion-mic-b"></i> -}
micB : Html msg
micB = i [] MicB
{-| <i class="ion-mic-c"></i> -}
micC : Html msg
micC = i [] MicC
{-| <i class="ion-minus-circled"></i> -}
minusCircled : Html msg
minusCircled = i [] MinusCircled
{-| <i class="ion-minus-round"></i> -}
minusRound : Html msg
minusRound = i [] MinusRound
{-| <i class="ion-minus"></i> -}
minus : Html msg
minus = i [] Minus
{-| <i class="ion-model-s"></i> -}
modelS : Html msg
modelS = i [] ModelS
{-| <i class="ion-monitor"></i> -}
monitor : Html msg
monitor = i [] Monitor
{-| <i class="ion-more"></i> -}
more : Html msg
more = i [] More
{-| <i class="ion-mouse"></i> -}
mouse : Html msg
mouse = i [] Mouse
{-| <i class="ion-music-note"></i> -}
musicNote : Html msg
musicNote = i [] MusicNote
{-| <i class="ion-navicon-round"></i> -}
naviconRound : Html msg
naviconRound = i [] NaviconRound
{-| <i class="ion-navicon"></i> -}
navicon : Html msg
navicon = i [] Navicon
{-| <i class="ion-navigate"></i> -}
navigate : Html msg
navigate = i [] Navigate
{-| <i class="ion-network"></i> -}
network : Html msg
network = i [] Network
{-| <i class="ion-no-smoking"></i> -}
noSmoking : Html msg
noSmoking = i [] NoSmoking
{-| <i class="ion-nuclear"></i> -}
nuclear : Html msg
nuclear = i [] Nuclear
{-| <i class="ion-outlet"></i> -}
outlet : Html msg
outlet = i [] Outlet
{-| <i class="ion-paintbrush"></i> -}
paintbrush : Html msg
paintbrush = i [] Paintbrush
{-| <i class="ion-paintbucket"></i> -}
paintbucket : Html msg
paintbucket = i [] Paintbucket
{-| <i class="ion-paper-airplane"></i> -}
paperAirplane : Html msg
paperAirplane = i [] PaperAirplane
{-| <i class="ion-paperclip"></i> -}
paperclip : Html msg
paperclip = i [] Paperclip
{-| <i class="ion-pause"></i> -}
pause : Html msg
pause = i [] Pause
{-| <i class="ion-person-add"></i> -}
personAdd : Html msg
personAdd = i [] PersonAdd
{-| <i class="ion-person-stalker"></i> -}
personStalker : Html msg
personStalker = i [] PersonStalker
{-| <i class="ion-person"></i> -}
person : Html msg
person = i [] Person
{-| <i class="ion-pie-graph"></i> -}
pieGraph : Html msg
pieGraph = i [] PieGraph
{-| <i class="ion-pin"></i> -}
pin : Html msg
pin = i [] Pin
{-| <i class="ion-pinpoint"></i> -}
pinpoint : Html msg
pinpoint = i [] Pinpoint
{-| <i class="ion-pizza"></i> -}
pizza : Html msg
pizza = i [] Pizza
{-| <i class="ion-plane"></i> -}
plane : Html msg
plane = i [] Plane
{-| <i class="ion-planet"></i> -}
planet : Html msg
planet = i [] Planet
{-| <i class="ion-play"></i> -}
play : Html msg
play = i [] Play
{-| <i class="ion-playstation"></i> -}
playstation : Html msg
playstation = i [] Playstation
{-| <i class="ion-plus-circled"></i> -}
plusCircled : Html msg
plusCircled = i [] PlusCircled
{-| <i class="ion-plus-round"></i> -}
plusRound : Html msg
plusRound = i [] PlusRound
{-| <i class="ion-plus"></i> -}
plus : Html msg
plus = i [] Plus
{-| <i class="ion-podium"></i> -}
podium : Html msg
podium = i [] Podium
{-| <i class="ion-pound"></i> -}
pound : Html msg
pound = i [] Pound
{-| <i class="ion-power"></i> -}
power : Html msg
power = i [] Power
{-| <i class="ion-pricetag"></i> -}
pricetag : Html msg
pricetag = i [] Pricetag
{-| <i class="ion-pricetags"></i> -}
pricetags : Html msg
pricetags = i [] Pricetags
{-| <i class="ion-printer"></i> -}
printer : Html msg
printer = i [] Printer
{-| <i class="ion-pull-request"></i> -}
pullRequest : Html msg
pullRequest = i [] PullRequest
{-| <i class="ion-qr-scanner"></i> -}
qrScanner : Html msg
qrScanner = i [] QrScanner
{-| <i class="ion-quote"></i> -}
quote : Html msg
quote = i [] Quote
{-| <i class="ion-radio-waves"></i> -}
radioWaves : Html msg
radioWaves = i [] RadioWaves
{-| <i class="ion-record"></i> -}
record : Html msg
record = i [] Record
{-| <i class="ion-refresh"></i> -}
refresh : Html msg
refresh = i [] Refresh
{-| <i class="ion-reply-all"></i> -}
replyAll : Html msg
replyAll = i [] ReplyAll
{-| <i class="ion-reply"></i> -}
reply : Html msg
reply = i [] Reply
{-| <i class="ion-ribbon-a"></i> -}
ribbonA : Html msg
ribbonA = i [] RibbonA
{-| <i class="ion-ribbon-b"></i> -}
ribbonB : Html msg
ribbonB = i [] RibbonB
{-| <i class="ion-sad-outline"></i> -}
sadOutline : Html msg
sadOutline = i [] SadOutline
{-| <i class="ion-sad"></i> -}
sad : Html msg
sad = i [] Sad
{-| <i class="ion-scissors"></i> -}
scissors : Html msg
scissors = i [] Scissors
{-| <i class="ion-search"></i> -}
search : Html msg
search = i [] Search
{-| <i class="ion-settings"></i> -}
settings : Html msg
settings = i [] Settings
{-| <i class="ion-share"></i> -}
share : Html msg
share = i [] Share
{-| <i class="ion-shuffle"></i> -}
shuffle : Html msg
shuffle = i [] Shuffle
{-| <i class="ion-skip-backward"></i> -}
skipBackward : Html msg
skipBackward = i [] SkipBackward
{-| <i class="ion-skip-forward"></i> -}
skipForward : Html msg
skipForward = i [] SkipForward
{-| <i class="ion-social-android-outline"></i> -}
socialAndroidOutline : Html msg
socialAndroidOutline = i [] SocialAndroidOutline
{-| <i class="ion-social-android"></i> -}
socialAndroid : Html msg
socialAndroid = i [] SocialAndroid
{-| <i class="ion-social-angular-outline"></i> -}
socialAngularOutline : Html msg
socialAngularOutline = i [] SocialAngularOutline
{-| <i class="ion-social-angular"></i> -}
socialAngular : Html msg
socialAngular = i [] SocialAngular
{-| <i class="ion-social-apple-outline"></i> -}
socialAppleOutline : Html msg
socialAppleOutline = i [] SocialAppleOutline
{-| <i class="ion-social-apple"></i> -}
socialApple : Html msg
socialApple = i [] SocialApple
{-| <i class="ion-social-bitcoin-outline"></i> -}
socialBitcoinOutline : Html msg
socialBitcoinOutline = i [] SocialBitcoinOutline
{-| <i class="ion-social-bitcoin"></i> -}
socialBitcoin : Html msg
socialBitcoin = i [] SocialBitcoin
{-| <i class="ion-social-buffer-outline"></i> -}
socialBufferOutline : Html msg
socialBufferOutline = i [] SocialBufferOutline
{-| <i class="ion-social-buffer"></i> -}
socialBuffer : Html msg
socialBuffer = i [] SocialBuffer
{-| <i class="ion-social-chrome-outline"></i> -}
socialChromeOutline : Html msg
socialChromeOutline = i [] SocialChromeOutline
{-| <i class="ion-social-chrome"></i> -}
socialChrome : Html msg
socialChrome = i [] SocialChrome
{-| <i class="ion-social-codepen-outline"></i> -}
socialCodepenOutline : Html msg
socialCodepenOutline = i [] SocialCodepenOutline
{-| <i class="ion-social-codepen"></i> -}
socialCodepen : Html msg
socialCodepen = i [] SocialCodepen
{-| <i class="ion-social-css3-outline"></i> -}
socialCss3Outline : Html msg
socialCss3Outline = i [] SocialCss3Outline
{-| <i class="ion-social-css3"></i> -}
socialCss3 : Html msg
socialCss3 = i [] SocialCss3
{-| <i class="ion-social-designernews-outline"></i> -}
socialDesignernewsOutline : Html msg
socialDesignernewsOutline = i [] SocialDesignernewsOutline
{-| <i class="ion-social-designernews"></i> -}
socialDesignernews : Html msg
socialDesignernews = i [] SocialDesignernews
{-| <i class="ion-social-dribbble-outline"></i> -}
socialDribbbleOutline : Html msg
socialDribbbleOutline = i [] SocialDribbbleOutline
{-| <i class="ion-social-dribbble"></i> -}
socialDribbble : Html msg
socialDribbble = i [] SocialDribbble
{-| <i class="ion-social-dropbox-outline"></i> -}
socialDropboxOutline : Html msg
socialDropboxOutline = i [] SocialDropboxOutline
{-| <i class="ion-social-dropbox"></i> -}
socialDropbox : Html msg
socialDropbox = i [] SocialDropbox
{-| <i class="ion-social-euro-outline"></i> -}
socialEuroOutline : Html msg
socialEuroOutline = i [] SocialEuroOutline
{-| <i class="ion-social-euro"></i> -}
socialEuro : Html msg
socialEuro = i [] SocialEuro
{-| <i class="ion-social-facebook-outline"></i> -}
socialFacebookOutline : Html msg
socialFacebookOutline = i [] SocialFacebookOutline
{-| <i class="ion-social-facebook"></i> -}
socialFacebook : Html msg
socialFacebook = i [] SocialFacebook
{-| <i class="ion-social-foursquare-outline"></i> -}
socialFoursquareOutline : Html msg
socialFoursquareOutline = i [] SocialFoursquareOutline
{-| <i class="ion-social-foursquare"></i> -}
socialFoursquare : Html msg
socialFoursquare = i [] SocialFoursquare
{-| <i class="ion-social-freebsd-devil"></i> -}
socialFreebsdDevil : Html msg
socialFreebsdDevil = i [] SocialFreebsdDevil
{-| <i class="ion-social-github-outline"></i> -}
socialGithubOutline : Html msg
socialGithubOutline = i [] SocialGithubOutline
{-| <i class="ion-social-github"></i> -}
socialGithub : Html msg
socialGithub = i [] SocialGithub
{-| <i class="ion-social-google-outline"></i> -}
socialGoogleOutline : Html msg
socialGoogleOutline = i [] SocialGoogleOutline
{-| <i class="ion-social-google"></i> -}
socialGoogle : Html msg
socialGoogle = i [] SocialGoogle
{-| <i class="ion-social-googleplus-outline"></i> -}
socialGoogleplusOutline : Html msg
socialGoogleplusOutline = i [] SocialGoogleplusOutline
{-| <i class="ion-social-googleplus"></i> -}
socialGoogleplus : Html msg
socialGoogleplus = i [] SocialGoogleplus
{-| <i class="ion-social-hackernews-outline"></i> -}
socialHackernewsOutline : Html msg
socialHackernewsOutline = i [] SocialHackernewsOutline
{-| <i class="ion-social-hackernews"></i> -}
socialHackernews : Html msg
socialHackernews = i [] SocialHackernews
{-| <i class="ion-social-html5-outline"></i> -}
socialHtml5Outline : Html msg
socialHtml5Outline = i [] SocialHtml5Outline
{-| <i class="ion-social-html5"></i> -}
socialHtml5 : Html msg
socialHtml5 = i [] SocialHtml5
{-| <i class="ion-social-instagram-outline"></i> -}
socialInstagramOutline : Html msg
socialInstagramOutline = i [] SocialInstagramOutline
{-| <i class="ion-social-instagram"></i> -}
socialInstagram : Html msg
socialInstagram = i [] SocialInstagram
{-| <i class="ion-social-javascript-outline"></i> -}
socialJavascriptOutline : Html msg
socialJavascriptOutline = i [] SocialJavascriptOutline
{-| <i class="ion-social-javascript"></i> -}
socialJavascript : Html msg
socialJavascript = i [] SocialJavascript
{-| <i class="ion-social-linkedin-outline"></i> -}
socialLinkedinOutline : Html msg
socialLinkedinOutline = i [] SocialLinkedinOutline
{-| <i class="ion-social-linkedin"></i> -}
socialLinkedin : Html msg
socialLinkedin = i [] SocialLinkedin
{-| <i class="ion-social-markdown"></i> -}
socialMarkdown : Html msg
socialMarkdown = i [] SocialMarkdown
{-| <i class="ion-social-nodejs"></i> -}
socialNodejs : Html msg
socialNodejs = i [] SocialNodejs
{-| <i class="ion-social-octocat"></i> -}
socialOctocat : Html msg
socialOctocat = i [] SocialOctocat
{-| <i class="ion-social-pinterest-outline"></i> -}
socialPinterestOutline : Html msg
socialPinterestOutline = i [] SocialPinterestOutline
{-| <i class="ion-social-pinterest"></i> -}
socialPinterest : Html msg
socialPinterest = i [] SocialPinterest
{-| <i class="ion-social-python"></i> -}
socialPython : Html msg
socialPython = i [] SocialPython
{-| <i class="ion-social-reddit-outline"></i> -}
socialRedditOutline : Html msg
socialRedditOutline = i [] SocialRedditOutline
{-| <i class="ion-social-reddit"></i> -}
socialReddit : Html msg
socialReddit = i [] SocialReddit
{-| <i class="ion-social-rss-outline"></i> -}
socialRssOutline : Html msg
socialRssOutline = i [] SocialRssOutline
{-| <i class="ion-social-rss"></i> -}
socialRss : Html msg
socialRss = i [] SocialRss
{-| <i class="ion-social-sass"></i> -}
socialSass : Html msg
socialSass = i [] SocialSass
{-| <i class="ion-social-skype-outline"></i> -}
socialSkypeOutline : Html msg
socialSkypeOutline = i [] SocialSkypeOutline
{-| <i class="ion-social-skype"></i> -}
socialSkype : Html msg
socialSkype = i [] SocialSkype
{-| <i class="ion-social-snapchat-outline"></i> -}
socialSnapchatOutline : Html msg
socialSnapchatOutline = i [] SocialSnapchatOutline
{-| <i class="ion-social-snapchat"></i> -}
socialSnapchat : Html msg
socialSnapchat = i [] SocialSnapchat
{-| <i class="ion-social-tumblr-outline"></i> -}
socialTumblrOutline : Html msg
socialTumblrOutline = i [] SocialTumblrOutline
{-| <i class="ion-social-tumblr"></i> -}
socialTumblr : Html msg
socialTumblr = i [] SocialTumblr
{-| <i class="ion-social-tux"></i> -}
socialTux : Html msg
socialTux = i [] SocialTux
{-| <i class="ion-social-twitch-outline"></i> -}
socialTwitchOutline : Html msg
socialTwitchOutline = i [] SocialTwitchOutline
{-| <i class="ion-social-twitch"></i> -}
socialTwitch : Html msg
socialTwitch = i [] SocialTwitch
{-| <i class="ion-social-twitter-outline"></i> -}
socialTwitterOutline : Html msg
socialTwitterOutline = i [] SocialTwitterOutline
{-| <i class="ion-social-twitter"></i> -}
socialTwitter : Html msg
socialTwitter = i [] SocialTwitter
{-| <i class="ion-social-usd-outline"></i> -}
socialUsdOutline : Html msg
socialUsdOutline = i [] SocialUsdOutline
{-| <i class="ion-social-usd"></i> -}
socialUsd : Html msg
socialUsd = i [] SocialUsd
{-| <i class="ion-social-vimeo-outline"></i> -}
socialVimeoOutline : Html msg
socialVimeoOutline = i [] SocialVimeoOutline
{-| <i class="ion-social-vimeo"></i> -}
socialVimeo : Html msg
socialVimeo = i [] SocialVimeo
{-| <i class="ion-social-whatsapp-outline"></i> -}
socialWhatsappOutline : Html msg
socialWhatsappOutline = i [] SocialWhatsappOutline
{-| <i class="ion-social-whatsapp"></i> -}
socialWhatsapp : Html msg
socialWhatsapp = i [] SocialWhatsapp
{-| <i class="ion-social-windows-outline"></i> -}
socialWindowsOutline : Html msg
socialWindowsOutline = i [] SocialWindowsOutline
{-| <i class="ion-social-windows"></i> -}
socialWindows : Html msg
socialWindows = i [] SocialWindows
{-| <i class="ion-social-wordpress-outline"></i> -}
socialWordpressOutline : Html msg
socialWordpressOutline = i [] SocialWordpressOutline
{-| <i class="ion-social-wordpress"></i> -}
socialWordpress : Html msg
socialWordpress = i [] SocialWordpress
{-| <i class="ion-social-yahoo-outline"></i> -}
socialYahooOutline : Html msg
socialYahooOutline = i [] SocialYahooOutline
{-| <i class="ion-social-yahoo"></i> -}
socialYahoo : Html msg
socialYahoo = i [] SocialYahoo
{-| <i class="ion-social-yen-outline"></i> -}
socialYenOutline : Html msg
socialYenOutline = i [] SocialYenOutline
{-| <i class="ion-social-yen"></i> -}
socialYen : Html msg
socialYen = i [] SocialYen
{-| <i class="ion-social-youtube-outline"></i> -}
socialYoutubeOutline : Html msg
socialYoutubeOutline = i [] SocialYoutubeOutline
{-| <i class="ion-social-youtube"></i> -}
socialYoutube : Html msg
socialYoutube = i [] SocialYoutube
{-| <i class="ion-soup-can-outline"></i> -}
soupCanOutline : Html msg
soupCanOutline = i [] SoupCanOutline
{-| <i class="ion-soup-can"></i> -}
soupCan : Html msg
soupCan = i [] SoupCan
{-| <i class="ion-speakerphone"></i> -}
speakerphone : Html msg
speakerphone = i [] Speakerphone
{-| <i class="ion-speedometer"></i> -}
speedometer : Html msg
speedometer = i [] Speedometer
{-| <i class="ion-spoon"></i> -}
spoon : Html msg
spoon = i [] Spoon
{-| <i class="ion-star"></i> -}
star : Html msg
star = i [] Star
{-| <i class="ion-stats-bars"></i> -}
statsBars : Html msg
statsBars = i [] StatsBars
{-| <i class="ion-steam"></i> -}
steam : Html msg
steam = i [] Steam
{-| <i class="ion-stop"></i> -}
stop : Html msg
stop = i [] Stop
{-| <i class="ion-thermometer"></i> -}
thermometer : Html msg
thermometer = i [] Thermometer
{-| <i class="ion-thumbsdown"></i> -}
thumbsdown : Html msg
thumbsdown = i [] Thumbsdown
{-| <i class="ion-thumbsup"></i> -}
thumbsup : Html msg
thumbsup = i [] Thumbsup
{-| <i class="ion-toggle-filled"></i> -}
toggleFilled : Html msg
toggleFilled = i [] ToggleFilled
{-| <i class="ion-toggle"></i> -}
toggle : Html msg
toggle = i [] Toggle
{-| <i class="ion-transgender"></i> -}
transgender : Html msg
transgender = i [] Transgender
{-| <i class="ion-trash-a"></i> -}
trashA : Html msg
trashA = i [] TrashA
{-| <i class="ion-trash-b"></i> -}
trashB : Html msg
trashB = i [] TrashB
{-| <i class="ion-trophy"></i> -}
trophy : Html msg
trophy = i [] Trophy
{-| <i class="ion-tshirt-outline"></i> -}
tshirtOutline : Html msg
tshirtOutline = i [] TshirtOutline
{-| <i class="ion-tshirt"></i> -}
tshirt : Html msg
tshirt = i [] Tshirt
{-| <i class="ion-umbrella"></i> -}
umbrella : Html msg
umbrella = i [] Umbrella
{-| <i class="ion-university"></i> -}
university : Html msg
university = i [] University
{-| <i class="ion-unlocked"></i> -}
unlocked : Html msg
unlocked = i [] Unlocked
{-| <i class="ion-upload"></i> -}
upload : Html msg
upload = i [] Upload
{-| <i class="ion-usb"></i> -}
usb : Html msg
usb = i [] Usb
{-| <i class="ion-videocamera"></i> -}
videocamera : Html msg
videocamera = i [] Videocamera
{-| <i class="ion-volume-high"></i> -}
volumeHigh : Html msg
volumeHigh = i [] VolumeHigh
{-| <i class="ion-volume-low"></i> -}
volumeLow : Html msg
volumeLow = i [] VolumeLow
{-| <i class="ion-volume-medium"></i> -}
volumeMedium : Html msg
volumeMedium = i [] VolumeMedium
{-| <i class="ion-volume-mute"></i> -}
volumeMute : Html msg
volumeMute = i [] VolumeMute
{-| <i class="ion-wand"></i> -}
wand : Html msg
wand = i [] Wand
{-| <i class="ion-waterdrop"></i> -}
waterdrop : Html msg
waterdrop = i [] Waterdrop
{-| <i class="ion-wifi"></i> -}
wifi : Html msg
wifi = i [] Wifi
{-| <i class="ion-wineglass"></i> -}
wineglass : Html msg
wineglass = i [] Wineglass
{-| <i class="ion-woman"></i> -}
woman : Html msg
woman = i [] Woman
{-| <i class="ion-wrench"></i> -}
wrench : Html msg
wrench = i [] Wrench
{-| <i class="ion-xbox"></i> -}
xbox : Html msg
xbox = i [] Xbox
