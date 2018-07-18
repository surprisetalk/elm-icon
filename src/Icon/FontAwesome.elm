
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

{-| <i class="fab far fas fal fa-accessible-icon"></i> -}
accessibleIcon : Html msg
accessibleIcon = i [] (AccessibleIcon)
{-| <i class="fab far fas fal fa-accusoft"></i> -}
accusoft : Html msg
accusoft = i [] (Accusoft)
{-| <i class="fab far fas fal fa-address-book"></i> -}
addressBook : Html msg
addressBook = i [] (AddressBook Regular)
{-| <i class="fab far fas fal fa-address-card"></i> -}
addressCard : Html msg
addressCard = i [] (AddressCard Regular)
{-| <i class="fab far fas fal fa-adjust"></i> -}
adjust : Html msg
adjust = i [] (Adjust Regular)
{-| <i class="fab far fas fal fa-adn"></i> -}
adn : Html msg
adn = i [] (Adn)
{-| <i class="fab far fas fal fa-adversal"></i> -}
adversal : Html msg
adversal = i [] (Adversal)
{-| <i class="fab far fas fal fa-affiliatetheme"></i> -}
affiliatetheme : Html msg
affiliatetheme = i [] (Affiliatetheme)
{-| <i class="fab far fas fal fa-alarm-clock"></i> -}
alarmClock : Html msg
alarmClock = i [] (AlarmClock Regular)
{-| <i class="fab far fas fal fa-algolia"></i> -}
algolia : Html msg
algolia = i [] (Algolia)
{-| <i class="fab far fas fal fa-align-center"></i> -}
alignCenter : Html msg
alignCenter = i [] (AlignCenter Regular)
{-| <i class="fab far fas fal fa-align-justify"></i> -}
alignJustify : Html msg
alignJustify = i [] (AlignJustify Regular)
{-| <i class="fab far fas fal fa-align-left"></i> -}
alignLeft : Html msg
alignLeft = i [] (AlignLeft Regular)
{-| <i class="fab far fas fal fa-align-right"></i> -}
alignRight : Html msg
alignRight = i [] (AlignRight Regular)
{-| <i class="fab far fas fal fa-amazon"></i> -}
amazon : Html msg
amazon = i [] (Amazon)
{-| <i class="fab far fas fal fa-amazon-pay"></i> -}
amazonPay : Html msg
amazonPay = i [] (AmazonPay)
{-| <i class="fab far fas fal fa-ambulance"></i> -}
ambulance : Html msg
ambulance = i [] (Ambulance Regular)
{-| <i class="fab far fas fal fa-american-sign-language-interpreting"></i> -}
americanSignLanguageInterpreting : Html msg
americanSignLanguageInterpreting = i [] (AmericanSignLanguageInterpreting Regular)
{-| <i class="fab far fas fal fa-amilia"></i> -}
amilia : Html msg
amilia = i [] (Amilia)
{-| <i class="fab far fas fal fa-anchor"></i> -}
anchor : Html msg
anchor = i [] (Anchor Regular)
{-| <i class="fab far fas fal fa-android"></i> -}
android : Html msg
android = i [] (Android)
{-| <i class="fab far fas fal fa-angellist"></i> -}
angellist : Html msg
angellist = i [] (Angellist)
{-| <i class="fab far fas fal fa-angle-double-down"></i> -}
angleDoubleDown : Html msg
angleDoubleDown = i [] (AngleDoubleDown Regular)
{-| <i class="fab far fas fal fa-angle-double-left"></i> -}
angleDoubleLeft : Html msg
angleDoubleLeft = i [] (AngleDoubleLeft Regular)
{-| <i class="fab far fas fal fa-angle-double-right"></i> -}
angleDoubleRight : Html msg
angleDoubleRight = i [] (AngleDoubleRight Regular)
{-| <i class="fab far fas fal fa-angle-double-up"></i> -}
angleDoubleUp : Html msg
angleDoubleUp = i [] (AngleDoubleUp Regular)
{-| <i class="fab far fas fal fa-angle-down"></i> -}
angleDown : Html msg
angleDown = i [] (AngleDown Regular)
{-| <i class="fab far fas fal fa-angle-left"></i> -}
angleLeft : Html msg
angleLeft = i [] (AngleLeft Regular)
{-| <i class="fab far fas fal fa-angle-right"></i> -}
angleRight : Html msg
angleRight = i [] (AngleRight Regular)
{-| <i class="fab far fas fal fa-angle-up"></i> -}
angleUp : Html msg
angleUp = i [] (AngleUp Regular)
{-| <i class="fab far fas fal fa-angrycreative"></i> -}
angrycreative : Html msg
angrycreative = i [] (Angrycreative)
{-| <i class="fab far fas fal fa-angular"></i> -}
angular : Html msg
angular = i [] (Angular)
{-| <i class="fab far fas fal fa-app-store"></i> -}
appStore : Html msg
appStore = i [] (AppStore)
{-| <i class="fab far fas fal fa-app-store-ios"></i> -}
appStoreIos : Html msg
appStoreIos = i [] (AppStoreIos)
{-| <i class="fab far fas fal fa-apper"></i> -}
apper : Html msg
apper = i [] (Apper)
{-| <i class="fab far fas fal fa-apple"></i> -}
apple : Html msg
apple = i [] (Apple)
{-| <i class="fab far fas fal fa-apple-pay"></i> -}
applePay : Html msg
applePay = i [] (ApplePay)
{-| <i class="fab far fas fal fa-archive"></i> -}
archive : Html msg
archive = i [] (Archive Regular)
{-| <i class="fab far fas fal fa-arrow-alt-circle-down"></i> -}
arrowAltCircleDown : Html msg
arrowAltCircleDown = i [] (ArrowAltCircleDown Regular)
{-| <i class="fab far fas fal fa-arrow-alt-circle-left"></i> -}
arrowAltCircleLeft : Html msg
arrowAltCircleLeft = i [] (ArrowAltCircleLeft Regular)
{-| <i class="fab far fas fal fa-arrow-alt-circle-right"></i> -}
arrowAltCircleRight : Html msg
arrowAltCircleRight = i [] (ArrowAltCircleRight Regular)
{-| <i class="fab far fas fal fa-arrow-alt-circle-up"></i> -}
arrowAltCircleUp : Html msg
arrowAltCircleUp = i [] (ArrowAltCircleUp Regular)
{-| <i class="fab far fas fal fa-arrow-alt-down"></i> -}
arrowAltDown : Html msg
arrowAltDown = i [] (ArrowAltDown Regular)
{-| <i class="fab far fas fal fa-arrow-alt-from-bottom"></i> -}
arrowAltFromBottom : Html msg
arrowAltFromBottom = i [] (ArrowAltFromBottom Regular)
{-| <i class="fab far fas fal fa-arrow-alt-from-left"></i> -}
arrowAltFromLeft : Html msg
arrowAltFromLeft = i [] (ArrowAltFromLeft Regular)
{-| <i class="fab far fas fal fa-arrow-alt-from-right"></i> -}
arrowAltFromRight : Html msg
arrowAltFromRight = i [] (ArrowAltFromRight Regular)
{-| <i class="fab far fas fal fa-arrow-alt-from-top"></i> -}
arrowAltFromTop : Html msg
arrowAltFromTop = i [] (ArrowAltFromTop Regular)
{-| <i class="fab far fas fal fa-arrow-alt-left"></i> -}
arrowAltLeft : Html msg
arrowAltLeft = i [] (ArrowAltLeft Regular)
{-| <i class="fab far fas fal fa-arrow-alt-right"></i> -}
arrowAltRight : Html msg
arrowAltRight = i [] (ArrowAltRight Regular)
{-| <i class="fab far fas fal fa-arrow-alt-square-down"></i> -}
arrowAltSquareDown : Html msg
arrowAltSquareDown = i [] (ArrowAltSquareDown Regular)
{-| <i class="fab far fas fal fa-arrow-alt-square-left"></i> -}
arrowAltSquareLeft : Html msg
arrowAltSquareLeft = i [] (ArrowAltSquareLeft Regular)
{-| <i class="fab far fas fal fa-arrow-alt-square-right"></i> -}
arrowAltSquareRight : Html msg
arrowAltSquareRight = i [] (ArrowAltSquareRight Regular)
{-| <i class="fab far fas fal fa-arrow-alt-square-up"></i> -}
arrowAltSquareUp : Html msg
arrowAltSquareUp = i [] (ArrowAltSquareUp Regular)
{-| <i class="fab far fas fal fa-arrow-alt-to-bottom"></i> -}
arrowAltToBottom : Html msg
arrowAltToBottom = i [] (ArrowAltToBottom Regular)
{-| <i class="fab far fas fal fa-arrow-alt-to-left"></i> -}
arrowAltToLeft : Html msg
arrowAltToLeft = i [] (ArrowAltToLeft Regular)
{-| <i class="fab far fas fal fa-arrow-alt-to-right"></i> -}
arrowAltToRight : Html msg
arrowAltToRight = i [] (ArrowAltToRight Regular)
{-| <i class="fab far fas fal fa-arrow-alt-to-top"></i> -}
arrowAltToTop : Html msg
arrowAltToTop = i [] (ArrowAltToTop Regular)
{-| <i class="fab far fas fal fa-arrow-alt-up"></i> -}
arrowAltUp : Html msg
arrowAltUp = i [] (ArrowAltUp Regular)
{-| <i class="fab far fas fal fa-arrow-circle-down"></i> -}
arrowCircleDown : Html msg
arrowCircleDown = i [] (ArrowCircleDown Regular)
{-| <i class="fab far fas fal fa-arrow-circle-left"></i> -}
arrowCircleLeft : Html msg
arrowCircleLeft = i [] (ArrowCircleLeft Regular)
{-| <i class="fab far fas fal fa-arrow-circle-right"></i> -}
arrowCircleRight : Html msg
arrowCircleRight = i [] (ArrowCircleRight Regular)
{-| <i class="fab far fas fal fa-arrow-circle-up"></i> -}
arrowCircleUp : Html msg
arrowCircleUp = i [] (ArrowCircleUp Regular)
{-| <i class="fab far fas fal fa-arrow-down"></i> -}
arrowDown : Html msg
arrowDown = i [] (ArrowDown Regular)
{-| <i class="fab far fas fal fa-arrow-from-bottom"></i> -}
arrowFromBottom : Html msg
arrowFromBottom = i [] (ArrowFromBottom Regular)
{-| <i class="fab far fas fal fa-arrow-from-left"></i> -}
arrowFromLeft : Html msg
arrowFromLeft = i [] (ArrowFromLeft Regular)
{-| <i class="fab far fas fal fa-arrow-from-right"></i> -}
arrowFromRight : Html msg
arrowFromRight = i [] (ArrowFromRight Regular)
{-| <i class="fab far fas fal fa-arrow-from-top"></i> -}
arrowFromTop : Html msg
arrowFromTop = i [] (ArrowFromTop Regular)
{-| <i class="fab far fas fal fa-arrow-left"></i> -}
arrowLeft : Html msg
arrowLeft = i [] (ArrowLeft Regular)
{-| <i class="fab far fas fal fa-arrow-right"></i> -}
arrowRight : Html msg
arrowRight = i [] (ArrowRight Regular)
{-| <i class="fab far fas fal fa-arrow-square-down"></i> -}
arrowSquareDown : Html msg
arrowSquareDown = i [] (ArrowSquareDown Regular)
{-| <i class="fab far fas fal fa-arrow-square-left"></i> -}
arrowSquareLeft : Html msg
arrowSquareLeft = i [] (ArrowSquareLeft Regular)
{-| <i class="fab far fas fal fa-arrow-square-right"></i> -}
arrowSquareRight : Html msg
arrowSquareRight = i [] (ArrowSquareRight Regular)
{-| <i class="fab far fas fal fa-arrow-square-up"></i> -}
arrowSquareUp : Html msg
arrowSquareUp = i [] (ArrowSquareUp Regular)
{-| <i class="fab far fas fal fa-arrow-to-bottom"></i> -}
arrowToBottom : Html msg
arrowToBottom = i [] (ArrowToBottom Regular)
{-| <i class="fab far fas fal fa-arrow-to-left"></i> -}
arrowToLeft : Html msg
arrowToLeft = i [] (ArrowToLeft Regular)
{-| <i class="fab far fas fal fa-arrow-to-right"></i> -}
arrowToRight : Html msg
arrowToRight = i [] (ArrowToRight Regular)
{-| <i class="fab far fas fal fa-arrow-to-top"></i> -}
arrowToTop : Html msg
arrowToTop = i [] (ArrowToTop Regular)
{-| <i class="fab far fas fal fa-arrow-up"></i> -}
arrowUp : Html msg
arrowUp = i [] (ArrowUp Regular)
{-| <i class="fab far fas fal fa-arrows"></i> -}
arrows : Html msg
arrows = i [] (Arrows Regular)
{-| <i class="fab far fas fal fa-arrows-alt"></i> -}
arrowsAlt : Html msg
arrowsAlt = i [] (ArrowsAlt Regular)
{-| <i class="fab far fas fal fa-arrows-alt-h"></i> -}
arrowsAltH : Html msg
arrowsAltH = i [] (ArrowsAltH Regular)
{-| <i class="fab far fas fal fa-arrows-alt-v"></i> -}
arrowsAltV : Html msg
arrowsAltV = i [] (ArrowsAltV Regular)
{-| <i class="fab far fas fal fa-arrows-h"></i> -}
arrowsH : Html msg
arrowsH = i [] (ArrowsH Regular)
{-| <i class="fab far fas fal fa-arrows-v"></i> -}
arrowsV : Html msg
arrowsV = i [] (ArrowsV Regular)
{-| <i class="fab far fas fal fa-assistive-listening-systems"></i> -}
assistiveListeningSystems : Html msg
assistiveListeningSystems = i [] (AssistiveListeningSystems Regular)
{-| <i class="fab far fas fal fa-asterisk"></i> -}
asterisk : Html msg
asterisk = i [] (Asterisk Regular)
{-| <i class="fab far fas fal fa-asymmetrik"></i> -}
asymmetrik : Html msg
asymmetrik = i [] (Asymmetrik)
{-| <i class="fab far fas fal fa-at"></i> -}
at : Html msg
at = i [] (At Regular)
{-| <i class="fab far fas fal fa-audible"></i> -}
audible : Html msg
audible = i [] (Audible)
{-| <i class="fab far fas fal fa-audio-description"></i> -}
audioDescription : Html msg
audioDescription = i [] (AudioDescription Regular)
{-| <i class="fab far fas fal fa-autoprefixer"></i> -}
autoprefixer : Html msg
autoprefixer = i [] (Autoprefixer)
{-| <i class="fab far fas fal fa-avianex"></i> -}
avianex : Html msg
avianex = i [] (Avianex)
{-| <i class="fab far fas fal fa-aviato"></i> -}
aviato : Html msg
aviato = i [] (Aviato)
{-| <i class="fab far fas fal fa-aws"></i> -}
aws : Html msg
aws = i [] (Aws)
{-| <i class="fab far fas fal fa-backward"></i> -}
backward : Html msg
backward = i [] (Backward Regular)
{-| <i class="fab far fas fal fa-badge"></i> -}
badge : Html msg
badge = i [] (Badge Regular)
{-| <i class="fab far fas fal fa-badge-check"></i> -}
badgeCheck : Html msg
badgeCheck = i [] (BadgeCheck Regular)
{-| <i class="fab far fas fal fa-balance-scale"></i> -}
balanceScale : Html msg
balanceScale = i [] (BalanceScale Regular)
{-| <i class="fab far fas fal fa-ban"></i> -}
ban : Html msg
ban = i [] (Ban Regular)
{-| <i class="fab far fas fal fa-bandcamp"></i> -}
bandcamp : Html msg
bandcamp = i [] (Bandcamp)
{-| <i class="fab far fas fal fa-barcode"></i> -}
barcode : Html msg
barcode = i [] (Barcode Regular)
{-| <i class="fab far fas fal fa-bars"></i> -}
bars : Html msg
bars = i [] (Bars Regular)
{-| <i class="fab far fas fal fa-baseball"></i> -}
baseball : Html msg
baseball = i [] (Baseball Regular)
{-| <i class="fab far fas fal fa-baseball-ball"></i> -}
baseballBall : Html msg
baseballBall = i [] (BaseballBall Regular)
{-| <i class="fab far fas fal fa-basketball-ball"></i> -}
basketballBall : Html msg
basketballBall = i [] (BasketballBall Regular)
{-| <i class="fab far fas fal fa-basketball-hoop"></i> -}
basketballHoop : Html msg
basketballHoop = i [] (BasketballHoop Regular)
{-| <i class="fab far fas fal fa-bath"></i> -}
bath : Html msg
bath = i [] (Bath Regular)
{-| <i class="fab far fas fal fa-battery-bolt"></i> -}
batteryBolt : Html msg
batteryBolt = i [] (BatteryBolt Regular)
{-| <i class="fab far fas fal fa-battery-empty"></i> -}
batteryEmpty : Html msg
batteryEmpty = i [] (BatteryEmpty Regular)
{-| <i class="fab far fas fal fa-battery-full"></i> -}
batteryFull : Html msg
batteryFull = i [] (BatteryFull Regular)
{-| <i class="fab far fas fal fa-battery-half"></i> -}
batteryHalf : Html msg
batteryHalf = i [] (BatteryHalf Regular)
{-| <i class="fab far fas fal fa-battery-quarter"></i> -}
batteryQuarter : Html msg
batteryQuarter = i [] (BatteryQuarter Regular)
{-| <i class="fab far fas fal fa-battery-slash"></i> -}
batterySlash : Html msg
batterySlash = i [] (BatterySlash Regular)
{-| <i class="fab far fas fal fa-battery-three-quarters"></i> -}
batteryThreeQuarters : Html msg
batteryThreeQuarters = i [] (BatteryThreeQuarters Regular)
{-| <i class="fab far fas fal fa-bed"></i> -}
bed : Html msg
bed = i [] (Bed Regular)
{-| <i class="fab far fas fal fa-beer"></i> -}
beer : Html msg
beer = i [] (Beer Regular)
{-| <i class="fab far fas fal fa-behance"></i> -}
behance : Html msg
behance = i [] (Behance)
{-| <i class="fab far fas fal fa-behance-square"></i> -}
behanceSquare : Html msg
behanceSquare = i [] (BehanceSquare)
{-| <i class="fab far fas fal fa-bell"></i> -}
bell : Html msg
bell = i [] (Bell Regular)
{-| <i class="fab far fas fal fa-bell-slash"></i> -}
bellSlash : Html msg
bellSlash = i [] (BellSlash Regular)
{-| <i class="fab far fas fal fa-bicycle"></i> -}
bicycle : Html msg
bicycle = i [] (Bicycle Regular)
{-| <i class="fab far fas fal fa-bimobject"></i> -}
bimobject : Html msg
bimobject = i [] (Bimobject)
{-| <i class="fab far fas fal fa-binoculars"></i> -}
binoculars : Html msg
binoculars = i [] (Binoculars Regular)
{-| <i class="fab far fas fal fa-birthday-cake"></i> -}
birthdayCake : Html msg
birthdayCake = i [] (BirthdayCake Regular)
{-| <i class="fab far fas fal fa-bitbucket"></i> -}
bitbucket : Html msg
bitbucket = i [] (Bitbucket)
{-| <i class="fab far fas fal fa-bitcoin"></i> -}
bitcoin : Html msg
bitcoin = i [] (Bitcoin)
{-| <i class="fab far fas fal fa-bity"></i> -}
bity : Html msg
bity = i [] (Bity)
{-| <i class="fab far fas fal fa-black-tie"></i> -}
blackTie : Html msg
blackTie = i [] (BlackTie)
{-| <i class="fab far fas fal fa-blackberry"></i> -}
blackberry : Html msg
blackberry = i [] (Blackberry)
{-| <i class="fab far fas fal fa-blind"></i> -}
blind : Html msg
blind = i [] (Blind Regular)
{-| <i class="fab far fas fal fa-blogger"></i> -}
blogger : Html msg
blogger = i [] (Blogger)
{-| <i class="fab far fas fal fa-blogger-b"></i> -}
bloggerB : Html msg
bloggerB = i [] (BloggerB)
{-| <i class="fab far fas fal fa-bluetooth"></i> -}
bluetooth : Html msg
bluetooth = i [] (Bluetooth)
{-| <i class="fab far fas fal fa-bluetooth-b"></i> -}
bluetoothB : Html msg
bluetoothB = i [] (BluetoothB)
{-| <i class="fab far fas fal fa-bold"></i> -}
bold : Html msg
bold = i [] (Bold Regular)
{-| <i class="fab far fas fal fa-bolt"></i> -}
bolt : Html msg
bolt = i [] (Bolt Regular)
{-| <i class="fab far fas fal fa-bomb"></i> -}
bomb : Html msg
bomb = i [] (Bomb Regular)
{-| <i class="fab far fas fal fa-book"></i> -}
book : Html msg
book = i [] (Book Regular)
{-| <i class="fab far fas fal fa-bookmark"></i> -}
bookmark : Html msg
bookmark = i [] (Bookmark Regular)
{-| <i class="fab far fas fal fa-bowling-ball"></i> -}
bowlingBall : Html msg
bowlingBall = i [] (BowlingBall Regular)
{-| <i class="fab far fas fal fa-bowling-pins"></i> -}
bowlingPins : Html msg
bowlingPins = i [] (BowlingPins Regular)
{-| <i class="fab far fas fal fa-boxing-glove"></i> -}
boxingGlove : Html msg
boxingGlove = i [] (BoxingGlove Regular)
{-| <i class="fab far fas fal fa-braille"></i> -}
braille : Html msg
braille = i [] (Braille Regular)
{-| <i class="fab far fas fal fa-briefcase"></i> -}
briefcase : Html msg
briefcase = i [] (Briefcase Regular)
{-| <i class="fab far fas fal fa-browser"></i> -}
browser : Html msg
browser = i [] (Browser Regular)
{-| <i class="fab far fas fal fa-btc"></i> -}
btc : Html msg
btc = i [] (Btc)
{-| <i class="fab far fas fal fa-bug"></i> -}
bug : Html msg
bug = i [] (Bug Regular)
{-| <i class="fab far fas fal fa-building"></i> -}
building : Html msg
building = i [] (Building Regular)
{-| <i class="fab far fas fal fa-bullhorn"></i> -}
bullhorn : Html msg
bullhorn = i [] (Bullhorn Regular)
{-| <i class="fab far fas fal fa-bullseye"></i> -}
bullseye : Html msg
bullseye = i [] (Bullseye Regular)
{-| <i class="fab far fas fal fa-buromobelexperte"></i> -}
buromobelexperte : Html msg
buromobelexperte = i [] (Buromobelexperte)
{-| <i class="fab far fas fal fa-bus"></i> -}
bus : Html msg
bus = i [] (Bus Regular)
{-| <i class="fab far fas fal fa-buysellads"></i> -}
buysellads : Html msg
buysellads = i [] (Buysellads)
{-| <i class="fab far fas fal fa-calculator"></i> -}
calculator : Html msg
calculator = i [] (Calculator Regular)
{-| <i class="fab far fas fal fa-calendar"></i> -}
calendar : Html msg
calendar = i [] (Calendar Regular)
{-| <i class="fab far fas fal fa-calendar-alt"></i> -}
calendarAlt : Html msg
calendarAlt = i [] (CalendarAlt Regular)
{-| <i class="fab far fas fal fa-calendar-check"></i> -}
calendarCheck : Html msg
calendarCheck = i [] (CalendarCheck Regular)
{-| <i class="fab far fas fal fa-calendar-edit"></i> -}
calendarEdit : Html msg
calendarEdit = i [] (CalendarEdit Regular)
{-| <i class="fab far fas fal fa-calendar-exclamation"></i> -}
calendarExclamation : Html msg
calendarExclamation = i [] (CalendarExclamation Regular)
{-| <i class="fab far fas fal fa-calendar-minus"></i> -}
calendarMinus : Html msg
calendarMinus = i [] (CalendarMinus Regular)
{-| <i class="fab far fas fal fa-calendar-plus"></i> -}
calendarPlus : Html msg
calendarPlus = i [] (CalendarPlus Regular)
{-| <i class="fab far fas fal fa-calendar-times"></i> -}
calendarTimes : Html msg
calendarTimes = i [] (CalendarTimes Regular)
{-| <i class="fab far fas fal fa-camera"></i> -}
camera : Html msg
camera = i [] (Camera Regular)
{-| <i class="fab far fas fal fa-camera-alt"></i> -}
cameraAlt : Html msg
cameraAlt = i [] (CameraAlt Regular)
{-| <i class="fab far fas fal fa-camera-retro"></i> -}
cameraRetro : Html msg
cameraRetro = i [] (CameraRetro Regular)
{-| <i class="fab far fas fal fa-car"></i> -}
car : Html msg
car = i [] (Car Regular)
{-| <i class="fab far fas fal fa-caret-circle-down"></i> -}
caretCircleDown : Html msg
caretCircleDown = i [] (CaretCircleDown Regular)
{-| <i class="fab far fas fal fa-caret-circle-left"></i> -}
caretCircleLeft : Html msg
caretCircleLeft = i [] (CaretCircleLeft Regular)
{-| <i class="fab far fas fal fa-caret-circle-right"></i> -}
caretCircleRight : Html msg
caretCircleRight = i [] (CaretCircleRight Regular)
{-| <i class="fab far fas fal fa-caret-circle-up"></i> -}
caretCircleUp : Html msg
caretCircleUp = i [] (CaretCircleUp Regular)
{-| <i class="fab far fas fal fa-caret-down"></i> -}
caretDown : Html msg
caretDown = i [] (CaretDown Regular)
{-| <i class="fab far fas fal fa-caret-left"></i> -}
caretLeft : Html msg
caretLeft = i [] (CaretLeft Regular)
{-| <i class="fab far fas fal fa-caret-right"></i> -}
caretRight : Html msg
caretRight = i [] (CaretRight Regular)
{-| <i class="fab far fas fal fa-caret-square-down"></i> -}
caretSquareDown : Html msg
caretSquareDown = i [] (CaretSquareDown Regular)
{-| <i class="fab far fas fal fa-caret-square-left"></i> -}
caretSquareLeft : Html msg
caretSquareLeft = i [] (CaretSquareLeft Regular)
{-| <i class="fab far fas fal fa-caret-square-right"></i> -}
caretSquareRight : Html msg
caretSquareRight = i [] (CaretSquareRight Regular)
{-| <i class="fab far fas fal fa-caret-square-up"></i> -}
caretSquareUp : Html msg
caretSquareUp = i [] (CaretSquareUp Regular)
{-| <i class="fab far fas fal fa-caret-up"></i> -}
caretUp : Html msg
caretUp = i [] (CaretUp Regular)
{-| <i class="fab far fas fal fa-cart-arrow-down"></i> -}
cartArrowDown : Html msg
cartArrowDown = i [] (CartArrowDown Regular)
{-| <i class="fab far fas fal fa-cart-plus"></i> -}
cartPlus : Html msg
cartPlus = i [] (CartPlus Regular)
{-| <i class="fab far fas fal fa-cc-amazon-pay"></i> -}
ccAmazonPay : Html msg
ccAmazonPay = i [] (CcAmazonPay)
{-| <i class="fab far fas fal fa-cc-amex"></i> -}
ccAmex : Html msg
ccAmex = i [] (CcAmex)
{-| <i class="fab far fas fal fa-cc-apple-pay"></i> -}
ccApplePay : Html msg
ccApplePay = i [] (CcApplePay)
{-| <i class="fab far fas fal fa-cc-diners-club"></i> -}
ccDinersClub : Html msg
ccDinersClub = i [] (CcDinersClub)
{-| <i class="fab far fas fal fa-cc-discover"></i> -}
ccDiscover : Html msg
ccDiscover = i [] (CcDiscover)
{-| <i class="fab far fas fal fa-cc-jcb"></i> -}
ccJcb : Html msg
ccJcb = i [] (CcJcb)
{-| <i class="fab far fas fal fa-cc-mastercard"></i> -}
ccMastercard : Html msg
ccMastercard = i [] (CcMastercard)
{-| <i class="fab far fas fal fa-cc-paypal"></i> -}
ccPaypal : Html msg
ccPaypal = i [] (CcPaypal)
{-| <i class="fab far fas fal fa-cc-stripe"></i> -}
ccStripe : Html msg
ccStripe = i [] (CcStripe)
{-| <i class="fab far fas fal fa-cc-visa"></i> -}
ccVisa : Html msg
ccVisa = i [] (CcVisa)
{-| <i class="fab far fas fal fa-centercode"></i> -}
centercode : Html msg
centercode = i [] (Centercode)
{-| <i class="fab far fas fal fa-certificate"></i> -}
certificate : Html msg
certificate = i [] (Certificate Regular)
{-| <i class="fab far fas fal fa-chart-area"></i> -}
chartArea : Html msg
chartArea = i [] (ChartArea Regular)
{-| <i class="fab far fas fal fa-chart-bar"></i> -}
chartBar : Html msg
chartBar = i [] (ChartBar Regular)
{-| <i class="fab far fas fal fa-chart-line"></i> -}
chartLine : Html msg
chartLine = i [] (ChartLine Regular)
{-| <i class="fab far fas fal fa-chart-pie"></i> -}
chartPie : Html msg
chartPie = i [] (ChartPie Regular)
{-| <i class="fab far fas fal fa-check"></i> -}
check : Html msg
check = i [] (Check Regular)
{-| <i class="fab far fas fal fa-check-circle"></i> -}
checkCircle : Html msg
checkCircle = i [] (CheckCircle Regular)
{-| <i class="fab far fas fal fa-check-square"></i> -}
checkSquare : Html msg
checkSquare = i [] (CheckSquare Regular)
{-| <i class="fab far fas fal fa-chess"></i> -}
chess : Html msg
chess = i [] (Chess Regular)
{-| <i class="fab far fas fal fa-chess-bishop"></i> -}
chessBishop : Html msg
chessBishop = i [] (ChessBishop Regular)
{-| <i class="fab far fas fal fa-chess-bishop-alt"></i> -}
chessBishopAlt : Html msg
chessBishopAlt = i [] (ChessBishopAlt Regular)
{-| <i class="fab far fas fal fa-chess-board"></i> -}
chessBoard : Html msg
chessBoard = i [] (ChessBoard Regular)
{-| <i class="fab far fas fal fa-chess-clock"></i> -}
chessClock : Html msg
chessClock = i [] (ChessClock Regular)
{-| <i class="fab far fas fal fa-chess-clock-alt"></i> -}
chessClockAlt : Html msg
chessClockAlt = i [] (ChessClockAlt Regular)
{-| <i class="fab far fas fal fa-chess-king"></i> -}
chessKing : Html msg
chessKing = i [] (ChessKing Regular)
{-| <i class="fab far fas fal fa-chess-king-alt"></i> -}
chessKingAlt : Html msg
chessKingAlt = i [] (ChessKingAlt Regular)
{-| <i class="fab far fas fal fa-chess-knight"></i> -}
chessKnight : Html msg
chessKnight = i [] (ChessKnight Regular)
{-| <i class="fab far fas fal fa-chess-knight-alt"></i> -}
chessKnightAlt : Html msg
chessKnightAlt = i [] (ChessKnightAlt Regular)
{-| <i class="fab far fas fal fa-chess-pawn"></i> -}
chessPawn : Html msg
chessPawn = i [] (ChessPawn Regular)
{-| <i class="fab far fas fal fa-chess-pawn-alt"></i> -}
chessPawnAlt : Html msg
chessPawnAlt = i [] (ChessPawnAlt Regular)
{-| <i class="fab far fas fal fa-chess-queen"></i> -}
chessQueen : Html msg
chessQueen = i [] (ChessQueen Regular)
{-| <i class="fab far fas fal fa-chess-queen-alt"></i> -}
chessQueenAlt : Html msg
chessQueenAlt = i [] (ChessQueenAlt Regular)
{-| <i class="fab far fas fal fa-chess-rook"></i> -}
chessRook : Html msg
chessRook = i [] (ChessRook Regular)
{-| <i class="fab far fas fal fa-chess-rook-alt"></i> -}
chessRookAlt : Html msg
chessRookAlt = i [] (ChessRookAlt Regular)
{-| <i class="fab far fas fal fa-chevron-circle-down"></i> -}
chevronCircleDown : Html msg
chevronCircleDown = i [] (ChevronCircleDown Regular)
{-| <i class="fab far fas fal fa-chevron-circle-left"></i> -}
chevronCircleLeft : Html msg
chevronCircleLeft = i [] (ChevronCircleLeft Regular)
{-| <i class="fab far fas fal fa-chevron-circle-right"></i> -}
chevronCircleRight : Html msg
chevronCircleRight = i [] (ChevronCircleRight Regular)
{-| <i class="fab far fas fal fa-chevron-circle-up"></i> -}
chevronCircleUp : Html msg
chevronCircleUp = i [] (ChevronCircleUp Regular)
{-| <i class="fab far fas fal fa-chevron-double-down"></i> -}
chevronDoubleDown : Html msg
chevronDoubleDown = i [] (ChevronDoubleDown Regular)
{-| <i class="fab far fas fal fa-chevron-double-left"></i> -}
chevronDoubleLeft : Html msg
chevronDoubleLeft = i [] (ChevronDoubleLeft Regular)
{-| <i class="fab far fas fal fa-chevron-double-right"></i> -}
chevronDoubleRight : Html msg
chevronDoubleRight = i [] (ChevronDoubleRight Regular)
{-| <i class="fab far fas fal fa-chevron-double-up"></i> -}
chevronDoubleUp : Html msg
chevronDoubleUp = i [] (ChevronDoubleUp Regular)
{-| <i class="fab far fas fal fa-chevron-down"></i> -}
chevronDown : Html msg
chevronDown = i [] (ChevronDown Regular)
{-| <i class="fab far fas fal fa-chevron-left"></i> -}
chevronLeft : Html msg
chevronLeft = i [] (ChevronLeft Regular)
{-| <i class="fab far fas fal fa-chevron-right"></i> -}
chevronRight : Html msg
chevronRight = i [] (ChevronRight Regular)
{-| <i class="fab far fas fal fa-chevron-square-down"></i> -}
chevronSquareDown : Html msg
chevronSquareDown = i [] (ChevronSquareDown Regular)
{-| <i class="fab far fas fal fa-chevron-square-left"></i> -}
chevronSquareLeft : Html msg
chevronSquareLeft = i [] (ChevronSquareLeft Regular)
{-| <i class="fab far fas fal fa-chevron-square-right"></i> -}
chevronSquareRight : Html msg
chevronSquareRight = i [] (ChevronSquareRight Regular)
{-| <i class="fab far fas fal fa-chevron-square-up"></i> -}
chevronSquareUp : Html msg
chevronSquareUp = i [] (ChevronSquareUp Regular)
{-| <i class="fab far fas fal fa-chevron-up"></i> -}
chevronUp : Html msg
chevronUp = i [] (ChevronUp Regular)
{-| <i class="fab far fas fal fa-child"></i> -}
child : Html msg
child = i [] (Child Regular)
{-| <i class="fab far fas fal fa-chrome"></i> -}
chrome : Html msg
chrome = i [] (Chrome)
{-| <i class="fab far fas fal fa-circle"></i> -}
circle : Html msg
circle = i [] (Circle Regular)
{-| <i class="fab far fas fal fa-circle-notch"></i> -}
circleNotch : Html msg
circleNotch = i [] (CircleNotch Regular)
{-| <i class="fab far fas fal fa-clipboard"></i> -}
clipboard : Html msg
clipboard = i [] (Clipboard Regular)
{-| <i class="fab far fas fal fa-clock"></i> -}
clock : Html msg
clock = i [] (Clock Regular)
{-| <i class="fab far fas fal fa-clone"></i> -}
clone : Html msg
clone = i [] (Clone Regular)
{-| <i class="fab far fas fal fa-closed-captioning"></i> -}
closedCaptioning : Html msg
closedCaptioning = i [] (ClosedCaptioning Regular)
{-| <i class="fab far fas fal fa-cloud"></i> -}
cloud : Html msg
cloud = i [] (Cloud Regular)
{-| <i class="fab far fas fal fa-cloud-download"></i> -}
cloudDownload : Html msg
cloudDownload = i [] (CloudDownload Regular)
{-| <i class="fab far fas fal fa-cloud-download-alt"></i> -}
cloudDownloadAlt : Html msg
cloudDownloadAlt = i [] (CloudDownloadAlt Regular)
{-| <i class="fab far fas fal fa-cloud-upload"></i> -}
cloudUpload : Html msg
cloudUpload = i [] (CloudUpload Regular)
{-| <i class="fab far fas fal fa-cloud-upload-alt"></i> -}
cloudUploadAlt : Html msg
cloudUploadAlt = i [] (CloudUploadAlt Regular)
{-| <i class="fab far fas fal fa-cloudscale"></i> -}
cloudscale : Html msg
cloudscale = i [] (Cloudscale)
{-| <i class="fab far fas fal fa-cloudsmith"></i> -}
cloudsmith : Html msg
cloudsmith = i [] (Cloudsmith)
{-| <i class="fab far fas fal fa-cloudversify"></i> -}
cloudversify : Html msg
cloudversify = i [] (Cloudversify)
{-| <i class="fab far fas fal fa-club"></i> -}
club : Html msg
club = i [] (Club Regular)
{-| <i class="fab far fas fal fa-code"></i> -}
code : Html msg
code = i [] (Code Regular)
{-| <i class="fab far fas fal fa-code-branch"></i> -}
codeBranch : Html msg
codeBranch = i [] (CodeBranch Regular)
{-| <i class="fab far fas fal fa-code-commit"></i> -}
codeCommit : Html msg
codeCommit = i [] (CodeCommit Regular)
{-| <i class="fab far fas fal fa-code-merge"></i> -}
codeMerge : Html msg
codeMerge = i [] (CodeMerge Regular)
{-| <i class="fab far fas fal fa-codepen"></i> -}
codepen : Html msg
codepen = i [] (Codepen)
{-| <i class="fab far fas fal fa-codiepie"></i> -}
codiepie : Html msg
codiepie = i [] (Codiepie)
{-| <i class="fab far fas fal fa-coffee"></i> -}
coffee : Html msg
coffee = i [] (Coffee Regular)
{-| <i class="fab far fas fal fa-cog"></i> -}
cog : Html msg
cog = i [] (Cog Regular)
{-| <i class="fab far fas fal fa-cogs"></i> -}
cogs : Html msg
cogs = i [] (Cogs Regular)
{-| <i class="fab far fas fal fa-columns"></i> -}
columns : Html msg
columns = i [] (Columns Regular)
{-| <i class="fab far fas fal fa-comment"></i> -}
comment : Html msg
comment = i [] (Comment Regular)
{-| <i class="fab far fas fal fa-comment-alt"></i> -}
commentAlt : Html msg
commentAlt = i [] (CommentAlt Regular)
{-| <i class="fab far fas fal fa-comments"></i> -}
comments : Html msg
comments = i [] (Comments Regular)
{-| <i class="fab far fas fal fa-compass"></i> -}
compass : Html msg
compass = i [] (Compass Regular)
{-| <i class="fab far fas fal fa-compress"></i> -}
compress : Html msg
compress = i [] (Compress Regular)
{-| <i class="fab far fas fal fa-compress-alt"></i> -}
compressAlt : Html msg
compressAlt = i [] (CompressAlt Regular)
{-| <i class="fab far fas fal fa-compress-wide"></i> -}
compressWide : Html msg
compressWide = i [] (CompressWide Regular)
{-| <i class="fab far fas fal fa-connectdevelop"></i> -}
connectdevelop : Html msg
connectdevelop = i [] (Connectdevelop)
{-| <i class="fab far fas fal fa-contao"></i> -}
contao : Html msg
contao = i [] (Contao)
{-| <i class="fab far fas fal fa-copy"></i> -}
copy : Html msg
copy = i [] (Copy Regular)
{-| <i class="fab far fas fal fa-copyright"></i> -}
copyright : Html msg
copyright = i [] (Copyright Regular)
{-| <i class="fab far fas fal fa-cpanel"></i> -}
cpanel : Html msg
cpanel = i [] (Cpanel)
{-| <i class="fab far fas fal fa-creative-commons"></i> -}
creativeCommons : Html msg
creativeCommons = i [] (CreativeCommons)
{-| <i class="fab far fas fal fa-credit-card"></i> -}
creditCard : Html msg
creditCard = i [] (CreditCard Regular)
{-| <i class="fab far fas fal fa-credit-card-blank"></i> -}
creditCardBlank : Html msg
creditCardBlank = i [] (CreditCardBlank Regular)
{-| <i class="fab far fas fal fa-credit-card-front"></i> -}
creditCardFront : Html msg
creditCardFront = i [] (CreditCardFront Regular)
{-| <i class="fab far fas fal fa-cricket"></i> -}
cricket : Html msg
cricket = i [] (Cricket Regular)
{-| <i class="fab far fas fal fa-crop"></i> -}
crop : Html msg
crop = i [] (Crop Regular)
{-| <i class="fab far fas fal fa-crosshairs"></i> -}
crosshairs : Html msg
crosshairs = i [] (Crosshairs Regular)
{-| <i class="fab far fas fal fa-css3"></i> -}
css3 : Html msg
css3 = i [] (Css3)
{-| <i class="fab far fas fal fa-css3-alt"></i> -}
css3Alt : Html msg
css3Alt = i [] (Css3Alt)
{-| <i class="fab far fas fal fa-cube"></i> -}
cube : Html msg
cube = i [] (Cube Regular)
{-| <i class="fab far fas fal fa-cubes"></i> -}
cubes : Html msg
cubes = i [] (Cubes Regular)
{-| <i class="fab far fas fal fa-curling"></i> -}
curling : Html msg
curling = i [] (Curling Regular)
{-| <i class="fab far fas fal fa-cut"></i> -}
cut : Html msg
cut = i [] (Cut Regular)
{-| <i class="fab far fas fal fa-cuttlefish"></i> -}
cuttlefish : Html msg
cuttlefish = i [] (Cuttlefish)
{-| <i class="fab far fas fal fa-d-and-d"></i> -}
dAndD : Html msg
dAndD = i [] (DAndD)
{-| <i class="fab far fas fal fa-dashcube"></i> -}
dashcube : Html msg
dashcube = i [] (Dashcube)
{-| <i class="fab far fas fal fa-database"></i> -}
database : Html msg
database = i [] (Database Regular)
{-| <i class="fab far fas fal fa-deaf"></i> -}
deaf : Html msg
deaf = i [] (Deaf Regular)
{-| <i class="fab far fas fal fa-delicious"></i> -}
delicious : Html msg
delicious = i [] (Delicious)
{-| <i class="fab far fas fal fa-deploydog"></i> -}
deploydog : Html msg
deploydog = i [] (Deploydog)
{-| <i class="fab far fas fal fa-deskpro"></i> -}
deskpro : Html msg
deskpro = i [] (Deskpro)
{-| <i class="fab far fas fal fa-desktop"></i> -}
desktop : Html msg
desktop = i [] (Desktop Regular)
{-| <i class="fab far fas fal fa-desktop-alt"></i> -}
desktopAlt : Html msg
desktopAlt = i [] (DesktopAlt Regular)
{-| <i class="fab far fas fal fa-deviantart"></i> -}
deviantart : Html msg
deviantart = i [] (Deviantart)
{-| <i class="fab far fas fal fa-diamond"></i> -}
diamond : Html msg
diamond = i [] (Diamond Regular)
{-| <i class="fab far fas fal fa-digg"></i> -}
digg : Html msg
digg = i [] (Digg)
{-| <i class="fab far fas fal fa-digital-ocean"></i> -}
digitalOcean : Html msg
digitalOcean = i [] (DigitalOcean)
{-| <i class="fab far fas fal fa-discord"></i> -}
discord : Html msg
discord = i [] (Discord)
{-| <i class="fab far fas fal fa-discourse"></i> -}
discourse : Html msg
discourse = i [] (Discourse)
{-| <i class="fab far fas fal fa-dochub"></i> -}
dochub : Html msg
dochub = i [] (Dochub)
{-| <i class="fab far fas fal fa-docker"></i> -}
docker : Html msg
docker = i [] (Docker)
{-| <i class="fab far fas fal fa-dollar-sign"></i> -}
dollarSign : Html msg
dollarSign = i [] (DollarSign Regular)
{-| <i class="fab far fas fal fa-dot-circle"></i> -}
dotCircle : Html msg
dotCircle = i [] (DotCircle Regular)
{-| <i class="fab far fas fal fa-download"></i> -}
download : Html msg
download = i [] (Download Regular)
{-| <i class="fab far fas fal fa-draft2-digital"></i> -}
draft2Digital : Html msg
draft2Digital = i [] (Draft2Digital)
{-| <i class="fab far fas fal fa-dribbble"></i> -}
dribbble : Html msg
dribbble = i [] (Dribbble)
{-| <i class="fab far fas fal fa-dribbble-square"></i> -}
dribbbleSquare : Html msg
dribbbleSquare = i [] (DribbbleSquare)
{-| <i class="fab far fas fal fa-dropbox"></i> -}
dropbox : Html msg
dropbox = i [] (Dropbox)
{-| <i class="fab far fas fal fa-drupal"></i> -}
drupal : Html msg
drupal = i [] (Drupal)
{-| <i class="fab far fas fal fa-dumbbell"></i> -}
dumbbell : Html msg
dumbbell = i [] (Dumbbell Regular)
{-| <i class="fab far fas fal fa-dyalog"></i> -}
dyalog : Html msg
dyalog = i [] (Dyalog)
{-| <i class="fab far fas fal fa-earlybirds"></i> -}
earlybirds : Html msg
earlybirds = i [] (Earlybirds)
{-| <i class="fab far fas fal fa-edge"></i> -}
edge : Html msg
edge = i [] (Edge)
{-| <i class="fab far fas fal fa-edit"></i> -}
edit : Html msg
edit = i [] (Edit Regular)
{-| <i class="fab far fas fal fa-eject"></i> -}
eject : Html msg
eject = i [] (Eject Regular)
{-| <i class="fab far fas fal fa-elementor"></i> -}
elementor : Html msg
elementor = i [] (Elementor)
{-| <i class="fab far fas fal fa-ellipsis-h"></i> -}
ellipsisH : Html msg
ellipsisH = i [] (EllipsisH Regular)
{-| <i class="fab far fas fal fa-ellipsis-h-alt"></i> -}
ellipsisHAlt : Html msg
ellipsisHAlt = i [] (EllipsisHAlt Regular)
{-| <i class="fab far fas fal fa-ellipsis-v"></i> -}
ellipsisV : Html msg
ellipsisV = i [] (EllipsisV Regular)
{-| <i class="fab far fas fal fa-ellipsis-v-alt"></i> -}
ellipsisVAlt : Html msg
ellipsisVAlt = i [] (EllipsisVAlt Regular)
{-| <i class="fab far fas fal fa-ember"></i> -}
ember : Html msg
ember = i [] (Ember)
{-| <i class="fab far fas fal fa-empire"></i> -}
empire : Html msg
empire = i [] (Empire)
{-| <i class="fab far fas fal fa-envelope"></i> -}
envelope : Html msg
envelope = i [] (Envelope Regular)
{-| <i class="fab far fas fal fa-envelope-open"></i> -}
envelopeOpen : Html msg
envelopeOpen = i [] (EnvelopeOpen Regular)
{-| <i class="fab far fas fal fa-envelope-square"></i> -}
envelopeSquare : Html msg
envelopeSquare = i [] (EnvelopeSquare Regular)
{-| <i class="fab far fas fal fa-envira"></i> -}
envira : Html msg
envira = i [] (Envira)
{-| <i class="fab far fas fal fa-eraser"></i> -}
eraser : Html msg
eraser = i [] (Eraser Regular)
{-| <i class="fab far fas fal fa-erlang"></i> -}
erlang : Html msg
erlang = i [] (Erlang)
{-| <i class="fab far fas fal fa-ethereum"></i> -}
ethereum : Html msg
ethereum = i [] (Ethereum)
{-| <i class="fab far fas fal fa-etsy"></i> -}
etsy : Html msg
etsy = i [] (Etsy)
{-| <i class="fab far fas fal fa-euro-sign"></i> -}
euroSign : Html msg
euroSign = i [] (EuroSign Regular)
{-| <i class="fab far fas fal fa-exchange"></i> -}
exchange : Html msg
exchange = i [] (Exchange Regular)
{-| <i class="fab far fas fal fa-exchange-alt"></i> -}
exchangeAlt : Html msg
exchangeAlt = i [] (ExchangeAlt Regular)
{-| <i class="fab far fas fal fa-exclamation"></i> -}
exclamation : Html msg
exclamation = i [] (Exclamation Regular)
{-| <i class="fab far fas fal fa-exclamation-circle"></i> -}
exclamationCircle : Html msg
exclamationCircle = i [] (ExclamationCircle Regular)
{-| <i class="fab far fas fal fa-exclamation-square"></i> -}
exclamationSquare : Html msg
exclamationSquare = i [] (ExclamationSquare Regular)
{-| <i class="fab far fas fal fa-exclamation-triangle"></i> -}
exclamationTriangle : Html msg
exclamationTriangle = i [] (ExclamationTriangle Regular)
{-| <i class="fab far fas fal fa-expand"></i> -}
expand : Html msg
expand = i [] (Expand Regular)
{-| <i class="fab far fas fal fa-expand-alt"></i> -}
expandAlt : Html msg
expandAlt = i [] (ExpandAlt Regular)
{-| <i class="fab far fas fal fa-expand-arrows"></i> -}
expandArrows : Html msg
expandArrows = i [] (ExpandArrows Regular)
{-| <i class="fab far fas fal fa-expand-arrows-alt"></i> -}
expandArrowsAlt : Html msg
expandArrowsAlt = i [] (ExpandArrowsAlt Regular)
{-| <i class="fab far fas fal fa-expand-wide"></i> -}
expandWide : Html msg
expandWide = i [] (ExpandWide Regular)
{-| <i class="fab far fas fal fa-expeditedssl"></i> -}
expeditedssl : Html msg
expeditedssl = i [] (Expeditedssl)
{-| <i class="fab far fas fal fa-external-link"></i> -}
externalLink : Html msg
externalLink = i [] (ExternalLink Regular)
{-| <i class="fab far fas fal fa-external-link-alt"></i> -}
externalLinkAlt : Html msg
externalLinkAlt = i [] (ExternalLinkAlt Regular)
{-| <i class="fab far fas fal fa-external-link-square"></i> -}
externalLinkSquare : Html msg
externalLinkSquare = i [] (ExternalLinkSquare Regular)
{-| <i class="fab far fas fal fa-external-link-square-alt"></i> -}
externalLinkSquareAlt : Html msg
externalLinkSquareAlt = i [] (ExternalLinkSquareAlt Regular)
{-| <i class="fab far fas fal fa-eye"></i> -}
eye : Html msg
eye = i [] (Eye Regular)
{-| <i class="fab far fas fal fa-eye-dropper"></i> -}
eyeDropper : Html msg
eyeDropper = i [] (EyeDropper Regular)
{-| <i class="fab far fas fal fa-eye-slash"></i> -}
eyeSlash : Html msg
eyeSlash = i [] (EyeSlash Regular)
{-| <i class="fab far fas fal fa-facebook"></i> -}
facebook : Html msg
facebook = i [] (Facebook)
{-| <i class="fab far fas fal fa-facebook-f"></i> -}
facebookF : Html msg
facebookF = i [] (FacebookF)
{-| <i class="fab far fas fal fa-facebook-messenger"></i> -}
facebookMessenger : Html msg
facebookMessenger = i [] (FacebookMessenger)
{-| <i class="fab far fas fal fa-facebook-square"></i> -}
facebookSquare : Html msg
facebookSquare = i [] (FacebookSquare)
{-| <i class="fab far fas fal fa-fast-backward"></i> -}
fastBackward : Html msg
fastBackward = i [] (FastBackward Regular)
{-| <i class="fab far fas fal fa-fast-forward"></i> -}
fastForward : Html msg
fastForward = i [] (FastForward Regular)
{-| <i class="fab far fas fal fa-fax"></i> -}
fax : Html msg
fax = i [] (Fax Regular)
{-| <i class="fab far fas fal fa-female"></i> -}
female : Html msg
female = i [] (Female Regular)
{-| <i class="fab far fas fal fa-field-hockey"></i> -}
fieldHockey : Html msg
fieldHockey = i [] (FieldHockey Regular)
{-| <i class="fab far fas fal fa-fighter-jet"></i> -}
fighterJet : Html msg
fighterJet = i [] (FighterJet Regular)
{-| <i class="fab far fas fal fa-file"></i> -}
file : Html msg
file = i [] (File Regular)
{-| <i class="fab far fas fal fa-file-alt"></i> -}
fileAlt : Html msg
fileAlt = i [] (FileAlt Regular)
{-| <i class="fab far fas fal fa-file-archive"></i> -}
fileArchive : Html msg
fileArchive = i [] (FileArchive Regular)
{-| <i class="fab far fas fal fa-file-audio"></i> -}
fileAudio : Html msg
fileAudio = i [] (FileAudio Regular)
{-| <i class="fab far fas fal fa-file-check"></i> -}
fileCheck : Html msg
fileCheck = i [] (FileCheck Regular)
{-| <i class="fab far fas fal fa-file-code"></i> -}
fileCode : Html msg
fileCode = i [] (FileCode Regular)
{-| <i class="fab far fas fal fa-file-edit"></i> -}
fileEdit : Html msg
fileEdit = i [] (FileEdit Regular)
{-| <i class="fab far fas fal fa-file-excel"></i> -}
fileExcel : Html msg
fileExcel = i [] (FileExcel Regular)
{-| <i class="fab far fas fal fa-file-exclamation"></i> -}
fileExclamation : Html msg
fileExclamation = i [] (FileExclamation Regular)
{-| <i class="fab far fas fal fa-file-image"></i> -}
fileImage : Html msg
fileImage = i [] (FileImage Regular)
{-| <i class="fab far fas fal fa-file-minus"></i> -}
fileMinus : Html msg
fileMinus = i [] (FileMinus Regular)
{-| <i class="fab far fas fal fa-file-pdf"></i> -}
filePdf : Html msg
filePdf = i [] (FilePdf Regular)
{-| <i class="fab far fas fal fa-file-plus"></i> -}
filePlus : Html msg
filePlus = i [] (FilePlus Regular)
{-| <i class="fab far fas fal fa-file-powerpoint"></i> -}
filePowerpoint : Html msg
filePowerpoint = i [] (FilePowerpoint Regular)
{-| <i class="fab far fas fal fa-file-times"></i> -}
fileTimes : Html msg
fileTimes = i [] (FileTimes Regular)
{-| <i class="fab far fas fal fa-file-video"></i> -}
fileVideo : Html msg
fileVideo = i [] (FileVideo Regular)
{-| <i class="fab far fas fal fa-file-word"></i> -}
fileWord : Html msg
fileWord = i [] (FileWord Regular)
{-| <i class="fab far fas fal fa-film"></i> -}
film : Html msg
film = i [] (Film Regular)
{-| <i class="fab far fas fal fa-film-alt"></i> -}
filmAlt : Html msg
filmAlt = i [] (FilmAlt Regular)
{-| <i class="fab far fas fal fa-filter"></i> -}
filter : Html msg
filter = i [] (Filter Regular)
{-| <i class="fab far fas fal fa-fire"></i> -}
fire : Html msg
fire = i [] (Fire Regular)
{-| <i class="fab far fas fal fa-fire-extinguisher"></i> -}
fireExtinguisher : Html msg
fireExtinguisher = i [] (FireExtinguisher Regular)
{-| <i class="fab far fas fal fa-firefox"></i> -}
firefox : Html msg
firefox = i [] (Firefox)
{-| <i class="fab far fas fal fa-first-order"></i> -}
firstOrder : Html msg
firstOrder = i [] (FirstOrder)
{-| <i class="fab far fas fal fa-firstdraft"></i> -}
firstdraft : Html msg
firstdraft = i [] (Firstdraft)
{-| <i class="fab far fas fal fa-flag"></i> -}
flag : Html msg
flag = i [] (Flag Regular)
{-| <i class="fab far fas fal fa-flag-checkered"></i> -}
flagCheckered : Html msg
flagCheckered = i [] (FlagCheckered Regular)
{-| <i class="fab far fas fal fa-flask"></i> -}
flask : Html msg
flask = i [] (Flask Regular)
{-| <i class="fab far fas fal fa-flickr"></i> -}
flickr : Html msg
flickr = i [] (Flickr)
{-| <i class="fab far fas fal fa-flipboard"></i> -}
flipboard : Html msg
flipboard = i [] (Flipboard)
{-| <i class="fab far fas fal fa-fly"></i> -}
fly : Html msg
fly = i [] (Fly)
{-| <i class="fab far fas fal fa-folder"></i> -}
folder : Html msg
folder = i [] (Folder Regular)
{-| <i class="fab far fas fal fa-folder-open"></i> -}
folderOpen : Html msg
folderOpen = i [] (FolderOpen Regular)
{-| <i class="fab far fas fal fa-font"></i> -}
font : Html msg
font = i [] (Font Regular)
{-| <i class="fab far fas fal fa-font-awesome"></i> -}
fontAwesome : Html msg
fontAwesome = i [] (FontAwesome)
{-| <i class="fab far fas fal fa-font-awesome-alt"></i> -}
fontAwesomeAlt : Html msg
fontAwesomeAlt = i [] (FontAwesomeAlt)
{-| <i class="fab far fas fal fa-font-awesome-flag"></i> -}
fontAwesomeFlag : Html msg
fontAwesomeFlag = i [] (FontAwesomeFlag)
{-| <i class="fab far fas fal fa-fonticons"></i> -}
fonticons : Html msg
fonticons = i [] (Fonticons)
{-| <i class="fab far fas fal fa-fonticons-fi"></i> -}
fonticonsFi : Html msg
fonticonsFi = i [] (FonticonsFi)
{-| <i class="fab far fas fal fa-football-ball"></i> -}
footballBall : Html msg
footballBall = i [] (FootballBall Regular)
{-| <i class="fab far fas fal fa-football-helmet"></i> -}
footballHelmet : Html msg
footballHelmet = i [] (FootballHelmet Regular)
{-| <i class="fab far fas fal fa-fort-awesome"></i> -}
fortAwesome : Html msg
fortAwesome = i [] (FortAwesome)
{-| <i class="fab far fas fal fa-fort-awesome-alt"></i> -}
fortAwesomeAlt : Html msg
fortAwesomeAlt = i [] (FortAwesomeAlt)
{-| <i class="fab far fas fal fa-forumbee"></i> -}
forumbee : Html msg
forumbee = i [] (Forumbee)
{-| <i class="fab far fas fal fa-forward"></i> -}
forward : Html msg
forward = i [] (Forward Regular)
{-| <i class="fab far fas fal fa-foursquare"></i> -}
foursquare : Html msg
foursquare = i [] (Foursquare)
{-| <i class="fab far fas fal fa-free-code-camp"></i> -}
freeCodeCamp : Html msg
freeCodeCamp = i [] (FreeCodeCamp)
{-| <i class="fab far fas fal fa-freebsd"></i> -}
freebsd : Html msg
freebsd = i [] (Freebsd)
{-| <i class="fab far fas fal fa-frown"></i> -}
frown : Html msg
frown = i [] (Frown Regular)
{-| <i class="fab far fas fal fa-futbol"></i> -}
futbol : Html msg
futbol = i [] (Futbol Regular)
{-| <i class="fab far fas fal fa-gamepad"></i> -}
gamepad : Html msg
gamepad = i [] (Gamepad Regular)
{-| <i class="fab far fas fal fa-gavel"></i> -}
gavel : Html msg
gavel = i [] (Gavel Regular)
{-| <i class="fab far fas fal fa-gem"></i> -}
gem : Html msg
gem = i [] (Gem Regular)
{-| <i class="fab far fas fal fa-genderless"></i> -}
genderless : Html msg
genderless = i [] (Genderless Regular)
{-| <i class="fab far fas fal fa-get-pocket"></i> -}
getPocket : Html msg
getPocket = i [] (GetPocket)
{-| <i class="fab far fas fal fa-gg"></i> -}
gg : Html msg
gg = i [] (Gg)
{-| <i class="fab far fas fal fa-gg-circle"></i> -}
ggCircle : Html msg
ggCircle = i [] (GgCircle)
{-| <i class="fab far fas fal fa-gift"></i> -}
gift : Html msg
gift = i [] (Gift Regular)
{-| <i class="fab far fas fal fa-git"></i> -}
git : Html msg
git = i [] (Git)
{-| <i class="fab far fas fal fa-git-square"></i> -}
gitSquare : Html msg
gitSquare = i [] (GitSquare)
{-| <i class="fab far fas fal fa-github"></i> -}
github : Html msg
github = i [] (Github)
{-| <i class="fab far fas fal fa-github-alt"></i> -}
githubAlt : Html msg
githubAlt = i [] (GithubAlt)
{-| <i class="fab far fas fal fa-github-square"></i> -}
githubSquare : Html msg
githubSquare = i [] (GithubSquare)
{-| <i class="fab far fas fal fa-gitkraken"></i> -}
gitkraken : Html msg
gitkraken = i [] (Gitkraken)
{-| <i class="fab far fas fal fa-gitlab"></i> -}
gitlab : Html msg
gitlab = i [] (Gitlab)
{-| <i class="fab far fas fal fa-gitter"></i> -}
gitter : Html msg
gitter = i [] (Gitter)
{-| <i class="fab far fas fal fa-glass-martini"></i> -}
glassMartini : Html msg
glassMartini = i [] (GlassMartini Regular)
{-| <i class="fab far fas fal fa-glide"></i> -}
glide : Html msg
glide = i [] (Glide)
{-| <i class="fab far fas fal fa-glide-g"></i> -}
glideG : Html msg
glideG = i [] (GlideG)
{-| <i class="fab far fas fal fa-globe"></i> -}
globe : Html msg
globe = i [] (Globe Regular)
{-| <i class="fab far fas fal fa-gofore"></i> -}
gofore : Html msg
gofore = i [] (Gofore)
{-| <i class="fab far fas fal fa-golf-ball"></i> -}
golfBall : Html msg
golfBall = i [] (GolfBall Regular)
{-| <i class="fab far fas fal fa-golf-club"></i> -}
golfClub : Html msg
golfClub = i [] (GolfClub Regular)
{-| <i class="fab far fas fal fa-goodreads"></i> -}
goodreads : Html msg
goodreads = i [] (Goodreads)
{-| <i class="fab far fas fal fa-goodreads-g"></i> -}
goodreadsG : Html msg
goodreadsG = i [] (GoodreadsG)
{-| <i class="fab far fas fal fa-google"></i> -}
google : Html msg
google = i [] (Google)
{-| <i class="fab far fas fal fa-google-drive"></i> -}
googleDrive : Html msg
googleDrive = i [] (GoogleDrive)
{-| <i class="fab far fas fal fa-google-play"></i> -}
googlePlay : Html msg
googlePlay = i [] (GooglePlay)
{-| <i class="fab far fas fal fa-google-plus"></i> -}
googlePlus : Html msg
googlePlus = i [] (GooglePlus)
{-| <i class="fab far fas fal fa-google-plus-g"></i> -}
googlePlusG : Html msg
googlePlusG = i [] (GooglePlusG)
{-| <i class="fab far fas fal fa-google-plus-square"></i> -}
googlePlusSquare : Html msg
googlePlusSquare = i [] (GooglePlusSquare)
{-| <i class="fab far fas fal fa-google-wallet"></i> -}
googleWallet : Html msg
googleWallet = i [] (GoogleWallet)
{-| <i class="fab far fas fal fa-graduation-cap"></i> -}
graduationCap : Html msg
graduationCap = i [] (GraduationCap Regular)
{-| <i class="fab far fas fal fa-gratipay"></i> -}
gratipay : Html msg
gratipay = i [] (Gratipay)
{-| <i class="fab far fas fal fa-grav"></i> -}
grav : Html msg
grav = i [] (Grav)
{-| <i class="fab far fas fal fa-gripfire"></i> -}
gripfire : Html msg
gripfire = i [] (Gripfire)
{-| <i class="fab far fas fal fa-grunt"></i> -}
grunt : Html msg
grunt = i [] (Grunt)
{-| <i class="fab far fas fal fa-gulp"></i> -}
gulp : Html msg
gulp = i [] (Gulp)
{-| <i class="fab far fas fal fa-h-square"></i> -}
hSquare : Html msg
hSquare = i [] (HSquare Regular)
{-| <i class="fab far fas fal fa-h1"></i> -}
h1 : Html msg
h1 = i [] (H1 Regular)
{-| <i class="fab far fas fal fa-h2"></i> -}
h2 : Html msg
h2 = i [] (H2 Regular)
{-| <i class="fab far fas fal fa-h3"></i> -}
h3 : Html msg
h3 = i [] (H3 Regular)
{-| <i class="fab far fas fal fa-hacker-news"></i> -}
hackerNews : Html msg
hackerNews = i [] (HackerNews)
{-| <i class="fab far fas fal fa-hacker-news-square"></i> -}
hackerNewsSquare : Html msg
hackerNewsSquare = i [] (HackerNewsSquare)
{-| <i class="fab far fas fal fa-hand-lizard"></i> -}
handLizard : Html msg
handLizard = i [] (HandLizard Regular)
{-| <i class="fab far fas fal fa-hand-paper"></i> -}
handPaper : Html msg
handPaper = i [] (HandPaper Regular)
{-| <i class="fab far fas fal fa-hand-peace"></i> -}
handPeace : Html msg
handPeace = i [] (HandPeace Regular)
{-| <i class="fab far fas fal fa-hand-point-down"></i> -}
handPointDown : Html msg
handPointDown = i [] (HandPointDown Regular)
{-| <i class="fab far fas fal fa-hand-point-left"></i> -}
handPointLeft : Html msg
handPointLeft = i [] (HandPointLeft Regular)
{-| <i class="fab far fas fal fa-hand-point-right"></i> -}
handPointRight : Html msg
handPointRight = i [] (HandPointRight Regular)
{-| <i class="fab far fas fal fa-hand-point-up"></i> -}
handPointUp : Html msg
handPointUp = i [] (HandPointUp Regular)
{-| <i class="fab far fas fal fa-hand-pointer"></i> -}
handPointer : Html msg
handPointer = i [] (HandPointer Regular)
{-| <i class="fab far fas fal fa-hand-rock"></i> -}
handRock : Html msg
handRock = i [] (HandRock Regular)
{-| <i class="fab far fas fal fa-hand-scissors"></i> -}
handScissors : Html msg
handScissors = i [] (HandScissors Regular)
{-| <i class="fab far fas fal fa-hand-spock"></i> -}
handSpock : Html msg
handSpock = i [] (HandSpock Regular)
{-| <i class="fab far fas fal fa-handshake"></i> -}
handshake : Html msg
handshake = i [] (Handshake Regular)
{-| <i class="fab far fas fal fa-hashtag"></i> -}
hashtag : Html msg
hashtag = i [] (Hashtag Regular)
{-| <i class="fab far fas fal fa-hdd"></i> -}
hdd : Html msg
hdd = i [] (Hdd Regular)
{-| <i class="fab far fas fal fa-heading"></i> -}
heading : Html msg
heading = i [] (Heading Regular)
{-| <i class="fab far fas fal fa-headphones"></i> -}
headphones : Html msg
headphones = i [] (Headphones Regular)
{-| <i class="fab far fas fal fa-heart"></i> -}
heart : Html msg
heart = i [] (Heart Regular)
{-| <i class="fab far fas fal fa-heartbeat"></i> -}
heartbeat : Html msg
heartbeat = i [] (Heartbeat Regular)
{-| <i class="fab far fas fal fa-hexagon"></i> -}
hexagon : Html msg
hexagon = i [] (Hexagon Regular)
{-| <i class="fab far fas fal fa-hips"></i> -}
hips : Html msg
hips = i [] (Hips)
{-| <i class="fab far fas fal fa-hire-a-helper"></i> -}
hireAHelper : Html msg
hireAHelper = i [] (HireAHelper)
{-| <i class="fab far fas fal fa-history"></i> -}
history : Html msg
history = i [] (History Regular)
{-| <i class="fab far fas fal fa-hockey-puck"></i> -}
hockeyPuck : Html msg
hockeyPuck = i [] (HockeyPuck Regular)
{-| <i class="fab far fas fal fa-hockey-sticks"></i> -}
hockeySticks : Html msg
hockeySticks = i [] (HockeySticks Regular)
{-| <i class="fab far fas fal fa-home"></i> -}
home : Html msg
home = i [] (Home Regular)
{-| <i class="fab far fas fal fa-hooli"></i> -}
hooli : Html msg
hooli = i [] (Hooli)
{-| <i class="fab far fas fal fa-hospital"></i> -}
hospital : Html msg
hospital = i [] (Hospital Regular)
{-| <i class="fab far fas fal fa-hotjar"></i> -}
hotjar : Html msg
hotjar = i [] (Hotjar)
{-| <i class="fab far fas fal fa-hourglass"></i> -}
hourglass : Html msg
hourglass = i [] (Hourglass Regular)
{-| <i class="fab far fas fal fa-hourglass-end"></i> -}
hourglassEnd : Html msg
hourglassEnd = i [] (HourglassEnd Regular)
{-| <i class="fab far fas fal fa-hourglass-half"></i> -}
hourglassHalf : Html msg
hourglassHalf = i [] (HourglassHalf Regular)
{-| <i class="fab far fas fal fa-hourglass-start"></i> -}
hourglassStart : Html msg
hourglassStart = i [] (HourglassStart Regular)
{-| <i class="fab far fas fal fa-houzz"></i> -}
houzz : Html msg
houzz = i [] (Houzz)
{-| <i class="fab far fas fal fa-html5"></i> -}
html5 : Html msg
html5 = i [] (Html5)
{-| <i class="fab far fas fal fa-hubspot"></i> -}
hubspot : Html msg
hubspot = i [] (Hubspot)
{-| <i class="fab far fas fal fa-i-cursor"></i> -}
iCursor : Html msg
iCursor = i [] (ICursor Regular)
{-| <i class="fab far fas fal fa-id-badge"></i> -}
idBadge : Html msg
idBadge = i [] (IdBadge Regular)
{-| <i class="fab far fas fal fa-id-card"></i> -}
idCard : Html msg
idCard = i [] (IdCard Regular)
{-| <i class="fab far fas fal fa-image"></i> -}
image : Html msg
image = i [] (Image Regular)
{-| <i class="fab far fas fal fa-images"></i> -}
images : Html msg
images = i [] (Images Regular)
{-| <i class="fab far fas fal fa-imdb"></i> -}
imdb : Html msg
imdb = i [] (Imdb)
{-| <i class="fab far fas fal fa-inbox"></i> -}
inbox : Html msg
inbox = i [] (Inbox Regular)
{-| <i class="fab far fas fal fa-inbox-in"></i> -}
inboxIn : Html msg
inboxIn = i [] (InboxIn Regular)
{-| <i class="fab far fas fal fa-inbox-out"></i> -}
inboxOut : Html msg
inboxOut = i [] (InboxOut Regular)
{-| <i class="fab far fas fal fa-indent"></i> -}
indent : Html msg
indent = i [] (Indent Regular)
{-| <i class="fab far fas fal fa-industry"></i> -}
industry : Html msg
industry = i [] (Industry Regular)
{-| <i class="fab far fas fal fa-industry-alt"></i> -}
industryAlt : Html msg
industryAlt = i [] (IndustryAlt Regular)
{-| <i class="fab far fas fal fa-info"></i> -}
info : Html msg
info = i [] (Info Regular)
{-| <i class="fab far fas fal fa-info-circle"></i> -}
infoCircle : Html msg
infoCircle = i [] (InfoCircle Regular)
{-| <i class="fab far fas fal fa-info-square"></i> -}
infoSquare : Html msg
infoSquare = i [] (InfoSquare Regular)
{-| <i class="fab far fas fal fa-instagram"></i> -}
instagram : Html msg
instagram = i [] (Instagram)
{-| <i class="fab far fas fal fa-internet-explorer"></i> -}
internetExplorer : Html msg
internetExplorer = i [] (InternetExplorer)
{-| <i class="fab far fas fal fa-ioxhost"></i> -}
ioxhost : Html msg
ioxhost = i [] (Ioxhost)
{-| <i class="fab far fas fal fa-italic"></i> -}
italic : Html msg
italic = i [] (Italic Regular)
{-| <i class="fab far fas fal fa-itunes"></i> -}
itunes : Html msg
itunes = i [] (Itunes)
{-| <i class="fab far fas fal fa-itunes-note"></i> -}
itunesNote : Html msg
itunesNote = i [] (ItunesNote)
{-| <i class="fab far fas fal fa-jack-o-lantern"></i> -}
jackOLantern : Html msg
jackOLantern = i [] (JackOLantern Regular)
{-| <i class="fab far fas fal fa-jenkins"></i> -}
jenkins : Html msg
jenkins = i [] (Jenkins)
{-| <i class="fab far fas fal fa-joget"></i> -}
joget : Html msg
joget = i [] (Joget)
{-| <i class="fab far fas fal fa-joomla"></i> -}
joomla : Html msg
joomla = i [] (Joomla)
{-| <i class="fab far fas fal fa-js"></i> -}
js : Html msg
js = i [] (Js)
{-| <i class="fab far fas fal fa-js-square"></i> -}
jsSquare : Html msg
jsSquare = i [] (JsSquare)
{-| <i class="fab far fas fal fa-jsfiddle"></i> -}
jsfiddle : Html msg
jsfiddle = i [] (Jsfiddle)
{-| <i class="fab far fas fal fa-key"></i> -}
key : Html msg
key = i [] (Key Regular)
{-| <i class="fab far fas fal fa-keyboard"></i> -}
keyboard : Html msg
keyboard = i [] (Keyboard Regular)
{-| <i class="fab far fas fal fa-keycdn"></i> -}
keycdn : Html msg
keycdn = i [] (Keycdn)
{-| <i class="fab far fas fal fa-kickstarter"></i> -}
kickstarter : Html msg
kickstarter = i [] (Kickstarter)
{-| <i class="fab far fas fal fa-kickstarter-k"></i> -}
kickstarterK : Html msg
kickstarterK = i [] (KickstarterK)
{-| <i class="fab far fas fal fa-korvue"></i> -}
korvue : Html msg
korvue = i [] (Korvue)
{-| <i class="fab far fas fal fa-language"></i> -}
language : Html msg
language = i [] (Language Regular)
{-| <i class="fab far fas fal fa-laptop"></i> -}
laptop : Html msg
laptop = i [] (Laptop Regular)
{-| <i class="fab far fas fal fa-laravel"></i> -}
laravel : Html msg
laravel = i [] (Laravel)
{-| <i class="fab far fas fal fa-lastfm"></i> -}
lastfm : Html msg
lastfm = i [] (Lastfm)
{-| <i class="fab far fas fal fa-lastfm-square"></i> -}
lastfmSquare : Html msg
lastfmSquare = i [] (LastfmSquare)
{-| <i class="fab far fas fal fa-leaf"></i> -}
leaf : Html msg
leaf = i [] (Leaf Regular)
{-| <i class="fab far fas fal fa-leanpub"></i> -}
leanpub : Html msg
leanpub = i [] (Leanpub)
{-| <i class="fab far fas fal fa-lemon"></i> -}
lemon : Html msg
lemon = i [] (Lemon Regular)
{-| <i class="fab far fas fal fa-less"></i> -}
less : Html msg
less = i [] (Less)
{-| <i class="fab far fas fal fa-level-down"></i> -}
levelDown : Html msg
levelDown = i [] (LevelDown Regular)
{-| <i class="fab far fas fal fa-level-down-alt"></i> -}
levelDownAlt : Html msg
levelDownAlt = i [] (LevelDownAlt Regular)
{-| <i class="fab far fas fal fa-level-up"></i> -}
levelUp : Html msg
levelUp = i [] (LevelUp Regular)
{-| <i class="fab far fas fal fa-level-up-alt"></i> -}
levelUpAlt : Html msg
levelUpAlt = i [] (LevelUpAlt Regular)
{-| <i class="fab far fas fal fa-life-ring"></i> -}
lifeRing : Html msg
lifeRing = i [] (LifeRing Regular)
{-| <i class="fab far fas fal fa-lightbulb"></i> -}
lightbulb : Html msg
lightbulb = i [] (Lightbulb Regular)
{-| <i class="fab far fas fal fa-line"></i> -}
line : Html msg
line = i [] (Line Regular)
{-| <i class="fab far fas fal fa-link"></i> -}
link : Html msg
link = i [] (Link)
{-| <i class="fab far fas fal fa-linkedin"></i> -}
linkedin : Html msg
linkedin = i [] (Linkedin)
{-| <i class="fab far fas fal fa-linkedin-in"></i> -}
linkedinIn : Html msg
linkedinIn = i [] (LinkedinIn)
{-| <i class="fab far fas fal fa-linode"></i> -}
linode : Html msg
linode = i [] (Linode)
{-| <i class="fab far fas fal fa-linux"></i> -}
linux : Html msg
linux = i [] (Linux)
{-| <i class="fab far fas fal fa-lira-sign"></i> -}
liraSign : Html msg
liraSign = i [] (LiraSign Regular)
{-| <i class="fab far fas fal fa-list"></i> -}
list : Html msg
list = i [] (List Regular)
{-| <i class="fab far fas fal fa-list-alt"></i> -}
listAlt : Html msg
listAlt = i [] (ListAlt Regular)
{-| <i class="fab far fas fal fa-list-ol"></i> -}
listOl : Html msg
listOl = i [] (ListOl Regular)
{-| <i class="fab far fas fal fa-list-ul"></i> -}
listUl : Html msg
listUl = i [] (ListUl Regular)
{-| <i class="fab far fas fal fa-location-arrow"></i> -}
locationArrow : Html msg
locationArrow = i [] (LocationArrow Regular)
{-| <i class="fab far fas fal fa-lock"></i> -}
lock : Html msg
lock = i [] (Lock Regular)
{-| <i class="fab far fas fal fa-lock-alt"></i> -}
lockAlt : Html msg
lockAlt = i [] (LockAlt Regular)
{-| <i class="fab far fas fal fa-lock-open"></i> -}
lockOpen : Html msg
lockOpen = i [] (LockOpen Regular)
{-| <i class="fab far fas fal fa-lock-open-alt"></i> -}
lockOpenAlt : Html msg
lockOpenAlt = i [] (LockOpenAlt Regular)
{-| <i class="fab far fas fal fa-long-arrow-alt-down"></i> -}
longArrowAltDown : Html msg
longArrowAltDown = i [] (LongArrowAltDown Regular)
{-| <i class="fab far fas fal fa-long-arrow-alt-left"></i> -}
longArrowAltLeft : Html msg
longArrowAltLeft = i [] (LongArrowAltLeft Regular)
{-| <i class="fab far fas fal fa-long-arrow-alt-right"></i> -}
longArrowAltRight : Html msg
longArrowAltRight = i [] (LongArrowAltRight Regular)
{-| <i class="fab far fas fal fa-long-arrow-alt-up"></i> -}
longArrowAltUp : Html msg
longArrowAltUp = i [] (LongArrowAltUp Regular)
{-| <i class="fab far fas fal fa-long-arrow-down"></i> -}
longArrowDown : Html msg
longArrowDown = i [] (LongArrowDown Regular)
{-| <i class="fab far fas fal fa-long-arrow-left"></i> -}
longArrowLeft : Html msg
longArrowLeft = i [] (LongArrowLeft Regular)
{-| <i class="fab far fas fal fa-long-arrow-right"></i> -}
longArrowRight : Html msg
longArrowRight = i [] (LongArrowRight Regular)
{-| <i class="fab far fas fal fa-long-arrow-up"></i> -}
longArrowUp : Html msg
longArrowUp = i [] (LongArrowUp Regular)
{-| <i class="fab far fas fal fa-low-vision"></i> -}
lowVision : Html msg
lowVision = i [] (LowVision Regular)
{-| <i class="fab far fas fal fa-luchador"></i> -}
luchador : Html msg
luchador = i [] (Luchador Regular)
{-| <i class="fab far fas fal fa-lyft"></i> -}
lyft : Html msg
lyft = i [] (Lyft)
{-| <i class="fab far fas fal fa-magento"></i> -}
magento : Html msg
magento = i [] (Magento)
{-| <i class="fab far fas fal fa-magic"></i> -}
magic : Html msg
magic = i [] (Magic Regular)
{-| <i class="fab far fas fal fa-magnet"></i> -}
magnet : Html msg
magnet = i [] (Magnet Regular)
{-| <i class="fab far fas fal fa-male"></i> -}
male : Html msg
male = i [] (Male Regular)
{-| <i class="fab far fas fal fa-map"></i> -}
map : Html msg
map = i [] (Map Regular)
{-| <i class="fab far fas fal fa-map-marker"></i> -}
mapMarker : Html msg
mapMarker = i [] (MapMarker Regular)
{-| <i class="fab far fas fal fa-map-marker-alt"></i> -}
mapMarkerAlt : Html msg
mapMarkerAlt = i [] (MapMarkerAlt Regular)
{-| <i class="fab far fas fal fa-map-pin"></i> -}
mapPin : Html msg
mapPin = i [] (MapPin Regular)
{-| <i class="fab far fas fal fa-map-signs"></i> -}
mapSigns : Html msg
mapSigns = i [] (MapSigns Regular)
{-| <i class="fab far fas fal fa-mars"></i> -}
mars : Html msg
mars = i [] (Mars Regular)
{-| <i class="fab far fas fal fa-mars-double"></i> -}
marsDouble : Html msg
marsDouble = i [] (MarsDouble Regular)
{-| <i class="fab far fas fal fa-mars-stroke"></i> -}
marsStroke : Html msg
marsStroke = i [] (MarsStroke Regular)
{-| <i class="fab far fas fal fa-mars-stroke-h"></i> -}
marsStrokeH : Html msg
marsStrokeH = i [] (MarsStrokeH Regular)
{-| <i class="fab far fas fal fa-mars-stroke-v"></i> -}
marsStrokeV : Html msg
marsStrokeV = i [] (MarsStrokeV Regular)
{-| <i class="fab far fas fal fa-maxcdn"></i> -}
maxcdn : Html msg
maxcdn = i [] (Maxcdn)
{-| <i class="fab far fas fal fa-medapps"></i> -}
medapps : Html msg
medapps = i [] (Medapps)
{-| <i class="fab far fas fal fa-medium"></i> -}
medium : Html msg
medium = i [] (Medium)
{-| <i class="fab far fas fal fa-medium-m"></i> -}
mediumM : Html msg
mediumM = i [] (MediumM)
{-| <i class="fab far fas fal fa-medkit"></i> -}
medkit : Html msg
medkit = i [] (Medkit Regular)
{-| <i class="fab far fas fal fa-medrt"></i> -}
medrt : Html msg
medrt = i [] (Medrt)
{-| <i class="fab far fas fal fa-meetup"></i> -}
meetup : Html msg
meetup = i [] (Meetup)
{-| <i class="fab far fas fal fa-meh"></i> -}
meh : Html msg
meh = i [] (Meh Regular)
{-| <i class="fab far fas fal fa-mercury"></i> -}
mercury : Html msg
mercury = i [] (Mercury Regular)
{-| <i class="fab far fas fal fa-microchip"></i> -}
microchip : Html msg
microchip = i [] (Microchip Regular)
{-| <i class="fab far fas fal fa-microphone"></i> -}
microphone : Html msg
microphone = i [] (Microphone Regular)
{-| <i class="fab far fas fal fa-microphone-alt"></i> -}
microphoneAlt : Html msg
microphoneAlt = i [] (MicrophoneAlt Regular)
{-| <i class="fab far fas fal fa-microphone-slash"></i> -}
microphoneSlash : Html msg
microphoneSlash = i [] (MicrophoneSlash Regular)
{-| <i class="fab far fas fal fa-microsoft"></i> -}
microsoft : Html msg
microsoft = i [] (Microsoft)
{-| <i class="fab far fas fal fa-minus"></i> -}
minus : Html msg
minus = i [] (Minus Regular)
{-| <i class="fab far fas fal fa-minus-circle"></i> -}
minusCircle : Html msg
minusCircle = i [] (MinusCircle Regular)
{-| <i class="fab far fas fal fa-minus-hexagon"></i> -}
minusHexagon : Html msg
minusHexagon = i [] (MinusHexagon Regular)
{-| <i class="fab far fas fal fa-minus-octagon"></i> -}
minusOctagon : Html msg
minusOctagon = i [] (MinusOctagon Regular)
{-| <i class="fab far fas fal fa-minus-square"></i> -}
minusSquare : Html msg
minusSquare = i [] (MinusSquare Regular)
{-| <i class="fab far fas fal fa-mix"></i> -}
mix : Html msg
mix = i [] (Mix)
{-| <i class="fab far fas fal fa-mixcloud"></i> -}
mixcloud : Html msg
mixcloud = i [] (Mixcloud)
{-| <i class="fab far fas fal fa-mizuni"></i> -}
mizuni : Html msg
mizuni = i [] (Mizuni)
{-| <i class="fab far fas fal fa-mobile"></i> -}
mobile : Html msg
mobile = i [] (Mobile Regular)
{-| <i class="fab far fas fal fa-mobile-alt"></i> -}
mobileAlt : Html msg
mobileAlt = i [] (MobileAlt Regular)
{-| <i class="fab far fas fal fa-mobile-android"></i> -}
mobileAndroid : Html msg
mobileAndroid = i [] (MobileAndroid Regular)
{-| <i class="fab far fas fal fa-mobile-android-alt"></i> -}
mobileAndroidAlt : Html msg
mobileAndroidAlt = i [] (MobileAndroidAlt Regular)
{-| <i class="fab far fas fal fa-modx"></i> -}
modx : Html msg
modx = i [] (Modx)
{-| <i class="fab far fas fal fa-monero"></i> -}
monero : Html msg
monero = i [] (Monero)
{-| <i class="fab far fas fal fa-money-bill"></i> -}
moneyBill : Html msg
moneyBill = i [] (MoneyBill Regular)
{-| <i class="fab far fas fal fa-money-bill-alt"></i> -}
moneyBillAlt : Html msg
moneyBillAlt = i [] (MoneyBillAlt Regular)
{-| <i class="fab far fas fal fa-moon"></i> -}
moon : Html msg
moon = i [] (Moon Regular)
{-| <i class="fab far fas fal fa-motorcycle"></i> -}
motorcycle : Html msg
motorcycle = i [] (Motorcycle Regular)
{-| <i class="fab far fas fal fa-mouse-pointer"></i> -}
mousePointer : Html msg
mousePointer = i [] (MousePointer Regular)
{-| <i class="fab far fas fal fa-music"></i> -}
music : Html msg
music = i [] (Music Regular)
{-| <i class="fab far fas fal fa-napster"></i> -}
napster : Html msg
napster = i [] (Napster)
{-| <i class="fab far fas fal fa-neuter"></i> -}
neuter : Html msg
neuter = i [] (Neuter Regular)
{-| <i class="fab far fas fal fa-newspaper"></i> -}
newspaper : Html msg
newspaper = i [] (Newspaper Regular)
{-| <i class="fab far fas fal fa-nintendo-switch"></i> -}
nintendoSwitch : Html msg
nintendoSwitch = i [] (NintendoSwitch)
{-| <i class="fab far fas fal fa-node"></i> -}
node : Html msg
node = i [] (Node)
{-| <i class="fab far fas fal fa-node-js"></i> -}
nodeJs : Html msg
nodeJs = i [] (NodeJs)
{-| <i class="fab far fas fal fa-npm"></i> -}
npm : Html msg
npm = i [] (Npm)
{-| <i class="fab far fas fal fa-ns8"></i> -}
ns8 : Html msg
ns8 = i [] (Ns8)
{-| <i class="fab far fas fal fa-nutritionix"></i> -}
nutritionix : Html msg
nutritionix = i [] (Nutritionix)
{-| <i class="fab far fas fal fa-object-group"></i> -}
objectGroup : Html msg
objectGroup = i [] (ObjectGroup Regular)
{-| <i class="fab far fas fal fa-object-ungroup"></i> -}
objectUngroup : Html msg
objectUngroup = i [] (ObjectUngroup Regular)
{-| <i class="fab far fas fal fa-octagon"></i> -}
octagon : Html msg
octagon = i [] (Octagon Regular)
{-| <i class="fab far fas fal fa-odnoklassniki"></i> -}
odnoklassniki : Html msg
odnoklassniki = i [] (Odnoklassniki)
{-| <i class="fab far fas fal fa-odnoklassniki-square"></i> -}
odnoklassnikiSquare : Html msg
odnoklassnikiSquare = i [] (OdnoklassnikiSquare)
{-| <i class="fab far fas fal fa-opencart"></i> -}
opencart : Html msg
opencart = i [] (Opencart)
{-| <i class="fab far fas fal fa-openid"></i> -}
openid : Html msg
openid = i [] (Openid)
{-| <i class="fab far fas fal fa-opera"></i> -}
opera : Html msg
opera = i [] (Opera)
{-| <i class="fab far fas fal fa-optin-monster"></i> -}
optinMonster : Html msg
optinMonster = i [] (OptinMonster)
{-| <i class="fab far fas fal fa-osi"></i> -}
osi : Html msg
osi = i [] (Osi)
{-| <i class="fab far fas fal fa-outdent"></i> -}
outdent : Html msg
outdent = i [] (Outdent Regular)
{-| <i class="fab far fas fal fa-page4"></i> -}
page4 : Html msg
page4 = i [] (Page4)
{-| <i class="fab far fas fal fa-pagelines"></i> -}
pagelines : Html msg
pagelines = i [] (Pagelines)
{-| <i class="fab far fas fal fa-paint-brush"></i> -}
paintBrush : Html msg
paintBrush = i [] (PaintBrush Regular)
{-| <i class="fab far fas fal fa-palfed"></i> -}
palfed : Html msg
palfed = i [] (Palfed)
{-| <i class="fab far fas fal fa-paper-plane"></i> -}
paperPlane : Html msg
paperPlane = i [] (PaperPlane Regular)
{-| <i class="fab far fas fal fa-paperclip"></i> -}
paperclip : Html msg
paperclip = i [] (Paperclip Regular)
{-| <i class="fab far fas fal fa-paragraph"></i> -}
paragraph : Html msg
paragraph = i [] (Paragraph Regular)
{-| <i class="fab far fas fal fa-paste"></i> -}
paste : Html msg
paste = i [] (Paste Regular)
{-| <i class="fab far fas fal fa-patreon"></i> -}
patreon : Html msg
patreon = i [] (Patreon)
{-| <i class="fab far fas fal fa-pause"></i> -}
pause : Html msg
pause = i [] (Pause Regular)
{-| <i class="fab far fas fal fa-pause-circle"></i> -}
pauseCircle : Html msg
pauseCircle = i [] (PauseCircle Regular)
{-| <i class="fab far fas fal fa-paw"></i> -}
paw : Html msg
paw = i [] (Paw Regular)
{-| <i class="fab far fas fal fa-paypal"></i> -}
paypal : Html msg
paypal = i [] (Paypal)
{-| <i class="fab far fas fal fa-pen"></i> -}
pen : Html msg
pen = i [] (Pen Regular)
{-| <i class="fab far fas fal fa-pen-alt"></i> -}
penAlt : Html msg
penAlt = i [] (PenAlt Regular)
{-| <i class="fab far fas fal fa-pen-square"></i> -}
penSquare : Html msg
penSquare = i [] (PenSquare Regular)
{-| <i class="fab far fas fal fa-pencil"></i> -}
pencil : Html msg
pencil = i [] (Pencil Regular)
{-| <i class="fab far fas fal fa-pencil-alt"></i> -}
pencilAlt : Html msg
pencilAlt = i [] (PencilAlt Regular)
{-| <i class="fab far fas fal fa-pennant"></i> -}
pennant : Html msg
pennant = i [] (Pennant Regular)
{-| <i class="fab far fas fal fa-percent"></i> -}
percent : Html msg
percent = i [] (Percent Regular)
{-| <i class="fab far fas fal fa-periscope"></i> -}
periscope : Html msg
periscope = i [] (Periscope)
{-| <i class="fab far fas fal fa-phabricator"></i> -}
phabricator : Html msg
phabricator = i [] (Phabricator)
{-| <i class="fab far fas fal fa-phoenix-framework"></i> -}
phoenixFramework : Html msg
phoenixFramework = i [] (PhoenixFramework)
{-| <i class="fab far fas fal fa-phone"></i> -}
phone : Html msg
phone = i [] (Phone Regular)
{-| <i class="fab far fas fal fa-phone-slash"></i> -}
phoneSlash : Html msg
phoneSlash = i [] (PhoneSlash Regular)
{-| <i class="fab far fas fal fa-phone-square"></i> -}
phoneSquare : Html msg
phoneSquare = i [] (PhoneSquare Regular)
{-| <i class="fab far fas fal fa-phone-volume"></i> -}
phoneVolume : Html msg
phoneVolume = i [] (PhoneVolume Regular)
{-| <i class="fab far fas fal fa-php"></i> -}
php : Html msg
php = i [] (Php)
{-| <i class="fab far fas fal fa-pied-piper"></i> -}
piedPiper : Html msg
piedPiper = i [] (PiedPiper)
{-| <i class="fab far fas fal fa-pied-piper-alt"></i> -}
piedPiperAlt : Html msg
piedPiperAlt = i [] (PiedPiperAlt)
{-| <i class="fab far fas fal fa-pied-piper-pp"></i> -}
piedPiperPp : Html msg
piedPiperPp = i [] (PiedPiperPp)
{-| <i class="fab far fas fal fa-pinterest"></i> -}
pinterest : Html msg
pinterest = i [] (Pinterest)
{-| <i class="fab far fas fal fa-pinterest-p"></i> -}
pinterestP : Html msg
pinterestP = i [] (PinterestP)
{-| <i class="fab far fas fal fa-pinterest-square"></i> -}
pinterestSquare : Html msg
pinterestSquare = i [] (PinterestSquare)
{-| <i class="fab far fas fal fa-plane"></i> -}
plane : Html msg
plane = i [] (Plane Regular)
{-| <i class="fab far fas fal fa-plane-alt"></i> -}
planeAlt : Html msg
planeAlt = i [] (PlaneAlt Regular)
{-| <i class="fab far fas fal fa-play"></i> -}
play : Html msg
play = i [] (Play Regular)
{-| <i class="fab far fas fal fa-play-circle"></i> -}
playCircle : Html msg
playCircle = i [] (PlayCircle Regular)
{-| <i class="fab far fas fal fa-playstation"></i> -}
playstation : Html msg
playstation = i [] (Playstation)
{-| <i class="fab far fas fal fa-plug"></i> -}
plug : Html msg
plug = i [] (Plug Regular)
{-| <i class="fab far fas fal fa-plus"></i> -}
plus : Html msg
plus = i [] (Plus Regular)
{-| <i class="fab far fas fal fa-plus-circle"></i> -}
plusCircle : Html msg
plusCircle = i [] (PlusCircle Regular)
{-| <i class="fab far fas fal fa-plus-hexagon"></i> -}
plusHexagon : Html msg
plusHexagon = i [] (PlusHexagon Regular)
{-| <i class="fab far fas fal fa-plus-octagon"></i> -}
plusOctagon : Html msg
plusOctagon = i [] (PlusOctagon Regular)
{-| <i class="fab far fas fal fa-plus-square"></i> -}
plusSquare : Html msg
plusSquare = i [] (PlusSquare Regular)
{-| <i class="fab far fas fal fa-podcast"></i> -}
podcast : Html msg
podcast = i [] (Podcast Regular)
{-| <i class="fab far fas fal fa-poo"></i> -}
poo : Html msg
poo = i [] (Poo Regular)
{-| <i class="fab far fas fal fa-portrait"></i> -}
portrait : Html msg
portrait = i [] (Portrait Regular)
{-| <i class="fab far fas fal fa-pound-sign"></i> -}
poundSign : Html msg
poundSign = i [] (PoundSign Regular)
{-| <i class="fab far fas fal fa-power-off"></i> -}
powerOff : Html msg
powerOff = i [] (PowerOff Regular)
{-| <i class="fab far fas fal fa-print"></i> -}
print : Html msg
print = i [] (Print Regular)
{-| <i class="fab far fas fal fa-product-hunt"></i> -}
productHunt : Html msg
productHunt = i [] (ProductHunt)
{-| <i class="fab far fas fal fa-pushed"></i> -}
pushed : Html msg
pushed = i [] (Pushed)
{-| <i class="fab far fas fal fa-puzzle-piece"></i> -}
puzzlePiece : Html msg
puzzlePiece = i [] (PuzzlePiece Regular)
{-| <i class="fab far fas fal fa-python"></i> -}
python : Html msg
python = i [] (Python)
{-| <i class="fab far fas fal fa-qq"></i> -}
qq : Html msg
qq = i [] (Qq)
{-| <i class="fab far fas fal fa-qrcode"></i> -}
qrcode : Html msg
qrcode = i [] (Qrcode Regular)
{-| <i class="fab far fas fal fa-question"></i> -}
question : Html msg
question = i [] (Question Regular)
{-| <i class="fab far fas fal fa-question-circle"></i> -}
questionCircle : Html msg
questionCircle = i [] (QuestionCircle Regular)
{-| <i class="fab far fas fal fa-question-square"></i> -}
questionSquare : Html msg
questionSquare = i [] (QuestionSquare Regular)
{-| <i class="fab far fas fal fa-quidditch"></i> -}
quidditch : Html msg
quidditch = i [] (Quidditch Regular)
{-| <i class="fab far fas fal fa-quinscape"></i> -}
quinscape : Html msg
quinscape = i [] (Quinscape)
{-| <i class="fab far fas fal fa-quora"></i> -}
quora : Html msg
quora = i [] (Quora)
{-| <i class="fab far fas fal fa-quote-left"></i> -}
quoteLeft : Html msg
quoteLeft = i [] (QuoteLeft Regular)
{-| <i class="fab far fas fal fa-quote-right"></i> -}
quoteRight : Html msg
quoteRight = i [] (QuoteRight Regular)
{-| <i class="fab far fas fal fa-racquet"></i> -}
racquet : Html msg
racquet = i [] (Racquet Regular)
{-| <i class="fab far fas fal fa-random"></i> -}
random : Html msg
random = i [] (Random Regular)
{-| <i class="fab far fas fal fa-ravelry"></i> -}
ravelry : Html msg
ravelry = i [] (Ravelry)
{-| <i class="fab far fas fal fa-react"></i> -}
react : Html msg
react = i [] (React)
{-| <i class="fab far fas fal fa-rebel"></i> -}
rebel : Html msg
rebel = i [] (Rebel)
{-| <i class="fab far fas fal fa-rectangle-landscape"></i> -}
rectangleLandscape : Html msg
rectangleLandscape = i [] (RectangleLandscape Regular)
{-| <i class="fab far fas fal fa-rectangle-portrait"></i> -}
rectanglePortrait : Html msg
rectanglePortrait = i [] (RectanglePortrait Regular)
{-| <i class="fab far fas fal fa-rectangle-wide"></i> -}
rectangleWide : Html msg
rectangleWide = i [] (RectangleWide Regular)
{-| <i class="fab far fas fal fa-recycle"></i> -}
recycle : Html msg
recycle = i [] (Recycle Regular)
{-| <i class="fab far fas fal fa-red-river"></i> -}
redRiver : Html msg
redRiver = i [] (RedRiver)
{-| <i class="fab far fas fal fa-reddit"></i> -}
reddit : Html msg
reddit = i [] (Reddit)
{-| <i class="fab far fas fal fa-reddit-alien"></i> -}
redditAlien : Html msg
redditAlien = i [] (RedditAlien)
{-| <i class="fab far fas fal fa-reddit-square"></i> -}
redditSquare : Html msg
redditSquare = i [] (RedditSquare)
{-| <i class="fab far fas fal fa-redo"></i> -}
redo : Html msg
redo = i [] (Redo Regular)
{-| <i class="fab far fas fal fa-redo-alt"></i> -}
redoAlt : Html msg
redoAlt = i [] (RedoAlt Regular)
{-| <i class="fab far fas fal fa-registered"></i> -}
registered : Html msg
registered = i [] (Registered Regular)
{-| <i class="fab far fas fal fa-rendact"></i> -}
rendact : Html msg
rendact = i [] (Rendact)
{-| <i class="fab far fas fal fa-renren"></i> -}
renren : Html msg
renren = i [] (Renren)
{-| <i class="fab far fas fal fa-repeat"></i> -}
repeat : Html msg
repeat = i [] (Repeat Regular)
{-| <i class="fab far fas fal fa-repeat1"></i> -}
repeat1 : Html msg
repeat1 = i [] (Repeat1 Regular)
{-| <i class="fab far fas fal fa-repeat1-alt"></i> -}
repeat1Alt : Html msg
repeat1Alt = i [] (Repeat1Alt Regular)
{-| <i class="fab far fas fal fa-repeat-alt"></i> -}
repeatAlt : Html msg
repeatAlt = i [] (RepeatAlt Regular)
{-| <i class="fab far fas fal fa-reply"></i> -}
reply : Html msg
reply = i [] (Reply Regular)
{-| <i class="fab far fas fal fa-reply-all"></i> -}
replyAll : Html msg
replyAll = i [] (ReplyAll Regular)
{-| <i class="fab far fas fal fa-replyd"></i> -}
replyd : Html msg
replyd = i [] (Replyd)
{-| <i class="fab far fas fal fa-resolving"></i> -}
resolving : Html msg
resolving = i [] (Resolving)
{-| <i class="fab far fas fal fa-retweet"></i> -}
retweet : Html msg
retweet = i [] (Retweet Regular)
{-| <i class="fab far fas fal fa-retweet-alt"></i> -}
retweetAlt : Html msg
retweetAlt = i [] (RetweetAlt Regular)
{-| <i class="fab far fas fal fa-road"></i> -}
road : Html msg
road = i [] (Road Regular)
{-| <i class="fab far fas fal fa-rocket"></i> -}
rocket : Html msg
rocket = i [] (Rocket Regular)
{-| <i class="fab far fas fal fa-rocketchat"></i> -}
rocketchat : Html msg
rocketchat = i [] (Rocketchat)
{-| <i class="fab far fas fal fa-rockrms"></i> -}
rockrms : Html msg
rockrms = i [] (Rockrms)
{-| <i class="fab far fas fal fa-rss"></i> -}
rss : Html msg
rss = i [] (Rss Regular)
{-| <i class="fab far fas fal fa-rss-square"></i> -}
rssSquare : Html msg
rssSquare = i [] (RssSquare Regular)
{-| <i class="fab far fas fal fa-ruble-sign"></i> -}
rubleSign : Html msg
rubleSign = i [] (RubleSign Regular)
{-| <i class="fab far fas fal fa-rupee-sign"></i> -}
rupeeSign : Html msg
rupeeSign = i [] (RupeeSign Regular)
{-| <i class="fab far fas fal fa-safari"></i> -}
safari : Html msg
safari = i [] (Safari)
{-| <i class="fab far fas fal fa-sass"></i> -}
sass : Html msg
sass = i [] (Sass)
{-| <i class="fab far fas fal fa-save"></i> -}
save : Html msg
save = i [] (Save Regular)
{-| <i class="fab far fas fal fa-schlix"></i> -}
schlix : Html msg
schlix = i [] (Schlix)
{-| <i class="fab far fas fal fa-scribd"></i> -}
scribd : Html msg
scribd = i [] (Scribd)
{-| <i class="fab far fas fal fa-scrubber"></i> -}
scrubber : Html msg
scrubber = i [] (Scrubber Regular)
{-| <i class="fab far fas fal fa-search"></i> -}
search : Html msg
search = i [] (Search Regular)
{-| <i class="fab far fas fal fa-search-minus"></i> -}
searchMinus : Html msg
searchMinus = i [] (SearchMinus Regular)
{-| <i class="fab far fas fal fa-search-plus"></i> -}
searchPlus : Html msg
searchPlus = i [] (SearchPlus Regular)
{-| <i class="fab far fas fal fa-searchengin"></i> -}
searchengin : Html msg
searchengin = i [] (Searchengin)
{-| <i class="fab far fas fal fa-sellcast"></i> -}
sellcast : Html msg
sellcast = i [] (Sellcast)
{-| <i class="fab far fas fal fa-sellsy"></i> -}
sellsy : Html msg
sellsy = i [] (Sellsy)
{-| <i class="fab far fas fal fa-server"></i> -}
server : Html msg
server = i [] (Server Regular)
{-| <i class="fab far fas fal fa-servicestack"></i> -}
servicestack : Html msg
servicestack = i [] (Servicestack)
{-| <i class="fab far fas fal fa-share"></i> -}
share : Html msg
share = i [] (Share Regular)
{-| <i class="fab far fas fal fa-share-all"></i> -}
shareAll : Html msg
shareAll = i [] (ShareAll Regular)
{-| <i class="fab far fas fal fa-share-alt"></i> -}
shareAlt : Html msg
shareAlt = i [] (ShareAlt Regular)
{-| <i class="fab far fas fal fa-share-alt-square"></i> -}
shareAltSquare : Html msg
shareAltSquare = i [] (ShareAltSquare Regular)
{-| <i class="fab far fas fal fa-share-square"></i> -}
shareSquare : Html msg
shareSquare = i [] (ShareSquare Regular)
{-| <i class="fab far fas fal fa-shekel-sign"></i> -}
shekelSign : Html msg
shekelSign = i [] (ShekelSign Regular)
{-| <i class="fab far fas fal fa-shield"></i> -}
shield : Html msg
shield = i [] (Shield Regular)
{-| <i class="fab far fas fal fa-shield-alt"></i> -}
shieldAlt : Html msg
shieldAlt = i [] (ShieldAlt Regular)
{-| <i class="fab far fas fal fa-shield-check"></i> -}
shieldCheck : Html msg
shieldCheck = i [] (ShieldCheck Regular)
{-| <i class="fab far fas fal fa-ship"></i> -}
ship : Html msg
ship = i [] (Ship Regular)
{-| <i class="fab far fas fal fa-shirtsinbulk"></i> -}
shirtsinbulk : Html msg
shirtsinbulk = i [] (Shirtsinbulk)
{-| <i class="fab far fas fal fa-shopping-bag"></i> -}
shoppingBag : Html msg
shoppingBag = i [] (ShoppingBag Regular)
{-| <i class="fab far fas fal fa-shopping-basket"></i> -}
shoppingBasket : Html msg
shoppingBasket = i [] (ShoppingBasket Regular)
{-| <i class="fab far fas fal fa-shopping-cart"></i> -}
shoppingCart : Html msg
shoppingCart = i [] (ShoppingCart Regular)
{-| <i class="fab far fas fal fa-shower"></i> -}
shower : Html msg
shower = i [] (Shower Regular)
{-| <i class="fab far fas fal fa-shuttlecock"></i> -}
shuttlecock : Html msg
shuttlecock = i [] (Shuttlecock Regular)
{-| <i class="fab far fas fal fa-sign-in"></i> -}
signIn : Html msg
signIn = i [] (SignIn Regular)
{-| <i class="fab far fas fal fa-sign-in-alt"></i> -}
signInAlt : Html msg
signInAlt = i [] (SignInAlt Regular)
{-| <i class="fab far fas fal fa-sign-language"></i> -}
signLanguage : Html msg
signLanguage = i [] (SignLanguage Regular)
{-| <i class="fab far fas fal fa-sign-out"></i> -}
signOut : Html msg
signOut = i [] (SignOut Regular)
{-| <i class="fab far fas fal fa-sign-out-alt"></i> -}
signOutAlt : Html msg
signOutAlt = i [] (SignOutAlt Regular)
{-| <i class="fab far fas fal fa-signal"></i> -}
signal : Html msg
signal = i [] (Signal Regular)
{-| <i class="fab far fas fal fa-simplybuilt"></i> -}
simplybuilt : Html msg
simplybuilt = i [] (Simplybuilt)
{-| <i class="fab far fas fal fa-sistrix"></i> -}
sistrix : Html msg
sistrix = i [] (Sistrix)
{-| <i class="fab far fas fal fa-sitemap"></i> -}
sitemap : Html msg
sitemap = i [] (Sitemap Regular)
{-| <i class="fab far fas fal fa-skyatlas"></i> -}
skyatlas : Html msg
skyatlas = i [] (Skyatlas)
{-| <i class="fab far fas fal fa-skype"></i> -}
skype : Html msg
skype = i [] (Skype)
{-| <i class="fab far fas fal fa-slack"></i> -}
slack : Html msg
slack = i [] (Slack)
{-| <i class="fab far fas fal fa-slack-hash"></i> -}
slackHash : Html msg
slackHash = i [] (SlackHash)
{-| <i class="fab far fas fal fa-sliders-h"></i> -}
slidersH : Html msg
slidersH = i [] (SlidersH Regular)
{-| <i class="fab far fas fal fa-sliders-h-square"></i> -}
slidersHSquare : Html msg
slidersHSquare = i [] (SlidersHSquare Regular)
{-| <i class="fab far fas fal fa-sliders-v"></i> -}
slidersV : Html msg
slidersV = i [] (SlidersV Regular)
{-| <i class="fab far fas fal fa-sliders-v-square"></i> -}
slidersVSquare : Html msg
slidersVSquare = i [] (SlidersVSquare Regular)
{-| <i class="fab far fas fal fa-slideshare"></i> -}
slideshare : Html msg
slideshare = i [] (Slideshare)
{-| <i class="fab far fas fal fa-smile"></i> -}
smile : Html msg
smile = i [] (Smile Regular)
{-| <i class="fab far fas fal fa-snapchat"></i> -}
snapchat : Html msg
snapchat = i [] (Snapchat)
{-| <i class="fab far fas fal fa-snapchat-ghost"></i> -}
snapchatGhost : Html msg
snapchatGhost = i [] (SnapchatGhost)
{-| <i class="fab far fas fal fa-snapchat-square"></i> -}
snapchatSquare : Html msg
snapchatSquare = i [] (SnapchatSquare)
{-| <i class="fab far fas fal fa-snowflake"></i> -}
snowflake : Html msg
snowflake = i [] (Snowflake Regular)
{-| <i class="fab far fas fal fa-sort"></i> -}
sort : Html msg
sort = i [] (Sort Regular)
{-| <i class="fab far fas fal fa-sort-alpha-down"></i> -}
sortAlphaDown : Html msg
sortAlphaDown = i [] (SortAlphaDown Regular)
{-| <i class="fab far fas fal fa-sort-alpha-up"></i> -}
sortAlphaUp : Html msg
sortAlphaUp = i [] (SortAlphaUp Regular)
{-| <i class="fab far fas fal fa-sort-amount-down"></i> -}
sortAmountDown : Html msg
sortAmountDown = i [] (SortAmountDown Regular)
{-| <i class="fab far fas fal fa-sort-amount-up"></i> -}
sortAmountUp : Html msg
sortAmountUp = i [] (SortAmountUp Regular)
{-| <i class="fab far fas fal fa-sort-down"></i> -}
sortDown : Html msg
sortDown = i [] (SortDown Regular)
{-| <i class="fab far fas fal fa-sort-numeric-down"></i> -}
sortNumericDown : Html msg
sortNumericDown = i [] (SortNumericDown Regular)
{-| <i class="fab far fas fal fa-sort-numeric-up"></i> -}
sortNumericUp : Html msg
sortNumericUp = i [] (SortNumericUp Regular)
{-| <i class="fab far fas fal fa-sort-up"></i> -}
sortUp : Html msg
sortUp = i [] (SortUp Regular)
{-| <i class="fab far fas fal fa-soundcloud"></i> -}
soundcloud : Html msg
soundcloud = i [] (Soundcloud)
{-| <i class="fab far fas fal fa-space-shuttle"></i> -}
spaceShuttle : Html msg
spaceShuttle = i [] (SpaceShuttle Regular)
{-| <i class="fab far fas fal fa-spade"></i> -}
spade : Html msg
spade = i [] (Spade Regular)
{-| <i class="fab far fas fal fa-speakap"></i> -}
speakap : Html msg
speakap = i [] (Speakap)
{-| <i class="fab far fas fal fa-spinner"></i> -}
spinner : Html msg
spinner = i [] (Spinner Regular)
{-| <i class="fab far fas fal fa-spinner-third"></i> -}
spinnerThird : Html msg
spinnerThird = i [] (SpinnerThird Regular)
{-| <i class="fab far fas fal fa-spotify"></i> -}
spotify : Html msg
spotify = i [] (Spotify)
{-| <i class="fab far fas fal fa-square"></i> -}
square : Html msg
square = i [] (Square Regular)
{-| <i class="fab far fas fal fa-square-full"></i> -}
squareFull : Html msg
squareFull = i [] (SquareFull Regular)
{-| <i class="fab far fas fal fa-stack-exchange"></i> -}
stackExchange : Html msg
stackExchange = i [] (StackExchange)
{-| <i class="fab far fas fal fa-stack-overflow"></i> -}
stackOverflow : Html msg
stackOverflow = i [] (StackOverflow)
{-| <i class="fab far fas fal fa-star"></i> -}
star : Html msg
star = i [] (Star Regular)
{-| <i class="fab far fas fal fa-star-exclamation"></i> -}
starExclamation : Html msg
starExclamation = i [] (StarExclamation Regular)
{-| <i class="fab far fas fal fa-star-half"></i> -}
starHalf : Html msg
starHalf = i [] (StarHalf Regular)
{-| <i class="fab far fas fal fa-staylinked"></i> -}
staylinked : Html msg
staylinked = i [] (Staylinked)
{-| <i class="fab far fas fal fa-steam"></i> -}
steam : Html msg
steam = i [] (Steam)
{-| <i class="fab far fas fal fa-steam-square"></i> -}
steamSquare : Html msg
steamSquare = i [] (SteamSquare)
{-| <i class="fab far fas fal fa-steam-symbol"></i> -}
steamSymbol : Html msg
steamSymbol = i [] (SteamSymbol)
{-| <i class="fab far fas fal fa-step-backward"></i> -}
stepBackward : Html msg
stepBackward = i [] (StepBackward Regular)
{-| <i class="fab far fas fal fa-step-forward"></i> -}
stepForward : Html msg
stepForward = i [] (StepForward Regular)
{-| <i class="fab far fas fal fa-stethoscope"></i> -}
stethoscope : Html msg
stethoscope = i [] (Stethoscope Regular)
{-| <i class="fab far fas fal fa-sticker-mule"></i> -}
stickerMule : Html msg
stickerMule = i [] (StickerMule)
{-| <i class="fab far fas fal fa-sticky-note"></i> -}
stickyNote : Html msg
stickyNote = i [] (StickyNote Regular)
{-| <i class="fab far fas fal fa-stop"></i> -}
stop : Html msg
stop = i [] (Stop Regular)
{-| <i class="fab far fas fal fa-stop-circle"></i> -}
stopCircle : Html msg
stopCircle = i [] (StopCircle Regular)
{-| <i class="fab far fas fal fa-stopwatch"></i> -}
stopwatch : Html msg
stopwatch = i [] (Stopwatch Regular)
{-| <i class="fab far fas fal fa-strava"></i> -}
strava : Html msg
strava = i [] (Strava)
{-| <i class="fab far fas fal fa-street-view"></i> -}
streetView : Html msg
streetView = i [] (StreetView Regular)
{-| <i class="fab far fas fal fa-strikethrough"></i> -}
strikethrough : Html msg
strikethrough = i [] (Strikethrough Regular)
{-| <i class="fab far fas fal fa-stripe"></i> -}
stripe : Html msg
stripe = i [] (Stripe)
{-| <i class="fab far fas fal fa-stripe-s"></i> -}
stripeS : Html msg
stripeS = i [] (StripeS)
{-| <i class="fab far fas fal fa-studiovinari"></i> -}
studiovinari : Html msg
studiovinari = i [] (Studiovinari)
{-| <i class="fab far fas fal fa-stumbleupon"></i> -}
stumbleupon : Html msg
stumbleupon = i [] (Stumbleupon)
{-| <i class="fab far fas fal fa-stumbleupon-circle"></i> -}
stumbleuponCircle : Html msg
stumbleuponCircle = i [] (StumbleuponCircle)
{-| <i class="fab far fas fal fa-subscript"></i> -}
subscript : Html msg
subscript = i [] (Subscript Regular)
{-| <i class="fab far fas fal fa-subway"></i> -}
subway : Html msg
subway = i [] (Subway Regular)
{-| <i class="fab far fas fal fa-suitcase"></i> -}
suitcase : Html msg
suitcase = i [] (Suitcase Regular)
{-| <i class="fab far fas fal fa-sun"></i> -}
sun : Html msg
sun = i [] (Sun Regular)
{-| <i class="fab far fas fal fa-superpowers"></i> -}
superpowers : Html msg
superpowers = i [] (Superpowers)
{-| <i class="fab far fas fal fa-superscript"></i> -}
superscript : Html msg
superscript = i [] (Superscript Regular)
{-| <i class="fab far fas fal fa-supple"></i> -}
supple : Html msg
supple = i [] (Supple)
{-| <i class="fab far fas fal fa-sync"></i> -}
sync : Html msg
sync = i [] (Sync Regular)
{-| <i class="fab far fas fal fa-sync-alt"></i> -}
syncAlt : Html msg
syncAlt = i [] (SyncAlt Regular)
{-| <i class="fab far fas fal fa-table"></i> -}
table : Html msg
table = i [] (Table Regular)
{-| <i class="fab far fas fal fa-table-tennis"></i> -}
tableTennis : Html msg
tableTennis = i [] (TableTennis Regular)
{-| <i class="fab far fas fal fa-tablet"></i> -}
tablet : Html msg
tablet = i [] (Tablet Regular)
{-| <i class="fab far fas fal fa-tablet-alt"></i> -}
tabletAlt : Html msg
tabletAlt = i [] (TabletAlt Regular)
{-| <i class="fab far fas fal fa-tablet-android"></i> -}
tabletAndroid : Html msg
tabletAndroid = i [] (TabletAndroid Regular)
{-| <i class="fab far fas fal fa-tablet-android-alt"></i> -}
tabletAndroidAlt : Html msg
tabletAndroidAlt = i [] (TabletAndroidAlt Regular)
{-| <i class="fab far fas fal fa-tachometer"></i> -}
tachometer : Html msg
tachometer = i [] (Tachometer Regular)
{-| <i class="fab far fas fal fa-tachometer-alt"></i> -}
tachometerAlt : Html msg
tachometerAlt = i [] (TachometerAlt Regular)
{-| <i class="fab far fas fal fa-tag"></i> -}
tag : Html msg
tag = i [] (Tag Regular)
{-| <i class="fab far fas fal fa-tags"></i> -}
tags : Html msg
tags = i [] (Tags Regular)
{-| <i class="fab far fas fal fa-tasks"></i> -}
tasks : Html msg
tasks = i [] (Tasks Regular)
{-| <i class="fab far fas fal fa-taxi"></i> -}
taxi : Html msg
taxi = i [] (Taxi Regular)
{-| <i class="fab far fas fal fa-telegram"></i> -}
telegram : Html msg
telegram = i [] (Telegram)
{-| <i class="fab far fas fal fa-telegram-plane"></i> -}
telegramPlane : Html msg
telegramPlane = i [] (TelegramPlane)
{-| <i class="fab far fas fal fa-tencent-weibo"></i> -}
tencentWeibo : Html msg
tencentWeibo = i [] (TencentWeibo)
{-| <i class="fab far fas fal fa-tennis-ball"></i> -}
tennisBall : Html msg
tennisBall = i [] (TennisBall Regular)
{-| <i class="fab far fas fal fa-terminal"></i> -}
terminal : Html msg
terminal = i [] (Terminal Regular)
{-| <i class="fab far fas fal fa-text-height"></i> -}
textHeight : Html msg
textHeight = i [] (TextHeight Regular)
{-| <i class="fab far fas fal fa-text-width"></i> -}
textWidth : Html msg
textWidth = i [] (TextWidth Regular)
{-| <i class="fab far fas fal fa-th"></i> -}
th : Html msg
th = i [] (Th Regular)
{-| <i class="fab far fas fal fa-th-large"></i> -}
thLarge : Html msg
thLarge = i [] (ThLarge Regular)
{-| <i class="fab far fas fal fa-th-list"></i> -}
thList : Html msg
thList = i [] (ThList Regular)
{-| <i class="fab far fas fal fa-themeisle"></i> -}
themeisle : Html msg
themeisle = i [] (Themeisle)
{-| <i class="fab far fas fal fa-thermometer-empty"></i> -}
thermometerEmpty : Html msg
thermometerEmpty = i [] (ThermometerEmpty Regular)
{-| <i class="fab far fas fal fa-thermometer-full"></i> -}
thermometerFull : Html msg
thermometerFull = i [] (ThermometerFull Regular)
{-| <i class="fab far fas fal fa-thermometer-half"></i> -}
thermometerHalf : Html msg
thermometerHalf = i [] (ThermometerHalf Regular)
{-| <i class="fab far fas fal fa-thermometer-quarter"></i> -}
thermometerQuarter : Html msg
thermometerQuarter = i [] (ThermometerQuarter Regular)
{-| <i class="fab far fas fal fa-thermometer-three-quarters"></i> -}
thermometerThreeQuarters : Html msg
thermometerThreeQuarters = i [] (ThermometerThreeQuarters Regular)
{-| <i class="fab far fas fal fa-thumbs-down"></i> -}
thumbsDown : Html msg
thumbsDown = i [] (ThumbsDown Regular)
{-| <i class="fab far fas fal fa-thumbs-up"></i> -}
thumbsUp : Html msg
thumbsUp = i [] (ThumbsUp Regular)
{-| <i class="fab far fas fal fa-thumbtack"></i> -}
thumbtack : Html msg
thumbtack = i [] (Thumbtack Regular)
{-| <i class="fab far fas fal fa-ticket"></i> -}
ticket : Html msg
ticket = i [] (Ticket Regular)
{-| <i class="fab far fas fal fa-ticket-alt"></i> -}
ticketAlt : Html msg
ticketAlt = i [] (TicketAlt Regular)
{-| <i class="fab far fas fal fa-times"></i> -}
times : Html msg
times = i [] (Times Regular)
{-| <i class="fab far fas fal fa-times-circle"></i> -}
timesCircle : Html msg
timesCircle = i [] (TimesCircle Regular)
{-| <i class="fab far fas fal fa-times-hexagon"></i> -}
timesHexagon : Html msg
timesHexagon = i [] (TimesHexagon Regular)
{-| <i class="fab far fas fal fa-times-octagon"></i> -}
timesOctagon : Html msg
timesOctagon = i [] (TimesOctagon Regular)
{-| <i class="fab far fas fal fa-times-square"></i> -}
timesSquare : Html msg
timesSquare = i [] (TimesSquare Regular)
{-| <i class="fab far fas fal fa-tint"></i> -}
tint : Html msg
tint = i [] (Tint Regular)
{-| <i class="fab far fas fal fa-toggle-off"></i> -}
toggleOff : Html msg
toggleOff = i [] (ToggleOff Regular)
{-| <i class="fab far fas fal fa-toggle-on"></i> -}
toggleOn : Html msg
toggleOn = i [] (ToggleOn Regular)
{-| <i class="fab far fas fal fa-trademark"></i> -}
trademark : Html msg
trademark = i [] (Trademark Regular)
{-| <i class="fab far fas fal fa-train"></i> -}
train : Html msg
train = i [] (Train Regular)
{-| <i class="fab far fas fal fa-transgender"></i> -}
transgender : Html msg
transgender = i [] (Transgender Regular)
{-| <i class="fab far fas fal fa-transgender-alt"></i> -}
transgenderAlt : Html msg
transgenderAlt = i [] (TransgenderAlt Regular)
{-| <i class="fab far fas fal fa-trash"></i> -}
trash : Html msg
trash = i [] (Trash Regular)
{-| <i class="fab far fas fal fa-trash-alt"></i> -}
trashAlt : Html msg
trashAlt = i [] (TrashAlt Regular)
{-| <i class="fab far fas fal fa-tree"></i> -}
tree : Html msg
tree = i [] (Tree Regular)
{-| <i class="fab far fas fal fa-tree-alt"></i> -}
treeAlt : Html msg
treeAlt = i [] (TreeAlt Regular)
{-| <i class="fab far fas fal fa-trello"></i> -}
trello : Html msg
trello = i [] (Trello)
{-| <i class="fab far fas fal fa-triangle"></i> -}
triangle : Html msg
triangle = i [] (Triangle Regular)
{-| <i class="fab far fas fal fa-tripadvisor"></i> -}
tripadvisor : Html msg
tripadvisor = i [] (Tripadvisor)
{-| <i class="fab far fas fal fa-trophy"></i> -}
trophy : Html msg
trophy = i [] (Trophy Regular)
{-| <i class="fab far fas fal fa-trophy-alt"></i> -}
trophyAlt : Html msg
trophyAlt = i [] (TrophyAlt Regular)
{-| <i class="fab far fas fal fa-truck"></i> -}
truck : Html msg
truck = i [] (Truck Regular)
{-| <i class="fab far fas fal fa-tty"></i> -}
tty : Html msg
tty = i [] (Tty Regular)
{-| <i class="fab far fas fal fa-tumblr"></i> -}
tumblr : Html msg
tumblr = i [] (Tumblr)
{-| <i class="fab far fas fal fa-tumblr-square"></i> -}
tumblrSquare : Html msg
tumblrSquare = i [] (TumblrSquare)
{-| <i class="fab far fas fal fa-tv"></i> -}
tv : Html msg
tv = i [] (Tv Regular)
{-| <i class="fab far fas fal fa-tv-retro"></i> -}
tvRetro : Html msg
tvRetro = i [] (TvRetro Regular)
{-| <i class="fab far fas fal fa-twitch"></i> -}
twitch : Html msg
twitch = i [] (Twitch)
{-| <i class="fab far fas fal fa-twitter"></i> -}
twitter : Html msg
twitter = i [] (Twitter)
{-| <i class="fab far fas fal fa-twitter-square"></i> -}
twitterSquare : Html msg
twitterSquare = i [] (TwitterSquare)
{-| <i class="fab far fas fal fa-typo3"></i> -}
typo3 : Html msg
typo3 = i [] (Typo3)
{-| <i class="fab far fas fal fa-uber"></i> -}
uber : Html msg
uber = i [] (Uber)
{-| <i class="fab far fas fal fa-uikit"></i> -}
uikit : Html msg
uikit = i [] (Uikit)
{-| <i class="fab far fas fal fa-umbrella"></i> -}
umbrella : Html msg
umbrella = i [] (Umbrella Regular)
{-| <i class="fab far fas fal fa-underline"></i> -}
underline : Html msg
underline = i [] (Underline Regular)
{-| <i class="fab far fas fal fa-undo"></i> -}
undo : Html msg
undo = i [] (Undo Regular)
{-| <i class="fab far fas fal fa-undo-alt"></i> -}
undoAlt : Html msg
undoAlt = i [] (UndoAlt Regular)
{-| <i class="fab far fas fal fa-uniregistry"></i> -}
uniregistry : Html msg
uniregistry = i [] (Uniregistry)
{-| <i class="fab far fas fal fa-universal-access"></i> -}
universalAccess : Html msg
universalAccess = i [] (UniversalAccess Regular)
{-| <i class="fab far fas fal fa-university"></i> -}
university : Html msg
university = i [] (University Regular)
{-| <i class="fab far fas fal fa-unlink"></i> -}
unlink : Html msg
unlink = i [] (Unlink Regular)
{-| <i class="fab far fas fal fa-unlock"></i> -}
unlock : Html msg
unlock = i [] (Unlock Regular)
{-| <i class="fab far fas fal fa-unlock-alt"></i> -}
unlockAlt : Html msg
unlockAlt = i [] (UnlockAlt Regular)
{-| <i class="fab far fas fal fa-untappd"></i> -}
untappd : Html msg
untappd = i [] (Untappd)
{-| <i class="fab far fas fal fa-upload"></i> -}
upload : Html msg
upload = i [] (Upload Regular)
{-| <i class="fab far fas fal fa-usb"></i> -}
usb : Html msg
usb = i [] (Usb)
{-| <i class="fab far fas fal fa-usd-circle"></i> -}
usdCircle : Html msg
usdCircle = i [] (UsdCircle Regular)
{-| <i class="fab far fas fal fa-usd-square"></i> -}
usdSquare : Html msg
usdSquare = i [] (UsdSquare Regular)
{-| <i class="fab far fas fal fa-user"></i> -}
user : Html msg
user = i [] (User Regular)
{-| <i class="fab far fas fal fa-user-alt"></i> -}
userAlt : Html msg
userAlt = i [] (UserAlt Regular)
{-| <i class="fab far fas fal fa-user-circle"></i> -}
userCircle : Html msg
userCircle = i [] (UserCircle Regular)
{-| <i class="fab far fas fal fa-user-md"></i> -}
userMd : Html msg
userMd = i [] (UserMd Regular)
{-| <i class="fab far fas fal fa-user-plus"></i> -}
userPlus : Html msg
userPlus = i [] (UserPlus Regular)
{-| <i class="fab far fas fal fa-user-secret"></i> -}
userSecret : Html msg
userSecret = i [] (UserSecret Regular)
{-| <i class="fab far fas fal fa-user-times"></i> -}
userTimes : Html msg
userTimes = i [] (UserTimes Regular)
{-| <i class="fab far fas fal fa-users"></i> -}
users : Html msg
users = i [] (Users Regular)
{-| <i class="fab far fas fal fa-ussunnah"></i> -}
ussunnah : Html msg
ussunnah = i [] (Ussunnah)
{-| <i class="fab far fas fal fa-utensil-fork"></i> -}
utensilFork : Html msg
utensilFork = i [] (UtensilFork Regular)
{-| <i class="fab far fas fal fa-utensil-knife"></i> -}
utensilKnife : Html msg
utensilKnife = i [] (UtensilKnife Regular)
{-| <i class="fab far fas fal fa-utensil-spoon"></i> -}
utensilSpoon : Html msg
utensilSpoon = i [] (UtensilSpoon Regular)
{-| <i class="fab far fas fal fa-utensils"></i> -}
utensils : Html msg
utensils = i [] (Utensils Regular)
{-| <i class="fab far fas fal fa-utensils-alt"></i> -}
utensilsAlt : Html msg
utensilsAlt = i [] (UtensilsAlt Regular)
{-| <i class="fab far fas fal fa-vaadin"></i> -}
vaadin : Html msg
vaadin = i [] (Vaadin)
{-| <i class="fab far fas fal fa-venus"></i> -}
venus : Html msg
venus = i [] (Venus Regular)
{-| <i class="fab far fas fal fa-venus-double"></i> -}
venusDouble : Html msg
venusDouble = i [] (VenusDouble Regular)
{-| <i class="fab far fas fal fa-venus-mars"></i> -}
venusMars : Html msg
venusMars = i [] (VenusMars Regular)
{-| <i class="fab far fas fal fa-viacoin"></i> -}
viacoin : Html msg
viacoin = i [] (Viacoin)
{-| <i class="fab far fas fal fa-viadeo"></i> -}
viadeo : Html msg
viadeo = i [] (Viadeo)
{-| <i class="fab far fas fal fa-viadeo-square"></i> -}
viadeoSquare : Html msg
viadeoSquare = i [] (ViadeoSquare)
{-| <i class="fab far fas fal fa-viber"></i> -}
viber : Html msg
viber = i [] (Viber)
{-| <i class="fab far fas fal fa-video"></i> -}
video : Html msg
video = i [] (Video Regular)
{-| <i class="fab far fas fal fa-vimeo"></i> -}
vimeo : Html msg
vimeo = i [] (Vimeo)
{-| <i class="fab far fas fal fa-vimeo-square"></i> -}
vimeoSquare : Html msg
vimeoSquare = i [] (VimeoSquare)
{-| <i class="fab far fas fal fa-vimeo-v"></i> -}
vimeoV : Html msg
vimeoV = i [] (VimeoV)
{-| <i class="fab far fas fal fa-vine"></i> -}
vine : Html msg
vine = i [] (Vine)
{-| <i class="fab far fas fal fa-vk"></i> -}
vk : Html msg
vk = i [] (Vk)
{-| <i class="fab far fas fal fa-vnv"></i> -}
vnv : Html msg
vnv = i [] (Vnv)
{-| <i class="fab far fas fal fa-volleyball-ball"></i> -}
volleyballBall : Html msg
volleyballBall = i [] (VolleyballBall Regular)
{-| <i class="fab far fas fal fa-volume-down"></i> -}
volumeDown : Html msg
volumeDown = i [] (VolumeDown Regular)
{-| <i class="fab far fas fal fa-volume-mute"></i> -}
volumeMute : Html msg
volumeMute = i [] (VolumeMute Regular)
{-| <i class="fab far fas fal fa-volume-off"></i> -}
volumeOff : Html msg
volumeOff = i [] (VolumeOff Regular)
{-| <i class="fab far fas fal fa-volume-up"></i> -}
volumeUp : Html msg
volumeUp = i [] (VolumeUp Regular)
{-| <i class="fab far fas fal fa-vuejs"></i> -}
vuejs : Html msg
vuejs = i [] (Vuejs)
{-| <i class="fab far fas fal fa-watch"></i> -}
watch : Html msg
watch = i [] (Watch Regular)
{-| <i class="fab far fas fal fa-weibo"></i> -}
weibo : Html msg
weibo = i [] (Weibo)
{-| <i class="fab far fas fal fa-weixin"></i> -}
weixin : Html msg
weixin = i [] (Weixin)
{-| <i class="fab far fas fal fa-whatsapp"></i> -}
whatsapp : Html msg
whatsapp = i [] (Whatsapp)
{-| <i class="fab far fas fal fa-whatsapp-square"></i> -}
whatsappSquare : Html msg
whatsappSquare = i [] (WhatsappSquare)
{-| <i class="fab far fas fal fa-wheelchair"></i> -}
wheelchair : Html msg
wheelchair = i [] (Wheelchair Regular)
{-| <i class="fab far fas fal fa-whistle"></i> -}
whistle : Html msg
whistle = i [] (Whistle Regular)
{-| <i class="fab far fas fal fa-whmcs"></i> -}
whmcs : Html msg
whmcs = i [] (Whmcs)
{-| <i class="fab far fas fal fa-wifi"></i> -}
wifi : Html msg
wifi = i [] (Wifi Regular)
{-| <i class="fab far fas fal fa-wikipedia-w"></i> -}
wikipediaW : Html msg
wikipediaW = i [] (WikipediaW)
{-| <i class="fab far fas fal fa-window"></i> -}
window : Html msg
window = i [] (Window Regular)
{-| <i class="fab far fas fal fa-window-alt"></i> -}
windowAlt : Html msg
windowAlt = i [] (WindowAlt Regular)
{-| <i class="fab far fas fal fa-window-close"></i> -}
windowClose : Html msg
windowClose = i [] (WindowClose Regular)
{-| <i class="fab far fas fal fa-window-maximize"></i> -}
windowMaximize : Html msg
windowMaximize = i [] (WindowMaximize Regular)
{-| <i class="fab far fas fal fa-window-minimize"></i> -}
windowMinimize : Html msg
windowMinimize = i [] (WindowMinimize Regular)
{-| <i class="fab far fas fal fa-window-restore"></i> -}
windowRestore : Html msg
windowRestore = i [] (WindowRestore Regular)
{-| <i class="fab far fas fal fa-windows"></i> -}
windows : Html msg
windows = i [] (Windows)
{-| <i class="fab far fas fal fa-won-sign"></i> -}
wonSign : Html msg
wonSign = i [] (WonSign Regular)
{-| <i class="fab far fas fal fa-wordpress"></i> -}
wordpress : Html msg
wordpress = i [] (Wordpress)
{-| <i class="fab far fas fal fa-wordpress-simple"></i> -}
wordpressSimple : Html msg
wordpressSimple = i [] (WordpressSimple)
{-| <i class="fab far fas fal fa-wpbeginner"></i> -}
wpbeginner : Html msg
wpbeginner = i [] (Wpbeginner)
{-| <i class="fab far fas fal fa-wpexplorer"></i> -}
wpexplorer : Html msg
wpexplorer = i [] (Wpexplorer)
{-| <i class="fab far fas fal fa-wpforms"></i> -}
wpforms : Html msg
wpforms = i [] (Wpforms)
{-| <i class="fab far fas fal fa-wrench"></i> -}
wrench : Html msg
wrench = i [] (Wrench Regular)
{-| <i class="fab far fas fal fa-xbox"></i> -}
xbox : Html msg
xbox = i [] (Xbox)
{-| <i class="fab far fas fal fa-xing"></i> -}
xing : Html msg
xing = i [] (Xing)
{-| <i class="fab far fas fal fa-xing-square"></i> -}
xingSquare : Html msg
xingSquare = i [] (XingSquare)
{-| <i class="fab far fas fal fa-y-combinator"></i> -}
yCombinator : Html msg
yCombinator = i [] (YCombinator)
{-| <i class="fab far fas fal fa-yahoo"></i> -}
yahoo : Html msg
yahoo = i [] (Yahoo)
{-| <i class="fab far fas fal fa-yandex"></i> -}
yandex : Html msg
yandex = i [] (Yandex)
{-| <i class="fab far fas fal fa-yandex-international"></i> -}
yandexInternational : Html msg
yandexInternational = i [] (YandexInternational)
{-| <i class="fab far fas fal fa-yelp"></i> -}
yelp : Html msg
yelp = i [] (Yelp)
{-| <i class="fab far fas fal fa-yen-sign"></i> -}
yenSign : Html msg
yenSign = i [] (YenSign Regular)
{-| <i class="fab far fas fal fa-yoast"></i> -}
yoast : Html msg
yoast = i [] (Yoast)
{-| <i class="fab far fas fal fa-youtube"></i> -}
youtube : Html msg
youtube = i [] (Youtube)
{-| <i class="fab far fas fal fa-youtube-square"></i> -}
youtubeSquare : Html msg
youtubeSquare = i [] (YoutubeSquare)
