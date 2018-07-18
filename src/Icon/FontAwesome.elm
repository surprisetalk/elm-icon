
module Icon.FontAwesome exposing (..)

-- DOCS ------------------------------------------------------------------------

-- TODO: figure out an elegant way to implement Html.Attributes
-- TODO:  maybe just the important ones? like fontWeight and color
-- TODO:  this is esp. important for layers

-- TODO: consider splitting this into four different repositories
-- TODO:   or keep this one, but also make elm-fontawesome, elm-ionicons, etc

-- TODO: support for 4.7
-- TODO: Icon.FontAwesome.Old

{-| <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"/>
Learn more at [FontAwesome](https://fontawesome.com/).

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
@docs accessibleIcon, accusoft, addressBook, addressCard, adjust, adn, adversal, affiliatetheme, alarmClock, algolia, alignCenter, alignJustify, alignLeft, alignRight, amazon, amazonPay, ambulance, americanSignLanguageInterpreting, amilia, anchor, android, angellist, angleDoubleDown, angleDoubleLeft, angleDoubleRight, angleDoubleUp, angleDown, angleLeft, angleRight, angleUp, angrycreative, angular, appStore, appStoreIos, apper, apple, applePay, archive, arrowAltCircleDown, arrowAltCircleLeft, arrowAltCircleRight, arrowAltCircleUp, arrowAltDown, arrowAltFromBottom, arrowAltFromLeft, arrowAltFromRight, arrowAltFromTop, arrowAltLeft, arrowAltRight, arrowAltSquareDown, arrowAltSquareLeft, arrowAltSquareRight, arrowAltSquareUp, arrowAltToBottom, arrowAltToLeft, arrowAltToRight, arrowAltToTop, arrowAltUp, arrowCircleDown, arrowCircleLeft, arrowCircleRight, arrowCircleUp, arrowDown, arrowFromBottom, arrowFromLeft, arrowFromRight, arrowFromTop, arrowLeft, arrowRight, arrowSquareDown, arrowSquareLeft, arrowSquareRight, arrowSquareUp, arrowToBottom, arrowToLeft, arrowToRight, arrowToTop, arrowUp, arrows, arrowsAlt, arrowsAltH, arrowsAltV, arrowsH, arrowsV, assistiveListeningSystems, asterisk, asymmetrik, at, audible, audioDescription, autoprefixer, avianex, aviato, aws, backward, badge, badgeCheck, balanceScale, ban, bandcamp, barcode, bars, baseball, baseballBall, basketballBall, basketballHoop, bath, batteryBolt, batteryEmpty, batteryFull, batteryHalf, batteryQuarter, batterySlash, batteryThreeQuarters, bed, beer, behance, behanceSquare, bell, bellSlash, bicycle, bimobject, binoculars, birthdayCake, bitbucket, bitcoin, bity, blackTie, blackberry, blind, blogger, bloggerB, bluetooth, bluetoothB, bold, bolt, bomb, book, bookmark, bowlingBall, bowlingPins, boxingGlove, braille, briefcase, browser, btc, bug, building, bullhorn, bullseye, buromobelexperte, bus, buysellads, calculator, calendar, calendarAlt, calendarCheck, calendarEdit, calendarExclamation, calendarMinus, calendarPlus, calendarTimes, camera, cameraAlt, cameraRetro, car, caretCircleDown, caretCircleLeft, caretCircleRight, caretCircleUp, caretDown, caretLeft, caretRight, caretSquareDown, caretSquareLeft, caretSquareRight, caretSquareUp, caretUp, cartArrowDown, cartPlus, ccAmazonPay, ccAmex, ccApplePay, ccDinersClub, ccDiscover, ccJcb, ccMastercard, ccPaypal, ccStripe, ccVisa, centercode, certificate, chartArea, chartBar, chartLine, chartPie, check, checkCircle, checkSquare, chess, chessBishop, chessBishopAlt, chessBoard, chessClock, chessClockAlt, chessKing, chessKingAlt, chessKnight, chessKnightAlt, chessPawn, chessPawnAlt, chessQueen, chessQueenAlt, chessRook, chessRookAlt, chevronCircleDown, chevronCircleLeft, chevronCircleRight, chevronCircleUp, chevronDoubleDown, chevronDoubleLeft, chevronDoubleRight, chevronDoubleUp, chevronDown, chevronLeft, chevronRight, chevronSquareDown, chevronSquareLeft, chevronSquareRight, chevronSquareUp, chevronUp, child, chrome, circle, circleNotch, clipboard, clock, clone, closedCaptioning, cloud, cloudDownload, cloudDownloadAlt, cloudUpload, cloudUploadAlt, cloudscale, cloudsmith, cloudversify, club, code, codeBranch, codeCommit, codeMerge, codepen, codiepie, coffee, cog, cogs, columns, comment, commentAlt, comments, compass, compress, compressAlt, compressWide, connectdevelop, contao, copy, copyright, cpanel, creativeCommons, creditCard, creditCardBlank, creditCardFront, cricket, crop, crosshairs, css3, css3Alt, cube, cubes, curling, cut, cuttlefish, dAndD, dashcube, database, deaf, delicious, deploydog, deskpro, desktop, desktopAlt, deviantart, diamond, digg, digitalOcean, discord, discourse, dochub, docker, dollarSign, dotCircle, download, draft2Digital, dribbble, dribbbleSquare, dropbox, drupal, dumbbell, dyalog, earlybirds, edge, edit, eject, elementor, ellipsisH, ellipsisHAlt, ellipsisV, ellipsisVAlt, ember, empire, envelope, envelopeOpen, envelopeSquare, envira, eraser, erlang, ethereum, etsy, euroSign, exchange, exchangeAlt, exclamation, exclamationCircle, exclamationSquare, exclamationTriangle, expand, expandAlt, expandArrows, expandArrowsAlt, expandWide, expeditedssl, externalLink, externalLinkAlt, externalLinkSquare, externalLinkSquareAlt, eye, eyeDropper, eyeSlash, facebook, facebookF, facebookMessenger, facebookSquare, fastBackward, fastForward, fax, female, fieldHockey, fighterJet, file, fileAlt, fileArchive, fileAudio, fileCheck, fileCode, fileEdit, fileExcel, fileExclamation, fileImage, fileMinus, filePdf, filePlus, filePowerpoint, fileTimes, fileVideo, fileWord, film, filmAlt, filter, fire, fireExtinguisher, firefox, firstOrder, firstdraft, flag, flagCheckered, flask, flickr, flipboard, fly, folder, folderOpen, font, fontAwesome, fontAwesomeAlt, fontAwesomeFlag, fonticons, fonticonsFi, footballBall, footballHelmet, fortAwesome, fortAwesomeAlt, forumbee, forward, foursquare, freeCodeCamp, freebsd, frown, futbol, gamepad, gavel, gem, genderless, getPocket, gg, ggCircle, gift, git, gitSquare, github, githubAlt, githubSquare, gitkraken, gitlab, gitter, glassMartini, glide, glideG, globe, gofore, golfBall, golfClub, goodreads, goodreadsG, google, googleDrive, googlePlay, googlePlus, googlePlusG, googlePlusSquare, googleWallet, graduationCap, gratipay, grav, gripfire, grunt, gulp, h1, h2, h3, hSquare, hackerNews, hackerNewsSquare, handLizard, handPaper, handPeace, handPointDown, handPointLeft, handPointRight, handPointUp, handPointer, handRock, handScissors, handSpock, handshake, hashtag, hdd, heading, headphones, heart, heartbeat, hexagon, hips, hireAHelper, history, hockeyPuck, hockeySticks, home, hooli, hospital, hotjar, hourglass, hourglassEnd, hourglassHalf, hourglassStart, houzz, html5, hubspot, iCursor, idBadge, idCard, image, images, imdb, inbox, inboxIn, inboxOut, indent, industry, industryAlt, info, infoCircle, infoSquare, instagram, internetExplorer, ioxhost, italic, itunes, itunesNote, jackOLantern, jenkins, joget, joomla, js, jsSquare, jsfiddle, key, keyboard, keycdn, kickstarter, kickstarterK, korvue, language, laptop, laravel, lastfm, lastfmSquare, leaf, leanpub, lemon, less, levelDown, levelDownAlt, levelUp, levelUpAlt, lifeRing, lightbulb, line, link, linkedin, linkedinIn, linode, linux, liraSign, list, listAlt, listOl, listUl, locationArrow, lock, lockAlt, lockOpen, lockOpenAlt, longArrowAltDown, longArrowAltLeft, longArrowAltRight, longArrowAltUp, longArrowDown, longArrowLeft, longArrowRight, longArrowUp, lowVision, luchador, lyft, magento, magic, magnet, male, map, mapMarker, mapMarkerAlt, mapPin, mapSigns, mars, marsDouble, marsStroke, marsStrokeH, marsStrokeV, maxcdn, medapps, medium, mediumM, medkit, medrt, meetup, meh, mercury, microchip, microphone, microphoneAlt, microphoneSlash, microsoft, minus, minusCircle, minusHexagon, minusOctagon, minusSquare, mix, mixcloud, mizuni, mobile, mobileAlt, mobileAndroid, mobileAndroidAlt, modx, monero, moneyBill, moneyBillAlt, moon, motorcycle, mousePointer, music, napster, neuter, newspaper, nintendoSwitch, node, nodeJs, npm, ns8, nutritionix, objectGroup, objectUngroup, octagon, odnoklassniki, odnoklassnikiSquare, opencart, openid, opera, optinMonster, osi, outdent, page4, pagelines, paintBrush, palfed, paperPlane, paperclip, paragraph, paste, patreon, pause, pauseCircle, paw, paypal, pen, penAlt, penSquare, pencil, pencilAlt, pennant, percent, periscope, phabricator, phoenixFramework, phone, phoneSlash, phoneSquare, phoneVolume, php, piedPiper, piedPiperAlt, piedPiperPp, pinterest, pinterestP, pinterestSquare, plane, planeAlt, play, playCircle, playstation, plug, plus, plusCircle, plusHexagon, plusOctagon, plusSquare, podcast, poo, portrait, poundSign, powerOff, print, productHunt, pushed, puzzlePiece, python, qq, qrcode, question, questionCircle, questionSquare, quidditch, quinscape, quora, quoteLeft, quoteRight, racquet, random, ravelry, react, rebel, rectangleLandscape, rectanglePortrait, rectangleWide, recycle, redRiver, reddit, redditAlien, redditSquare, redo, redoAlt, registered, rendact, renren, repeat, repeat1, repeat1Alt, repeatAlt, reply, replyAll, replyd, resolving, retweet, retweetAlt, road, rocket, rocketchat, rockrms, rss, rssSquare, rubleSign, rupeeSign, safari, sass, save, schlix, scribd, scrubber, search, searchMinus, searchPlus, searchengin, sellcast, sellsy, server, servicestack, share, shareAll, shareAlt, shareAltSquare, shareSquare, shekelSign, shield, shieldAlt, shieldCheck, ship, shirtsinbulk, shoppingBag, shoppingBasket, shoppingCart, shower, shuttlecock, signIn, signInAlt, signLanguage, signOut, signOutAlt, signal, simplybuilt, sistrix, sitemap, skyatlas, skype, slack, slackHash, slidersH, slidersHSquare, slidersV, slidersVSquare, slideshare, smile, snapchat, snapchatGhost, snapchatSquare, snowflake, sort, sortAlphaDown, sortAlphaUp, sortAmountDown, sortAmountUp, sortDown, sortNumericDown, sortNumericUp, sortUp, soundcloud, spaceShuttle, spade, speakap, spinner, spinnerThird, spotify, square, squareFull, stackExchange, stackOverflow, star, starExclamation, starHalf, staylinked, steam, steamSquare, steamSymbol, stepBackward, stepForward, stethoscope, stickerMule, stickyNote, stop, stopCircle, stopwatch, strava, streetView, strikethrough, stripe, stripeS, studiovinari, stumbleupon, stumbleuponCircle, subscript, subway, suitcase, sun, superpowers, superscript, supple, sync, syncAlt, table, tableTennis, tablet, tabletAlt, tabletAndroid, tabletAndroidAlt, tachometer, tachometerAlt, tag, tags, tasks, taxi, telegram, telegramPlane, tencentWeibo, tennisBall, terminal, textHeight, textWidth, th, thLarge, thList, themeisle, thermometerEmpty, thermometerFull, thermometerHalf, thermometerQuarter, thermometerThreeQuarters, thumbsDown, thumbsUp, thumbtack, ticket, ticketAlt, times, timesCircle, timesHexagon, timesOctagon, timesSquare, tint, toggleOff, toggleOn, trademark, train, transgender, transgenderAlt, trash, trashAlt, tree, treeAlt, trello, triangle, tripadvisor, trophy, trophyAlt, truck, tty, tumblr, tumblrSquare, tv, tvRetro, twitch, twitter, twitterSquare, typo3, uber, uikit, umbrella, underline, undo, undoAlt, uniregistry, universalAccess, university, unlink, unlock, unlockAlt, untappd, upload, usb, usdCircle, usdSquare, user, userAlt, userCircle, userMd, userPlus, userSecret, userTimes, users, ussunnah, utensilFork, utensilKnife, utensilSpoon, utensils, utensilsAlt, vaadin, venus, venusDouble, venusMars, viacoin, viadeo, viadeoSquare, viber, video, vimeo, vimeoSquare, vimeoV, vine, vk, vnv, volleyballBall, volumeDown, volumeMute, volumeOff, volumeUp, vuejs, watch, weibo, weixin, whatsapp, whatsappSquare, wheelchair, whistle, whmcs, wifi, wikipediaW, window, windowAlt, windowClose, windowMaximize, windowMinimize, windowRestore, windows, wonSign, wordpress, wordpressSimple, wpbeginner, wpexplorer, wpforms, wrench, xbox, xing, xingSquare, yCombinator, yahoo, yandex, yandexInternational, yelp, yenSign, yoast, youtube, youtubeSquare

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
        , Icon.i [] Meh
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

{-| -}
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

{-| -}
type Animation
  = Spin
  | Pulse

{-| -}
type alias Transform
-- TODO: i think we can make a better api for this
  = { scale  : Maybe ( Scale Float)
    , shiftX : Maybe (ShiftX Float)
    , shiftY : Maybe (ShiftY Float)
    , rotate : Maybe (       Float)
    }

{-| -}
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

{-| -}
type Scale a
  = Grow   a
  | Shrink a

{-| -}
type Corner
  = BottomLeft
  | BottomRight
  | TopLeft
  | TopRight

{-| -}
type ShiftY a
  = Up    a
  | Down  a

{-| -}
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

{-| -}
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
  | Draft2Digital
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

{-| <i class="far fa-address-book"></i> -}
addressBook : Html msg
addressBook = i [] AddressBook
{-| <i class="far fa-address-card"></i> -}
addressCard : Html msg
addressCard = i [] AddressCard
{-| <i class="far fa-adjust"></i> -}
adjust : Html msg
adjust = i [] Adjust
{-| <i class="far fa-alarm-clock"></i> -}
alarmClock : Html msg
alarmClock = i [] AlarmClock
{-| <i class="far fa-align-center"></i> -}
alignCenter : Html msg
alignCenter = i [] AlignCenter
{-| <i class="far fa-align-justify"></i> -}
alignJustify : Html msg
alignJustify = i [] AlignJustify
{-| <i class="far fa-align-left"></i> -}
alignLeft : Html msg
alignLeft = i [] AlignLeft
{-| <i class="far fa-align-right"></i> -}
alignRight : Html msg
alignRight = i [] AlignRight
{-| <i class="far fa-allergies"></i> -}
allergies : Html msg
allergies = i [] Allergies
{-| <i class="far fa-ambulance"></i> -}
ambulance : Html msg
ambulance = i [] Ambulance
{-| <i class="far fa-american-sign-language-interpreting"></i> -}
americanSignLanguageInterpreting : Html msg
americanSignLanguageInterpreting = i [] AmericanSignLanguageInterpreting
{-| <i class="far fa-anchor"></i> -}
anchor : Html msg
anchor = i [] Anchor
{-| <i class="far fa-angle-double-down"></i> -}
angleDoubleDown : Html msg
angleDoubleDown = i [] AngleDoubleDown
{-| <i class="far fa-angle-double-left"></i> -}
angleDoubleLeft : Html msg
angleDoubleLeft = i [] AngleDoubleLeft
{-| <i class="far fa-angle-double-right"></i> -}
angleDoubleRight : Html msg
angleDoubleRight = i [] AngleDoubleRight
{-| <i class="far fa-angle-double-up"></i> -}
angleDoubleUp : Html msg
angleDoubleUp = i [] AngleDoubleUp
{-| <i class="far fa-angle-down"></i> -}
angleDown : Html msg
angleDown = i [] AngleDown
{-| <i class="far fa-angle-left"></i> -}
angleLeft : Html msg
angleLeft = i [] AngleLeft
{-| <i class="far fa-angle-right"></i> -}
angleRight : Html msg
angleRight = i [] AngleRight
{-| <i class="far fa-angle-up"></i> -}
angleUp : Html msg
angleUp = i [] AngleUp
{-| <i class="far fa-angry"></i> -}
angry : Html msg
angry = i [] Angry
{-| <i class="far fa-archive"></i> -}
archive : Html msg
archive = i [] Archive
{-| <i class="far fa-archway"></i> -}
archway : Html msg
archway = i [] Archway
{-| <i class="far fa-arrow-alt-circle-down"></i> -}
arrowAltCircleDown : Html msg
arrowAltCircleDown = i [] ArrowAltCircleDown
{-| <i class="far fa-arrow-alt-circle-left"></i> -}
arrowAltCircleLeft : Html msg
arrowAltCircleLeft = i [] ArrowAltCircleLeft
{-| <i class="far fa-arrow-alt-circle-right"></i> -}
arrowAltCircleRight : Html msg
arrowAltCircleRight = i [] ArrowAltCircleRight
{-| <i class="far fa-arrow-alt-circle-up"></i> -}
arrowAltCircleUp : Html msg
arrowAltCircleUp = i [] ArrowAltCircleUp
{-| <i class="far fa-arrow-alt-down"></i> -}
arrowAltDown : Html msg
arrowAltDown = i [] ArrowAltDown
{-| <i class="far fa-arrow-alt-from-bottom"></i> -}
arrowAltFromBottom : Html msg
arrowAltFromBottom = i [] ArrowAltFromBottom
{-| <i class="far fa-arrow-alt-from-left"></i> -}
arrowAltFromLeft : Html msg
arrowAltFromLeft = i [] ArrowAltFromLeft
{-| <i class="far fa-arrow-alt-from-right"></i> -}
arrowAltFromRight : Html msg
arrowAltFromRight = i [] ArrowAltFromRight
{-| <i class="far fa-arrow-alt-from-top"></i> -}
arrowAltFromTop : Html msg
arrowAltFromTop = i [] ArrowAltFromTop
{-| <i class="far fa-arrow-alt-left"></i> -}
arrowAltLeft : Html msg
arrowAltLeft = i [] ArrowAltLeft
{-| <i class="far fa-arrow-alt-right"></i> -}
arrowAltRight : Html msg
arrowAltRight = i [] ArrowAltRight
{-| <i class="far fa-arrow-alt-square-down"></i> -}
arrowAltSquareDown : Html msg
arrowAltSquareDown = i [] ArrowAltSquareDown
{-| <i class="far fa-arrow-alt-square-left"></i> -}
arrowAltSquareLeft : Html msg
arrowAltSquareLeft = i [] ArrowAltSquareLeft
{-| <i class="far fa-arrow-alt-square-right"></i> -}
arrowAltSquareRight : Html msg
arrowAltSquareRight = i [] ArrowAltSquareRight
{-| <i class="far fa-arrow-alt-square-up"></i> -}
arrowAltSquareUp : Html msg
arrowAltSquareUp = i [] ArrowAltSquareUp
{-| <i class="far fa-arrow-alt-to-bottom"></i> -}
arrowAltToBottom : Html msg
arrowAltToBottom = i [] ArrowAltToBottom
{-| <i class="far fa-arrow-alt-to-left"></i> -}
arrowAltToLeft : Html msg
arrowAltToLeft = i [] ArrowAltToLeft
{-| <i class="far fa-arrow-alt-to-right"></i> -}
arrowAltToRight : Html msg
arrowAltToRight = i [] ArrowAltToRight
{-| <i class="far fa-arrow-alt-to-top"></i> -}
arrowAltToTop : Html msg
arrowAltToTop = i [] ArrowAltToTop
{-| <i class="far fa-arrow-alt-up"></i> -}
arrowAltUp : Html msg
arrowAltUp = i [] ArrowAltUp
{-| <i class="far fa-arrow-circle-down"></i> -}
arrowCircleDown : Html msg
arrowCircleDown = i [] ArrowCircleDown
{-| <i class="far fa-arrow-circle-left"></i> -}
arrowCircleLeft : Html msg
arrowCircleLeft = i [] ArrowCircleLeft
{-| <i class="far fa-arrow-circle-right"></i> -}
arrowCircleRight : Html msg
arrowCircleRight = i [] ArrowCircleRight
{-| <i class="far fa-arrow-circle-up"></i> -}
arrowCircleUp : Html msg
arrowCircleUp = i [] ArrowCircleUp
{-| <i class="far fa-arrow-down"></i> -}
arrowDown : Html msg
arrowDown = i [] ArrowDown
{-| <i class="far fa-arrow-from-bottom"></i> -}
arrowFromBottom : Html msg
arrowFromBottom = i [] ArrowFromBottom
{-| <i class="far fa-arrow-from-left"></i> -}
arrowFromLeft : Html msg
arrowFromLeft = i [] ArrowFromLeft
{-| <i class="far fa-arrow-from-right"></i> -}
arrowFromRight : Html msg
arrowFromRight = i [] ArrowFromRight
{-| <i class="far fa-arrow-from-top"></i> -}
arrowFromTop : Html msg
arrowFromTop = i [] ArrowFromTop
{-| <i class="far fa-arrow-left"></i> -}
arrowLeft : Html msg
arrowLeft = i [] ArrowLeft
{-| <i class="far fa-arrow-right"></i> -}
arrowRight : Html msg
arrowRight = i [] ArrowRight
{-| <i class="far fa-arrow-square-down"></i> -}
arrowSquareDown : Html msg
arrowSquareDown = i [] ArrowSquareDown
{-| <i class="far fa-arrow-square-left"></i> -}
arrowSquareLeft : Html msg
arrowSquareLeft = i [] ArrowSquareLeft
{-| <i class="far fa-arrow-square-right"></i> -}
arrowSquareRight : Html msg
arrowSquareRight = i [] ArrowSquareRight
{-| <i class="far fa-arrow-square-up"></i> -}
arrowSquareUp : Html msg
arrowSquareUp = i [] ArrowSquareUp
{-| <i class="far fa-arrow-to-bottom"></i> -}
arrowToBottom : Html msg
arrowToBottom = i [] ArrowToBottom
{-| <i class="far fa-arrow-to-left"></i> -}
arrowToLeft : Html msg
arrowToLeft = i [] ArrowToLeft
{-| <i class="far fa-arrow-to-right"></i> -}
arrowToRight : Html msg
arrowToRight = i [] ArrowToRight
{-| <i class="far fa-arrow-to-top"></i> -}
arrowToTop : Html msg
arrowToTop = i [] ArrowToTop
{-| <i class="far fa-arrow-up"></i> -}
arrowUp : Html msg
arrowUp = i [] ArrowUp
{-| <i class="far fa-arrows"></i> -}
arrows : Html msg
arrows = i [] Arrows
{-| <i class="far fa-arrows-alt"></i> -}
arrowsAlt : Html msg
arrowsAlt = i [] ArrowsAlt
{-| <i class="far fa-arrows-alt-h"></i> -}
arrowsAltH : Html msg
arrowsAltH = i [] ArrowsAltH
{-| <i class="far fa-arrows-alt-v"></i> -}
arrowsAltV : Html msg
arrowsAltV = i [] ArrowsAltV
{-| <i class="far fa-arrows-h"></i> -}
arrowsH : Html msg
arrowsH = i [] ArrowsH
{-| <i class="far fa-arrows-v"></i> -}
arrowsV : Html msg
arrowsV = i [] ArrowsV
{-| <i class="far fa-assistive-listening-systems"></i> -}
assistiveListeningSystems : Html msg
assistiveListeningSystems = i [] AssistiveListeningSystems
{-| <i class="far fa-asterisk"></i> -}
asterisk : Html msg
asterisk = i [] Asterisk
{-| <i class="far fa-at"></i> -}
at : Html msg
at = i [] At
{-| <i class="far fa-atlas"></i> -}
atlas : Html msg
atlas = i [] Atlas
{-| <i class="far fa-audio-description"></i> -}
audioDescription : Html msg
audioDescription = i [] AudioDescription
{-| <i class="far fa-award"></i> -}
award : Html msg
award = i [] Award
{-| <i class="far fa-backspace"></i> -}
backspace : Html msg
backspace = i [] Backspace
{-| <i class="far fa-backward"></i> -}
backward : Html msg
backward = i [] Backward
{-| <i class="far fa-badge"></i> -}
badge : Html msg
badge = i [] Badge
{-| <i class="far fa-badge-check"></i> -}
badgeCheck : Html msg
badgeCheck = i [] BadgeCheck
{-| <i class="far fa-balance-scale"></i> -}
balanceScale : Html msg
balanceScale = i [] BalanceScale
{-| <i class="far fa-balance-scale-left"></i> -}
balanceScaleLeft : Html msg
balanceScaleLeft = i [] BalanceScaleLeft
{-| <i class="far fa-balance-scale-right"></i> -}
balanceScaleRight : Html msg
balanceScaleRight = i [] BalanceScaleRight
{-| <i class="far fa-ban"></i> -}
ban : Html msg
ban = i [] Ban
{-| <i class="far fa-band-aid"></i> -}
bandAid : Html msg
bandAid = i [] BandAid
{-| <i class="far fa-barcode"></i> -}
barcode : Html msg
barcode = i [] Barcode
{-| <i class="far fa-barcode-alt"></i> -}
barcodeAlt : Html msg
barcodeAlt = i [] BarcodeAlt
{-| <i class="far fa-barcode-read"></i> -}
barcodeRead : Html msg
barcodeRead = i [] BarcodeRead
{-| <i class="far fa-barcode-scan"></i> -}
barcodeScan : Html msg
barcodeScan = i [] BarcodeScan
{-| <i class="far fa-bars"></i> -}
bars : Html msg
bars = i [] Bars
{-| <i class="far fa-baseball"></i> -}
baseball : Html msg
baseball = i [] Baseball
{-| <i class="far fa-baseball-ball"></i> -}
baseballBall : Html msg
baseballBall = i [] BaseballBall
{-| <i class="far fa-basketball-ball"></i> -}
basketballBall : Html msg
basketballBall = i [] BasketballBall
{-| <i class="far fa-basketball-hoop"></i> -}
basketballHoop : Html msg
basketballHoop = i [] BasketballHoop
{-| <i class="far fa-bath"></i> -}
bath : Html msg
bath = i [] Bath
{-| <i class="far fa-battery-bolt"></i> -}
batteryBolt : Html msg
batteryBolt = i [] BatteryBolt
{-| <i class="far fa-battery-empty"></i> -}
batteryEmpty : Html msg
batteryEmpty = i [] BatteryEmpty
{-| <i class="far fa-battery-full"></i> -}
batteryFull : Html msg
batteryFull = i [] BatteryFull
{-| <i class="far fa-battery-half"></i> -}
batteryHalf : Html msg
batteryHalf = i [] BatteryHalf
{-| <i class="far fa-battery-quarter"></i> -}
batteryQuarter : Html msg
batteryQuarter = i [] BatteryQuarter
{-| <i class="far fa-battery-slash"></i> -}
batterySlash : Html msg
batterySlash = i [] BatterySlash
{-| <i class="far fa-battery-three-quarters"></i> -}
batteryThreeQuarters : Html msg
batteryThreeQuarters = i [] BatteryThreeQuarters
{-| <i class="far fa-bed"></i> -}
bed : Html msg
bed = i [] Bed
{-| <i class="far fa-beer"></i> -}
beer : Html msg
beer = i [] Beer
{-| <i class="far fa-bell"></i> -}
bell : Html msg
bell = i [] Bell
{-| <i class="far fa-bell-slash"></i> -}
bellSlash : Html msg
bellSlash = i [] BellSlash
{-| <i class="far fa-bezier-curve"></i> -}
bezierCurve : Html msg
bezierCurve = i [] BezierCurve
{-| <i class="far fa-bicycle"></i> -}
bicycle : Html msg
bicycle = i [] Bicycle
{-| <i class="far fa-binoculars"></i> -}
binoculars : Html msg
binoculars = i [] Binoculars
{-| <i class="far fa-birthday-cake"></i> -}
birthdayCake : Html msg
birthdayCake = i [] BirthdayCake
{-| <i class="far fa-blanket"></i> -}
blanket : Html msg
blanket = i [] Blanket
{-| <i class="far fa-blender"></i> -}
blender : Html msg
blender = i [] Blender
{-| <i class="far fa-blind"></i> -}
blind : Html msg
blind = i [] Blind
{-| <i class="far fa-bold"></i> -}
bold : Html msg
bold = i [] Bold
{-| <i class="far fa-bolt"></i> -}
bolt : Html msg
bolt = i [] Bolt
{-| <i class="far fa-bomb"></i> -}
bomb : Html msg
bomb = i [] Bomb
{-| <i class="far fa-bong"></i> -}
bong : Html msg
bong = i [] Bong
{-| <i class="far fa-book"></i> -}
book : Html msg
book = i [] Book
{-| <i class="far fa-book-heart"></i> -}
bookHeart : Html msg
bookHeart = i [] BookHeart
{-| <i class="far fa-book-open"></i> -}
bookOpen : Html msg
bookOpen = i [] BookOpen
{-| <i class="far fa-bookmark"></i> -}
bookmark : Html msg
bookmark = i [] Bookmark
{-| <i class="far fa-bowling-ball"></i> -}
bowlingBall : Html msg
bowlingBall = i [] BowlingBall
{-| <i class="far fa-bowling-pins"></i> -}
bowlingPins : Html msg
bowlingPins = i [] BowlingPins
{-| <i class="far fa-box"></i> -}
box : Html msg
box = i [] Box
{-| <i class="far fa-box-alt"></i> -}
boxAlt : Html msg
boxAlt = i [] BoxAlt
{-| <i class="far fa-box-check"></i> -}
boxCheck : Html msg
boxCheck = i [] BoxCheck
{-| <i class="far fa-box-fragile"></i> -}
boxFragile : Html msg
boxFragile = i [] BoxFragile
{-| <i class="far fa-box-full"></i> -}
boxFull : Html msg
boxFull = i [] BoxFull
{-| <i class="far fa-box-heart"></i> -}
boxHeart : Html msg
boxHeart = i [] BoxHeart
{-| <i class="far fa-box-open"></i> -}
boxOpen : Html msg
boxOpen = i [] BoxOpen
{-| <i class="far fa-box-up"></i> -}
boxUp : Html msg
boxUp = i [] BoxUp
{-| <i class="far fa-box-usd"></i> -}
boxUsd : Html msg
boxUsd = i [] BoxUsd
{-| <i class="far fa-boxes"></i> -}
boxes : Html msg
boxes = i [] Boxes
{-| <i class="far fa-boxes-alt"></i> -}
boxesAlt : Html msg
boxesAlt = i [] BoxesAlt
{-| <i class="far fa-boxing-glove"></i> -}
boxingGlove : Html msg
boxingGlove = i [] BoxingGlove
{-| <i class="far fa-braille"></i> -}
braille : Html msg
braille = i [] Braille
{-| <i class="far fa-briefcase"></i> -}
briefcase : Html msg
briefcase = i [] Briefcase
{-| <i class="far fa-briefcase-medical"></i> -}
briefcaseMedical : Html msg
briefcaseMedical = i [] BriefcaseMedical
{-| <i class="far fa-broadcast-tower"></i> -}
broadcastTower : Html msg
broadcastTower = i [] BroadcastTower
{-| <i class="far fa-broom"></i> -}
broom : Html msg
broom = i [] Broom
{-| <i class="far fa-browser"></i> -}
browser : Html msg
browser = i [] Browser
{-| <i class="far fa-brush"></i> -}
brush : Html msg
brush = i [] Brush
{-| <i class="far fa-bug"></i> -}
bug : Html msg
bug = i [] Bug
{-| <i class="far fa-building"></i> -}
building : Html msg
building = i [] Building
{-| <i class="far fa-bullhorn"></i> -}
bullhorn : Html msg
bullhorn = i [] Bullhorn
{-| <i class="far fa-bullseye"></i> -}
bullseye : Html msg
bullseye = i [] Bullseye
{-| <i class="far fa-burn"></i> -}
burn : Html msg
burn = i [] Burn
{-| <i class="far fa-bus"></i> -}
bus : Html msg
bus = i [] Bus
{-| <i class="far fa-bus-alt"></i> -}
busAlt : Html msg
busAlt = i [] BusAlt
{-| <i class="far fa-calculator"></i> -}
calculator : Html msg
calculator = i [] Calculator
{-| <i class="far fa-calendar"></i> -}
calendar : Html msg
calendar = i [] Calendar
{-| <i class="far fa-calendar-alt"></i> -}
calendarAlt : Html msg
calendarAlt = i [] CalendarAlt
{-| <i class="far fa-calendar-check"></i> -}
calendarCheck : Html msg
calendarCheck = i [] CalendarCheck
{-| <i class="far fa-calendar-edit"></i> -}
calendarEdit : Html msg
calendarEdit = i [] CalendarEdit
{-| <i class="far fa-calendar-exclamation"></i> -}
calendarExclamation : Html msg
calendarExclamation = i [] CalendarExclamation
{-| <i class="far fa-calendar-minus"></i> -}
calendarMinus : Html msg
calendarMinus = i [] CalendarMinus
{-| <i class="far fa-calendar-plus"></i> -}
calendarPlus : Html msg
calendarPlus = i [] CalendarPlus
{-| <i class="far fa-calendar-times"></i> -}
calendarTimes : Html msg
calendarTimes = i [] CalendarTimes
{-| <i class="far fa-camera"></i> -}
camera : Html msg
camera = i [] Camera
{-| <i class="far fa-camera-alt"></i> -}
cameraAlt : Html msg
cameraAlt = i [] CameraAlt
{-| <i class="far fa-camera-retro"></i> -}
cameraRetro : Html msg
cameraRetro = i [] CameraRetro
{-| <i class="far fa-cannabis"></i> -}
cannabis : Html msg
cannabis = i [] Cannabis
{-| <i class="far fa-capsules"></i> -}
capsules : Html msg
capsules = i [] Capsules
{-| <i class="far fa-car"></i> -}
car : Html msg
car = i [] Car
{-| <i class="far fa-caret-circle-down"></i> -}
caretCircleDown : Html msg
caretCircleDown = i [] CaretCircleDown
{-| <i class="far fa-caret-circle-left"></i> -}
caretCircleLeft : Html msg
caretCircleLeft = i [] CaretCircleLeft
{-| <i class="far fa-caret-circle-right"></i> -}
caretCircleRight : Html msg
caretCircleRight = i [] CaretCircleRight
{-| <i class="far fa-caret-circle-up"></i> -}
caretCircleUp : Html msg
caretCircleUp = i [] CaretCircleUp
{-| <i class="far fa-caret-down"></i> -}
caretDown : Html msg
caretDown = i [] CaretDown
{-| <i class="far fa-caret-left"></i> -}
caretLeft : Html msg
caretLeft = i [] CaretLeft
{-| <i class="far fa-caret-right"></i> -}
caretRight : Html msg
caretRight = i [] CaretRight
{-| <i class="far fa-caret-square-down"></i> -}
caretSquareDown : Html msg
caretSquareDown = i [] CaretSquareDown
{-| <i class="far fa-caret-square-left"></i> -}
caretSquareLeft : Html msg
caretSquareLeft = i [] CaretSquareLeft
{-| <i class="far fa-caret-square-right"></i> -}
caretSquareRight : Html msg
caretSquareRight = i [] CaretSquareRight
{-| <i class="far fa-caret-square-up"></i> -}
caretSquareUp : Html msg
caretSquareUp = i [] CaretSquareUp
{-| <i class="far fa-caret-up"></i> -}
caretUp : Html msg
caretUp = i [] CaretUp
{-| <i class="far fa-cart-arrow-down"></i> -}
cartArrowDown : Html msg
cartArrowDown = i [] CartArrowDown
{-| <i class="far fa-cart-plus"></i> -}
cartPlus : Html msg
cartPlus = i [] CartPlus
{-| <i class="far fa-certificate"></i> -}
certificate : Html msg
certificate = i [] Certificate
{-| <i class="far fa-chalkboard"></i> -}
chalkboard : Html msg
chalkboard = i [] Chalkboard
{-| <i class="far fa-chalkboard-teacher"></i> -}
chalkboardTeacher : Html msg
chalkboardTeacher = i [] ChalkboardTeacher
{-| <i class="far fa-chart-area"></i> -}
chartArea : Html msg
chartArea = i [] ChartArea
{-| <i class="far fa-chart-bar"></i> -}
chartBar : Html msg
chartBar = i [] ChartBar
{-| <i class="far fa-chart-line"></i> -}
chartLine : Html msg
chartLine = i [] ChartLine
{-| <i class="far fa-chart-pie"></i> -}
chartPie : Html msg
chartPie = i [] ChartPie
{-| <i class="far fa-check"></i> -}
check : Html msg
check = i [] Check
{-| <i class="far fa-check-circle"></i> -}
checkCircle : Html msg
checkCircle = i [] CheckCircle
{-| <i class="far fa-check-double"></i> -}
checkDouble : Html msg
checkDouble = i [] CheckDouble
{-| <i class="far fa-check-square"></i> -}
checkSquare : Html msg
checkSquare = i [] CheckSquare
{-| <i class="far fa-chess"></i> -}
chess : Html msg
chess = i [] Chess
{-| <i class="far fa-chess-bishop"></i> -}
chessBishop : Html msg
chessBishop = i [] ChessBishop
{-| <i class="far fa-chess-bishop-alt"></i> -}
chessBishopAlt : Html msg
chessBishopAlt = i [] ChessBishopAlt
{-| <i class="far fa-chess-board"></i> -}
chessBoard : Html msg
chessBoard = i [] ChessBoard
{-| <i class="far fa-chess-clock"></i> -}
chessClock : Html msg
chessClock = i [] ChessClock
{-| <i class="far fa-chess-clock-alt"></i> -}
chessClockAlt : Html msg
chessClockAlt = i [] ChessClockAlt
{-| <i class="far fa-chess-king"></i> -}
chessKing : Html msg
chessKing = i [] ChessKing
{-| <i class="far fa-chess-king-alt"></i> -}
chessKingAlt : Html msg
chessKingAlt = i [] ChessKingAlt
{-| <i class="far fa-chess-knight"></i> -}
chessKnight : Html msg
chessKnight = i [] ChessKnight
{-| <i class="far fa-chess-knight-alt"></i> -}
chessKnightAlt : Html msg
chessKnightAlt = i [] ChessKnightAlt
{-| <i class="far fa-chess-pawn"></i> -}
chessPawn : Html msg
chessPawn = i [] ChessPawn
{-| <i class="far fa-chess-pawn-alt"></i> -}
chessPawnAlt : Html msg
chessPawnAlt = i [] ChessPawnAlt
{-| <i class="far fa-chess-queen"></i> -}
chessQueen : Html msg
chessQueen = i [] ChessQueen
{-| <i class="far fa-chess-queen-alt"></i> -}
chessQueenAlt : Html msg
chessQueenAlt = i [] ChessQueenAlt
{-| <i class="far fa-chess-rook"></i> -}
chessRook : Html msg
chessRook = i [] ChessRook
{-| <i class="far fa-chess-rook-alt"></i> -}
chessRookAlt : Html msg
chessRookAlt = i [] ChessRookAlt
{-| <i class="far fa-chevron-circle-down"></i> -}
chevronCircleDown : Html msg
chevronCircleDown = i [] ChevronCircleDown
{-| <i class="far fa-chevron-circle-left"></i> -}
chevronCircleLeft : Html msg
chevronCircleLeft = i [] ChevronCircleLeft
{-| <i class="far fa-chevron-circle-right"></i> -}
chevronCircleRight : Html msg
chevronCircleRight = i [] ChevronCircleRight
{-| <i class="far fa-chevron-circle-up"></i> -}
chevronCircleUp : Html msg
chevronCircleUp = i [] ChevronCircleUp
{-| <i class="far fa-chevron-double-down"></i> -}
chevronDoubleDown : Html msg
chevronDoubleDown = i [] ChevronDoubleDown
{-| <i class="far fa-chevron-double-left"></i> -}
chevronDoubleLeft : Html msg
chevronDoubleLeft = i [] ChevronDoubleLeft
{-| <i class="far fa-chevron-double-right"></i> -}
chevronDoubleRight : Html msg
chevronDoubleRight = i [] ChevronDoubleRight
{-| <i class="far fa-chevron-double-up"></i> -}
chevronDoubleUp : Html msg
chevronDoubleUp = i [] ChevronDoubleUp
{-| <i class="far fa-chevron-down"></i> -}
chevronDown : Html msg
chevronDown = i [] ChevronDown
{-| <i class="far fa-chevron-left"></i> -}
chevronLeft : Html msg
chevronLeft = i [] ChevronLeft
{-| <i class="far fa-chevron-right"></i> -}
chevronRight : Html msg
chevronRight = i [] ChevronRight
{-| <i class="far fa-chevron-square-down"></i> -}
chevronSquareDown : Html msg
chevronSquareDown = i [] ChevronSquareDown
{-| <i class="far fa-chevron-square-left"></i> -}
chevronSquareLeft : Html msg
chevronSquareLeft = i [] ChevronSquareLeft
{-| <i class="far fa-chevron-square-right"></i> -}
chevronSquareRight : Html msg
chevronSquareRight = i [] ChevronSquareRight
{-| <i class="far fa-chevron-square-up"></i> -}
chevronSquareUp : Html msg
chevronSquareUp = i [] ChevronSquareUp
{-| <i class="far fa-chevron-up"></i> -}
chevronUp : Html msg
chevronUp = i [] ChevronUp
{-| <i class="far fa-child"></i> -}
child : Html msg
child = i [] Child
{-| <i class="far fa-church"></i> -}
church : Html msg
church = i [] Church
{-| <i class="far fa-circle"></i> -}
circle : Html msg
circle = i [] Circle
{-| <i class="far fa-circle-notch"></i> -}
circleNotch : Html msg
circleNotch = i [] CircleNotch
{-| <i class="far fa-clipboard"></i> -}
clipboard : Html msg
clipboard = i [] Clipboard
{-| <i class="far fa-clipboard-check"></i> -}
clipboardCheck : Html msg
clipboardCheck = i [] ClipboardCheck
{-| <i class="far fa-clipboard-list"></i> -}
clipboardList : Html msg
clipboardList = i [] ClipboardList
{-| <i class="far fa-clock"></i> -}
clock : Html msg
clock = i [] Clock
{-| <i class="far fa-clone"></i> -}
clone : Html msg
clone = i [] Clone
{-| <i class="far fa-closed-captioning"></i> -}
closedCaptioning : Html msg
closedCaptioning = i [] ClosedCaptioning
{-| <i class="far fa-cloud"></i> -}
cloud : Html msg
cloud = i [] Cloud
{-| <i class="far fa-cloud-download"></i> -}
cloudDownload : Html msg
cloudDownload = i [] CloudDownload
{-| <i class="far fa-cloud-download-alt"></i> -}
cloudDownloadAlt : Html msg
cloudDownloadAlt = i [] CloudDownloadAlt
{-| <i class="far fa-cloud-upload"></i> -}
cloudUpload : Html msg
cloudUpload = i [] CloudUpload
{-| <i class="far fa-cloud-upload-alt"></i> -}
cloudUploadAlt : Html msg
cloudUploadAlt = i [] CloudUploadAlt
{-| <i class="far fa-club"></i> -}
club : Html msg
club = i [] Club
{-| <i class="far fa-cocktail"></i> -}
cocktail : Html msg
cocktail = i [] Cocktail
{-| <i class="far fa-code"></i> -}
code : Html msg
code = i [] Code
{-| <i class="far fa-code-branch"></i> -}
codeBranch : Html msg
codeBranch = i [] CodeBranch
{-| <i class="far fa-code-commit"></i> -}
codeCommit : Html msg
codeCommit = i [] CodeCommit
{-| <i class="far fa-code-merge"></i> -}
codeMerge : Html msg
codeMerge = i [] CodeMerge
{-| <i class="far fa-coffee"></i> -}
coffee : Html msg
coffee = i [] Coffee
{-| <i class="far fa-cog"></i> -}
cog : Html msg
cog = i [] Cog
{-| <i class="far fa-cogs"></i> -}
cogs : Html msg
cogs = i [] Cogs
{-| <i class="far fa-coins"></i> -}
coins : Html msg
coins = i [] Coins
{-| <i class="far fa-columns"></i> -}
columns : Html msg
columns = i [] Columns
{-| <i class="far fa-comment"></i> -}
comment : Html msg
comment = i [] Comment
{-| <i class="far fa-comment-alt"></i> -}
commentAlt : Html msg
commentAlt = i [] CommentAlt
{-| <i class="far fa-comment-alt-check"></i> -}
commentAltCheck : Html msg
commentAltCheck = i [] CommentAltCheck
{-| <i class="far fa-comment-alt-dots"></i> -}
commentAltDots : Html msg
commentAltDots = i [] CommentAltDots
{-| <i class="far fa-comment-alt-edit"></i> -}
commentAltEdit : Html msg
commentAltEdit = i [] CommentAltEdit
{-| <i class="far fa-comment-alt-exclamation"></i> -}
commentAltExclamation : Html msg
commentAltExclamation = i [] CommentAltExclamation
{-| <i class="far fa-comment-alt-lines"></i> -}
commentAltLines : Html msg
commentAltLines = i [] CommentAltLines
{-| <i class="far fa-comment-alt-minus"></i> -}
commentAltMinus : Html msg
commentAltMinus = i [] CommentAltMinus
{-| <i class="far fa-comment-alt-plus"></i> -}
commentAltPlus : Html msg
commentAltPlus = i [] CommentAltPlus
{-| <i class="far fa-comment-alt-slash"></i> -}
commentAltSlash : Html msg
commentAltSlash = i [] CommentAltSlash
{-| <i class="far fa-comment-alt-smile"></i> -}
commentAltSmile : Html msg
commentAltSmile = i [] CommentAltSmile
{-| <i class="far fa-comment-alt-times"></i> -}
commentAltTimes : Html msg
commentAltTimes = i [] CommentAltTimes
{-| <i class="far fa-comment-check"></i> -}
commentCheck : Html msg
commentCheck = i [] CommentCheck
{-| <i class="far fa-comment-dots"></i> -}
commentDots : Html msg
commentDots = i [] CommentDots
{-| <i class="far fa-comment-edit"></i> -}
commentEdit : Html msg
commentEdit = i [] CommentEdit
{-| <i class="far fa-comment-exclamation"></i> -}
commentExclamation : Html msg
commentExclamation = i [] CommentExclamation
{-| <i class="far fa-comment-lines"></i> -}
commentLines : Html msg
commentLines = i [] CommentLines
{-| <i class="far fa-comment-minus"></i> -}
commentMinus : Html msg
commentMinus = i [] CommentMinus
{-| <i class="far fa-comment-plus"></i> -}
commentPlus : Html msg
commentPlus = i [] CommentPlus
{-| <i class="far fa-comment-slash"></i> -}
commentSlash : Html msg
commentSlash = i [] CommentSlash
{-| <i class="far fa-comment-smile"></i> -}
commentSmile : Html msg
commentSmile = i [] CommentSmile
{-| <i class="far fa-comment-times"></i> -}
commentTimes : Html msg
commentTimes = i [] CommentTimes
{-| <i class="far fa-comments"></i> -}
comments : Html msg
comments = i [] Comments
{-| <i class="far fa-comments-alt"></i> -}
commentsAlt : Html msg
commentsAlt = i [] CommentsAlt
{-| <i class="far fa-compact-disc"></i> -}
compactDisc : Html msg
compactDisc = i [] CompactDisc
{-| <i class="far fa-compass"></i> -}
compass : Html msg
compass = i [] Compass
{-| <i class="far fa-compress"></i> -}
compress : Html msg
compress = i [] Compress
{-| <i class="far fa-compress-alt"></i> -}
compressAlt : Html msg
compressAlt = i [] CompressAlt
{-| <i class="far fa-compress-wide"></i> -}
compressWide : Html msg
compressWide = i [] CompressWide
{-| <i class="far fa-concierge-bell"></i> -}
conciergeBell : Html msg
conciergeBell = i [] ConciergeBell
{-| <i class="far fa-container-storage"></i> -}
containerStorage : Html msg
containerStorage = i [] ContainerStorage
{-| <i class="far fa-conveyor-belt"></i> -}
conveyorBelt : Html msg
conveyorBelt = i [] ConveyorBelt
{-| <i class="far fa-conveyor-belt-alt"></i> -}
conveyorBeltAlt : Html msg
conveyorBeltAlt = i [] ConveyorBeltAlt
{-| <i class="far fa-cookie"></i> -}
cookie : Html msg
cookie = i [] Cookie
{-| <i class="far fa-cookie-bite"></i> -}
cookieBite : Html msg
cookieBite = i [] CookieBite
{-| <i class="far fa-copy"></i> -}
copy : Html msg
copy = i [] Copy
{-| <i class="far fa-copyright"></i> -}
copyright : Html msg
copyright = i [] Copyright
{-| <i class="far fa-couch"></i> -}
couch : Html msg
couch = i [] Couch
{-| <i class="far fa-credit-card"></i> -}
creditCard : Html msg
creditCard = i [] CreditCard
{-| <i class="far fa-credit-card-blank"></i> -}
creditCardBlank : Html msg
creditCardBlank = i [] CreditCardBlank
{-| <i class="far fa-credit-card-front"></i> -}
creditCardFront : Html msg
creditCardFront = i [] CreditCardFront
{-| <i class="far fa-cricket"></i> -}
cricket : Html msg
cricket = i [] Cricket
{-| <i class="far fa-crop"></i> -}
crop : Html msg
crop = i [] Crop
{-| <i class="far fa-crop-alt"></i> -}
cropAlt : Html msg
cropAlt = i [] CropAlt
{-| <i class="far fa-crosshairs"></i> -}
crosshairs : Html msg
crosshairs = i [] Crosshairs
{-| <i class="far fa-crow"></i> -}
crow : Html msg
crow = i [] Crow
{-| <i class="far fa-crown"></i> -}
crown : Html msg
crown = i [] Crown
{-| <i class="far fa-cube"></i> -}
cube : Html msg
cube = i [] Cube
{-| <i class="far fa-cubes"></i> -}
cubes : Html msg
cubes = i [] Cubes
{-| <i class="far fa-curling"></i> -}
curling : Html msg
curling = i [] Curling
{-| <i class="far fa-cut"></i> -}
cut : Html msg
cut = i [] Cut
{-| <i class="far fa-database"></i> -}
database : Html msg
database = i [] Database
{-| <i class="far fa-deaf"></i> -}
deaf : Html msg
deaf = i [] Deaf
{-| <i class="far fa-desktop"></i> -}
desktop : Html msg
desktop = i [] Desktop
{-| <i class="far fa-desktop-alt"></i> -}
desktopAlt : Html msg
desktopAlt = i [] DesktopAlt
{-| <i class="far fa-diagnoses"></i> -}
diagnoses : Html msg
diagnoses = i [] Diagnoses
{-| <i class="far fa-diamond"></i> -}
diamond : Html msg
diamond = i [] Diamond
{-| <i class="far fa-dice"></i> -}
dice : Html msg
dice = i [] Dice
{-| <i class="far fa-dice-five"></i> -}
diceFive : Html msg
diceFive = i [] DiceFive
{-| <i class="far fa-dice-four"></i> -}
diceFour : Html msg
diceFour = i [] DiceFour
{-| <i class="far fa-dice-one"></i> -}
diceOne : Html msg
diceOne = i [] DiceOne
{-| <i class="far fa-dice-six"></i> -}
diceSix : Html msg
diceSix = i [] DiceSix
{-| <i class="far fa-dice-three"></i> -}
diceThree : Html msg
diceThree = i [] DiceThree
{-| <i class="far fa-dice-two"></i> -}
diceTwo : Html msg
diceTwo = i [] DiceTwo
{-| <i class="far fa-digital-tachograph"></i> -}
digitalTachograph : Html msg
digitalTachograph = i [] DigitalTachograph
{-| <i class="far fa-divide"></i> -}
divide : Html msg
divide = i [] Divide
{-| <i class="far fa-dizzy"></i> -}
dizzy : Html msg
dizzy = i [] Dizzy
{-| <i class="far fa-dna"></i> -}
dna : Html msg
dna = i [] Dna
{-| <i class="far fa-dollar-sign"></i> -}
dollarSign : Html msg
dollarSign = i [] DollarSign
{-| <i class="far fa-dolly"></i> -}
dolly : Html msg
dolly = i [] Dolly
{-| <i class="far fa-dolly-empty"></i> -}
dollyEmpty : Html msg
dollyEmpty = i [] DollyEmpty
{-| <i class="far fa-dolly-flatbed"></i> -}
dollyFlatbed : Html msg
dollyFlatbed = i [] DollyFlatbed
{-| <i class="far fa-dolly-flatbed-alt"></i> -}
dollyFlatbedAlt : Html msg
dollyFlatbedAlt = i [] DollyFlatbedAlt
{-| <i class="far fa-dolly-flatbed-empty"></i> -}
dollyFlatbedEmpty : Html msg
dollyFlatbedEmpty = i [] DollyFlatbedEmpty
{-| <i class="far fa-donate"></i> -}
donate : Html msg
donate = i [] Donate
{-| <i class="far fa-door-closed"></i> -}
doorClosed : Html msg
doorClosed = i [] DoorClosed
{-| <i class="far fa-door-open"></i> -}
doorOpen : Html msg
doorOpen = i [] DoorOpen
{-| <i class="far fa-dot-circle"></i> -}
dotCircle : Html msg
dotCircle = i [] DotCircle
{-| <i class="far fa-dove"></i> -}
dove : Html msg
dove = i [] Dove
{-| <i class="far fa-download"></i> -}
download : Html msg
download = i [] Download
{-| <i class="far fa-drafting-compass"></i> -}
draftingCompass : Html msg
draftingCompass = i [] DraftingCompass
{-| <i class="far fa-drum"></i> -}
drum : Html msg
drum = i [] Drum
{-| <i class="far fa-drum-steelpan"></i> -}
drumSteelpan : Html msg
drumSteelpan = i [] DrumSteelpan
{-| <i class="far fa-dumbbell"></i> -}
dumbbell : Html msg
dumbbell = i [] Dumbbell
{-| <i class="far fa-edit"></i> -}
edit : Html msg
edit = i [] Edit
{-| <i class="far fa-eject"></i> -}
eject : Html msg
eject = i [] Eject
{-| <i class="far fa-ellipsis-h"></i> -}
ellipsisH : Html msg
ellipsisH = i [] EllipsisH
{-| <i class="far fa-ellipsis-h-alt"></i> -}
ellipsisHAlt : Html msg
ellipsisHAlt = i [] EllipsisHAlt
{-| <i class="far fa-ellipsis-v"></i> -}
ellipsisV : Html msg
ellipsisV = i [] EllipsisV
{-| <i class="far fa-ellipsis-v-alt"></i> -}
ellipsisVAlt : Html msg
ellipsisVAlt = i [] EllipsisVAlt
{-| <i class="far fa-envelope"></i> -}
envelope : Html msg
envelope = i [] Envelope
{-| <i class="far fa-envelope-open"></i> -}
envelopeOpen : Html msg
envelopeOpen = i [] EnvelopeOpen
{-| <i class="far fa-envelope-square"></i> -}
envelopeSquare : Html msg
envelopeSquare = i [] EnvelopeSquare
{-| <i class="far fa-equals"></i> -}
equals : Html msg
equals = i [] Equals
{-| <i class="far fa-eraser"></i> -}
eraser : Html msg
eraser = i [] Eraser
{-| <i class="far fa-euro-sign"></i> -}
euroSign : Html msg
euroSign = i [] EuroSign
{-| <i class="far fa-exchange"></i> -}
exchange : Html msg
exchange = i [] Exchange
{-| <i class="far fa-exchange-alt"></i> -}
exchangeAlt : Html msg
exchangeAlt = i [] ExchangeAlt
{-| <i class="far fa-exclamation"></i> -}
exclamation : Html msg
exclamation = i [] Exclamation
{-| <i class="far fa-exclamation-circle"></i> -}
exclamationCircle : Html msg
exclamationCircle = i [] ExclamationCircle
{-| <i class="far fa-exclamation-square"></i> -}
exclamationSquare : Html msg
exclamationSquare = i [] ExclamationSquare
{-| <i class="far fa-exclamation-triangle"></i> -}
exclamationTriangle : Html msg
exclamationTriangle = i [] ExclamationTriangle
{-| <i class="far fa-expand"></i> -}
expand : Html msg
expand = i [] Expand
{-| <i class="far fa-expand-alt"></i> -}
expandAlt : Html msg
expandAlt = i [] ExpandAlt
{-| <i class="far fa-expand-arrows"></i> -}
expandArrows : Html msg
expandArrows = i [] ExpandArrows
{-| <i class="far fa-expand-arrows-alt"></i> -}
expandArrowsAlt : Html msg
expandArrowsAlt = i [] ExpandArrowsAlt
{-| <i class="far fa-expand-wide"></i> -}
expandWide : Html msg
expandWide = i [] ExpandWide
{-| <i class="far fa-external-link"></i> -}
externalLink : Html msg
externalLink = i [] ExternalLink
{-| <i class="far fa-external-link-alt"></i> -}
externalLinkAlt : Html msg
externalLinkAlt = i [] ExternalLinkAlt
{-| <i class="far fa-external-link-square"></i> -}
externalLinkSquare : Html msg
externalLinkSquare = i [] ExternalLinkSquare
{-| <i class="far fa-external-link-square-alt"></i> -}
externalLinkSquareAlt : Html msg
externalLinkSquareAlt = i [] ExternalLinkSquareAlt
{-| <i class="far fa-eye"></i> -}
eye : Html msg
eye = i [] Eye
{-| <i class="far fa-eye-dropper"></i> -}
eyeDropper : Html msg
eyeDropper = i [] EyeDropper
{-| <i class="far fa-eye-slash"></i> -}
eyeSlash : Html msg
eyeSlash = i [] EyeSlash
{-| <i class="far fa-fast-backward"></i> -}
fastBackward : Html msg
fastBackward = i [] FastBackward
{-| <i class="far fa-fast-forward"></i> -}
fastForward : Html msg
fastForward = i [] FastForward
{-| <i class="far fa-fax"></i> -}
fax : Html msg
fax = i [] Fax
{-| <i class="far fa-feather"></i> -}
feather : Html msg
feather = i [] Feather
{-| <i class="far fa-feather-alt"></i> -}
featherAlt : Html msg
featherAlt = i [] FeatherAlt
{-| <i class="far fa-female"></i> -}
female : Html msg
female = i [] Female
{-| <i class="far fa-field-hockey"></i> -}
fieldHockey : Html msg
fieldHockey = i [] FieldHockey
{-| <i class="far fa-fighter-jet"></i> -}
fighterJet : Html msg
fighterJet = i [] FighterJet
{-| <i class="far fa-file"></i> -}
file : Html msg
file = i [] File
{-| <i class="far fa-file-alt"></i> -}
fileAlt : Html msg
fileAlt = i [] FileAlt
{-| <i class="far fa-file-archive"></i> -}
fileArchive : Html msg
fileArchive = i [] FileArchive
{-| <i class="far fa-file-audio"></i> -}
fileAudio : Html msg
fileAudio = i [] FileAudio
{-| <i class="far fa-file-check"></i> -}
fileCheck : Html msg
fileCheck = i [] FileCheck
{-| <i class="far fa-file-code"></i> -}
fileCode : Html msg
fileCode = i [] FileCode
{-| <i class="far fa-file-contract"></i> -}
fileContract : Html msg
fileContract = i [] FileContract
{-| <i class="far fa-file-download"></i> -}
fileDownload : Html msg
fileDownload = i [] FileDownload
{-| <i class="far fa-file-edit"></i> -}
fileEdit : Html msg
fileEdit = i [] FileEdit
{-| <i class="far fa-file-excel"></i> -}
fileExcel : Html msg
fileExcel = i [] FileExcel
{-| <i class="far fa-file-exclamation"></i> -}
fileExclamation : Html msg
fileExclamation = i [] FileExclamation
{-| <i class="far fa-file-export"></i> -}
fileExport : Html msg
fileExport = i [] FileExport
{-| <i class="far fa-file-image"></i> -}
fileImage : Html msg
fileImage = i [] FileImage
{-| <i class="far fa-file-import"></i> -}
fileImport : Html msg
fileImport = i [] FileImport
{-| <i class="far fa-file-invoice"></i> -}
fileInvoice : Html msg
fileInvoice = i [] FileInvoice
{-| <i class="far fa-file-invoice-dollar"></i> -}
fileInvoiceDollar : Html msg
fileInvoiceDollar = i [] FileInvoiceDollar
{-| <i class="far fa-file-medical"></i> -}
fileMedical : Html msg
fileMedical = i [] FileMedical
{-| <i class="far fa-file-medical-alt"></i> -}
fileMedicalAlt : Html msg
fileMedicalAlt = i [] FileMedicalAlt
{-| <i class="far fa-file-minus"></i> -}
fileMinus : Html msg
fileMinus = i [] FileMinus
{-| <i class="far fa-file-pdf"></i> -}
filePdf : Html msg
filePdf = i [] FilePdf
{-| <i class="far fa-file-plus"></i> -}
filePlus : Html msg
filePlus = i [] FilePlus
{-| <i class="far fa-file-powerpoint"></i> -}
filePowerpoint : Html msg
filePowerpoint = i [] FilePowerpoint
{-| <i class="far fa-file-prescription"></i> -}
filePrescription : Html msg
filePrescription = i [] FilePrescription
{-| <i class="far fa-file-signature"></i> -}
fileSignature : Html msg
fileSignature = i [] FileSignature
{-| <i class="far fa-file-times"></i> -}
fileTimes : Html msg
fileTimes = i [] FileTimes
{-| <i class="far fa-file-upload"></i> -}
fileUpload : Html msg
fileUpload = i [] FileUpload
{-| <i class="far fa-file-video"></i> -}
fileVideo : Html msg
fileVideo = i [] FileVideo
{-| <i class="far fa-file-word"></i> -}
fileWord : Html msg
fileWord = i [] FileWord
{-| <i class="far fa-fill"></i> -}
fill : Html msg
fill = i [] Fill
{-| <i class="far fa-fill-drip"></i> -}
fillDrip : Html msg
fillDrip = i [] FillDrip
{-| <i class="far fa-film"></i> -}
film : Html msg
film = i [] Film
{-| <i class="far fa-film-alt"></i> -}
filmAlt : Html msg
filmAlt = i [] FilmAlt
{-| <i class="far fa-filter"></i> -}
filter : Html msg
filter = i [] Filter
{-| <i class="far fa-fingerprint"></i> -}
fingerprint : Html msg
fingerprint = i [] Fingerprint
{-| <i class="far fa-fire"></i> -}
fire : Html msg
fire = i [] Fire
{-| <i class="far fa-fire-extinguisher"></i> -}
fireExtinguisher : Html msg
fireExtinguisher = i [] FireExtinguisher
{-| <i class="far fa-first-aid"></i> -}
firstAid : Html msg
firstAid = i [] FirstAid
{-| <i class="far fa-fish"></i> -}
fish : Html msg
fish = i [] Fish
{-| <i class="far fa-flag"></i> -}
flag : Html msg
flag = i [] Flag
{-| <i class="far fa-flag-checkered"></i> -}
flagCheckered : Html msg
flagCheckered = i [] FlagCheckered
{-| <i class="far fa-flask"></i> -}
flask : Html msg
flask = i [] Flask
{-| <i class="far fa-flushed"></i> -}
flushed : Html msg
flushed = i [] Flushed
{-| <i class="far fa-folder"></i> -}
folder : Html msg
folder = i [] Folder
{-| <i class="far fa-folder-open"></i> -}
folderOpen : Html msg
folderOpen = i [] FolderOpen
{-| <i class="far fa-font"></i> -}
font : Html msg
font = i [] Font
{-| <i class="far fa-font-awesome-logo-full"></i> -}
fontAwesomeLogoFull : Html msg
fontAwesomeLogoFull = i [] FontAwesomeLogoFull
{-| <i class="far fa-football-ball"></i> -}
footballBall : Html msg
footballBall = i [] FootballBall
{-| <i class="far fa-football-helmet"></i> -}
footballHelmet : Html msg
footballHelmet = i [] FootballHelmet
{-| <i class="far fa-forklift"></i> -}
forklift : Html msg
forklift = i [] Forklift
{-| <i class="far fa-forward"></i> -}
forward : Html msg
forward = i [] Forward
{-| <i class="far fa-fragile"></i> -}
fragile : Html msg
fragile = i [] Fragile
{-| <i class="far fa-frog"></i> -}
frog : Html msg
frog = i [] Frog
{-| <i class="far fa-frown"></i> -}
frown : Html msg
frown = i [] Frown
{-| <i class="far fa-frown-open"></i> -}
frownOpen : Html msg
frownOpen = i [] FrownOpen
{-| <i class="far fa-futbol"></i> -}
futbol : Html msg
futbol = i [] Futbol
{-| <i class="far fa-gamepad"></i> -}
gamepad : Html msg
gamepad = i [] Gamepad
{-| <i class="far fa-gas-pump"></i> -}
gasPump : Html msg
gasPump = i [] GasPump
{-| <i class="far fa-gavel"></i> -}
gavel : Html msg
gavel = i [] Gavel
{-| <i class="far fa-gem"></i> -}
gem : Html msg
gem = i [] Gem
{-| <i class="far fa-genderless"></i> -}
genderless : Html msg
genderless = i [] Genderless
{-| <i class="far fa-gift"></i> -}
gift : Html msg
gift = i [] Gift
{-| <i class="far fa-glass-martini"></i> -}
glassMartini : Html msg
glassMartini = i [] GlassMartini
{-| <i class="far fa-glass-martini-alt"></i> -}
glassMartiniAlt : Html msg
glassMartiniAlt = i [] GlassMartiniAlt
{-| <i class="far fa-glasses"></i> -}
glasses : Html msg
glasses = i [] Glasses
{-| <i class="far fa-globe"></i> -}
globe : Html msg
globe = i [] Globe
{-| <i class="far fa-globe-africa"></i> -}
globeAfrica : Html msg
globeAfrica = i [] GlobeAfrica
{-| <i class="far fa-globe-americas"></i> -}
globeAmericas : Html msg
globeAmericas = i [] GlobeAmericas
{-| <i class="far fa-globe-asia"></i> -}
globeAsia : Html msg
globeAsia = i [] GlobeAsia
{-| <i class="far fa-golf-ball"></i> -}
golfBall : Html msg
golfBall = i [] GolfBall
{-| <i class="far fa-golf-club"></i> -}
golfClub : Html msg
golfClub = i [] GolfClub
{-| <i class="far fa-graduation-cap"></i> -}
graduationCap : Html msg
graduationCap = i [] GraduationCap
{-| <i class="far fa-greater-than"></i> -}
greaterThan : Html msg
greaterThan = i [] GreaterThan
{-| <i class="far fa-greater-than-equal"></i> -}
greaterThanEqual : Html msg
greaterThanEqual = i [] GreaterThanEqual
{-| <i class="far fa-grimace"></i> -}
grimace : Html msg
grimace = i [] Grimace
{-| <i class="far fa-grin"></i> -}
grin : Html msg
grin = i [] Grin
{-| <i class="far fa-grin-alt"></i> -}
grinAlt : Html msg
grinAlt = i [] GrinAlt
{-| <i class="far fa-grin-beam"></i> -}
grinBeam : Html msg
grinBeam = i [] GrinBeam
{-| <i class="far fa-grin-beam-sweat"></i> -}
grinBeamSweat : Html msg
grinBeamSweat = i [] GrinBeamSweat
{-| <i class="far fa-grin-hearts"></i> -}
grinHearts : Html msg
grinHearts = i [] GrinHearts
{-| <i class="far fa-grin-squint"></i> -}
grinSquint : Html msg
grinSquint = i [] GrinSquint
{-| <i class="far fa-grin-squint-tears"></i> -}
grinSquintTears : Html msg
grinSquintTears = i [] GrinSquintTears
{-| <i class="far fa-grin-stars"></i> -}
grinStars : Html msg
grinStars = i [] GrinStars
{-| <i class="far fa-grin-tears"></i> -}
grinTears : Html msg
grinTears = i [] GrinTears
{-| <i class="far fa-grin-tongue"></i> -}
grinTongue : Html msg
grinTongue = i [] GrinTongue
{-| <i class="far fa-grin-tongue-squint"></i> -}
grinTongueSquint : Html msg
grinTongueSquint = i [] GrinTongueSquint
{-| <i class="far fa-grin-tongue-wink"></i> -}
grinTongueWink : Html msg
grinTongueWink = i [] GrinTongueWink
{-| <i class="far fa-grin-wink"></i> -}
grinWink : Html msg
grinWink = i [] GrinWink
{-| <i class="far fa-grip-horizontal"></i> -}
gripHorizontal : Html msg
gripHorizontal = i [] GripHorizontal
{-| <i class="far fa-grip-vertical"></i> -}
gripVertical : Html msg
gripVertical = i [] GripVertical
{-| <i class="far fa-h-square"></i> -}
hSquare : Html msg
hSquare = i [] HSquare
{-| <i class="far fa-h1"></i> -}
h1 : Html msg
h1 = i [] H1
{-| <i class="far fa-h2"></i> -}
h2 : Html msg
h2 = i [] H2
{-| <i class="far fa-h3"></i> -}
h3 : Html msg
h3 = i [] H3
{-| <i class="far fa-hand-heart"></i> -}
handHeart : Html msg
handHeart = i [] HandHeart
{-| <i class="far fa-hand-holding"></i> -}
handHolding : Html msg
handHolding = i [] HandHolding
{-| <i class="far fa-hand-holding-box"></i> -}
handHoldingBox : Html msg
handHoldingBox = i [] HandHoldingBox
{-| <i class="far fa-hand-holding-heart"></i> -}
handHoldingHeart : Html msg
handHoldingHeart = i [] HandHoldingHeart
{-| <i class="far fa-hand-holding-seedling"></i> -}
handHoldingSeedling : Html msg
handHoldingSeedling = i [] HandHoldingSeedling
{-| <i class="far fa-hand-holding-usd"></i> -}
handHoldingUsd : Html msg
handHoldingUsd = i [] HandHoldingUsd
{-| <i class="far fa-hand-holding-water"></i> -}
handHoldingWater : Html msg
handHoldingWater = i [] HandHoldingWater
{-| <i class="far fa-hand-lizard"></i> -}
handLizard : Html msg
handLizard = i [] HandLizard
{-| <i class="far fa-hand-paper"></i> -}
handPaper : Html msg
handPaper = i [] HandPaper
{-| <i class="far fa-hand-peace"></i> -}
handPeace : Html msg
handPeace = i [] HandPeace
{-| <i class="far fa-hand-point-down"></i> -}
handPointDown : Html msg
handPointDown = i [] HandPointDown
{-| <i class="far fa-hand-point-left"></i> -}
handPointLeft : Html msg
handPointLeft = i [] HandPointLeft
{-| <i class="far fa-hand-point-right"></i> -}
handPointRight : Html msg
handPointRight = i [] HandPointRight
{-| <i class="far fa-hand-point-up"></i> -}
handPointUp : Html msg
handPointUp = i [] HandPointUp
{-| <i class="far fa-hand-pointer"></i> -}
handPointer : Html msg
handPointer = i [] HandPointer
{-| <i class="far fa-hand-receiving"></i> -}
handReceiving : Html msg
handReceiving = i [] HandReceiving
{-| <i class="far fa-hand-rock"></i> -}
handRock : Html msg
handRock = i [] HandRock
{-| <i class="far fa-hand-scissors"></i> -}
handScissors : Html msg
handScissors = i [] HandScissors
{-| <i class="far fa-hand-spock"></i> -}
handSpock : Html msg
handSpock = i [] HandSpock
{-| <i class="far fa-hands"></i> -}
hands : Html msg
hands = i [] Hands
{-| <i class="far fa-hands-heart"></i> -}
handsHeart : Html msg
handsHeart = i [] HandsHeart
{-| <i class="far fa-hands-helping"></i> -}
handsHelping : Html msg
handsHelping = i [] HandsHelping
{-| <i class="far fa-hands-usd"></i> -}
handsUsd : Html msg
handsUsd = i [] HandsUsd
{-| <i class="far fa-handshake"></i> -}
handshake : Html msg
handshake = i [] Handshake
{-| <i class="far fa-handshake-alt"></i> -}
handshakeAlt : Html msg
handshakeAlt = i [] HandshakeAlt
{-| <i class="far fa-hashtag"></i> -}
hashtag : Html msg
hashtag = i [] Hashtag
{-| <i class="far fa-hdd"></i> -}
hdd : Html msg
hdd = i [] Hdd
{-| <i class="far fa-heading"></i> -}
heading : Html msg
heading = i [] Heading
{-| <i class="far fa-headphones"></i> -}
headphones : Html msg
headphones = i [] Headphones
{-| <i class="far fa-headphones-alt"></i> -}
headphonesAlt : Html msg
headphonesAlt = i [] HeadphonesAlt
{-| <i class="far fa-headset"></i> -}
headset : Html msg
headset = i [] Headset
{-| <i class="far fa-heart"></i> -}
heart : Html msg
heart = i [] Heart
{-| <i class="far fa-heart-circle"></i> -}
heartCircle : Html msg
heartCircle = i [] HeartCircle
{-| <i class="far fa-heart-square"></i> -}
heartSquare : Html msg
heartSquare = i [] HeartSquare
{-| <i class="far fa-heartbeat"></i> -}
heartbeat : Html msg
heartbeat = i [] Heartbeat
{-| <i class="far fa-helicopter"></i> -}
helicopter : Html msg
helicopter = i [] Helicopter
{-| <i class="far fa-hexagon"></i> -}
hexagon : Html msg
hexagon = i [] Hexagon
{-| <i class="far fa-highlighter"></i> -}
highlighter : Html msg
highlighter = i [] Highlighter
{-| <i class="far fa-history"></i> -}
history : Html msg
history = i [] History
{-| <i class="far fa-hockey-puck"></i> -}
hockeyPuck : Html msg
hockeyPuck = i [] HockeyPuck
{-| <i class="far fa-hockey-sticks"></i> -}
hockeySticks : Html msg
hockeySticks = i [] HockeySticks
{-| <i class="far fa-home"></i> -}
home : Html msg
home = i [] Home
{-| <i class="far fa-home-heart"></i> -}
homeHeart : Html msg
homeHeart = i [] HomeHeart
{-| <i class="far fa-hospital"></i> -}
hospital : Html msg
hospital = i [] Hospital
{-| <i class="far fa-hospital-alt"></i> -}
hospitalAlt : Html msg
hospitalAlt = i [] HospitalAlt
{-| <i class="far fa-hospital-symbol"></i> -}
hospitalSymbol : Html msg
hospitalSymbol = i [] HospitalSymbol
{-| <i class="far fa-hot-tub"></i> -}
hotTub : Html msg
hotTub = i [] HotTub
{-| <i class="far fa-hotel"></i> -}
hotel : Html msg
hotel = i [] Hotel
{-| <i class="far fa-hourglass"></i> -}
hourglass : Html msg
hourglass = i [] Hourglass
{-| <i class="far fa-hourglass-end"></i> -}
hourglassEnd : Html msg
hourglassEnd = i [] HourglassEnd
{-| <i class="far fa-hourglass-half"></i> -}
hourglassHalf : Html msg
hourglassHalf = i [] HourglassHalf
{-| <i class="far fa-hourglass-start"></i> -}
hourglassStart : Html msg
hourglassStart = i [] HourglassStart
{-| <i class="far fa-i-cursor"></i> -}
iCursor : Html msg
iCursor = i [] ICursor
{-| <i class="far fa-id-badge"></i> -}
idBadge : Html msg
idBadge = i [] IdBadge
{-| <i class="far fa-id-card"></i> -}
idCard : Html msg
idCard = i [] IdCard
{-| <i class="far fa-id-card-alt"></i> -}
idCardAlt : Html msg
idCardAlt = i [] IdCardAlt
{-| <i class="far fa-image"></i> -}
image : Html msg
image = i [] Image
{-| <i class="far fa-images"></i> -}
images : Html msg
images = i [] Images
{-| <i class="far fa-inbox"></i> -}
inbox : Html msg
inbox = i [] Inbox
{-| <i class="far fa-inbox-in"></i> -}
inboxIn : Html msg
inboxIn = i [] InboxIn
{-| <i class="far fa-inbox-out"></i> -}
inboxOut : Html msg
inboxOut = i [] InboxOut
{-| <i class="far fa-indent"></i> -}
indent : Html msg
indent = i [] Indent
{-| <i class="far fa-industry"></i> -}
industry : Html msg
industry = i [] Industry
{-| <i class="far fa-industry-alt"></i> -}
industryAlt : Html msg
industryAlt = i [] IndustryAlt
{-| <i class="far fa-infinity"></i> -}
infinity : Html msg
infinity = i [] Infinity
{-| <i class="far fa-info"></i> -}
info : Html msg
info = i [] Info
{-| <i class="far fa-info-circle"></i> -}
infoCircle : Html msg
infoCircle = i [] InfoCircle
{-| <i class="far fa-info-square"></i> -}
infoSquare : Html msg
infoSquare = i [] InfoSquare
{-| <i class="far fa-inventory"></i> -}
inventory : Html msg
inventory = i [] Inventory
{-| <i class="far fa-italic"></i> -}
italic : Html msg
italic = i [] Italic
{-| <i class="far fa-jack-o-lantern"></i> -}
jackOLantern : Html msg
jackOLantern = i [] JackOLantern
{-| <i class="far fa-joint"></i> -}
joint : Html msg
joint = i [] Joint
{-| <i class="far fa-key"></i> -}
key : Html msg
key = i [] Key
{-| <i class="far fa-keyboard"></i> -}
keyboard : Html msg
keyboard = i [] Keyboard
{-| <i class="far fa-kiss"></i> -}
kiss : Html msg
kiss = i [] Kiss
{-| <i class="far fa-kiss-beam"></i> -}
kissBeam : Html msg
kissBeam = i [] KissBeam
{-| <i class="far fa-kiss-wink-heart"></i> -}
kissWinkHeart : Html msg
kissWinkHeart = i [] KissWinkHeart
{-| <i class="far fa-kiwi-bird"></i> -}
kiwiBird : Html msg
kiwiBird = i [] KiwiBird
{-| <i class="far fa-lamp"></i> -}
lamp : Html msg
lamp = i [] Lamp
{-| <i class="far fa-language"></i> -}
language : Html msg
language = i [] Language
{-| <i class="far fa-laptop"></i> -}
laptop : Html msg
laptop = i [] Laptop
{-| <i class="far fa-laugh"></i> -}
laugh : Html msg
laugh = i [] Laugh
{-| <i class="far fa-laugh-beam"></i> -}
laughBeam : Html msg
laughBeam = i [] LaughBeam
{-| <i class="far fa-laugh-squint"></i> -}
laughSquint : Html msg
laughSquint = i [] LaughSquint
{-| <i class="far fa-laugh-wink"></i> -}
laughWink : Html msg
laughWink = i [] LaughWink
{-| <i class="far fa-leaf"></i> -}
leaf : Html msg
leaf = i [] Leaf
{-| <i class="far fa-leaf-heart"></i> -}
leafHeart : Html msg
leafHeart = i [] LeafHeart
{-| <i class="far fa-lemon"></i> -}
lemon : Html msg
lemon = i [] Lemon
{-| <i class="far fa-less-than"></i> -}
lessThan : Html msg
lessThan = i [] LessThan
{-| <i class="far fa-less-than-equal"></i> -}
lessThanEqual : Html msg
lessThanEqual = i [] LessThanEqual
{-| <i class="far fa-level-down"></i> -}
levelDown : Html msg
levelDown = i [] LevelDown
{-| <i class="far fa-level-down-alt"></i> -}
levelDownAlt : Html msg
levelDownAlt = i [] LevelDownAlt
{-| <i class="far fa-level-up"></i> -}
levelUp : Html msg
levelUp = i [] LevelUp
{-| <i class="far fa-level-up-alt"></i> -}
levelUpAlt : Html msg
levelUpAlt = i [] LevelUpAlt
{-| <i class="far fa-life-ring"></i> -}
lifeRing : Html msg
lifeRing = i [] LifeRing
{-| <i class="far fa-lightbulb"></i> -}
lightbulb : Html msg
lightbulb = i [] Lightbulb
{-| <i class="far fa-link"></i> -}
link : Html msg
link = i [] Link
{-| <i class="far fa-lira-sign"></i> -}
liraSign : Html msg
liraSign = i [] LiraSign
{-| <i class="far fa-list"></i> -}
list : Html msg
list = i [] List
{-| <i class="far fa-list-alt"></i> -}
listAlt : Html msg
listAlt = i [] ListAlt
{-| <i class="far fa-list-ol"></i> -}
listOl : Html msg
listOl = i [] ListOl
{-| <i class="far fa-list-ul"></i> -}
listUl : Html msg
listUl = i [] ListUl
{-| <i class="far fa-location-arrow"></i> -}
locationArrow : Html msg
locationArrow = i [] LocationArrow
{-| <i class="far fa-lock"></i> -}
lock : Html msg
lock = i [] Lock
{-| <i class="far fa-lock-alt"></i> -}
lockAlt : Html msg
lockAlt = i [] LockAlt
{-| <i class="far fa-lock-open"></i> -}
lockOpen : Html msg
lockOpen = i [] LockOpen
{-| <i class="far fa-lock-open-alt"></i> -}
lockOpenAlt : Html msg
lockOpenAlt = i [] LockOpenAlt
{-| <i class="far fa-long-arrow-alt-down"></i> -}
longArrowAltDown : Html msg
longArrowAltDown = i [] LongArrowAltDown
{-| <i class="far fa-long-arrow-alt-left"></i> -}
longArrowAltLeft : Html msg
longArrowAltLeft = i [] LongArrowAltLeft
{-| <i class="far fa-long-arrow-alt-right"></i> -}
longArrowAltRight : Html msg
longArrowAltRight = i [] LongArrowAltRight
{-| <i class="far fa-long-arrow-alt-up"></i> -}
longArrowAltUp : Html msg
longArrowAltUp = i [] LongArrowAltUp
{-| <i class="far fa-long-arrow-down"></i> -}
longArrowDown : Html msg
longArrowDown = i [] LongArrowDown
{-| <i class="far fa-long-arrow-left"></i> -}
longArrowLeft : Html msg
longArrowLeft = i [] LongArrowLeft
{-| <i class="far fa-long-arrow-right"></i> -}
longArrowRight : Html msg
longArrowRight = i [] LongArrowRight
{-| <i class="far fa-long-arrow-up"></i> -}
longArrowUp : Html msg
longArrowUp = i [] LongArrowUp
{-| <i class="far fa-loveseat"></i> -}
loveseat : Html msg
loveseat = i [] Loveseat
{-| <i class="far fa-low-vision"></i> -}
lowVision : Html msg
lowVision = i [] LowVision
{-| <i class="far fa-luchador"></i> -}
luchador : Html msg
luchador = i [] Luchador
{-| <i class="far fa-luggage-cart"></i> -}
luggageCart : Html msg
luggageCart = i [] LuggageCart
{-| <i class="far fa-magic"></i> -}
magic : Html msg
magic = i [] Magic
{-| <i class="far fa-magnet"></i> -}
magnet : Html msg
magnet = i [] Magnet
{-| <i class="far fa-male"></i> -}
male : Html msg
male = i [] Male
{-| <i class="far fa-map"></i> -}
map : Html msg
map = i [] Map
{-| <i class="far fa-map-marked"></i> -}
mapMarked : Html msg
mapMarked = i [] MapMarked
{-| <i class="far fa-map-marked-alt"></i> -}
mapMarkedAlt : Html msg
mapMarkedAlt = i [] MapMarkedAlt
{-| <i class="far fa-map-marker"></i> -}
mapMarker : Html msg
mapMarker = i [] MapMarker
{-| <i class="far fa-map-marker-alt"></i> -}
mapMarkerAlt : Html msg
mapMarkerAlt = i [] MapMarkerAlt
{-| <i class="far fa-map-pin"></i> -}
mapPin : Html msg
mapPin = i [] MapPin
{-| <i class="far fa-map-signs"></i> -}
mapSigns : Html msg
mapSigns = i [] MapSigns
{-| <i class="far fa-marker"></i> -}
marker : Html msg
marker = i [] Marker
{-| <i class="far fa-mars"></i> -}
mars : Html msg
mars = i [] Mars
{-| <i class="far fa-mars-double"></i> -}
marsDouble : Html msg
marsDouble = i [] MarsDouble
{-| <i class="far fa-mars-stroke"></i> -}
marsStroke : Html msg
marsStroke = i [] MarsStroke
{-| <i class="far fa-mars-stroke-h"></i> -}
marsStrokeH : Html msg
marsStrokeH = i [] MarsStrokeH
{-| <i class="far fa-mars-stroke-v"></i> -}
marsStrokeV : Html msg
marsStrokeV = i [] MarsStrokeV
{-| <i class="far fa-medal"></i> -}
medal : Html msg
medal = i [] Medal
{-| <i class="far fa-medkit"></i> -}
medkit : Html msg
medkit = i [] Medkit
{-| <i class="far fa-meh"></i> -}
meh : Html msg
meh = i [] Meh
{-| <i class="far fa-meh-blank"></i> -}
mehBlank : Html msg
mehBlank = i [] MehBlank
{-| <i class="far fa-meh-rolling-eyes"></i> -}
mehRollingEyes : Html msg
mehRollingEyes = i [] MehRollingEyes
{-| <i class="far fa-memory"></i> -}
memory : Html msg
memory = i [] Memory
{-| <i class="far fa-mercury"></i> -}
mercury : Html msg
mercury = i [] Mercury
{-| <i class="far fa-microchip"></i> -}
microchip : Html msg
microchip = i [] Microchip
{-| <i class="far fa-microphone"></i> -}
microphone : Html msg
microphone = i [] Microphone
{-| <i class="far fa-microphone-alt"></i> -}
microphoneAlt : Html msg
microphoneAlt = i [] MicrophoneAlt
{-| <i class="far fa-microphone-alt-slash"></i> -}
microphoneAltSlash : Html msg
microphoneAltSlash = i [] MicrophoneAltSlash
{-| <i class="far fa-microphone-slash"></i> -}
microphoneSlash : Html msg
microphoneSlash = i [] MicrophoneSlash
{-| <i class="far fa-minus"></i> -}
minus : Html msg
minus = i [] Minus
{-| <i class="far fa-minus-circle"></i> -}
minusCircle : Html msg
minusCircle = i [] MinusCircle
{-| <i class="far fa-minus-hexagon"></i> -}
minusHexagon : Html msg
minusHexagon = i [] MinusHexagon
{-| <i class="far fa-minus-octagon"></i> -}
minusOctagon : Html msg
minusOctagon = i [] MinusOctagon
{-| <i class="far fa-minus-square"></i> -}
minusSquare : Html msg
minusSquare = i [] MinusSquare
{-| <i class="far fa-mobile"></i> -}
mobile : Html msg
mobile = i [] Mobile
{-| <i class="far fa-mobile-alt"></i> -}
mobileAlt : Html msg
mobileAlt = i [] MobileAlt
{-| <i class="far fa-mobile-android"></i> -}
mobileAndroid : Html msg
mobileAndroid = i [] MobileAndroid
{-| <i class="far fa-mobile-android-alt"></i> -}
mobileAndroidAlt : Html msg
mobileAndroidAlt = i [] MobileAndroidAlt
{-| <i class="far fa-money-bill"></i> -}
moneyBill : Html msg
moneyBill = i [] MoneyBill
{-| <i class="far fa-money-bill-alt"></i> -}
moneyBillAlt : Html msg
moneyBillAlt = i [] MoneyBillAlt
{-| <i class="far fa-money-bill-wave"></i> -}
moneyBillWave : Html msg
moneyBillWave = i [] MoneyBillWave
{-| <i class="far fa-money-bill-wave-alt"></i> -}
moneyBillWaveAlt : Html msg
moneyBillWaveAlt = i [] MoneyBillWaveAlt
{-| <i class="far fa-money-check"></i> -}
moneyCheck : Html msg
moneyCheck = i [] MoneyCheck
{-| <i class="far fa-money-check-alt"></i> -}
moneyCheckAlt : Html msg
moneyCheckAlt = i [] MoneyCheckAlt
{-| <i class="far fa-monument"></i> -}
monument : Html msg
monument = i [] Monument
{-| <i class="far fa-moon"></i> -}
moon : Html msg
moon = i [] Moon
{-| <i class="far fa-mortar-pestle"></i> -}
mortarPestle : Html msg
mortarPestle = i [] MortarPestle
{-| <i class="far fa-motorcycle"></i> -}
motorcycle : Html msg
motorcycle = i [] Motorcycle
{-| <i class="far fa-mouse-pointer"></i> -}
mousePointer : Html msg
mousePointer = i [] MousePointer
{-| <i class="far fa-music"></i> -}
music : Html msg
music = i [] Music
{-| <i class="far fa-neuter"></i> -}
neuter : Html msg
neuter = i [] Neuter
{-| <i class="far fa-newspaper"></i> -}
newspaper : Html msg
newspaper = i [] Newspaper
{-| <i class="far fa-not-equal"></i> -}
notEqual : Html msg
notEqual = i [] NotEqual
{-| <i class="far fa-notes-medical"></i> -}
notesMedical : Html msg
notesMedical = i [] NotesMedical
{-| <i class="far fa-object-group"></i> -}
objectGroup : Html msg
objectGroup = i [] ObjectGroup
{-| <i class="far fa-object-ungroup"></i> -}
objectUngroup : Html msg
objectUngroup = i [] ObjectUngroup
{-| <i class="far fa-octagon"></i> -}
octagon : Html msg
octagon = i [] Octagon
{-| <i class="far fa-outdent"></i> -}
outdent : Html msg
outdent = i [] Outdent
{-| <i class="far fa-paint-brush"></i> -}
paintBrush : Html msg
paintBrush = i [] PaintBrush
{-| <i class="far fa-paint-brush-alt"></i> -}
paintBrushAlt : Html msg
paintBrushAlt = i [] PaintBrushAlt
{-| <i class="far fa-paint-roller"></i> -}
paintRoller : Html msg
paintRoller = i [] PaintRoller
{-| <i class="far fa-palette"></i> -}
palette : Html msg
palette = i [] Palette
{-| <i class="far fa-pallet"></i> -}
pallet : Html msg
pallet = i [] Pallet
{-| <i class="far fa-pallet-alt"></i> -}
palletAlt : Html msg
palletAlt = i [] PalletAlt
{-| <i class="far fa-paper-plane"></i> -}
paperPlane : Html msg
paperPlane = i [] PaperPlane
{-| <i class="far fa-paperclip"></i> -}
paperclip : Html msg
paperclip = i [] Paperclip
{-| <i class="far fa-parachute-box"></i> -}
parachuteBox : Html msg
parachuteBox = i [] ParachuteBox
{-| <i class="far fa-paragraph"></i> -}
paragraph : Html msg
paragraph = i [] Paragraph
{-| <i class="far fa-parking"></i> -}
parking : Html msg
parking = i [] Parking
{-| <i class="far fa-passport"></i> -}
passport : Html msg
passport = i [] Passport
{-| <i class="far fa-paste"></i> -}
paste : Html msg
paste = i [] Paste
{-| <i class="far fa-pause"></i> -}
pause : Html msg
pause = i [] Pause
{-| <i class="far fa-pause-circle"></i> -}
pauseCircle : Html msg
pauseCircle = i [] PauseCircle
{-| <i class="far fa-paw"></i> -}
paw : Html msg
paw = i [] Paw
{-| <i class="far fa-pen"></i> -}
pen : Html msg
pen = i [] Pen
{-| <i class="far fa-pen-alt"></i> -}
penAlt : Html msg
penAlt = i [] PenAlt
{-| <i class="far fa-pen-fancy"></i> -}
penFancy : Html msg
penFancy = i [] PenFancy
{-| <i class="far fa-pen-nib"></i> -}
penNib : Html msg
penNib = i [] PenNib
{-| <i class="far fa-pen-square"></i> -}
penSquare : Html msg
penSquare = i [] PenSquare
{-| <i class="far fa-pencil"></i> -}
pencil : Html msg
pencil = i [] Pencil
{-| <i class="far fa-pencil-alt"></i> -}
pencilAlt : Html msg
pencilAlt = i [] PencilAlt
{-| <i class="far fa-pencil-ruler"></i> -}
pencilRuler : Html msg
pencilRuler = i [] PencilRuler
{-| <i class="far fa-pennant"></i> -}
pennant : Html msg
pennant = i [] Pennant
{-| <i class="far fa-people-carry"></i> -}
peopleCarry : Html msg
peopleCarry = i [] PeopleCarry
{-| <i class="far fa-percent"></i> -}
percent : Html msg
percent = i [] Percent
{-| <i class="far fa-percentage"></i> -}
percentage : Html msg
percentage = i [] Percentage
{-| <i class="far fa-person-carry"></i> -}
personCarry : Html msg
personCarry = i [] PersonCarry
{-| <i class="far fa-person-dolly"></i> -}
personDolly : Html msg
personDolly = i [] PersonDolly
{-| <i class="far fa-person-dolly-empty"></i> -}
personDollyEmpty : Html msg
personDollyEmpty = i [] PersonDollyEmpty
{-| <i class="far fa-phone"></i> -}
phone : Html msg
phone = i [] Phone
{-| <i class="far fa-phone-plus"></i> -}
phonePlus : Html msg
phonePlus = i [] PhonePlus
{-| <i class="far fa-phone-slash"></i> -}
phoneSlash : Html msg
phoneSlash = i [] PhoneSlash
{-| <i class="far fa-phone-square"></i> -}
phoneSquare : Html msg
phoneSquare = i [] PhoneSquare
{-| <i class="far fa-phone-volume"></i> -}
phoneVolume : Html msg
phoneVolume = i [] PhoneVolume
{-| <i class="far fa-piggy-bank"></i> -}
piggyBank : Html msg
piggyBank = i [] PiggyBank
{-| <i class="far fa-pills"></i> -}
pills : Html msg
pills = i [] Pills
{-| <i class="far fa-plane"></i> -}
plane : Html msg
plane = i [] Plane
{-| <i class="far fa-plane-alt"></i> -}
planeAlt : Html msg
planeAlt = i [] PlaneAlt
{-| <i class="far fa-plane-arrival"></i> -}
planeArrival : Html msg
planeArrival = i [] PlaneArrival
{-| <i class="far fa-plane-departure"></i> -}
planeDeparture : Html msg
planeDeparture = i [] PlaneDeparture
{-| <i class="far fa-play"></i> -}
play : Html msg
play = i [] Play
{-| <i class="far fa-play-circle"></i> -}
playCircle : Html msg
playCircle = i [] PlayCircle
{-| <i class="far fa-plug"></i> -}
plug : Html msg
plug = i [] Plug
{-| <i class="far fa-plus"></i> -}
plus : Html msg
plus = i [] Plus
{-| <i class="far fa-plus-circle"></i> -}
plusCircle : Html msg
plusCircle = i [] PlusCircle
{-| <i class="far fa-plus-hexagon"></i> -}
plusHexagon : Html msg
plusHexagon = i [] PlusHexagon
{-| <i class="far fa-plus-octagon"></i> -}
plusOctagon : Html msg
plusOctagon = i [] PlusOctagon
{-| <i class="far fa-plus-square"></i> -}
plusSquare : Html msg
plusSquare = i [] PlusSquare
{-| <i class="far fa-podcast"></i> -}
podcast : Html msg
podcast = i [] Podcast
{-| <i class="far fa-poo"></i> -}
poo : Html msg
poo = i [] Poo
{-| <i class="far fa-portrait"></i> -}
portrait : Html msg
portrait = i [] Portrait
{-| <i class="far fa-pound-sign"></i> -}
poundSign : Html msg
poundSign = i [] PoundSign
{-| <i class="far fa-power-off"></i> -}
powerOff : Html msg
powerOff = i [] PowerOff
{-| <i class="far fa-prescription"></i> -}
prescription : Html msg
prescription = i [] Prescription
{-| <i class="far fa-prescription-bottle"></i> -}
prescriptionBottle : Html msg
prescriptionBottle = i [] PrescriptionBottle
{-| <i class="far fa-prescription-bottle-alt"></i> -}
prescriptionBottleAlt : Html msg
prescriptionBottleAlt = i [] PrescriptionBottleAlt
{-| <i class="far fa-print"></i> -}
print : Html msg
print = i [] Print
{-| <i class="far fa-procedures"></i> -}
procedures : Html msg
procedures = i [] Procedures
{-| <i class="far fa-project-diagram"></i> -}
projectDiagram : Html msg
projectDiagram = i [] ProjectDiagram
{-| <i class="far fa-puzzle-piece"></i> -}
puzzlePiece : Html msg
puzzlePiece = i [] PuzzlePiece
{-| <i class="far fa-qrcode"></i> -}
qrcode : Html msg
qrcode = i [] Qrcode
{-| <i class="far fa-question"></i> -}
question : Html msg
question = i [] Question
{-| <i class="far fa-question-circle"></i> -}
questionCircle : Html msg
questionCircle = i [] QuestionCircle
{-| <i class="far fa-question-square"></i> -}
questionSquare : Html msg
questionSquare = i [] QuestionSquare
{-| <i class="far fa-quidditch"></i> -}
quidditch : Html msg
quidditch = i [] Quidditch
{-| <i class="far fa-quote-left"></i> -}
quoteLeft : Html msg
quoteLeft = i [] QuoteLeft
{-| <i class="far fa-quote-right"></i> -}
quoteRight : Html msg
quoteRight = i [] QuoteRight
{-| <i class="far fa-racquet"></i> -}
racquet : Html msg
racquet = i [] Racquet
{-| <i class="far fa-ramp-loading"></i> -}
rampLoading : Html msg
rampLoading = i [] RampLoading
{-| <i class="far fa-random"></i> -}
random : Html msg
random = i [] Random
{-| <i class="far fa-receipt"></i> -}
receipt : Html msg
receipt = i [] Receipt
{-| <i class="far fa-rectangle-landscape"></i> -}
rectangleLandscape : Html msg
rectangleLandscape = i [] RectangleLandscape
{-| <i class="far fa-rectangle-portrait"></i> -}
rectanglePortrait : Html msg
rectanglePortrait = i [] RectanglePortrait
{-| <i class="far fa-rectangle-wide"></i> -}
rectangleWide : Html msg
rectangleWide = i [] RectangleWide
{-| <i class="far fa-recycle"></i> -}
recycle : Html msg
recycle = i [] Recycle
{-| <i class="far fa-redo"></i> -}
redo : Html msg
redo = i [] Redo
{-| <i class="far fa-redo-alt"></i> -}
redoAlt : Html msg
redoAlt = i [] RedoAlt
{-| <i class="far fa-registered"></i> -}
registered : Html msg
registered = i [] Registered
{-| <i class="far fa-repeat"></i> -}
repeat : Html msg
repeat = i [] Repeat
{-| <i class="far fa-repeat-1"></i> -}
repeat1 : Html msg
repeat1 = i [] Repeat1
{-| <i class="far fa-repeat-1-alt"></i> -}
repeat1Alt : Html msg
repeat1Alt = i [] Repeat1Alt
{-| <i class="far fa-repeat-alt"></i> -}
repeatAlt : Html msg
repeatAlt = i [] RepeatAlt
{-| <i class="far fa-reply"></i> -}
reply : Html msg
reply = i [] Reply
{-| <i class="far fa-reply-all"></i> -}
replyAll : Html msg
replyAll = i [] ReplyAll
{-| <i class="far fa-retweet"></i> -}
retweet : Html msg
retweet = i [] Retweet
{-| <i class="far fa-retweet-alt"></i> -}
retweetAlt : Html msg
retweetAlt = i [] RetweetAlt
{-| <i class="far fa-ribbon"></i> -}
ribbon : Html msg
ribbon = i [] Ribbon
{-| <i class="far fa-road"></i> -}
road : Html msg
road = i [] Road
{-| <i class="far fa-robot"></i> -}
robot : Html msg
robot = i [] Robot
{-| <i class="far fa-rocket"></i> -}
rocket : Html msg
rocket = i [] Rocket
{-| <i class="far fa-route"></i> -}
route : Html msg
route = i [] Route
{-| <i class="far fa-rss"></i> -}
rss : Html msg
rss = i [] Rss
{-| <i class="far fa-rss-square"></i> -}
rssSquare : Html msg
rssSquare = i [] RssSquare
{-| <i class="far fa-ruble-sign"></i> -}
rubleSign : Html msg
rubleSign = i [] RubleSign
{-| <i class="far fa-ruler"></i> -}
ruler : Html msg
ruler = i [] Ruler
{-| <i class="far fa-ruler-combined"></i> -}
rulerCombined : Html msg
rulerCombined = i [] RulerCombined
{-| <i class="far fa-ruler-horizontal"></i> -}
rulerHorizontal : Html msg
rulerHorizontal = i [] RulerHorizontal
{-| <i class="far fa-ruler-vertical"></i> -}
rulerVertical : Html msg
rulerVertical = i [] RulerVertical
{-| <i class="far fa-rupee-sign"></i> -}
rupeeSign : Html msg
rupeeSign = i [] RupeeSign
{-| <i class="far fa-sad-cry"></i> -}
sadCry : Html msg
sadCry = i [] SadCry
{-| <i class="far fa-sad-tear"></i> -}
sadTear : Html msg
sadTear = i [] SadTear
{-| <i class="far fa-save"></i> -}
save : Html msg
save = i [] Save
{-| <i class="far fa-scanner"></i> -}
scanner : Html msg
scanner = i [] Scanner
{-| <i class="far fa-scanner-keyboard"></i> -}
scannerKeyboard : Html msg
scannerKeyboard = i [] ScannerKeyboard
{-| <i class="far fa-scanner-touchscreen"></i> -}
scannerTouchscreen : Html msg
scannerTouchscreen = i [] ScannerTouchscreen
{-| <i class="far fa-school"></i> -}
school : Html msg
school = i [] School
{-| <i class="far fa-screwdriver"></i> -}
screwdriver : Html msg
screwdriver = i [] Screwdriver
{-| <i class="far fa-scrubber"></i> -}
scrubber : Html msg
scrubber = i [] Scrubber
{-| <i class="far fa-search"></i> -}
search : Html msg
search = i [] Search
{-| <i class="far fa-search-minus"></i> -}
searchMinus : Html msg
searchMinus = i [] SearchMinus
{-| <i class="far fa-search-plus"></i> -}
searchPlus : Html msg
searchPlus = i [] SearchPlus
{-| <i class="far fa-seedling"></i> -}
seedling : Html msg
seedling = i [] Seedling
{-| <i class="far fa-server"></i> -}
server : Html msg
server = i [] Server
{-| <i class="far fa-share"></i> -}
share : Html msg
share = i [] Share
{-| <i class="far fa-share-all"></i> -}
shareAll : Html msg
shareAll = i [] ShareAll
{-| <i class="far fa-share-alt"></i> -}
shareAlt : Html msg
shareAlt = i [] ShareAlt
{-| <i class="far fa-share-alt-square"></i> -}
shareAltSquare : Html msg
shareAltSquare = i [] ShareAltSquare
{-| <i class="far fa-share-square"></i> -}
shareSquare : Html msg
shareSquare = i [] ShareSquare
{-| <i class="far fa-shekel-sign"></i> -}
shekelSign : Html msg
shekelSign = i [] ShekelSign
{-| <i class="far fa-shield"></i> -}
shield : Html msg
shield = i [] Shield
{-| <i class="far fa-shield-alt"></i> -}
shieldAlt : Html msg
shieldAlt = i [] ShieldAlt
{-| <i class="far fa-shield-check"></i> -}
shieldCheck : Html msg
shieldCheck = i [] ShieldCheck
{-| <i class="far fa-ship"></i> -}
ship : Html msg
ship = i [] Ship
{-| <i class="far fa-shipping-fast"></i> -}
shippingFast : Html msg
shippingFast = i [] ShippingFast
{-| <i class="far fa-shipping-timed"></i> -}
shippingTimed : Html msg
shippingTimed = i [] ShippingTimed
{-| <i class="far fa-shoe-prints"></i> -}
shoePrints : Html msg
shoePrints = i [] ShoePrints
{-| <i class="far fa-shopping-bag"></i> -}
shoppingBag : Html msg
shoppingBag = i [] ShoppingBag
{-| <i class="far fa-shopping-basket"></i> -}
shoppingBasket : Html msg
shoppingBasket = i [] ShoppingBasket
{-| <i class="far fa-shopping-cart"></i> -}
shoppingCart : Html msg
shoppingCart = i [] ShoppingCart
{-| <i class="far fa-shower"></i> -}
shower : Html msg
shower = i [] Shower
{-| <i class="far fa-shuttle-van"></i> -}
shuttleVan : Html msg
shuttleVan = i [] ShuttleVan
{-| <i class="far fa-shuttlecock"></i> -}
shuttlecock : Html msg
shuttlecock = i [] Shuttlecock
{-| <i class="far fa-sign"></i> -}
sign : Html msg
sign = i [] Sign
{-| <i class="far fa-sign-in"></i> -}
signIn : Html msg
signIn = i [] SignIn
{-| <i class="far fa-sign-in-alt"></i> -}
signInAlt : Html msg
signInAlt = i [] SignInAlt
{-| <i class="far fa-sign-language"></i> -}
signLanguage : Html msg
signLanguage = i [] SignLanguage
{-| <i class="far fa-sign-out"></i> -}
signOut : Html msg
signOut = i [] SignOut
{-| <i class="far fa-sign-out-alt"></i> -}
signOutAlt : Html msg
signOutAlt = i [] SignOutAlt
{-| <i class="far fa-signal"></i> -}
signal : Html msg
signal = i [] Signal
{-| <i class="far fa-signature"></i> -}
signature : Html msg
signature = i [] Signature
{-| <i class="far fa-sitemap"></i> -}
sitemap : Html msg
sitemap = i [] Sitemap
{-| <i class="far fa-skull"></i> -}
skull : Html msg
skull = i [] Skull
{-| <i class="far fa-sliders-h"></i> -}
slidersH : Html msg
slidersH = i [] SlidersH
{-| <i class="far fa-sliders-h-square"></i> -}
slidersHSquare : Html msg
slidersHSquare = i [] SlidersHSquare
{-| <i class="far fa-sliders-v"></i> -}
slidersV : Html msg
slidersV = i [] SlidersV
{-| <i class="far fa-sliders-v-square"></i> -}
slidersVSquare : Html msg
slidersVSquare = i [] SlidersVSquare
{-| <i class="far fa-smile"></i> -}
smile : Html msg
smile = i [] Smile
{-| <i class="far fa-smile-beam"></i> -}
smileBeam : Html msg
smileBeam = i [] SmileBeam
{-| <i class="far fa-smile-plus"></i> -}
smilePlus : Html msg
smilePlus = i [] SmilePlus
{-| <i class="far fa-smile-wink"></i> -}
smileWink : Html msg
smileWink = i [] SmileWink
{-| <i class="far fa-smoking"></i> -}
smoking : Html msg
smoking = i [] Smoking
{-| <i class="far fa-smoking-ban"></i> -}
smokingBan : Html msg
smokingBan = i [] SmokingBan
{-| <i class="far fa-snowflake"></i> -}
snowflake : Html msg
snowflake = i [] Snowflake
{-| <i class="far fa-solar-panel"></i> -}
solarPanel : Html msg
solarPanel = i [] SolarPanel
{-| <i class="far fa-sort"></i> -}
sort : Html msg
sort = i [] Sort
{-| <i class="far fa-sort-alpha-down"></i> -}
sortAlphaDown : Html msg
sortAlphaDown = i [] SortAlphaDown
{-| <i class="far fa-sort-alpha-up"></i> -}
sortAlphaUp : Html msg
sortAlphaUp = i [] SortAlphaUp
{-| <i class="far fa-sort-amount-down"></i> -}
sortAmountDown : Html msg
sortAmountDown = i [] SortAmountDown
{-| <i class="far fa-sort-amount-up"></i> -}
sortAmountUp : Html msg
sortAmountUp = i [] SortAmountUp
{-| <i class="far fa-sort-down"></i> -}
sortDown : Html msg
sortDown = i [] SortDown
{-| <i class="far fa-sort-numeric-down"></i> -}
sortNumericDown : Html msg
sortNumericDown = i [] SortNumericDown
{-| <i class="far fa-sort-numeric-up"></i> -}
sortNumericUp : Html msg
sortNumericUp = i [] SortNumericUp
{-| <i class="far fa-sort-up"></i> -}
sortUp : Html msg
sortUp = i [] SortUp
{-| <i class="far fa-spa"></i> -}
spa : Html msg
spa = i [] Spa
{-| <i class="far fa-space-shuttle"></i> -}
spaceShuttle : Html msg
spaceShuttle = i [] SpaceShuttle
{-| <i class="far fa-spade"></i> -}
spade : Html msg
spade = i [] Spade
{-| <i class="far fa-spinner"></i> -}
spinner : Html msg
spinner = i [] Spinner
{-| <i class="far fa-spinner-third"></i> -}
spinnerThird : Html msg
spinnerThird = i [] SpinnerThird
{-| <i class="far fa-splotch"></i> -}
splotch : Html msg
splotch = i [] Splotch
{-| <i class="far fa-spray-can"></i> -}
sprayCan : Html msg
sprayCan = i [] SprayCan
{-| <i class="far fa-square"></i> -}
square : Html msg
square = i [] Square
{-| <i class="far fa-square-full"></i> -}
squareFull : Html msg
squareFull = i [] SquareFull
{-| <i class="far fa-stamp"></i> -}
stamp : Html msg
stamp = i [] Stamp
{-| <i class="far fa-star"></i> -}
star : Html msg
star = i [] Star
{-| <i class="far fa-star-exclamation"></i> -}
starExclamation : Html msg
starExclamation = i [] StarExclamation
{-| <i class="far fa-star-half"></i> -}
starHalf : Html msg
starHalf = i [] StarHalf
{-| <i class="far fa-star-half-alt"></i> -}
starHalfAlt : Html msg
starHalfAlt = i [] StarHalfAlt
{-| <i class="far fa-step-backward"></i> -}
stepBackward : Html msg
stepBackward = i [] StepBackward
{-| <i class="far fa-step-forward"></i> -}
stepForward : Html msg
stepForward = i [] StepForward
{-| <i class="far fa-stethoscope"></i> -}
stethoscope : Html msg
stethoscope = i [] Stethoscope
{-| <i class="far fa-sticky-note"></i> -}
stickyNote : Html msg
stickyNote = i [] StickyNote
{-| <i class="far fa-stop"></i> -}
stop : Html msg
stop = i [] Stop
{-| <i class="far fa-stop-circle"></i> -}
stopCircle : Html msg
stopCircle = i [] StopCircle
{-| <i class="far fa-stopwatch"></i> -}
stopwatch : Html msg
stopwatch = i [] Stopwatch
{-| <i class="far fa-store"></i> -}
store : Html msg
store = i [] Store
{-| <i class="far fa-store-alt"></i> -}
storeAlt : Html msg
storeAlt = i [] StoreAlt
{-| <i class="far fa-stream"></i> -}
stream : Html msg
stream = i [] Stream
{-| <i class="far fa-street-view"></i> -}
streetView : Html msg
streetView = i [] StreetView
{-| <i class="far fa-strikethrough"></i> -}
strikethrough : Html msg
strikethrough = i [] Strikethrough
{-| <i class="far fa-stroopwafel"></i> -}
stroopwafel : Html msg
stroopwafel = i [] Stroopwafel
{-| <i class="far fa-subscript"></i> -}
subscript : Html msg
subscript = i [] Subscript
{-| <i class="far fa-subway"></i> -}
subway : Html msg
subway = i [] Subway
{-| <i class="far fa-suitcase"></i> -}
suitcase : Html msg
suitcase = i [] Suitcase
{-| <i class="far fa-suitcase-rolling"></i> -}
suitcaseRolling : Html msg
suitcaseRolling = i [] SuitcaseRolling
{-| <i class="far fa-sun"></i> -}
sun : Html msg
sun = i [] Sun
{-| <i class="far fa-superscript"></i> -}
superscript : Html msg
superscript = i [] Superscript
{-| <i class="far fa-surprise"></i> -}
surprise : Html msg
surprise = i [] Surprise
{-| <i class="far fa-swatchbook"></i> -}
swatchbook : Html msg
swatchbook = i [] Swatchbook
{-| <i class="far fa-swimmer"></i> -}
swimmer : Html msg
swimmer = i [] Swimmer
{-| <i class="far fa-swimming-pool"></i> -}
swimmingPool : Html msg
swimmingPool = i [] SwimmingPool
{-| <i class="far fa-sync"></i> -}
sync : Html msg
sync = i [] Sync
{-| <i class="far fa-sync-alt"></i> -}
syncAlt : Html msg
syncAlt = i [] SyncAlt
{-| <i class="far fa-syringe"></i> -}
syringe : Html msg
syringe = i [] Syringe
{-| <i class="far fa-table"></i> -}
table : Html msg
table = i [] Table
{-| <i class="far fa-table-tennis"></i> -}
tableTennis : Html msg
tableTennis = i [] TableTennis
{-| <i class="far fa-tablet"></i> -}
tablet : Html msg
tablet = i [] Tablet
{-| <i class="far fa-tablet-alt"></i> -}
tabletAlt : Html msg
tabletAlt = i [] TabletAlt
{-| <i class="far fa-tablet-android"></i> -}
tabletAndroid : Html msg
tabletAndroid = i [] TabletAndroid
{-| <i class="far fa-tablet-android-alt"></i> -}
tabletAndroidAlt : Html msg
tabletAndroidAlt = i [] TabletAndroidAlt
{-| <i class="far fa-tablet-rugged"></i> -}
tabletRugged : Html msg
tabletRugged = i [] TabletRugged
{-| <i class="far fa-tablets"></i> -}
tablets : Html msg
tablets = i [] Tablets
{-| <i class="far fa-tachometer"></i> -}
tachometer : Html msg
tachometer = i [] Tachometer
{-| <i class="far fa-tachometer-alt"></i> -}
tachometerAlt : Html msg
tachometerAlt = i [] TachometerAlt
{-| <i class="far fa-tag"></i> -}
tag : Html msg
tag = i [] Tag
{-| <i class="far fa-tags"></i> -}
tags : Html msg
tags = i [] Tags
{-| <i class="far fa-tape"></i> -}
tape : Html msg
tape = i [] Tape
{-| <i class="far fa-tasks"></i> -}
tasks : Html msg
tasks = i [] Tasks
{-| <i class="far fa-taxi"></i> -}
taxi : Html msg
taxi = i [] Taxi
{-| <i class="far fa-tennis-ball"></i> -}
tennisBall : Html msg
tennisBall = i [] TennisBall
{-| <i class="far fa-terminal"></i> -}
terminal : Html msg
terminal = i [] Terminal
{-| <i class="far fa-text-height"></i> -}
textHeight : Html msg
textHeight = i [] TextHeight
{-| <i class="far fa-text-width"></i> -}
textWidth : Html msg
textWidth = i [] TextWidth
{-| <i class="far fa-th"></i> -}
th : Html msg
th = i [] Th
{-| <i class="far fa-th-large"></i> -}
thLarge : Html msg
thLarge = i [] ThLarge
{-| <i class="far fa-th-list"></i> -}
thList : Html msg
thList = i [] ThList
{-| <i class="far fa-thermometer"></i> -}
thermometer : Html msg
thermometer = i [] Thermometer
{-| <i class="far fa-thermometer-empty"></i> -}
thermometerEmpty : Html msg
thermometerEmpty = i [] ThermometerEmpty
{-| <i class="far fa-thermometer-full"></i> -}
thermometerFull : Html msg
thermometerFull = i [] ThermometerFull
{-| <i class="far fa-thermometer-half"></i> -}
thermometerHalf : Html msg
thermometerHalf = i [] ThermometerHalf
{-| <i class="far fa-thermometer-quarter"></i> -}
thermometerQuarter : Html msg
thermometerQuarter = i [] ThermometerQuarter
{-| <i class="far fa-thermometer-three-quarters"></i> -}
thermometerThreeQuarters : Html msg
thermometerThreeQuarters = i [] ThermometerThreeQuarters
{-| <i class="far fa-thumbs-down"></i> -}
thumbsDown : Html msg
thumbsDown = i [] ThumbsDown
{-| <i class="far fa-thumbs-up"></i> -}
thumbsUp : Html msg
thumbsUp = i [] ThumbsUp
{-| <i class="far fa-thumbtack"></i> -}
thumbtack : Html msg
thumbtack = i [] Thumbtack
{-| <i class="far fa-ticket"></i> -}
ticket : Html msg
ticket = i [] Ticket
{-| <i class="far fa-ticket-alt"></i> -}
ticketAlt : Html msg
ticketAlt = i [] TicketAlt
{-| <i class="far fa-times"></i> -}
times : Html msg
times = i [] Times
{-| <i class="far fa-times-circle"></i> -}
timesCircle : Html msg
timesCircle = i [] TimesCircle
{-| <i class="far fa-times-hexagon"></i> -}
timesHexagon : Html msg
timesHexagon = i [] TimesHexagon
{-| <i class="far fa-times-octagon"></i> -}
timesOctagon : Html msg
timesOctagon = i [] TimesOctagon
{-| <i class="far fa-times-square"></i> -}
timesSquare : Html msg
timesSquare = i [] TimesSquare
{-| <i class="far fa-tint"></i> -}
tint : Html msg
tint = i [] Tint
{-| <i class="far fa-tint-slash"></i> -}
tintSlash : Html msg
tintSlash = i [] TintSlash
{-| <i class="far fa-tired"></i> -}
tired : Html msg
tired = i [] Tired
{-| <i class="far fa-toggle-off"></i> -}
toggleOff : Html msg
toggleOff = i [] ToggleOff
{-| <i class="far fa-toggle-on"></i> -}
toggleOn : Html msg
toggleOn = i [] ToggleOn
{-| <i class="far fa-toolbox"></i> -}
toolbox : Html msg
toolbox = i [] Toolbox
{-| <i class="far fa-tooth"></i> -}
tooth : Html msg
tooth = i [] Tooth
{-| <i class="far fa-trademark"></i> -}
trademark : Html msg
trademark = i [] Trademark
{-| <i class="far fa-train"></i> -}
train : Html msg
train = i [] Train
{-| <i class="far fa-transgender"></i> -}
transgender : Html msg
transgender = i [] Transgender
{-| <i class="far fa-transgender-alt"></i> -}
transgenderAlt : Html msg
transgenderAlt = i [] TransgenderAlt
{-| <i class="far fa-trash"></i> -}
trash : Html msg
trash = i [] Trash
{-| <i class="far fa-trash-alt"></i> -}
trashAlt : Html msg
trashAlt = i [] TrashAlt
{-| <i class="far fa-tree"></i> -}
tree : Html msg
tree = i [] Tree
{-| <i class="far fa-tree-alt"></i> -}
treeAlt : Html msg
treeAlt = i [] TreeAlt
{-| <i class="far fa-triangle"></i> -}
triangle : Html msg
triangle = i [] Triangle
{-| <i class="far fa-trophy"></i> -}
trophy : Html msg
trophy = i [] Trophy
{-| <i class="far fa-trophy-alt"></i> -}
trophyAlt : Html msg
trophyAlt = i [] TrophyAlt
{-| <i class="far fa-truck"></i> -}
truck : Html msg
truck = i [] Truck
{-| <i class="far fa-truck-container"></i> -}
truckContainer : Html msg
truckContainer = i [] TruckContainer
{-| <i class="far fa-truck-couch"></i> -}
truckCouch : Html msg
truckCouch = i [] TruckCouch
{-| <i class="far fa-truck-loading"></i> -}
truckLoading : Html msg
truckLoading = i [] TruckLoading
{-| <i class="far fa-truck-moving"></i> -}
truckMoving : Html msg
truckMoving = i [] TruckMoving
{-| <i class="far fa-truck-ramp"></i> -}
truckRamp : Html msg
truckRamp = i [] TruckRamp
{-| <i class="far fa-tshirt"></i> -}
tshirt : Html msg
tshirt = i [] Tshirt
{-| <i class="far fa-tty"></i> -}
tty : Html msg
tty = i [] Tty
{-| <i class="far fa-tv"></i> -}
tv : Html msg
tv = i [] Tv
{-| <i class="far fa-tv-retro"></i> -}
tvRetro : Html msg
tvRetro = i [] TvRetro
{-| <i class="far fa-umbrella"></i> -}
umbrella : Html msg
umbrella = i [] Umbrella
{-| <i class="far fa-umbrella-beach"></i> -}
umbrellaBeach : Html msg
umbrellaBeach = i [] UmbrellaBeach
{-| <i class="far fa-underline"></i> -}
underline : Html msg
underline = i [] Underline
{-| <i class="far fa-undo"></i> -}
undo : Html msg
undo = i [] Undo
{-| <i class="far fa-undo-alt"></i> -}
undoAlt : Html msg
undoAlt = i [] UndoAlt
{-| <i class="far fa-universal-access"></i> -}
universalAccess : Html msg
universalAccess = i [] UniversalAccess
{-| <i class="far fa-university"></i> -}
university : Html msg
university = i [] University
{-| <i class="far fa-unlink"></i> -}
unlink : Html msg
unlink = i [] Unlink
{-| <i class="far fa-unlock"></i> -}
unlock : Html msg
unlock = i [] Unlock
{-| <i class="far fa-unlock-alt"></i> -}
unlockAlt : Html msg
unlockAlt = i [] UnlockAlt
{-| <i class="far fa-upload"></i> -}
upload : Html msg
upload = i [] Upload
{-| <i class="far fa-usd-circle"></i> -}
usdCircle : Html msg
usdCircle = i [] UsdCircle
{-| <i class="far fa-usd-square"></i> -}
usdSquare : Html msg
usdSquare = i [] UsdSquare
{-| <i class="far fa-user"></i> -}
user : Html msg
user = i [] User
{-| <i class="far fa-user-alt"></i> -}
userAlt : Html msg
userAlt = i [] UserAlt
{-| <i class="far fa-user-alt-slash"></i> -}
userAltSlash : Html msg
userAltSlash = i [] UserAltSlash
{-| <i class="far fa-user-astronaut"></i> -}
userAstronaut : Html msg
userAstronaut = i [] UserAstronaut
{-| <i class="far fa-user-check"></i> -}
userCheck : Html msg
userCheck = i [] UserCheck
{-| <i class="far fa-user-circle"></i> -}
userCircle : Html msg
userCircle = i [] UserCircle
{-| <i class="far fa-user-clock"></i> -}
userClock : Html msg
userClock = i [] UserClock
{-| <i class="far fa-user-cog"></i> -}
userCog : Html msg
userCog = i [] UserCog
{-| <i class="far fa-user-edit"></i> -}
userEdit : Html msg
userEdit = i [] UserEdit
{-| <i class="far fa-user-friends"></i> -}
userFriends : Html msg
userFriends = i [] UserFriends
{-| <i class="far fa-user-graduate"></i> -}
userGraduate : Html msg
userGraduate = i [] UserGraduate
{-| <i class="far fa-user-lock"></i> -}
userLock : Html msg
userLock = i [] UserLock
{-| <i class="far fa-user-md"></i> -}
userMd : Html msg
userMd = i [] UserMd
{-| <i class="far fa-user-minus"></i> -}
userMinus : Html msg
userMinus = i [] UserMinus
{-| <i class="far fa-user-ninja"></i> -}
userNinja : Html msg
userNinja = i [] UserNinja
{-| <i class="far fa-user-plus"></i> -}
userPlus : Html msg
userPlus = i [] UserPlus
{-| <i class="far fa-user-secret"></i> -}
userSecret : Html msg
userSecret = i [] UserSecret
{-| <i class="far fa-user-shield"></i> -}
userShield : Html msg
userShield = i [] UserShield
{-| <i class="far fa-user-slash"></i> -}
userSlash : Html msg
userSlash = i [] UserSlash
{-| <i class="far fa-user-tag"></i> -}
userTag : Html msg
userTag = i [] UserTag
{-| <i class="far fa-user-tie"></i> -}
userTie : Html msg
userTie = i [] UserTie
{-| <i class="far fa-user-times"></i> -}
userTimes : Html msg
userTimes = i [] UserTimes
{-| <i class="far fa-users"></i> -}
users : Html msg
users = i [] Users
{-| <i class="far fa-users-cog"></i> -}
usersCog : Html msg
usersCog = i [] UsersCog
{-| <i class="far fa-utensil-fork"></i> -}
utensilFork : Html msg
utensilFork = i [] UtensilFork
{-| <i class="far fa-utensil-knife"></i> -}
utensilKnife : Html msg
utensilKnife = i [] UtensilKnife
{-| <i class="far fa-utensil-spoon"></i> -}
utensilSpoon : Html msg
utensilSpoon = i [] UtensilSpoon
{-| <i class="far fa-utensils"></i> -}
utensils : Html msg
utensils = i [] Utensils
{-| <i class="far fa-utensils-alt"></i> -}
utensilsAlt : Html msg
utensilsAlt = i [] UtensilsAlt
{-| <i class="far fa-vector-square"></i> -}
vectorSquare : Html msg
vectorSquare = i [] VectorSquare
{-| <i class="far fa-venus"></i> -}
venus : Html msg
venus = i [] Venus
{-| <i class="far fa-venus-double"></i> -}
venusDouble : Html msg
venusDouble = i [] VenusDouble
{-| <i class="far fa-venus-mars"></i> -}
venusMars : Html msg
venusMars = i [] VenusMars
{-| <i class="far fa-vial"></i> -}
vial : Html msg
vial = i [] Vial
{-| <i class="far fa-vials"></i> -}
vials : Html msg
vials = i [] Vials
{-| <i class="far fa-video"></i> -}
video : Html msg
video = i [] Video
{-| <i class="far fa-video-plus"></i> -}
videoPlus : Html msg
videoPlus = i [] VideoPlus
{-| <i class="far fa-video-slash"></i> -}
videoSlash : Html msg
videoSlash = i [] VideoSlash
{-| <i class="far fa-volleyball-ball"></i> -}
volleyballBall : Html msg
volleyballBall = i [] VolleyballBall
{-| <i class="far fa-volume-down"></i> -}
volumeDown : Html msg
volumeDown = i [] VolumeDown
{-| <i class="far fa-volume-mute"></i> -}
volumeMute : Html msg
volumeMute = i [] VolumeMute
{-| <i class="far fa-volume-off"></i> -}
volumeOff : Html msg
volumeOff = i [] VolumeOff
{-| <i class="far fa-volume-up"></i> -}
volumeUp : Html msg
volumeUp = i [] VolumeUp
{-| <i class="far fa-walking"></i> -}
walking : Html msg
walking = i [] Walking
{-| <i class="far fa-wallet"></i> -}
wallet : Html msg
wallet = i [] Wallet
{-| <i class="far fa-warehouse"></i> -}
warehouse : Html msg
warehouse = i [] Warehouse
{-| <i class="far fa-warehouse-alt"></i> -}
warehouseAlt : Html msg
warehouseAlt = i [] WarehouseAlt
{-| <i class="far fa-watch"></i> -}
watch : Html msg
watch = i [] Watch
{-| <i class="far fa-weight"></i> -}
weight : Html msg
weight = i [] Weight
{-| <i class="far fa-weight-hanging"></i> -}
weightHanging : Html msg
weightHanging = i [] WeightHanging
{-| <i class="far fa-wheelchair"></i> -}
wheelchair : Html msg
wheelchair = i [] Wheelchair
{-| <i class="far fa-whistle"></i> -}
whistle : Html msg
whistle = i [] Whistle
{-| <i class="far fa-wifi"></i> -}
wifi : Html msg
wifi = i [] Wifi
{-| <i class="far fa-window"></i> -}
window : Html msg
window = i [] Window
{-| <i class="far fa-window-alt"></i> -}
windowAlt : Html msg
windowAlt = i [] WindowAlt
{-| <i class="far fa-window-close"></i> -}
windowClose : Html msg
windowClose = i [] WindowClose
{-| <i class="far fa-window-maximize"></i> -}
windowMaximize : Html msg
windowMaximize = i [] WindowMaximize
{-| <i class="far fa-window-minimize"></i> -}
windowMinimize : Html msg
windowMinimize = i [] WindowMinimize
{-| <i class="far fa-window-restore"></i> -}
windowRestore : Html msg
windowRestore = i [] WindowRestore
{-| <i class="far fa-wine-glass"></i> -}
wineGlass : Html msg
wineGlass = i [] WineGlass
{-| <i class="far fa-wine-glass-alt"></i> -}
wineGlassAlt : Html msg
wineGlassAlt = i [] WineGlassAlt
{-| <i class="far fa-won-sign"></i> -}
wonSign : Html msg
wonSign = i [] WonSign
{-| <i class="far fa-wrench"></i> -}
wrench : Html msg
wrench = i [] Wrench
{-| <i class="far fa-x-ray"></i> -}
xRay : Html msg
xRay = i [] XRay
{-| <i class="far fa-yen-sign"></i> -}
yenSign : Html msg
yenSign = i [] YenSign
