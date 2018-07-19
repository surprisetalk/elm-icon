
module Icon.FontAwesome exposing (..)

-- DOCS ------------------------------------------------------------------------

-- TODO: figure out an elegant way to implement Html.Attributes
-- TODO:  maybe just the important ones? like fontWeight and color
-- TODO:  this is esp. important for layers

-- TODO: consider splitting this into four different repositories
-- TODO:   or keep this one, but also make elm-fontawesome, elm-ionicons, etc

-- TODO: support for 4.7
-- TODO: Icon.FontAwesome.Old

{-| <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"/>
Learn more at [FontAwesome](https://fontawesome.com/).

    import Icon.FontAwesome as Icon 
      exposing ( stylesheet
               , Icon(Paw)
               , Weight(Solid)
               , paw
               )

    pawIcon1 : Html msg
    pawIcon1 = Html.i [] <| Paw Solid

    pawIcon2 : Html msg
    pawIcon2 = paw

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , pawIcon1
        , pawIcon2
        ]

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

## Attribute Helpers
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
@docs toString

## HTML Helpers
@docs accessibleIcon, accusoft, addressBook, addressCard, adjust, adn, adversal, affiliatetheme, alarmClock, algolia, alignCenter, alignJustify, alignLeft, alignRight, allergies, amazon, amazonPay, ambulance, americanSignLanguageInterpreting, amilia, anchor, android, angellist, angleDoubleDown, angleDoubleLeft, angleDoubleRight, angleDoubleUp, angleDown, angleLeft, angleRight, angleUp, angry, angrycreative, angular, appStore, appStoreIos, apper, apple, applePay, archive, archway, arrowAltCircleDown, arrowAltCircleLeft, arrowAltCircleRight, arrowAltCircleUp, arrowAltDown, arrowAltFromBottom, arrowAltFromLeft, arrowAltFromRight, arrowAltFromTop, arrowAltLeft, arrowAltRight, arrowAltSquareDown, arrowAltSquareLeft, arrowAltSquareRight, arrowAltSquareUp, arrowAltToBottom, arrowAltToLeft, arrowAltToRight, arrowAltToTop, arrowAltUp, arrowCircleDown, arrowCircleLeft, arrowCircleRight, arrowCircleUp, arrowDown, arrowFromBottom, arrowFromLeft, arrowFromRight, arrowFromTop, arrowLeft, arrowRight, arrowSquareDown, arrowSquareLeft, arrowSquareRight, arrowSquareUp, arrowToBottom, arrowToLeft, arrowToRight, arrowToTop, arrowUp, arrows, arrowsAlt, arrowsAltH, arrowsAltV, arrowsH, arrowsV, assistiveListeningSystems, asterisk, asymmetrik, at, atlas, audible, audioDescription, autoprefixer, avianex, aviato, award, aws, backspace, backward, badge, badgeCheck, balanceScale, balanceScaleLeft, balanceScaleRight, ban, bandAid, bandcamp, barcode, barcodeAlt, barcodeRead, barcodeScan, bars, baseball, baseballBall, basketballBall, basketballHoop, bath, batteryBolt, batteryEmpty, batteryFull, batteryHalf, batteryQuarter, batterySlash, batteryThreeQuarters, bed, beer, behance, behanceSquare, bell, bellSlash, bezierCurve, bicycle, bimobject, binoculars, birthdayCake, bitbucket, bitcoin, bity, blackTie, blackberry, blanket, blender, blind, blogger, bloggerB, bluetooth, bluetoothB, bold, bolt, bomb, bong, book, bookHeart, bookOpen, bookmark, bowlingBall, bowlingPins, box, boxAlt, boxCheck, boxFragile, boxFull, boxHeart, boxOpen, boxUp, boxUsd, boxes, boxesAlt, boxingGlove, braille, briefcase, briefcaseMedical, broadcastTower, broom, browser, brush, btc, bug, building, bullhorn, bullseye, burn, buromobelexperte, bus, busAlt, buysellads, calculator, calendar, calendarAlt, calendarCheck, calendarEdit, calendarExclamation, calendarMinus, calendarPlus, calendarTimes, camera, cameraAlt, cameraRetro, cannabis, capsules, car, caretCircleDown, caretCircleLeft, caretCircleRight, caretCircleUp, caretDown, caretLeft, caretRight, caretSquareDown, caretSquareLeft, caretSquareRight, caretSquareUp, caretUp, cartArrowDown, cartPlus, ccAmazonPay, ccAmex, ccApplePay, ccDinersClub, ccDiscover, ccJcb, ccMastercard, ccPaypal, ccStripe, ccVisa, centercode, certificate, chalkboard, chalkboardTeacher, chartArea, chartBar, chartLine, chartPie, check, checkCircle, checkDouble, checkSquare, chess, chessBishop, chessBishopAlt, chessBoard, chessClock, chessClockAlt, chessKing, chessKingAlt, chessKnight, chessKnightAlt, chessPawn, chessPawnAlt, chessQueen, chessQueenAlt, chessRook, chessRookAlt, chevronCircleDown, chevronCircleLeft, chevronCircleRight, chevronCircleUp, chevronDoubleDown, chevronDoubleLeft, chevronDoubleRight, chevronDoubleUp, chevronDown, chevronLeft, chevronRight, chevronSquareDown, chevronSquareLeft, chevronSquareRight, chevronSquareUp, chevronUp, child, chrome, church, circle, circleNotch, clipboard, clipboardCheck, clipboardList, clock, clone, closedCaptioning, cloud, cloudDownload, cloudDownloadAlt, cloudUpload, cloudUploadAlt, cloudscale, cloudsmith, cloudversify, club, cocktail, code, codeBranch, codeCommit, codeMerge, codepen, codiepie, coffee, cog, cogs, coins, columns, comment, commentAlt, commentAltCheck, commentAltDots, commentAltEdit, commentAltExclamation, commentAltLines, commentAltMinus, commentAltPlus, commentAltSlash, commentAltSmile, commentAltTimes, commentCheck, commentDots, commentEdit, commentExclamation, commentLines, commentMinus, commentPlus, commentSlash, commentSmile, commentTimes, comments, commentsAlt, compactDisc, compass, compress, compressAlt, compressWide, conciergeBell, connectdevelop, containerStorage, contao, conveyorBelt, conveyorBeltAlt, cookie, cookieBite, copy, copyright, couch, cpanel, creativeCommons, creativeCommonsBy, creativeCommonsNc, creativeCommonsNcEu, creativeCommonsNcJp, creativeCommonsNd, creativeCommonsPd, creativeCommonsPdAlt, creativeCommonsRemix, creativeCommonsSa, creativeCommonsSampling, creativeCommonsSamplingPlus, creativeCommonsShare, creditCard, creditCardBlank, creditCardFront, cricket, crop, cropAlt, crosshairs, crow, crown, css3, css3Alt, cube, cubes, curling, cut, cuttlefish, dAndD, dashcube, database, deaf, delicious, deploydog, deskpro, desktop, desktopAlt, deviantart, diagnoses, diamond, dice, diceFive, diceFour, diceOne, diceSix, diceThree, diceTwo, digg, digitalOcean, digitalTachograph, discord, discourse, divide, dizzy, dna, dochub, docker, dollarSign, dolly, dollyEmpty, dollyFlatbed, dollyFlatbedAlt, dollyFlatbedEmpty, donate, doorClosed, doorOpen, dotCircle, dove, download, draft2Digital, draftingCompass, dribbble, dribbbleSquare, dropbox, drum, drumSteelpan, drupal, dumbbell, dyalog, earlybirds, ebay, edge, edit, eject, elementor, ellipsisH, ellipsisHAlt, ellipsisV, ellipsisVAlt, ember, empire, envelope, envelopeOpen, envelopeSquare, envira, equals, eraser, erlang, ethereum, etsy, euroSign, exchange, exchangeAlt, exclamation, exclamationCircle, exclamationSquare, exclamationTriangle, expand, expandAlt, expandArrows, expandArrowsAlt, expandWide, expeditedssl, externalLink, externalLinkAlt, externalLinkSquare, externalLinkSquareAlt, eye, eyeDropper, eyeSlash, facebook, facebookF, facebookMessenger, facebookSquare, fastBackward, fastForward, fax, feather, featherAlt, female, fieldHockey, fighterJet, file, fileAlt, fileArchive, fileAudio, fileCheck, fileCode, fileContract, fileDownload, fileEdit, fileExcel, fileExclamation, fileExport, fileImage, fileImport, fileInvoice, fileInvoiceDollar, fileMedical, fileMedicalAlt, fileMinus, filePdf, filePlus, filePowerpoint, filePrescription, fileSignature, fileTimes, fileUpload, fileVideo, fileWord, fill, fillDrip, film, filmAlt, filter, fingerprint, fire, fireExtinguisher, firefox, firstAid, firstOrder, firstOrderAlt, firstdraft, fish, flag, flagCheckered, flask, flickr, flipboard, flushed, fly, folder, folderOpen, font, fontAwesome, fontAwesomeAlt, fontAwesomeFlag, fontAwesomeLogoFull, fonticons, fonticonsFi, footballBall, footballHelmet, forklift, fortAwesome, fortAwesomeAlt, forumbee, forward, foursquare, fragile, freeCodeCamp, freebsd, frog, frown, frownOpen, fulcrum, futbol, galacticRepublic, galacticSenate, gamepad, gasPump, gavel, gem, genderless, getPocket, gg, ggCircle, gift, git, gitSquare, github, githubAlt, githubSquare, gitkraken, gitlab, gitter, glassMartini, glassMartiniAlt, glasses, glide, glideG, globe, globeAfrica, globeAmericas, globeAsia, gofore, golfBall, golfClub, goodreads, goodreadsG, google, googleDrive, googlePlay, googlePlus, googlePlusG, googlePlusSquare, googleWallet, graduationCap, gratipay, grav, greaterThan, greaterThanEqual, grimace, grin, grinAlt, grinBeam, grinBeamSweat, grinHearts, grinSquint, grinSquintTears, grinStars, grinTears, grinTongue, grinTongueSquint, grinTongueWink, grinWink, gripHorizontal, gripVertical, gripfire, grunt, gulp, h1, h2, h3, hSquare, hackerNews, hackerNewsSquare, handHeart, handHolding, handHoldingBox, handHoldingHeart, handHoldingSeedling, handHoldingUsd, handHoldingWater, handLizard, handPaper, handPeace, handPointDown, handPointLeft, handPointRight, handPointUp, handPointer, handReceiving, handRock, handScissors, handSpock, hands, handsHeart, handsHelping, handsUsd, handshake, handshakeAlt, hashtag, hdd, heading, headphones, headphonesAlt, headset, heart, heartCircle, heartSquare, heartbeat, helicopter, hexagon, highlighter, hips, hireAHelper, history, hockeyPuck, hockeySticks, home, homeHeart, hooli, hornbill, hospital, hospitalAlt, hospitalSymbol, hotTub, hotel, hotjar, hourglass, hourglassEnd, hourglassHalf, hourglassStart, houzz, html5, hubspot, iCursor, idBadge, idCard, idCardAlt, image, images, imdb, inbox, inboxIn, inboxOut, indent, industry, industryAlt, infinity, info, infoCircle, infoSquare, instagram, internetExplorer, inventory, ioxhost, italic, itunes, itunesNote, jackOLantern, java, jediOrder, jenkins, joget, joint, joomla, js, jsSquare, jsfiddle, key, keybase, keyboard, keycdn, kickstarter, kickstarterK, kiss, kissBeam, kissWinkHeart, kiwiBird, korvue, lamp, language, laptop, laravel, lastfm, lastfmSquare, laugh, laughBeam, laughSquint, laughWink, leaf, leafHeart, leanpub, lemon, less, lessThan, lessThanEqual, levelDown, levelDownAlt, levelUp, levelUpAlt, lifeRing, lightbulb, line, link, linkedin, linkedinIn, linode, linux, liraSign, list, listAlt, listOl, listUl, locationArrow, lock, lockAlt, lockOpen, lockOpenAlt, longArrowAltDown, longArrowAltLeft, longArrowAltRight, longArrowAltUp, longArrowDown, longArrowLeft, longArrowRight, longArrowUp, loveseat, lowVision, luchador, luggageCart, lyft, magento, magic, magnet, mailchimp, male, mandalorian, map, mapMarked, mapMarkedAlt, mapMarker, mapMarkerAlt, mapPin, mapSigns, marker, mars, marsDouble, marsStroke, marsStrokeH, marsStrokeV, mastodon, maxcdn, medal, medapps, medium, mediumM, medkit, medrt, meetup, megaport, meh, mehBlank, mehRollingEyes, memory, mercury, microchip, microphone, microphoneAlt, microphoneAltSlash, microphoneSlash, microsoft, minus, minusCircle, minusHexagon, minusOctagon, minusSquare, mix, mixcloud, mizuni, mobile, mobileAlt, mobileAndroid, mobileAndroidAlt, modx, monero, moneyBill, moneyBillAlt, moneyBillWave, moneyBillWaveAlt, moneyCheck, moneyCheckAlt, monument, moon, mortarPestle, motorcycle, mousePointer, music, napster, neuter, newspaper, nimblr, nintendoSwitch, node, nodeJs, notEqual, notesMedical, npm, ns8, nutritionix, objectGroup, objectUngroup, octagon, odnoklassniki, odnoklassnikiSquare, oldRepublic, opencart, openid, opera, optinMonster, osi, outdent, page4, pagelines, paintBrush, paintBrushAlt, paintRoller, palette, palfed, pallet, palletAlt, paperPlane, paperclip, parachuteBox, paragraph, parking, passport, paste, patreon, pause, pauseCircle, paw, paypal, pen, penAlt, penFancy, penNib, penSquare, pencil, pencilAlt, pencilRuler, pennant, peopleCarry, percent, percentage, periscope, personCarry, personDolly, personDollyEmpty, phabricator, phoenixFramework, phoenixSquadron, phone, phonePlus, phoneSlash, phoneSquare, phoneVolume, php, piedPiper, piedPiperAlt, piedPiperHat, piedPiperPp, piggyBank, pills, pinterest, pinterestP, pinterestSquare, plane, planeAlt, planeArrival, planeDeparture, play, playCircle, playstation, plug, plus, plusCircle, plusHexagon, plusOctagon, plusSquare, podcast, poo, portrait, poundSign, powerOff, prescription, prescriptionBottle, prescriptionBottleAlt, print, procedures, productHunt, projectDiagram, pushed, puzzlePiece, python, qq, qrcode, question, questionCircle, questionSquare, quidditch, quinscape, quora, quoteLeft, quoteRight, rProject, racquet, rampLoading, random, ravelry, react, readme, rebel, receipt, rectangleLandscape, rectanglePortrait, rectangleWide, recycle, redRiver, reddit, redditAlien, redditSquare, redo, redoAlt, registered, rendact, renren, repeat, repeat1, repeat1Alt, repeatAlt, reply, replyAll, replyd, researchgate, resolving, retweet, retweetAlt, rev, ribbon, road, robot, rocket, rocketchat, rockrms, route, rss, rssSquare, rubleSign, ruler, rulerCombined, rulerHorizontal, rulerVertical, rupeeSign, sadCry, sadTear, safari, sass, save, scanner, scannerKeyboard, scannerTouchscreen, schlix, school, screwdriver, scribd, scrubber, search, searchMinus, searchPlus, searchengin, seedling, sellcast, sellsy, server, servicestack, share, shareAll, shareAlt, shareAltSquare, shareSquare, shekelSign, shield, shieldAlt, shieldCheck, ship, shippingFast, shippingTimed, shirtsinbulk, shoePrints, shoppingBag, shoppingBasket, shoppingCart, shopware, shower, shuttleVan, shuttlecock, sign, signIn, signInAlt, signLanguage, signOut, signOutAlt, signal, signature, simplybuilt, sistrix, sitemap, sith, skull, skyatlas, skype, slack, slackHash, slidersH, slidersHSquare, slidersV, slidersVSquare, slideshare, smile, smileBeam, smilePlus, smileWink, smoking, smokingBan, snapchat, snapchatGhost, snapchatSquare, snowflake, solarPanel, sort, sortAlphaDown, sortAlphaUp, sortAmountDown, sortAmountUp, sortDown, sortNumericDown, sortNumericUp, sortUp, soundcloud, spa, spaceShuttle, spade, speakap, spinner, spinnerThird, splotch, spotify, sprayCan, square, squareFull, squarespace, stackExchange, stackOverflow, stamp, star, starExclamation, starHalf, starHalfAlt, staylinked, steam, steamSquare, steamSymbol, stepBackward, stepForward, stethoscope, stickerMule, stickyNote, stop, stopCircle, stopwatch, store, storeAlt, strava, stream, streetView, strikethrough, stripe, stripeS, stroopwafel, studiovinari, stumbleupon, stumbleuponCircle, subscript, subway, suitcase, suitcaseRolling, sun, superpowers, superscript, supple, surprise, swatchbook, swimmer, swimmingPool, sync, syncAlt, syringe, table, tableTennis, tablet, tabletAlt, tabletAndroid, tabletAndroidAlt, tabletRugged, tablets, tachometer, tachometerAlt, tag, tags, tape, tasks, taxi, teamspeak, telegram, telegramPlane, tencentWeibo, tennisBall, terminal, textHeight, textWidth, th, thLarge, thList, themeco, themeisle, thermometer, thermometerEmpty, thermometerFull, thermometerHalf, thermometerQuarter, thermometerThreeQuarters, thumbsDown, thumbsUp, thumbtack, ticket, ticketAlt, times, timesCircle, timesHexagon, timesOctagon, timesSquare, tint, tintSlash, tired, toggleOff, toggleOn, toolbox, tooth, tradeFederation, trademark, train, transgender, transgenderAlt, trash, trashAlt, tree, treeAlt, trello, triangle, tripadvisor, trophy, trophyAlt, truck, truckContainer, truckCouch, truckLoading, truckMoving, truckRamp, tshirt, tty, tumblr, tumblrSquare, tv, tvRetro, twitch, twitter, twitterSquare, typo3, uber, uikit, umbrella, umbrellaBeach, underline, undo, undoAlt, uniregistry, universalAccess, university, unlink, unlock, unlockAlt, untappd, upload, usb, usdCircle, usdSquare, user, userAlt, userAltSlash, userAstronaut, userCheck, userCircle, userClock, userCog, userEdit, userFriends, userGraduate, userLock, userMd, userMinus, userNinja, userPlus, userSecret, userShield, userSlash, userTag, userTie, userTimes, users, usersCog, ussunnah, utensilFork, utensilKnife, utensilSpoon, utensils, utensilsAlt, vaadin, vectorSquare, venus, venusDouble, venusMars, viacoin, viadeo, viadeoSquare, vial, vials, viber, video, videoPlus, videoSlash, vimeo, vimeoSquare, vimeoV, vine, vk, vnv, volleyballBall, volumeDown, volumeMute, volumeOff, volumeUp, vuejs, walking, wallet, warehouse, warehouseAlt, watch, weebly, weibo, weight, weightHanging, weixin, whatsapp, whatsappSquare, wheelchair, whistle, whmcs, wifi, wikipediaW, window, windowAlt, windowClose, windowMaximize, windowMinimize, windowRestore, windows, wineGlass, wineGlassAlt, wix, wolfPackBattalion, wonSign, wordpress, wordpressSimple, wpbeginner, wpexplorer, wpforms, wrench, xRay, xbox, xing, xingSquare, yCombinator, yahoo, yandex, yandexInternational, yelp, yenSign, yoast, youtube, youtubeSquare

## Union Type
@docs Weight
@docs Icon

-}

-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char


-- STYLESHEET ------------------------------------------------------------------

{-| Include FontAwesome 5.0.6 in your Elm project.

    import Icon.FontAwesome as Icon 
      exposing ( stylesheet
               , Icon(Meh)
               , Weight(Solid)
               )

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , Icon.i [] <| Meh Solid
        ]

-}
stylesheet : Html msg
stylesheet
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "https://use.fontawesome.com/releases/v5.1.1/css/all.css"
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

{-|
    import Icon.FontAwesome as Icon 
      exposing ( i
               , style
               , Size(..)
               , ShiftX(..)
               , Animation(..)
               , Icon(..)
               , Weight(..)
               )

    coolSpinner : Html msg
    coolSpinner
      = i [ style 
            { size       = Just X10
            , fixedWidth = True
            , bordered   = False
            , inverted   = False
            , pull       = Just (Right ())
            , animation  = Pulse
            }
          ]
        <| Spinner Solid
-}
style : Style -> Attribute msg
style {size,fixedWidth,bordered,inverted,pull,animation}
  = Attr.classList
    <| List.map (flip (,) True)
       [ case size of
           Just ExtraSmall -> "fa-xs"
           Just Small      -> "fa-sm"
           Just Large      -> "fa-lg"
           Just X2         -> "fa-2x"
           Just X3         -> "fa-3x"
           Just X4         -> "fa-4x"
           Just X5         -> "fa-5x"
           Just X6         -> "fa-6x"
           Just X7         -> "fa-7x"
           Just X8         -> "fa-8x"
           Just X9         -> "fa-9x"
           Just X10        -> "fa-10x"
           Nothing         -> ""
       , case fixedWidth of
           True  -> "fa-fw"
           False -> ""
       , case bordered of
           True  -> "fa-border"
           False -> ""
       , case inverted of
           True  -> "fa-invert"
           False -> ""
       , case pull of
           Just (Left  ()) -> "fa-pull-left"
           Just (Right ()) -> "fa-pull-right"
           Nothing         -> ""
       , case animation of
           Just Pulse -> "fa-pulse"
           Just Spin  -> "fa-spin"
           Nothing    -> ""
       ]

{-| -}
type alias Style
  = { size       : Maybe Size
    , fixedWidth : Bool
    , bordered   : Bool
    , inverted   : Bool
    , pull       : Maybe (ShiftX ())
    , animation  : Maybe Animation
    }

{-| 
    import Icon.FontAwesome as Icon 
      exposing ( i
               , Size(..)
               , Icon(..)
               , Weight(..)
               )

    myBigIcon : Html msg
    myBigIcon = i [ size Large ] <| Eye Solid
-}
size : Size -> Attribute msg
size size
  = class
    <| case size of
         ExtraSmall -> "fa-xs"
         Small      -> "fa-sm"
         Large      -> "fa-lg"
         X2         -> "fa-2x"
         X3         -> "fa-3x"
         X4         -> "fa-4x"
         X5         -> "fa-5x"
         X6         -> "fa-6x"
         X7         -> "fa-7x"
         X8         -> "fa-8x"
         X9         -> "fa-9x"
         X10        -> "fa-10x"

{-| 
    fixedWidthHome = i [ fixedWidth ] <| Home Regular
-}
fixedWidth : Attribute msg
fixedWidth = class "fa-fw"

{-| 
    myBorderCoffee = i [ bordered ] <| Coffee Light
-}
bordered : Attribute msg
bordered = class "fa-border"

{-|
    whiteFile = i [ inverted ] <| File Solid
-}
inverted : Attribute msg
inverted = class "fa-inverse"

{-|
    leftQuote = i [ pullLeft ] <| QuoteLeft Solid
-}
pullLeft : Attribute msg
pullLeft = class "fa-pull-left"

{-|
    arrowRight = i [ pullRight ] <| ArrowRight Solid
-}
pullRight : Attribute msg
pullRight = class "fa-pull-right"

{-|
    tickTock = i [ spin ] <| Cog Solid
-}
spin : Attribute msg
spin = class "fa-spin"

{-|
    loading = i [ pulse ] <| Spinner Solid
-}
pulse : Attribute msg
pulse = class "fa-pulse"

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

{-| 
    import Icon.FontAwesome as Icon 
      exposing ( i
               , transform
               , Scale(..)
               , ShiftX(..)
               , ShiftY(..)
               , Icon(Magic)
               , Weight(Solid)
               )

    wackyWand : Html msg
    wackyWand
      = i [ transform
            { scale  = Just <| Grow 17.1
            , shiftX = Just <| Left 25.5
            , shiftY = Just <| Down 12.9
            , rotate = Just <|      90.0
            }
          ]
        <| Magic Solid
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
  = AddressBook Weight
  | AddressCard Weight
  | Adjust Weight
  | AlarmClock Weight
  | AlignCenter Weight
  | AlignJustify Weight
  | AlignLeft Weight
  | AlignRight Weight
  | Allergies Weight
  | Ambulance Weight
  | AmericanSignLanguageInterpreting Weight
  | Anchor Weight
  | AngleDoubleDown Weight
  | AngleDoubleLeft Weight
  | AngleDoubleRight Weight
  | AngleDoubleUp Weight
  | AngleDown Weight
  | AngleLeft Weight
  | AngleRight Weight
  | AngleUp Weight
  | Angry Weight
  | Archive Weight
  | Archway Weight
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
  | At Weight
  | Atlas Weight
  | AudioDescription Weight
  | Award Weight
  | Backspace Weight
  | Backward Weight
  | Badge Weight
  | BadgeCheck Weight
  | BalanceScale Weight
  | BalanceScaleLeft Weight
  | BalanceScaleRight Weight
  | Ban Weight
  | BandAid Weight
  | Barcode Weight
  | BarcodeAlt Weight
  | BarcodeRead Weight
  | BarcodeScan Weight
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
  | Bell Weight
  | BellSlash Weight
  | BezierCurve Weight
  | Bicycle Weight
  | Binoculars Weight
  | BirthdayCake Weight
  | Blanket Weight
  | Blender Weight
  | Blind Weight
  | Bold Weight
  | Bolt Weight
  | Bomb Weight
  | Bong Weight
  | Book Weight
  | BookHeart Weight
  | BookOpen Weight
  | Bookmark Weight
  | BowlingBall Weight
  | BowlingPins Weight
  | Box Weight
  | BoxAlt Weight
  | BoxCheck Weight
  | BoxFragile Weight
  | BoxFull Weight
  | BoxHeart Weight
  | BoxOpen Weight
  | BoxUp Weight
  | BoxUsd Weight
  | Boxes Weight
  | BoxesAlt Weight
  | BoxingGlove Weight
  | Braille Weight
  | Briefcase Weight
  | BriefcaseMedical Weight
  | BroadcastTower Weight
  | Broom Weight
  | Browser Weight
  | Brush Weight
  | Bug Weight
  | Building Weight
  | Bullhorn Weight
  | Bullseye Weight
  | Burn Weight
  | Bus Weight
  | BusAlt Weight
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
  | Cannabis Weight
  | Capsules Weight
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
  | Certificate Weight
  | Chalkboard Weight
  | ChalkboardTeacher Weight
  | ChartArea Weight
  | ChartBar Weight
  | ChartLine Weight
  | ChartPie Weight
  | Check Weight
  | CheckCircle Weight
  | CheckDouble Weight
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
  | Church Weight
  | Circle Weight
  | CircleNotch Weight
  | Clipboard Weight
  | ClipboardCheck Weight
  | ClipboardList Weight
  | Clock Weight
  | Clone Weight
  | ClosedCaptioning Weight
  | Cloud Weight
  | CloudDownload Weight
  | CloudDownloadAlt Weight
  | CloudUpload Weight
  | CloudUploadAlt Weight
  | Club Weight
  | Cocktail Weight
  | Code Weight
  | CodeBranch Weight
  | CodeCommit Weight
  | CodeMerge Weight
  | Coffee Weight
  | Cog Weight
  | Cogs Weight
  | Coins Weight
  | Columns Weight
  | Comment Weight
  | CommentAlt Weight
  | CommentAltCheck Weight
  | CommentAltDots Weight
  | CommentAltEdit Weight
  | CommentAltExclamation Weight
  | CommentAltLines Weight
  | CommentAltMinus Weight
  | CommentAltPlus Weight
  | CommentAltSlash Weight
  | CommentAltSmile Weight
  | CommentAltTimes Weight
  | CommentCheck Weight
  | CommentDots Weight
  | CommentEdit Weight
  | CommentExclamation Weight
  | CommentLines Weight
  | CommentMinus Weight
  | CommentPlus Weight
  | CommentSlash Weight
  | CommentSmile Weight
  | CommentTimes Weight
  | Comments Weight
  | CommentsAlt Weight
  | CompactDisc Weight
  | Compass Weight
  | Compress Weight
  | CompressAlt Weight
  | CompressWide Weight
  | ConciergeBell Weight
  | ContainerStorage Weight
  | ConveyorBelt Weight
  | ConveyorBeltAlt Weight
  | Cookie Weight
  | CookieBite Weight
  | Copy Weight
  | Copyright Weight
  | Couch Weight
  | CreditCard Weight
  | CreditCardBlank Weight
  | CreditCardFront Weight
  | Cricket Weight
  | Crop Weight
  | CropAlt Weight
  | Crosshairs Weight
  | Crow Weight
  | Crown Weight
  | Cube Weight
  | Cubes Weight
  | Curling Weight
  | Cut Weight
  | Database Weight
  | Deaf Weight
  | Desktop Weight
  | DesktopAlt Weight
  | Diagnoses Weight
  | Diamond Weight
  | Dice Weight
  | DiceFive Weight
  | DiceFour Weight
  | DiceOne Weight
  | DiceSix Weight
  | DiceThree Weight
  | DiceTwo Weight
  | DigitalTachograph Weight
  | Divide Weight
  | Dizzy Weight
  | Dna Weight
  | DollarSign Weight
  | Dolly Weight
  | DollyEmpty Weight
  | DollyFlatbed Weight
  | DollyFlatbedAlt Weight
  | DollyFlatbedEmpty Weight
  | Donate Weight
  | DoorClosed Weight
  | DoorOpen Weight
  | DotCircle Weight
  | Dove Weight
  | Download Weight
  | DraftingCompass Weight
  | Drum Weight
  | DrumSteelpan Weight
  | Dumbbell Weight
  | Edit Weight
  | Eject Weight
  | EllipsisH Weight
  | EllipsisHAlt Weight
  | EllipsisV Weight
  | EllipsisVAlt Weight
  | Envelope Weight
  | EnvelopeOpen Weight
  | EnvelopeSquare Weight
  | Equals Weight
  | Eraser Weight
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
  | ExternalLink Weight
  | ExternalLinkAlt Weight
  | ExternalLinkSquare Weight
  | ExternalLinkSquareAlt Weight
  | Eye Weight
  | EyeDropper Weight
  | EyeSlash Weight
  | FastBackward Weight
  | FastForward Weight
  | Fax Weight
  | Feather Weight
  | FeatherAlt Weight
  | Female Weight
  | FieldHockey Weight
  | FighterJet Weight
  | File Weight
  | FileAlt Weight
  | FileArchive Weight
  | FileAudio Weight
  | FileCheck Weight
  | FileCode Weight
  | FileContract Weight
  | FileDownload Weight
  | FileEdit Weight
  | FileExcel Weight
  | FileExclamation Weight
  | FileExport Weight
  | FileImage Weight
  | FileImport Weight
  | FileInvoice Weight
  | FileInvoiceDollar Weight
  | FileMedical Weight
  | FileMedicalAlt Weight
  | FileMinus Weight
  | FilePdf Weight
  | FilePlus Weight
  | FilePowerpoint Weight
  | FilePrescription Weight
  | FileSignature Weight
  | FileTimes Weight
  | FileUpload Weight
  | FileVideo Weight
  | FileWord Weight
  | Fill Weight
  | FillDrip Weight
  | Film Weight
  | FilmAlt Weight
  | Filter Weight
  | Fingerprint Weight
  | Fire Weight
  | FireExtinguisher Weight
  | FirstAid Weight
  | Fish Weight
  | Flag Weight
  | FlagCheckered Weight
  | Flask Weight
  | Flushed Weight
  | Folder Weight
  | FolderOpen Weight
  | Font Weight
  | FootballBall Weight
  | FootballHelmet Weight
  | Forklift Weight
  | Forward Weight
  | Fragile Weight
  | Frog Weight
  | Frown Weight
  | FrownOpen Weight
  | Futbol Weight
  | Gamepad Weight
  | GasPump Weight
  | Gavel Weight
  | Gem Weight
  | Genderless Weight
  | Gift Weight
  | GlassMartini Weight
  | GlassMartiniAlt Weight
  | Glasses Weight
  | Globe Weight
  | GlobeAfrica Weight
  | GlobeAmericas Weight
  | GlobeAsia Weight
  | GolfBall Weight
  | GolfClub Weight
  | GraduationCap Weight
  | GreaterThan Weight
  | GreaterThanEqual Weight
  | Grimace Weight
  | Grin Weight
  | GrinAlt Weight
  | GrinBeam Weight
  | GrinBeamSweat Weight
  | GrinHearts Weight
  | GrinSquint Weight
  | GrinSquintTears Weight
  | GrinStars Weight
  | GrinTears Weight
  | GrinTongue Weight
  | GrinTongueSquint Weight
  | GrinTongueWink Weight
  | GrinWink Weight
  | GripHorizontal Weight
  | GripVertical Weight
  | HSquare Weight
  | H1 Weight
  | H2 Weight
  | H3 Weight
  | HandHeart Weight
  | HandHolding Weight
  | HandHoldingBox Weight
  | HandHoldingHeart Weight
  | HandHoldingSeedling Weight
  | HandHoldingUsd Weight
  | HandHoldingWater Weight
  | HandLizard Weight
  | HandPaper Weight
  | HandPeace Weight
  | HandPointDown Weight
  | HandPointLeft Weight
  | HandPointRight Weight
  | HandPointUp Weight
  | HandPointer Weight
  | HandReceiving Weight
  | HandRock Weight
  | HandScissors Weight
  | HandSpock Weight
  | Hands Weight
  | HandsHeart Weight
  | HandsHelping Weight
  | HandsUsd Weight
  | Handshake Weight
  | HandshakeAlt Weight
  | Hashtag Weight
  | Hdd Weight
  | Heading Weight
  | Headphones Weight
  | HeadphonesAlt Weight
  | Headset Weight
  | Heart Weight
  | HeartCircle Weight
  | HeartSquare Weight
  | Heartbeat Weight
  | Helicopter Weight
  | Hexagon Weight
  | Highlighter Weight
  | History Weight
  | HockeyPuck Weight
  | HockeySticks Weight
  | Home Weight
  | HomeHeart Weight
  | Hospital Weight
  | HospitalAlt Weight
  | HospitalSymbol Weight
  | HotTub Weight
  | Hotel Weight
  | Hourglass Weight
  | HourglassEnd Weight
  | HourglassHalf Weight
  | HourglassStart Weight
  | ICursor Weight
  | IdBadge Weight
  | IdCard Weight
  | IdCardAlt Weight
  | Image Weight
  | Images Weight
  | Inbox Weight
  | InboxIn Weight
  | InboxOut Weight
  | Indent Weight
  | Industry Weight
  | IndustryAlt Weight
  | Infinity Weight
  | Info Weight
  | InfoCircle Weight
  | InfoSquare Weight
  | Inventory Weight
  | Italic Weight
  | JackOLantern Weight
  | Joint Weight
  | Key Weight
  | Keyboard Weight
  | Kiss Weight
  | KissBeam Weight
  | KissWinkHeart Weight
  | KiwiBird Weight
  | Lamp Weight
  | Language Weight
  | Laptop Weight
  | Laugh Weight
  | LaughBeam Weight
  | LaughSquint Weight
  | LaughWink Weight
  | Leaf Weight
  | LeafHeart Weight
  | Lemon Weight
  | LessThan Weight
  | LessThanEqual Weight
  | LevelDown Weight
  | LevelDownAlt Weight
  | LevelUp Weight
  | LevelUpAlt Weight
  | LifeRing Weight
  | Lightbulb Weight
  | Link Weight
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
  | Loveseat Weight
  | LowVision Weight
  | Luchador Weight
  | LuggageCart Weight
  | Magic Weight
  | Magnet Weight
  | Male Weight
  | Map Weight
  | MapMarked Weight
  | MapMarkedAlt Weight
  | MapMarker Weight
  | MapMarkerAlt Weight
  | MapPin Weight
  | MapSigns Weight
  | Marker Weight
  | Mars Weight
  | MarsDouble Weight
  | MarsStroke Weight
  | MarsStrokeH Weight
  | MarsStrokeV Weight
  | Medal Weight
  | Medkit Weight
  | Meh Weight
  | MehBlank Weight
  | MehRollingEyes Weight
  | Memory Weight
  | Mercury Weight
  | Microchip Weight
  | Microphone Weight
  | MicrophoneAlt Weight
  | MicrophoneAltSlash Weight
  | MicrophoneSlash Weight
  | Minus Weight
  | MinusCircle Weight
  | MinusHexagon Weight
  | MinusOctagon Weight
  | MinusSquare Weight
  | Mobile Weight
  | MobileAlt Weight
  | MobileAndroid Weight
  | MobileAndroidAlt Weight
  | MoneyBill Weight
  | MoneyBillAlt Weight
  | MoneyBillWave Weight
  | MoneyBillWaveAlt Weight
  | MoneyCheck Weight
  | MoneyCheckAlt Weight
  | Monument Weight
  | Moon Weight
  | MortarPestle Weight
  | Motorcycle Weight
  | MousePointer Weight
  | Music Weight
  | Neuter Weight
  | Newspaper Weight
  | NotEqual Weight
  | NotesMedical Weight
  | ObjectGroup Weight
  | ObjectUngroup Weight
  | Octagon Weight
  | Outdent Weight
  | PaintBrush Weight
  | PaintBrushAlt Weight
  | PaintRoller Weight
  | Palette Weight
  | Pallet Weight
  | PalletAlt Weight
  | PaperPlane Weight
  | Paperclip Weight
  | ParachuteBox Weight
  | Paragraph Weight
  | Parking Weight
  | Passport Weight
  | Paste Weight
  | Pause Weight
  | PauseCircle Weight
  | Paw Weight
  | Pen Weight
  | PenAlt Weight
  | PenFancy Weight
  | PenNib Weight
  | PenSquare Weight
  | Pencil Weight
  | PencilAlt Weight
  | PencilRuler Weight
  | Pennant Weight
  | PeopleCarry Weight
  | Percent Weight
  | Percentage Weight
  | PersonCarry Weight
  | PersonDolly Weight
  | PersonDollyEmpty Weight
  | Phone Weight
  | PhonePlus Weight
  | PhoneSlash Weight
  | PhoneSquare Weight
  | PhoneVolume Weight
  | PiggyBank Weight
  | Pills Weight
  | Plane Weight
  | PlaneAlt Weight
  | PlaneArrival Weight
  | PlaneDeparture Weight
  | Play Weight
  | PlayCircle Weight
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
  | Prescription Weight
  | PrescriptionBottle Weight
  | PrescriptionBottleAlt Weight
  | Print Weight
  | Procedures Weight
  | ProjectDiagram Weight
  | PuzzlePiece Weight
  | Qrcode Weight
  | Question Weight
  | QuestionCircle Weight
  | QuestionSquare Weight
  | Quidditch Weight
  | QuoteLeft Weight
  | QuoteRight Weight
  | Racquet Weight
  | RampLoading Weight
  | Random Weight
  | Receipt Weight
  | RectangleLandscape Weight
  | RectanglePortrait Weight
  | RectangleWide Weight
  | Recycle Weight
  | Redo Weight
  | RedoAlt Weight
  | Registered Weight
  | Repeat Weight
  | Repeat1 Weight
  | Repeat1Alt Weight
  | RepeatAlt Weight
  | Reply Weight
  | ReplyAll Weight
  | Retweet Weight
  | RetweetAlt Weight
  | Ribbon Weight
  | Road Weight
  | Robot Weight
  | Rocket Weight
  | Route Weight
  | Rss Weight
  | RssSquare Weight
  | RubleSign Weight
  | Ruler Weight
  | RulerCombined Weight
  | RulerHorizontal Weight
  | RulerVertical Weight
  | RupeeSign Weight
  | SadCry Weight
  | SadTear Weight
  | Save Weight
  | Scanner Weight
  | ScannerKeyboard Weight
  | ScannerTouchscreen Weight
  | School Weight
  | Screwdriver Weight
  | Scrubber Weight
  | Search Weight
  | SearchMinus Weight
  | SearchPlus Weight
  | Seedling Weight
  | Server Weight
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
  | ShippingFast Weight
  | ShippingTimed Weight
  | ShoePrints Weight
  | ShoppingBag Weight
  | ShoppingBasket Weight
  | ShoppingCart Weight
  | Shower Weight
  | ShuttleVan Weight
  | Shuttlecock Weight
  | Sign Weight
  | SignIn Weight
  | SignInAlt Weight
  | SignLanguage Weight
  | SignOut Weight
  | SignOutAlt Weight
  | Signal Weight
  | Signature Weight
  | Sitemap Weight
  | Skull Weight
  | SlidersH Weight
  | SlidersHSquare Weight
  | SlidersV Weight
  | SlidersVSquare Weight
  | Smile Weight
  | SmileBeam Weight
  | SmilePlus Weight
  | SmileWink Weight
  | Smoking Weight
  | SmokingBan Weight
  | Snowflake Weight
  | SolarPanel Weight
  | Sort Weight
  | SortAlphaDown Weight
  | SortAlphaUp Weight
  | SortAmountDown Weight
  | SortAmountUp Weight
  | SortDown Weight
  | SortNumericDown Weight
  | SortNumericUp Weight
  | SortUp Weight
  | Spa Weight
  | SpaceShuttle Weight
  | Spade Weight
  | Spinner Weight
  | SpinnerThird Weight
  | Splotch Weight
  | SprayCan Weight
  | Square Weight
  | SquareFull Weight
  | Stamp Weight
  | Star Weight
  | StarExclamation Weight
  | StarHalf Weight
  | StarHalfAlt Weight
  | StepBackward Weight
  | StepForward Weight
  | Stethoscope Weight
  | StickyNote Weight
  | Stop Weight
  | StopCircle Weight
  | Stopwatch Weight
  | Store Weight
  | StoreAlt Weight
  | Stream Weight
  | StreetView Weight
  | Strikethrough Weight
  | Stroopwafel Weight
  | Subscript Weight
  | Subway Weight
  | Suitcase Weight
  | SuitcaseRolling Weight
  | Sun Weight
  | Superscript Weight
  | Surprise Weight
  | Swatchbook Weight
  | Swimmer Weight
  | SwimmingPool Weight
  | Sync Weight
  | SyncAlt Weight
  | Syringe Weight
  | Table Weight
  | TableTennis Weight
  | Tablet Weight
  | TabletAlt Weight
  | TabletAndroid Weight
  | TabletAndroidAlt Weight
  | TabletRugged Weight
  | Tablets Weight
  | Tachometer Weight
  | TachometerAlt Weight
  | Tag Weight
  | Tags Weight
  | Tape Weight
  | Tasks Weight
  | Taxi Weight
  | TennisBall Weight
  | Terminal Weight
  | TextHeight Weight
  | TextWidth Weight
  | Th Weight
  | ThLarge Weight
  | ThList Weight
  | Thermometer Weight
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
  | TintSlash Weight
  | Tired Weight
  | ToggleOff Weight
  | ToggleOn Weight
  | Toolbox Weight
  | Tooth Weight
  | Trademark Weight
  | Train Weight
  | Transgender Weight
  | TransgenderAlt Weight
  | Trash Weight
  | TrashAlt Weight
  | Tree Weight
  | TreeAlt Weight
  | Triangle Weight
  | Trophy Weight
  | TrophyAlt Weight
  | Truck Weight
  | TruckContainer Weight
  | TruckCouch Weight
  | TruckLoading Weight
  | TruckMoving Weight
  | TruckRamp Weight
  | Tshirt Weight
  | Tty Weight
  | Tv Weight
  | TvRetro Weight
  | Umbrella Weight
  | UmbrellaBeach Weight
  | Underline Weight
  | Undo Weight
  | UndoAlt Weight
  | UniversalAccess Weight
  | University Weight
  | Unlink Weight
  | Unlock Weight
  | UnlockAlt Weight
  | Upload Weight
  | UsdCircle Weight
  | UsdSquare Weight
  | User Weight
  | UserAlt Weight
  | UserAltSlash Weight
  | UserAstronaut Weight
  | UserCheck Weight
  | UserCircle Weight
  | UserClock Weight
  | UserCog Weight
  | UserEdit Weight
  | UserFriends Weight
  | UserGraduate Weight
  | UserLock Weight
  | UserMd Weight
  | UserMinus Weight
  | UserNinja Weight
  | UserPlus Weight
  | UserSecret Weight
  | UserShield Weight
  | UserSlash Weight
  | UserTag Weight
  | UserTie Weight
  | UserTimes Weight
  | Users Weight
  | UsersCog Weight
  | UtensilFork Weight
  | UtensilKnife Weight
  | UtensilSpoon Weight
  | Utensils Weight
  | UtensilsAlt Weight
  | VectorSquare Weight
  | Venus Weight
  | VenusDouble Weight
  | VenusMars Weight
  | Vial Weight
  | Vials Weight
  | Video Weight
  | VideoPlus Weight
  | VideoSlash Weight
  | VolleyballBall Weight
  | VolumeDown Weight
  | VolumeMute Weight
  | VolumeOff Weight
  | VolumeUp Weight
  | Walking Weight
  | Wallet Weight
  | Warehouse Weight
  | WarehouseAlt Weight
  | Watch Weight
  | Weight Weight
  | WeightHanging Weight
  | Wheelchair Weight
  | Whistle Weight
  | Wifi Weight
  | Window Weight
  | WindowAlt Weight
  | WindowClose Weight
  | WindowMaximize Weight
  | WindowMinimize Weight
  | WindowRestore Weight
  | WineGlass Weight
  | WineGlassAlt Weight
  | WonSign Weight
  | Wrench Weight
  | XRay Weight
  | YenSign Weight
  | AccessibleIcon
  | Accusoft
  | Adn
  | Adversal
  | Affiliatetheme
  | Algolia
  | Amazon
  | AmazonPay
  | Amilia
  | Android
  | Angellist
  | Angrycreative
  | Angular
  | AppStore
  | AppStoreIos
  | Apper
  | Apple
  | ApplePay
  | Asymmetrik
  | Audible
  | Autoprefixer
  | Avianex
  | Aviato
  | Aws
  | Bandcamp
  | Behance
  | BehanceSquare
  | Bimobject
  | Bitbucket
  | Bitcoin
  | Bity
  | BlackTie
  | Blackberry
  | Blogger
  | BloggerB
  | Bluetooth
  | BluetoothB
  | Btc
  | Buromobelexperte
  | Buysellads
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
  | Chrome
  | Cloudscale
  | Cloudsmith
  | Cloudversify
  | Codepen
  | Codiepie
  | Connectdevelop
  | Contao
  | Cpanel
  | CreativeCommons
  | CreativeCommonsBy
  | CreativeCommonsNc
  | CreativeCommonsNcEu
  | CreativeCommonsNcJp
  | CreativeCommonsNd
  | CreativeCommonsPd
  | CreativeCommonsPdAlt
  | CreativeCommonsRemix
  | CreativeCommonsSa
  | CreativeCommonsSampling
  | CreativeCommonsSamplingPlus
  | CreativeCommonsShare
  | Css3
  | Css3Alt
  | Cuttlefish
  | DAndD
  | Dashcube
  | Delicious
  | Deploydog
  | Deskpro
  | Deviantart
  | Digg
  | DigitalOcean
  | Discord
  | Discourse
  | Dochub
  | Docker
  | Draft2Digital
  | Dribbble
  | DribbbleSquare
  | Dropbox
  | Drupal
  | Dyalog
  | Earlybirds
  | Ebay
  | Edge
  | Elementor
  | Ember
  | Empire
  | Envira
  | Erlang
  | Ethereum
  | Etsy
  | Expeditedssl
  | Facebook
  | FacebookF
  | FacebookMessenger
  | FacebookSquare
  | Firefox
  | FirstOrder
  | FirstOrderAlt
  | Firstdraft
  | Flickr
  | Flipboard
  | Fly
  | FontAwesome
  | FontAwesomeAlt
  | FontAwesomeFlag
  | FontAwesomeLogoFull
  | Fonticons
  | FonticonsFi
  | FortAwesome
  | FortAwesomeAlt
  | Forumbee
  | Foursquare
  | FreeCodeCamp
  | Freebsd
  | Fulcrum
  | GalacticRepublic
  | GalacticSenate
  | GetPocket
  | Gg
  | GgCircle
  | Git
  | GitSquare
  | Github
  | GithubAlt
  | GithubSquare
  | Gitkraken
  | Gitlab
  | Gitter
  | Glide
  | GlideG
  | Gofore
  | Goodreads
  | GoodreadsG
  | Google
  | GoogleDrive
  | GooglePlay
  | GooglePlus
  | GooglePlusG
  | GooglePlusSquare
  | GoogleWallet
  | Gratipay
  | Grav
  | Gripfire
  | Grunt
  | Gulp
  | HackerNews
  | HackerNewsSquare
  | Hips
  | HireAHelper
  | Hooli
  | Hornbill
  | Hotjar
  | Houzz
  | Html5
  | Hubspot
  | Imdb
  | Instagram
  | InternetExplorer
  | Ioxhost
  | Itunes
  | ItunesNote
  | Java
  | JediOrder
  | Jenkins
  | Joget
  | Joomla
  | Js
  | JsSquare
  | Jsfiddle
  | Keybase
  | Keycdn
  | Kickstarter
  | KickstarterK
  | Korvue
  | Laravel
  | Lastfm
  | LastfmSquare
  | Leanpub
  | Less
  | Line
  | Linkedin
  | LinkedinIn
  | Linode
  | Linux
  | Lyft
  | Magento
  | Mailchimp
  | Mandalorian
  | Mastodon
  | Maxcdn
  | Medapps
  | Medium
  | MediumM
  | Medrt
  | Meetup
  | Megaport
  | Microsoft
  | Mix
  | Mixcloud
  | Mizuni
  | Modx
  | Monero
  | Napster
  | Nimblr
  | NintendoSwitch
  | Node
  | NodeJs
  | Npm
  | Ns8
  | Nutritionix
  | Odnoklassniki
  | OdnoklassnikiSquare
  | OldRepublic
  | Opencart
  | Openid
  | Opera
  | OptinMonster
  | Osi
  | Page4
  | Pagelines
  | Palfed
  | Patreon
  | Paypal
  | Periscope
  | Phabricator
  | PhoenixFramework
  | PhoenixSquadron
  | Php
  | PiedPiper
  | PiedPiperAlt
  | PiedPiperHat
  | PiedPiperPp
  | Pinterest
  | PinterestP
  | PinterestSquare
  | Playstation
  | ProductHunt
  | Pushed
  | Python
  | Qq
  | Quinscape
  | Quora
  | RProject
  | Ravelry
  | React
  | Readme
  | Rebel
  | RedRiver
  | Reddit
  | RedditAlien
  | RedditSquare
  | Rendact
  | Renren
  | Replyd
  | Researchgate
  | Resolving
  | Rev
  | Rocketchat
  | Rockrms
  | Safari
  | Sass
  | Schlix
  | Scribd
  | Searchengin
  | Sellcast
  | Sellsy
  | Servicestack
  | Shirtsinbulk
  | Shopware
  | Simplybuilt
  | Sistrix
  | Sith
  | Skyatlas
  | Skype
  | Slack
  | SlackHash
  | Slideshare
  | Snapchat
  | SnapchatGhost
  | SnapchatSquare
  | Soundcloud
  | Speakap
  | Spotify
  | Squarespace
  | StackExchange
  | StackOverflow
  | Staylinked
  | Steam
  | SteamSquare
  | SteamSymbol
  | StickerMule
  | Strava
  | Stripe
  | StripeS
  | Studiovinari
  | Stumbleupon
  | StumbleuponCircle
  | Superpowers
  | Supple
  | Teamspeak
  | Telegram
  | TelegramPlane
  | TencentWeibo
  | Themeco
  | Themeisle
  | TradeFederation
  | Trello
  | Tripadvisor
  | Tumblr
  | TumblrSquare
  | Twitch
  | Twitter
  | TwitterSquare
  | Typo3
  | Uber
  | Uikit
  | Uniregistry
  | Untappd
  | Usb
  | Ussunnah
  | Vaadin
  | Viacoin
  | Viadeo
  | ViadeoSquare
  | Viber
  | Vimeo
  | VimeoSquare
  | VimeoV
  | Vine
  | Vk
  | Vnv
  | Vuejs
  | Weebly
  | Weibo
  | Weixin
  | Whatsapp
  | WhatsappSquare
  | Whmcs
  | WikipediaW
  | Windows
  | Wix
  | WolfPackBattalion
  | Wordpress
  | WordpressSimple
  | Wpbeginner
  | Wpexplorer
  | Wpforms
  | Xbox
  | Xing
  | XingSquare
  | YCombinator
  | Yahoo
  | Yandex
  | YandexInternational
  | Yelp
  | Yoast
  | Youtube
  | YoutubeSquare


{-| <i class="fas fa-address-book"></i> -}
addressBook : Html msg
addressBook = i [] (AddressBook Solid)
{-| <i class="fas fa-address-card"></i> -}
addressCard : Html msg
addressCard = i [] (AddressCard Solid)
{-| <i class="fas fa-adjust"></i> -}
adjust : Html msg
adjust = i [] (Adjust Solid)
{-| <i class="fas fa-alarm-clock"></i> -}
alarmClock : Html msg
alarmClock = i [] (AlarmClock Solid)
{-| <i class="fas fa-align-center"></i> -}
alignCenter : Html msg
alignCenter = i [] (AlignCenter Solid)
{-| <i class="fas fa-align-justify"></i> -}
alignJustify : Html msg
alignJustify = i [] (AlignJustify Solid)
{-| <i class="fas fa-align-left"></i> -}
alignLeft : Html msg
alignLeft = i [] (AlignLeft Solid)
{-| <i class="fas fa-align-right"></i> -}
alignRight : Html msg
alignRight = i [] (AlignRight Solid)
{-| <i class="fas fa-allergies"></i> -}
allergies : Html msg
allergies = i [] (Allergies Solid)
{-| <i class="fas fa-ambulance"></i> -}
ambulance : Html msg
ambulance = i [] (Ambulance Solid)
{-| <i class="fas fa-american-sign-language-interpreting"></i> -}
americanSignLanguageInterpreting : Html msg
americanSignLanguageInterpreting = i [] (AmericanSignLanguageInterpreting Solid)
{-| <i class="fas fa-anchor"></i> -}
anchor : Html msg
anchor = i [] (Anchor Solid)
{-| <i class="fas fa-angle-double-down"></i> -}
angleDoubleDown : Html msg
angleDoubleDown = i [] (AngleDoubleDown Solid)
{-| <i class="fas fa-angle-double-left"></i> -}
angleDoubleLeft : Html msg
angleDoubleLeft = i [] (AngleDoubleLeft Solid)
{-| <i class="fas fa-angle-double-right"></i> -}
angleDoubleRight : Html msg
angleDoubleRight = i [] (AngleDoubleRight Solid)
{-| <i class="fas fa-angle-double-up"></i> -}
angleDoubleUp : Html msg
angleDoubleUp = i [] (AngleDoubleUp Solid)
{-| <i class="fas fa-angle-down"></i> -}
angleDown : Html msg
angleDown = i [] (AngleDown Solid)
{-| <i class="fas fa-angle-left"></i> -}
angleLeft : Html msg
angleLeft = i [] (AngleLeft Solid)
{-| <i class="fas fa-angle-right"></i> -}
angleRight : Html msg
angleRight = i [] (AngleRight Solid)
{-| <i class="fas fa-angle-up"></i> -}
angleUp : Html msg
angleUp = i [] (AngleUp Solid)
{-| <i class="fas fa-angry"></i> -}
angry : Html msg
angry = i [] (Angry Solid)
{-| <i class="fas fa-archive"></i> -}
archive : Html msg
archive = i [] (Archive Solid)
{-| <i class="fas fa-archway"></i> -}
archway : Html msg
archway = i [] (Archway Solid)
{-| <i class="fas fa-arrow-alt-circle-down"></i> -}
arrowAltCircleDown : Html msg
arrowAltCircleDown = i [] (ArrowAltCircleDown Solid)
{-| <i class="fas fa-arrow-alt-circle-left"></i> -}
arrowAltCircleLeft : Html msg
arrowAltCircleLeft = i [] (ArrowAltCircleLeft Solid)
{-| <i class="fas fa-arrow-alt-circle-right"></i> -}
arrowAltCircleRight : Html msg
arrowAltCircleRight = i [] (ArrowAltCircleRight Solid)
{-| <i class="fas fa-arrow-alt-circle-up"></i> -}
arrowAltCircleUp : Html msg
arrowAltCircleUp = i [] (ArrowAltCircleUp Solid)
{-| <i class="fas fa-arrow-alt-down"></i> -}
arrowAltDown : Html msg
arrowAltDown = i [] (ArrowAltDown Solid)
{-| <i class="fas fa-arrow-alt-from-bottom"></i> -}
arrowAltFromBottom : Html msg
arrowAltFromBottom = i [] (ArrowAltFromBottom Solid)
{-| <i class="fas fa-arrow-alt-from-left"></i> -}
arrowAltFromLeft : Html msg
arrowAltFromLeft = i [] (ArrowAltFromLeft Solid)
{-| <i class="fas fa-arrow-alt-from-right"></i> -}
arrowAltFromRight : Html msg
arrowAltFromRight = i [] (ArrowAltFromRight Solid)
{-| <i class="fas fa-arrow-alt-from-top"></i> -}
arrowAltFromTop : Html msg
arrowAltFromTop = i [] (ArrowAltFromTop Solid)
{-| <i class="fas fa-arrow-alt-left"></i> -}
arrowAltLeft : Html msg
arrowAltLeft = i [] (ArrowAltLeft Solid)
{-| <i class="fas fa-arrow-alt-right"></i> -}
arrowAltRight : Html msg
arrowAltRight = i [] (ArrowAltRight Solid)
{-| <i class="fas fa-arrow-alt-square-down"></i> -}
arrowAltSquareDown : Html msg
arrowAltSquareDown = i [] (ArrowAltSquareDown Solid)
{-| <i class="fas fa-arrow-alt-square-left"></i> -}
arrowAltSquareLeft : Html msg
arrowAltSquareLeft = i [] (ArrowAltSquareLeft Solid)
{-| <i class="fas fa-arrow-alt-square-right"></i> -}
arrowAltSquareRight : Html msg
arrowAltSquareRight = i [] (ArrowAltSquareRight Solid)
{-| <i class="fas fa-arrow-alt-square-up"></i> -}
arrowAltSquareUp : Html msg
arrowAltSquareUp = i [] (ArrowAltSquareUp Solid)
{-| <i class="fas fa-arrow-alt-to-bottom"></i> -}
arrowAltToBottom : Html msg
arrowAltToBottom = i [] (ArrowAltToBottom Solid)
{-| <i class="fas fa-arrow-alt-to-left"></i> -}
arrowAltToLeft : Html msg
arrowAltToLeft = i [] (ArrowAltToLeft Solid)
{-| <i class="fas fa-arrow-alt-to-right"></i> -}
arrowAltToRight : Html msg
arrowAltToRight = i [] (ArrowAltToRight Solid)
{-| <i class="fas fa-arrow-alt-to-top"></i> -}
arrowAltToTop : Html msg
arrowAltToTop = i [] (ArrowAltToTop Solid)
{-| <i class="fas fa-arrow-alt-up"></i> -}
arrowAltUp : Html msg
arrowAltUp = i [] (ArrowAltUp Solid)
{-| <i class="fas fa-arrow-circle-down"></i> -}
arrowCircleDown : Html msg
arrowCircleDown = i [] (ArrowCircleDown Solid)
{-| <i class="fas fa-arrow-circle-left"></i> -}
arrowCircleLeft : Html msg
arrowCircleLeft = i [] (ArrowCircleLeft Solid)
{-| <i class="fas fa-arrow-circle-right"></i> -}
arrowCircleRight : Html msg
arrowCircleRight = i [] (ArrowCircleRight Solid)
{-| <i class="fas fa-arrow-circle-up"></i> -}
arrowCircleUp : Html msg
arrowCircleUp = i [] (ArrowCircleUp Solid)
{-| <i class="fas fa-arrow-down"></i> -}
arrowDown : Html msg
arrowDown = i [] (ArrowDown Solid)
{-| <i class="fas fa-arrow-from-bottom"></i> -}
arrowFromBottom : Html msg
arrowFromBottom = i [] (ArrowFromBottom Solid)
{-| <i class="fas fa-arrow-from-left"></i> -}
arrowFromLeft : Html msg
arrowFromLeft = i [] (ArrowFromLeft Solid)
{-| <i class="fas fa-arrow-from-right"></i> -}
arrowFromRight : Html msg
arrowFromRight = i [] (ArrowFromRight Solid)
{-| <i class="fas fa-arrow-from-top"></i> -}
arrowFromTop : Html msg
arrowFromTop = i [] (ArrowFromTop Solid)
{-| <i class="fas fa-arrow-left"></i> -}
arrowLeft : Html msg
arrowLeft = i [] (ArrowLeft Solid)
{-| <i class="fas fa-arrow-right"></i> -}
arrowRight : Html msg
arrowRight = i [] (ArrowRight Solid)
{-| <i class="fas fa-arrow-square-down"></i> -}
arrowSquareDown : Html msg
arrowSquareDown = i [] (ArrowSquareDown Solid)
{-| <i class="fas fa-arrow-square-left"></i> -}
arrowSquareLeft : Html msg
arrowSquareLeft = i [] (ArrowSquareLeft Solid)
{-| <i class="fas fa-arrow-square-right"></i> -}
arrowSquareRight : Html msg
arrowSquareRight = i [] (ArrowSquareRight Solid)
{-| <i class="fas fa-arrow-square-up"></i> -}
arrowSquareUp : Html msg
arrowSquareUp = i [] (ArrowSquareUp Solid)
{-| <i class="fas fa-arrow-to-bottom"></i> -}
arrowToBottom : Html msg
arrowToBottom = i [] (ArrowToBottom Solid)
{-| <i class="fas fa-arrow-to-left"></i> -}
arrowToLeft : Html msg
arrowToLeft = i [] (ArrowToLeft Solid)
{-| <i class="fas fa-arrow-to-right"></i> -}
arrowToRight : Html msg
arrowToRight = i [] (ArrowToRight Solid)
{-| <i class="fas fa-arrow-to-top"></i> -}
arrowToTop : Html msg
arrowToTop = i [] (ArrowToTop Solid)
{-| <i class="fas fa-arrow-up"></i> -}
arrowUp : Html msg
arrowUp = i [] (ArrowUp Solid)
{-| <i class="fas fa-arrows"></i> -}
arrows : Html msg
arrows = i [] (Arrows Solid)
{-| <i class="fas fa-arrows-alt"></i> -}
arrowsAlt : Html msg
arrowsAlt = i [] (ArrowsAlt Solid)
{-| <i class="fas fa-arrows-alt-h"></i> -}
arrowsAltH : Html msg
arrowsAltH = i [] (ArrowsAltH Solid)
{-| <i class="fas fa-arrows-alt-v"></i> -}
arrowsAltV : Html msg
arrowsAltV = i [] (ArrowsAltV Solid)
{-| <i class="fas fa-arrows-h"></i> -}
arrowsH : Html msg
arrowsH = i [] (ArrowsH Solid)
{-| <i class="fas fa-arrows-v"></i> -}
arrowsV : Html msg
arrowsV = i [] (ArrowsV Solid)
{-| <i class="fas fa-assistive-listening-systems"></i> -}
assistiveListeningSystems : Html msg
assistiveListeningSystems = i [] (AssistiveListeningSystems Solid)
{-| <i class="fas fa-asterisk"></i> -}
asterisk : Html msg
asterisk = i [] (Asterisk Solid)
{-| <i class="fas fa-at"></i> -}
at : Html msg
at = i [] (At Solid)
{-| <i class="fas fa-atlas"></i> -}
atlas : Html msg
atlas = i [] (Atlas Solid)
{-| <i class="fas fa-audio-description"></i> -}
audioDescription : Html msg
audioDescription = i [] (AudioDescription Solid)
{-| <i class="fas fa-award"></i> -}
award : Html msg
award = i [] (Award Solid)
{-| <i class="fas fa-backspace"></i> -}
backspace : Html msg
backspace = i [] (Backspace Solid)
{-| <i class="fas fa-backward"></i> -}
backward : Html msg
backward = i [] (Backward Solid)
{-| <i class="fas fa-badge"></i> -}
badge : Html msg
badge = i [] (Badge Solid)
{-| <i class="fas fa-badge-check"></i> -}
badgeCheck : Html msg
badgeCheck = i [] (BadgeCheck Solid)
{-| <i class="fas fa-balance-scale"></i> -}
balanceScale : Html msg
balanceScale = i [] (BalanceScale Solid)
{-| <i class="fas fa-balance-scale-left"></i> -}
balanceScaleLeft : Html msg
balanceScaleLeft = i [] (BalanceScaleLeft Solid)
{-| <i class="fas fa-balance-scale-right"></i> -}
balanceScaleRight : Html msg
balanceScaleRight = i [] (BalanceScaleRight Solid)
{-| <i class="fas fa-ban"></i> -}
ban : Html msg
ban = i [] (Ban Solid)
{-| <i class="fas fa-band-aid"></i> -}
bandAid : Html msg
bandAid = i [] (BandAid Solid)
{-| <i class="fas fa-barcode"></i> -}
barcode : Html msg
barcode = i [] (Barcode Solid)
{-| <i class="fas fa-barcode-alt"></i> -}
barcodeAlt : Html msg
barcodeAlt = i [] (BarcodeAlt Solid)
{-| <i class="fas fa-barcode-read"></i> -}
barcodeRead : Html msg
barcodeRead = i [] (BarcodeRead Solid)
{-| <i class="fas fa-barcode-scan"></i> -}
barcodeScan : Html msg
barcodeScan = i [] (BarcodeScan Solid)
{-| <i class="fas fa-bars"></i> -}
bars : Html msg
bars = i [] (Bars Solid)
{-| <i class="fas fa-baseball"></i> -}
baseball : Html msg
baseball = i [] (Baseball Solid)
{-| <i class="fas fa-baseball-ball"></i> -}
baseballBall : Html msg
baseballBall = i [] (BaseballBall Solid)
{-| <i class="fas fa-basketball-ball"></i> -}
basketballBall : Html msg
basketballBall = i [] (BasketballBall Solid)
{-| <i class="fas fa-basketball-hoop"></i> -}
basketballHoop : Html msg
basketballHoop = i [] (BasketballHoop Solid)
{-| <i class="fas fa-bath"></i> -}
bath : Html msg
bath = i [] (Bath Solid)
{-| <i class="fas fa-battery-bolt"></i> -}
batteryBolt : Html msg
batteryBolt = i [] (BatteryBolt Solid)
{-| <i class="fas fa-battery-empty"></i> -}
batteryEmpty : Html msg
batteryEmpty = i [] (BatteryEmpty Solid)
{-| <i class="fas fa-battery-full"></i> -}
batteryFull : Html msg
batteryFull = i [] (BatteryFull Solid)
{-| <i class="fas fa-battery-half"></i> -}
batteryHalf : Html msg
batteryHalf = i [] (BatteryHalf Solid)
{-| <i class="fas fa-battery-quarter"></i> -}
batteryQuarter : Html msg
batteryQuarter = i [] (BatteryQuarter Solid)
{-| <i class="fas fa-battery-slash"></i> -}
batterySlash : Html msg
batterySlash = i [] (BatterySlash Solid)
{-| <i class="fas fa-battery-three-quarters"></i> -}
batteryThreeQuarters : Html msg
batteryThreeQuarters = i [] (BatteryThreeQuarters Solid)
{-| <i class="fas fa-bed"></i> -}
bed : Html msg
bed = i [] (Bed Solid)
{-| <i class="fas fa-beer"></i> -}
beer : Html msg
beer = i [] (Beer Solid)
{-| <i class="fas fa-bell"></i> -}
bell : Html msg
bell = i [] (Bell Solid)
{-| <i class="fas fa-bell-slash"></i> -}
bellSlash : Html msg
bellSlash = i [] (BellSlash Solid)
{-| <i class="fas fa-bezier-curve"></i> -}
bezierCurve : Html msg
bezierCurve = i [] (BezierCurve Solid)
{-| <i class="fas fa-bicycle"></i> -}
bicycle : Html msg
bicycle = i [] (Bicycle Solid)
{-| <i class="fas fa-binoculars"></i> -}
binoculars : Html msg
binoculars = i [] (Binoculars Solid)
{-| <i class="fas fa-birthday-cake"></i> -}
birthdayCake : Html msg
birthdayCake = i [] (BirthdayCake Solid)
{-| <i class="fas fa-blanket"></i> -}
blanket : Html msg
blanket = i [] (Blanket Solid)
{-| <i class="fas fa-blender"></i> -}
blender : Html msg
blender = i [] (Blender Solid)
{-| <i class="fas fa-blind"></i> -}
blind : Html msg
blind = i [] (Blind Solid)
{-| <i class="fas fa-bold"></i> -}
bold : Html msg
bold = i [] (Bold Solid)
{-| <i class="fas fa-bolt"></i> -}
bolt : Html msg
bolt = i [] (Bolt Solid)
{-| <i class="fas fa-bomb"></i> -}
bomb : Html msg
bomb = i [] (Bomb Solid)
{-| <i class="fas fa-bong"></i> -}
bong : Html msg
bong = i [] (Bong Solid)
{-| <i class="fas fa-book"></i> -}
book : Html msg
book = i [] (Book Solid)
{-| <i class="fas fa-book-heart"></i> -}
bookHeart : Html msg
bookHeart = i [] (BookHeart Solid)
{-| <i class="fas fa-book-open"></i> -}
bookOpen : Html msg
bookOpen = i [] (BookOpen Solid)
{-| <i class="fas fa-bookmark"></i> -}
bookmark : Html msg
bookmark = i [] (Bookmark Solid)
{-| <i class="fas fa-bowling-ball"></i> -}
bowlingBall : Html msg
bowlingBall = i [] (BowlingBall Solid)
{-| <i class="fas fa-bowling-pins"></i> -}
bowlingPins : Html msg
bowlingPins = i [] (BowlingPins Solid)
{-| <i class="fas fa-box"></i> -}
box : Html msg
box = i [] (Box Solid)
{-| <i class="fas fa-box-alt"></i> -}
boxAlt : Html msg
boxAlt = i [] (BoxAlt Solid)
{-| <i class="fas fa-box-check"></i> -}
boxCheck : Html msg
boxCheck = i [] (BoxCheck Solid)
{-| <i class="fas fa-box-fragile"></i> -}
boxFragile : Html msg
boxFragile = i [] (BoxFragile Solid)
{-| <i class="fas fa-box-full"></i> -}
boxFull : Html msg
boxFull = i [] (BoxFull Solid)
{-| <i class="fas fa-box-heart"></i> -}
boxHeart : Html msg
boxHeart = i [] (BoxHeart Solid)
{-| <i class="fas fa-box-open"></i> -}
boxOpen : Html msg
boxOpen = i [] (BoxOpen Solid)
{-| <i class="fas fa-box-up"></i> -}
boxUp : Html msg
boxUp = i [] (BoxUp Solid)
{-| <i class="fas fa-box-usd"></i> -}
boxUsd : Html msg
boxUsd = i [] (BoxUsd Solid)
{-| <i class="fas fa-boxes"></i> -}
boxes : Html msg
boxes = i [] (Boxes Solid)
{-| <i class="fas fa-boxes-alt"></i> -}
boxesAlt : Html msg
boxesAlt = i [] (BoxesAlt Solid)
{-| <i class="fas fa-boxing-glove"></i> -}
boxingGlove : Html msg
boxingGlove = i [] (BoxingGlove Solid)
{-| <i class="fas fa-braille"></i> -}
braille : Html msg
braille = i [] (Braille Solid)
{-| <i class="fas fa-briefcase"></i> -}
briefcase : Html msg
briefcase = i [] (Briefcase Solid)
{-| <i class="fas fa-briefcase-medical"></i> -}
briefcaseMedical : Html msg
briefcaseMedical = i [] (BriefcaseMedical Solid)
{-| <i class="fas fa-broadcast-tower"></i> -}
broadcastTower : Html msg
broadcastTower = i [] (BroadcastTower Solid)
{-| <i class="fas fa-broom"></i> -}
broom : Html msg
broom = i [] (Broom Solid)
{-| <i class="fas fa-browser"></i> -}
browser : Html msg
browser = i [] (Browser Solid)
{-| <i class="fas fa-brush"></i> -}
brush : Html msg
brush = i [] (Brush Solid)
{-| <i class="fas fa-bug"></i> -}
bug : Html msg
bug = i [] (Bug Solid)
{-| <i class="fas fa-building"></i> -}
building : Html msg
building = i [] (Building Solid)
{-| <i class="fas fa-bullhorn"></i> -}
bullhorn : Html msg
bullhorn = i [] (Bullhorn Solid)
{-| <i class="fas fa-bullseye"></i> -}
bullseye : Html msg
bullseye = i [] (Bullseye Solid)
{-| <i class="fas fa-burn"></i> -}
burn : Html msg
burn = i [] (Burn Solid)
{-| <i class="fas fa-bus"></i> -}
bus : Html msg
bus = i [] (Bus Solid)
{-| <i class="fas fa-bus-alt"></i> -}
busAlt : Html msg
busAlt = i [] (BusAlt Solid)
{-| <i class="fas fa-calculator"></i> -}
calculator : Html msg
calculator = i [] (Calculator Solid)
{-| <i class="fas fa-calendar"></i> -}
calendar : Html msg
calendar = i [] (Calendar Solid)
{-| <i class="fas fa-calendar-alt"></i> -}
calendarAlt : Html msg
calendarAlt = i [] (CalendarAlt Solid)
{-| <i class="fas fa-calendar-check"></i> -}
calendarCheck : Html msg
calendarCheck = i [] (CalendarCheck Solid)
{-| <i class="fas fa-calendar-edit"></i> -}
calendarEdit : Html msg
calendarEdit = i [] (CalendarEdit Solid)
{-| <i class="fas fa-calendar-exclamation"></i> -}
calendarExclamation : Html msg
calendarExclamation = i [] (CalendarExclamation Solid)
{-| <i class="fas fa-calendar-minus"></i> -}
calendarMinus : Html msg
calendarMinus = i [] (CalendarMinus Solid)
{-| <i class="fas fa-calendar-plus"></i> -}
calendarPlus : Html msg
calendarPlus = i [] (CalendarPlus Solid)
{-| <i class="fas fa-calendar-times"></i> -}
calendarTimes : Html msg
calendarTimes = i [] (CalendarTimes Solid)
{-| <i class="fas fa-camera"></i> -}
camera : Html msg
camera = i [] (Camera Solid)
{-| <i class="fas fa-camera-alt"></i> -}
cameraAlt : Html msg
cameraAlt = i [] (CameraAlt Solid)
{-| <i class="fas fa-camera-retro"></i> -}
cameraRetro : Html msg
cameraRetro = i [] (CameraRetro Solid)
{-| <i class="fas fa-cannabis"></i> -}
cannabis : Html msg
cannabis = i [] (Cannabis Solid)
{-| <i class="fas fa-capsules"></i> -}
capsules : Html msg
capsules = i [] (Capsules Solid)
{-| <i class="fas fa-car"></i> -}
car : Html msg
car = i [] (Car Solid)
{-| <i class="fas fa-caret-circle-down"></i> -}
caretCircleDown : Html msg
caretCircleDown = i [] (CaretCircleDown Solid)
{-| <i class="fas fa-caret-circle-left"></i> -}
caretCircleLeft : Html msg
caretCircleLeft = i [] (CaretCircleLeft Solid)
{-| <i class="fas fa-caret-circle-right"></i> -}
caretCircleRight : Html msg
caretCircleRight = i [] (CaretCircleRight Solid)
{-| <i class="fas fa-caret-circle-up"></i> -}
caretCircleUp : Html msg
caretCircleUp = i [] (CaretCircleUp Solid)
{-| <i class="fas fa-caret-down"></i> -}
caretDown : Html msg
caretDown = i [] (CaretDown Solid)
{-| <i class="fas fa-caret-left"></i> -}
caretLeft : Html msg
caretLeft = i [] (CaretLeft Solid)
{-| <i class="fas fa-caret-right"></i> -}
caretRight : Html msg
caretRight = i [] (CaretRight Solid)
{-| <i class="fas fa-caret-square-down"></i> -}
caretSquareDown : Html msg
caretSquareDown = i [] (CaretSquareDown Solid)
{-| <i class="fas fa-caret-square-left"></i> -}
caretSquareLeft : Html msg
caretSquareLeft = i [] (CaretSquareLeft Solid)
{-| <i class="fas fa-caret-square-right"></i> -}
caretSquareRight : Html msg
caretSquareRight = i [] (CaretSquareRight Solid)
{-| <i class="fas fa-caret-square-up"></i> -}
caretSquareUp : Html msg
caretSquareUp = i [] (CaretSquareUp Solid)
{-| <i class="fas fa-caret-up"></i> -}
caretUp : Html msg
caretUp = i [] (CaretUp Solid)
{-| <i class="fas fa-cart-arrow-down"></i> -}
cartArrowDown : Html msg
cartArrowDown = i [] (CartArrowDown Solid)
{-| <i class="fas fa-cart-plus"></i> -}
cartPlus : Html msg
cartPlus = i [] (CartPlus Solid)
{-| <i class="fas fa-certificate"></i> -}
certificate : Html msg
certificate = i [] (Certificate Solid)
{-| <i class="fas fa-chalkboard"></i> -}
chalkboard : Html msg
chalkboard = i [] (Chalkboard Solid)
{-| <i class="fas fa-chalkboard-teacher"></i> -}
chalkboardTeacher : Html msg
chalkboardTeacher = i [] (ChalkboardTeacher Solid)
{-| <i class="fas fa-chart-area"></i> -}
chartArea : Html msg
chartArea = i [] (ChartArea Solid)
{-| <i class="fas fa-chart-bar"></i> -}
chartBar : Html msg
chartBar = i [] (ChartBar Solid)
{-| <i class="fas fa-chart-line"></i> -}
chartLine : Html msg
chartLine = i [] (ChartLine Solid)
{-| <i class="fas fa-chart-pie"></i> -}
chartPie : Html msg
chartPie = i [] (ChartPie Solid)
{-| <i class="fas fa-check"></i> -}
check : Html msg
check = i [] (Check Solid)
{-| <i class="fas fa-check-circle"></i> -}
checkCircle : Html msg
checkCircle = i [] (CheckCircle Solid)
{-| <i class="fas fa-check-double"></i> -}
checkDouble : Html msg
checkDouble = i [] (CheckDouble Solid)
{-| <i class="fas fa-check-square"></i> -}
checkSquare : Html msg
checkSquare = i [] (CheckSquare Solid)
{-| <i class="fas fa-chess"></i> -}
chess : Html msg
chess = i [] (Chess Solid)
{-| <i class="fas fa-chess-bishop"></i> -}
chessBishop : Html msg
chessBishop = i [] (ChessBishop Solid)
{-| <i class="fas fa-chess-bishop-alt"></i> -}
chessBishopAlt : Html msg
chessBishopAlt = i [] (ChessBishopAlt Solid)
{-| <i class="fas fa-chess-board"></i> -}
chessBoard : Html msg
chessBoard = i [] (ChessBoard Solid)
{-| <i class="fas fa-chess-clock"></i> -}
chessClock : Html msg
chessClock = i [] (ChessClock Solid)
{-| <i class="fas fa-chess-clock-alt"></i> -}
chessClockAlt : Html msg
chessClockAlt = i [] (ChessClockAlt Solid)
{-| <i class="fas fa-chess-king"></i> -}
chessKing : Html msg
chessKing = i [] (ChessKing Solid)
{-| <i class="fas fa-chess-king-alt"></i> -}
chessKingAlt : Html msg
chessKingAlt = i [] (ChessKingAlt Solid)
{-| <i class="fas fa-chess-knight"></i> -}
chessKnight : Html msg
chessKnight = i [] (ChessKnight Solid)
{-| <i class="fas fa-chess-knight-alt"></i> -}
chessKnightAlt : Html msg
chessKnightAlt = i [] (ChessKnightAlt Solid)
{-| <i class="fas fa-chess-pawn"></i> -}
chessPawn : Html msg
chessPawn = i [] (ChessPawn Solid)
{-| <i class="fas fa-chess-pawn-alt"></i> -}
chessPawnAlt : Html msg
chessPawnAlt = i [] (ChessPawnAlt Solid)
{-| <i class="fas fa-chess-queen"></i> -}
chessQueen : Html msg
chessQueen = i [] (ChessQueen Solid)
{-| <i class="fas fa-chess-queen-alt"></i> -}
chessQueenAlt : Html msg
chessQueenAlt = i [] (ChessQueenAlt Solid)
{-| <i class="fas fa-chess-rook"></i> -}
chessRook : Html msg
chessRook = i [] (ChessRook Solid)
{-| <i class="fas fa-chess-rook-alt"></i> -}
chessRookAlt : Html msg
chessRookAlt = i [] (ChessRookAlt Solid)
{-| <i class="fas fa-chevron-circle-down"></i> -}
chevronCircleDown : Html msg
chevronCircleDown = i [] (ChevronCircleDown Solid)
{-| <i class="fas fa-chevron-circle-left"></i> -}
chevronCircleLeft : Html msg
chevronCircleLeft = i [] (ChevronCircleLeft Solid)
{-| <i class="fas fa-chevron-circle-right"></i> -}
chevronCircleRight : Html msg
chevronCircleRight = i [] (ChevronCircleRight Solid)
{-| <i class="fas fa-chevron-circle-up"></i> -}
chevronCircleUp : Html msg
chevronCircleUp = i [] (ChevronCircleUp Solid)
{-| <i class="fas fa-chevron-double-down"></i> -}
chevronDoubleDown : Html msg
chevronDoubleDown = i [] (ChevronDoubleDown Solid)
{-| <i class="fas fa-chevron-double-left"></i> -}
chevronDoubleLeft : Html msg
chevronDoubleLeft = i [] (ChevronDoubleLeft Solid)
{-| <i class="fas fa-chevron-double-right"></i> -}
chevronDoubleRight : Html msg
chevronDoubleRight = i [] (ChevronDoubleRight Solid)
{-| <i class="fas fa-chevron-double-up"></i> -}
chevronDoubleUp : Html msg
chevronDoubleUp = i [] (ChevronDoubleUp Solid)
{-| <i class="fas fa-chevron-down"></i> -}
chevronDown : Html msg
chevronDown = i [] (ChevronDown Solid)
{-| <i class="fas fa-chevron-left"></i> -}
chevronLeft : Html msg
chevronLeft = i [] (ChevronLeft Solid)
{-| <i class="fas fa-chevron-right"></i> -}
chevronRight : Html msg
chevronRight = i [] (ChevronRight Solid)
{-| <i class="fas fa-chevron-square-down"></i> -}
chevronSquareDown : Html msg
chevronSquareDown = i [] (ChevronSquareDown Solid)
{-| <i class="fas fa-chevron-square-left"></i> -}
chevronSquareLeft : Html msg
chevronSquareLeft = i [] (ChevronSquareLeft Solid)
{-| <i class="fas fa-chevron-square-right"></i> -}
chevronSquareRight : Html msg
chevronSquareRight = i [] (ChevronSquareRight Solid)
{-| <i class="fas fa-chevron-square-up"></i> -}
chevronSquareUp : Html msg
chevronSquareUp = i [] (ChevronSquareUp Solid)
{-| <i class="fas fa-chevron-up"></i> -}
chevronUp : Html msg
chevronUp = i [] (ChevronUp Solid)
{-| <i class="fas fa-child"></i> -}
child : Html msg
child = i [] (Child Solid)
{-| <i class="fas fa-church"></i> -}
church : Html msg
church = i [] (Church Solid)
{-| <i class="fas fa-circle"></i> -}
circle : Html msg
circle = i [] (Circle Solid)
{-| <i class="fas fa-circle-notch"></i> -}
circleNotch : Html msg
circleNotch = i [] (CircleNotch Solid)
{-| <i class="fas fa-clipboard"></i> -}
clipboard : Html msg
clipboard = i [] (Clipboard Solid)
{-| <i class="fas fa-clipboard-check"></i> -}
clipboardCheck : Html msg
clipboardCheck = i [] (ClipboardCheck Solid)
{-| <i class="fas fa-clipboard-list"></i> -}
clipboardList : Html msg
clipboardList = i [] (ClipboardList Solid)
{-| <i class="fas fa-clock"></i> -}
clock : Html msg
clock = i [] (Clock Solid)
{-| <i class="fas fa-clone"></i> -}
clone : Html msg
clone = i [] (Clone Solid)
{-| <i class="fas fa-closed-captioning"></i> -}
closedCaptioning : Html msg
closedCaptioning = i [] (ClosedCaptioning Solid)
{-| <i class="fas fa-cloud"></i> -}
cloud : Html msg
cloud = i [] (Cloud Solid)
{-| <i class="fas fa-cloud-download"></i> -}
cloudDownload : Html msg
cloudDownload = i [] (CloudDownload Solid)
{-| <i class="fas fa-cloud-download-alt"></i> -}
cloudDownloadAlt : Html msg
cloudDownloadAlt = i [] (CloudDownloadAlt Solid)
{-| <i class="fas fa-cloud-upload"></i> -}
cloudUpload : Html msg
cloudUpload = i [] (CloudUpload Solid)
{-| <i class="fas fa-cloud-upload-alt"></i> -}
cloudUploadAlt : Html msg
cloudUploadAlt = i [] (CloudUploadAlt Solid)
{-| <i class="fas fa-club"></i> -}
club : Html msg
club = i [] (Club Solid)
{-| <i class="fas fa-cocktail"></i> -}
cocktail : Html msg
cocktail = i [] (Cocktail Solid)
{-| <i class="fas fa-code"></i> -}
code : Html msg
code = i [] (Code Solid)
{-| <i class="fas fa-code-branch"></i> -}
codeBranch : Html msg
codeBranch = i [] (CodeBranch Solid)
{-| <i class="fas fa-code-commit"></i> -}
codeCommit : Html msg
codeCommit = i [] (CodeCommit Solid)
{-| <i class="fas fa-code-merge"></i> -}
codeMerge : Html msg
codeMerge = i [] (CodeMerge Solid)
{-| <i class="fas fa-coffee"></i> -}
coffee : Html msg
coffee = i [] (Coffee Solid)
{-| <i class="fas fa-cog"></i> -}
cog : Html msg
cog = i [] (Cog Solid)
{-| <i class="fas fa-cogs"></i> -}
cogs : Html msg
cogs = i [] (Cogs Solid)
{-| <i class="fas fa-coins"></i> -}
coins : Html msg
coins = i [] (Coins Solid)
{-| <i class="fas fa-columns"></i> -}
columns : Html msg
columns = i [] (Columns Solid)
{-| <i class="fas fa-comment"></i> -}
comment : Html msg
comment = i [] (Comment Solid)
{-| <i class="fas fa-comment-alt"></i> -}
commentAlt : Html msg
commentAlt = i [] (CommentAlt Solid)
{-| <i class="fas fa-comment-alt-check"></i> -}
commentAltCheck : Html msg
commentAltCheck = i [] (CommentAltCheck Solid)
{-| <i class="fas fa-comment-alt-dots"></i> -}
commentAltDots : Html msg
commentAltDots = i [] (CommentAltDots Solid)
{-| <i class="fas fa-comment-alt-edit"></i> -}
commentAltEdit : Html msg
commentAltEdit = i [] (CommentAltEdit Solid)
{-| <i class="fas fa-comment-alt-exclamation"></i> -}
commentAltExclamation : Html msg
commentAltExclamation = i [] (CommentAltExclamation Solid)
{-| <i class="fas fa-comment-alt-lines"></i> -}
commentAltLines : Html msg
commentAltLines = i [] (CommentAltLines Solid)
{-| <i class="fas fa-comment-alt-minus"></i> -}
commentAltMinus : Html msg
commentAltMinus = i [] (CommentAltMinus Solid)
{-| <i class="fas fa-comment-alt-plus"></i> -}
commentAltPlus : Html msg
commentAltPlus = i [] (CommentAltPlus Solid)
{-| <i class="fas fa-comment-alt-slash"></i> -}
commentAltSlash : Html msg
commentAltSlash = i [] (CommentAltSlash Solid)
{-| <i class="fas fa-comment-alt-smile"></i> -}
commentAltSmile : Html msg
commentAltSmile = i [] (CommentAltSmile Solid)
{-| <i class="fas fa-comment-alt-times"></i> -}
commentAltTimes : Html msg
commentAltTimes = i [] (CommentAltTimes Solid)
{-| <i class="fas fa-comment-check"></i> -}
commentCheck : Html msg
commentCheck = i [] (CommentCheck Solid)
{-| <i class="fas fa-comment-dots"></i> -}
commentDots : Html msg
commentDots = i [] (CommentDots Solid)
{-| <i class="fas fa-comment-edit"></i> -}
commentEdit : Html msg
commentEdit = i [] (CommentEdit Solid)
{-| <i class="fas fa-comment-exclamation"></i> -}
commentExclamation : Html msg
commentExclamation = i [] (CommentExclamation Solid)
{-| <i class="fas fa-comment-lines"></i> -}
commentLines : Html msg
commentLines = i [] (CommentLines Solid)
{-| <i class="fas fa-comment-minus"></i> -}
commentMinus : Html msg
commentMinus = i [] (CommentMinus Solid)
{-| <i class="fas fa-comment-plus"></i> -}
commentPlus : Html msg
commentPlus = i [] (CommentPlus Solid)
{-| <i class="fas fa-comment-slash"></i> -}
commentSlash : Html msg
commentSlash = i [] (CommentSlash Solid)
{-| <i class="fas fa-comment-smile"></i> -}
commentSmile : Html msg
commentSmile = i [] (CommentSmile Solid)
{-| <i class="fas fa-comment-times"></i> -}
commentTimes : Html msg
commentTimes = i [] (CommentTimes Solid)
{-| <i class="fas fa-comments"></i> -}
comments : Html msg
comments = i [] (Comments Solid)
{-| <i class="fas fa-comments-alt"></i> -}
commentsAlt : Html msg
commentsAlt = i [] (CommentsAlt Solid)
{-| <i class="fas fa-compact-disc"></i> -}
compactDisc : Html msg
compactDisc = i [] (CompactDisc Solid)
{-| <i class="fas fa-compass"></i> -}
compass : Html msg
compass = i [] (Compass Solid)
{-| <i class="fas fa-compress"></i> -}
compress : Html msg
compress = i [] (Compress Solid)
{-| <i class="fas fa-compress-alt"></i> -}
compressAlt : Html msg
compressAlt = i [] (CompressAlt Solid)
{-| <i class="fas fa-compress-wide"></i> -}
compressWide : Html msg
compressWide = i [] (CompressWide Solid)
{-| <i class="fas fa-concierge-bell"></i> -}
conciergeBell : Html msg
conciergeBell = i [] (ConciergeBell Solid)
{-| <i class="fas fa-container-storage"></i> -}
containerStorage : Html msg
containerStorage = i [] (ContainerStorage Solid)
{-| <i class="fas fa-conveyor-belt"></i> -}
conveyorBelt : Html msg
conveyorBelt = i [] (ConveyorBelt Solid)
{-| <i class="fas fa-conveyor-belt-alt"></i> -}
conveyorBeltAlt : Html msg
conveyorBeltAlt = i [] (ConveyorBeltAlt Solid)
{-| <i class="fas fa-cookie"></i> -}
cookie : Html msg
cookie = i [] (Cookie Solid)
{-| <i class="fas fa-cookie-bite"></i> -}
cookieBite : Html msg
cookieBite = i [] (CookieBite Solid)
{-| <i class="fas fa-copy"></i> -}
copy : Html msg
copy = i [] (Copy Solid)
{-| <i class="fas fa-copyright"></i> -}
copyright : Html msg
copyright = i [] (Copyright Solid)
{-| <i class="fas fa-couch"></i> -}
couch : Html msg
couch = i [] (Couch Solid)
{-| <i class="fas fa-credit-card"></i> -}
creditCard : Html msg
creditCard = i [] (CreditCard Solid)
{-| <i class="fas fa-credit-card-blank"></i> -}
creditCardBlank : Html msg
creditCardBlank = i [] (CreditCardBlank Solid)
{-| <i class="fas fa-credit-card-front"></i> -}
creditCardFront : Html msg
creditCardFront = i [] (CreditCardFront Solid)
{-| <i class="fas fa-cricket"></i> -}
cricket : Html msg
cricket = i [] (Cricket Solid)
{-| <i class="fas fa-crop"></i> -}
crop : Html msg
crop = i [] (Crop Solid)
{-| <i class="fas fa-crop-alt"></i> -}
cropAlt : Html msg
cropAlt = i [] (CropAlt Solid)
{-| <i class="fas fa-crosshairs"></i> -}
crosshairs : Html msg
crosshairs = i [] (Crosshairs Solid)
{-| <i class="fas fa-crow"></i> -}
crow : Html msg
crow = i [] (Crow Solid)
{-| <i class="fas fa-crown"></i> -}
crown : Html msg
crown = i [] (Crown Solid)
{-| <i class="fas fa-cube"></i> -}
cube : Html msg
cube = i [] (Cube Solid)
{-| <i class="fas fa-cubes"></i> -}
cubes : Html msg
cubes = i [] (Cubes Solid)
{-| <i class="fas fa-curling"></i> -}
curling : Html msg
curling = i [] (Curling Solid)
{-| <i class="fas fa-cut"></i> -}
cut : Html msg
cut = i [] (Cut Solid)
{-| <i class="fas fa-database"></i> -}
database : Html msg
database = i [] (Database Solid)
{-| <i class="fas fa-deaf"></i> -}
deaf : Html msg
deaf = i [] (Deaf Solid)
{-| <i class="fas fa-desktop"></i> -}
desktop : Html msg
desktop = i [] (Desktop Solid)
{-| <i class="fas fa-desktop-alt"></i> -}
desktopAlt : Html msg
desktopAlt = i [] (DesktopAlt Solid)
{-| <i class="fas fa-diagnoses"></i> -}
diagnoses : Html msg
diagnoses = i [] (Diagnoses Solid)
{-| <i class="fas fa-diamond"></i> -}
diamond : Html msg
diamond = i [] (Diamond Solid)
{-| <i class="fas fa-dice"></i> -}
dice : Html msg
dice = i [] (Dice Solid)
{-| <i class="fas fa-dice-five"></i> -}
diceFive : Html msg
diceFive = i [] (DiceFive Solid)
{-| <i class="fas fa-dice-four"></i> -}
diceFour : Html msg
diceFour = i [] (DiceFour Solid)
{-| <i class="fas fa-dice-one"></i> -}
diceOne : Html msg
diceOne = i [] (DiceOne Solid)
{-| <i class="fas fa-dice-six"></i> -}
diceSix : Html msg
diceSix = i [] (DiceSix Solid)
{-| <i class="fas fa-dice-three"></i> -}
diceThree : Html msg
diceThree = i [] (DiceThree Solid)
{-| <i class="fas fa-dice-two"></i> -}
diceTwo : Html msg
diceTwo = i [] (DiceTwo Solid)
{-| <i class="fas fa-digital-tachograph"></i> -}
digitalTachograph : Html msg
digitalTachograph = i [] (DigitalTachograph Solid)
{-| <i class="fas fa-divide"></i> -}
divide : Html msg
divide = i [] (Divide Solid)
{-| <i class="fas fa-dizzy"></i> -}
dizzy : Html msg
dizzy = i [] (Dizzy Solid)
{-| <i class="fas fa-dna"></i> -}
dna : Html msg
dna = i [] (Dna Solid)
{-| <i class="fas fa-dollar-sign"></i> -}
dollarSign : Html msg
dollarSign = i [] (DollarSign Solid)
{-| <i class="fas fa-dolly"></i> -}
dolly : Html msg
dolly = i [] (Dolly Solid)
{-| <i class="fas fa-dolly-empty"></i> -}
dollyEmpty : Html msg
dollyEmpty = i [] (DollyEmpty Solid)
{-| <i class="fas fa-dolly-flatbed"></i> -}
dollyFlatbed : Html msg
dollyFlatbed = i [] (DollyFlatbed Solid)
{-| <i class="fas fa-dolly-flatbed-alt"></i> -}
dollyFlatbedAlt : Html msg
dollyFlatbedAlt = i [] (DollyFlatbedAlt Solid)
{-| <i class="fas fa-dolly-flatbed-empty"></i> -}
dollyFlatbedEmpty : Html msg
dollyFlatbedEmpty = i [] (DollyFlatbedEmpty Solid)
{-| <i class="fas fa-donate"></i> -}
donate : Html msg
donate = i [] (Donate Solid)
{-| <i class="fas fa-door-closed"></i> -}
doorClosed : Html msg
doorClosed = i [] (DoorClosed Solid)
{-| <i class="fas fa-door-open"></i> -}
doorOpen : Html msg
doorOpen = i [] (DoorOpen Solid)
{-| <i class="fas fa-dot-circle"></i> -}
dotCircle : Html msg
dotCircle = i [] (DotCircle Solid)
{-| <i class="fas fa-dove"></i> -}
dove : Html msg
dove = i [] (Dove Solid)
{-| <i class="fas fa-download"></i> -}
download : Html msg
download = i [] (Download Solid)
{-| <i class="fas fa-drafting-compass"></i> -}
draftingCompass : Html msg
draftingCompass = i [] (DraftingCompass Solid)
{-| <i class="fas fa-drum"></i> -}
drum : Html msg
drum = i [] (Drum Solid)
{-| <i class="fas fa-drum-steelpan"></i> -}
drumSteelpan : Html msg
drumSteelpan = i [] (DrumSteelpan Solid)
{-| <i class="fas fa-dumbbell"></i> -}
dumbbell : Html msg
dumbbell = i [] (Dumbbell Solid)
{-| <i class="fas fa-edit"></i> -}
edit : Html msg
edit = i [] (Edit Solid)
{-| <i class="fas fa-eject"></i> -}
eject : Html msg
eject = i [] (Eject Solid)
{-| <i class="fas fa-ellipsis-h"></i> -}
ellipsisH : Html msg
ellipsisH = i [] (EllipsisH Solid)
{-| <i class="fas fa-ellipsis-h-alt"></i> -}
ellipsisHAlt : Html msg
ellipsisHAlt = i [] (EllipsisHAlt Solid)
{-| <i class="fas fa-ellipsis-v"></i> -}
ellipsisV : Html msg
ellipsisV = i [] (EllipsisV Solid)
{-| <i class="fas fa-ellipsis-v-alt"></i> -}
ellipsisVAlt : Html msg
ellipsisVAlt = i [] (EllipsisVAlt Solid)
{-| <i class="fas fa-envelope"></i> -}
envelope : Html msg
envelope = i [] (Envelope Solid)
{-| <i class="fas fa-envelope-open"></i> -}
envelopeOpen : Html msg
envelopeOpen = i [] (EnvelopeOpen Solid)
{-| <i class="fas fa-envelope-square"></i> -}
envelopeSquare : Html msg
envelopeSquare = i [] (EnvelopeSquare Solid)
{-| <i class="fas fa-equals"></i> -}
equals : Html msg
equals = i [] (Equals Solid)
{-| <i class="fas fa-eraser"></i> -}
eraser : Html msg
eraser = i [] (Eraser Solid)
{-| <i class="fas fa-euro-sign"></i> -}
euroSign : Html msg
euroSign = i [] (EuroSign Solid)
{-| <i class="fas fa-exchange"></i> -}
exchange : Html msg
exchange = i [] (Exchange Solid)
{-| <i class="fas fa-exchange-alt"></i> -}
exchangeAlt : Html msg
exchangeAlt = i [] (ExchangeAlt Solid)
{-| <i class="fas fa-exclamation"></i> -}
exclamation : Html msg
exclamation = i [] (Exclamation Solid)
{-| <i class="fas fa-exclamation-circle"></i> -}
exclamationCircle : Html msg
exclamationCircle = i [] (ExclamationCircle Solid)
{-| <i class="fas fa-exclamation-square"></i> -}
exclamationSquare : Html msg
exclamationSquare = i [] (ExclamationSquare Solid)
{-| <i class="fas fa-exclamation-triangle"></i> -}
exclamationTriangle : Html msg
exclamationTriangle = i [] (ExclamationTriangle Solid)
{-| <i class="fas fa-expand"></i> -}
expand : Html msg
expand = i [] (Expand Solid)
{-| <i class="fas fa-expand-alt"></i> -}
expandAlt : Html msg
expandAlt = i [] (ExpandAlt Solid)
{-| <i class="fas fa-expand-arrows"></i> -}
expandArrows : Html msg
expandArrows = i [] (ExpandArrows Solid)
{-| <i class="fas fa-expand-arrows-alt"></i> -}
expandArrowsAlt : Html msg
expandArrowsAlt = i [] (ExpandArrowsAlt Solid)
{-| <i class="fas fa-expand-wide"></i> -}
expandWide : Html msg
expandWide = i [] (ExpandWide Solid)
{-| <i class="fas fa-external-link"></i> -}
externalLink : Html msg
externalLink = i [] (ExternalLink Solid)
{-| <i class="fas fa-external-link-alt"></i> -}
externalLinkAlt : Html msg
externalLinkAlt = i [] (ExternalLinkAlt Solid)
{-| <i class="fas fa-external-link-square"></i> -}
externalLinkSquare : Html msg
externalLinkSquare = i [] (ExternalLinkSquare Solid)
{-| <i class="fas fa-external-link-square-alt"></i> -}
externalLinkSquareAlt : Html msg
externalLinkSquareAlt = i [] (ExternalLinkSquareAlt Solid)
{-| <i class="fas fa-eye"></i> -}
eye : Html msg
eye = i [] (Eye Solid)
{-| <i class="fas fa-eye-dropper"></i> -}
eyeDropper : Html msg
eyeDropper = i [] (EyeDropper Solid)
{-| <i class="fas fa-eye-slash"></i> -}
eyeSlash : Html msg
eyeSlash = i [] (EyeSlash Solid)
{-| <i class="fas fa-fast-backward"></i> -}
fastBackward : Html msg
fastBackward = i [] (FastBackward Solid)
{-| <i class="fas fa-fast-forward"></i> -}
fastForward : Html msg
fastForward = i [] (FastForward Solid)
{-| <i class="fas fa-fax"></i> -}
fax : Html msg
fax = i [] (Fax Solid)
{-| <i class="fas fa-feather"></i> -}
feather : Html msg
feather = i [] (Feather Solid)
{-| <i class="fas fa-feather-alt"></i> -}
featherAlt : Html msg
featherAlt = i [] (FeatherAlt Solid)
{-| <i class="fas fa-female"></i> -}
female : Html msg
female = i [] (Female Solid)
{-| <i class="fas fa-field-hockey"></i> -}
fieldHockey : Html msg
fieldHockey = i [] (FieldHockey Solid)
{-| <i class="fas fa-fighter-jet"></i> -}
fighterJet : Html msg
fighterJet = i [] (FighterJet Solid)
{-| <i class="fas fa-file"></i> -}
file : Html msg
file = i [] (File Solid)
{-| <i class="fas fa-file-alt"></i> -}
fileAlt : Html msg
fileAlt = i [] (FileAlt Solid)
{-| <i class="fas fa-file-archive"></i> -}
fileArchive : Html msg
fileArchive = i [] (FileArchive Solid)
{-| <i class="fas fa-file-audio"></i> -}
fileAudio : Html msg
fileAudio = i [] (FileAudio Solid)
{-| <i class="fas fa-file-check"></i> -}
fileCheck : Html msg
fileCheck = i [] (FileCheck Solid)
{-| <i class="fas fa-file-code"></i> -}
fileCode : Html msg
fileCode = i [] (FileCode Solid)
{-| <i class="fas fa-file-contract"></i> -}
fileContract : Html msg
fileContract = i [] (FileContract Solid)
{-| <i class="fas fa-file-download"></i> -}
fileDownload : Html msg
fileDownload = i [] (FileDownload Solid)
{-| <i class="fas fa-file-edit"></i> -}
fileEdit : Html msg
fileEdit = i [] (FileEdit Solid)
{-| <i class="fas fa-file-excel"></i> -}
fileExcel : Html msg
fileExcel = i [] (FileExcel Solid)
{-| <i class="fas fa-file-exclamation"></i> -}
fileExclamation : Html msg
fileExclamation = i [] (FileExclamation Solid)
{-| <i class="fas fa-file-export"></i> -}
fileExport : Html msg
fileExport = i [] (FileExport Solid)
{-| <i class="fas fa-file-image"></i> -}
fileImage : Html msg
fileImage = i [] (FileImage Solid)
{-| <i class="fas fa-file-import"></i> -}
fileImport : Html msg
fileImport = i [] (FileImport Solid)
{-| <i class="fas fa-file-invoice"></i> -}
fileInvoice : Html msg
fileInvoice = i [] (FileInvoice Solid)
{-| <i class="fas fa-file-invoice-dollar"></i> -}
fileInvoiceDollar : Html msg
fileInvoiceDollar = i [] (FileInvoiceDollar Solid)
{-| <i class="fas fa-file-medical"></i> -}
fileMedical : Html msg
fileMedical = i [] (FileMedical Solid)
{-| <i class="fas fa-file-medical-alt"></i> -}
fileMedicalAlt : Html msg
fileMedicalAlt = i [] (FileMedicalAlt Solid)
{-| <i class="fas fa-file-minus"></i> -}
fileMinus : Html msg
fileMinus = i [] (FileMinus Solid)
{-| <i class="fas fa-file-pdf"></i> -}
filePdf : Html msg
filePdf = i [] (FilePdf Solid)
{-| <i class="fas fa-file-plus"></i> -}
filePlus : Html msg
filePlus = i [] (FilePlus Solid)
{-| <i class="fas fa-file-powerpoint"></i> -}
filePowerpoint : Html msg
filePowerpoint = i [] (FilePowerpoint Solid)
{-| <i class="fas fa-file-prescription"></i> -}
filePrescription : Html msg
filePrescription = i [] (FilePrescription Solid)
{-| <i class="fas fa-file-signature"></i> -}
fileSignature : Html msg
fileSignature = i [] (FileSignature Solid)
{-| <i class="fas fa-file-times"></i> -}
fileTimes : Html msg
fileTimes = i [] (FileTimes Solid)
{-| <i class="fas fa-file-upload"></i> -}
fileUpload : Html msg
fileUpload = i [] (FileUpload Solid)
{-| <i class="fas fa-file-video"></i> -}
fileVideo : Html msg
fileVideo = i [] (FileVideo Solid)
{-| <i class="fas fa-file-word"></i> -}
fileWord : Html msg
fileWord = i [] (FileWord Solid)
{-| <i class="fas fa-fill"></i> -}
fill : Html msg
fill = i [] (Fill Solid)
{-| <i class="fas fa-fill-drip"></i> -}
fillDrip : Html msg
fillDrip = i [] (FillDrip Solid)
{-| <i class="fas fa-film"></i> -}
film : Html msg
film = i [] (Film Solid)
{-| <i class="fas fa-film-alt"></i> -}
filmAlt : Html msg
filmAlt = i [] (FilmAlt Solid)
{-| <i class="fas fa-filter"></i> -}
filter : Html msg
filter = i [] (Filter Solid)
{-| <i class="fas fa-fingerprint"></i> -}
fingerprint : Html msg
fingerprint = i [] (Fingerprint Solid)
{-| <i class="fas fa-fire"></i> -}
fire : Html msg
fire = i [] (Fire Solid)
{-| <i class="fas fa-fire-extinguisher"></i> -}
fireExtinguisher : Html msg
fireExtinguisher = i [] (FireExtinguisher Solid)
{-| <i class="fas fa-first-aid"></i> -}
firstAid : Html msg
firstAid = i [] (FirstAid Solid)
{-| <i class="fas fa-fish"></i> -}
fish : Html msg
fish = i [] (Fish Solid)
{-| <i class="fas fa-flag"></i> -}
flag : Html msg
flag = i [] (Flag Solid)
{-| <i class="fas fa-flag-checkered"></i> -}
flagCheckered : Html msg
flagCheckered = i [] (FlagCheckered Solid)
{-| <i class="fas fa-flask"></i> -}
flask : Html msg
flask = i [] (Flask Solid)
{-| <i class="fas fa-flushed"></i> -}
flushed : Html msg
flushed = i [] (Flushed Solid)
{-| <i class="fas fa-folder"></i> -}
folder : Html msg
folder = i [] (Folder Solid)
{-| <i class="fas fa-folder-open"></i> -}
folderOpen : Html msg
folderOpen = i [] (FolderOpen Solid)
{-| <i class="fas fa-font"></i> -}
font : Html msg
font = i [] (Font Solid)
{-| <i class="fas fa-football-ball"></i> -}
footballBall : Html msg
footballBall = i [] (FootballBall Solid)
{-| <i class="fas fa-football-helmet"></i> -}
footballHelmet : Html msg
footballHelmet = i [] (FootballHelmet Solid)
{-| <i class="fas fa-forklift"></i> -}
forklift : Html msg
forklift = i [] (Forklift Solid)
{-| <i class="fas fa-forward"></i> -}
forward : Html msg
forward = i [] (Forward Solid)
{-| <i class="fas fa-fragile"></i> -}
fragile : Html msg
fragile = i [] (Fragile Solid)
{-| <i class="fas fa-frog"></i> -}
frog : Html msg
frog = i [] (Frog Solid)
{-| <i class="fas fa-frown"></i> -}
frown : Html msg
frown = i [] (Frown Solid)
{-| <i class="fas fa-frown-open"></i> -}
frownOpen : Html msg
frownOpen = i [] (FrownOpen Solid)
{-| <i class="fas fa-futbol"></i> -}
futbol : Html msg
futbol = i [] (Futbol Solid)
{-| <i class="fas fa-gamepad"></i> -}
gamepad : Html msg
gamepad = i [] (Gamepad Solid)
{-| <i class="fas fa-gas-pump"></i> -}
gasPump : Html msg
gasPump = i [] (GasPump Solid)
{-| <i class="fas fa-gavel"></i> -}
gavel : Html msg
gavel = i [] (Gavel Solid)
{-| <i class="fas fa-gem"></i> -}
gem : Html msg
gem = i [] (Gem Solid)
{-| <i class="fas fa-genderless"></i> -}
genderless : Html msg
genderless = i [] (Genderless Solid)
{-| <i class="fas fa-gift"></i> -}
gift : Html msg
gift = i [] (Gift Solid)
{-| <i class="fas fa-glass-martini"></i> -}
glassMartini : Html msg
glassMartini = i [] (GlassMartini Solid)
{-| <i class="fas fa-glass-martini-alt"></i> -}
glassMartiniAlt : Html msg
glassMartiniAlt = i [] (GlassMartiniAlt Solid)
{-| <i class="fas fa-glasses"></i> -}
glasses : Html msg
glasses = i [] (Glasses Solid)
{-| <i class="fas fa-globe"></i> -}
globe : Html msg
globe = i [] (Globe Solid)
{-| <i class="fas fa-globe-africa"></i> -}
globeAfrica : Html msg
globeAfrica = i [] (GlobeAfrica Solid)
{-| <i class="fas fa-globe-americas"></i> -}
globeAmericas : Html msg
globeAmericas = i [] (GlobeAmericas Solid)
{-| <i class="fas fa-globe-asia"></i> -}
globeAsia : Html msg
globeAsia = i [] (GlobeAsia Solid)
{-| <i class="fas fa-golf-ball"></i> -}
golfBall : Html msg
golfBall = i [] (GolfBall Solid)
{-| <i class="fas fa-golf-club"></i> -}
golfClub : Html msg
golfClub = i [] (GolfClub Solid)
{-| <i class="fas fa-graduation-cap"></i> -}
graduationCap : Html msg
graduationCap = i [] (GraduationCap Solid)
{-| <i class="fas fa-greater-than"></i> -}
greaterThan : Html msg
greaterThan = i [] (GreaterThan Solid)
{-| <i class="fas fa-greater-than-equal"></i> -}
greaterThanEqual : Html msg
greaterThanEqual = i [] (GreaterThanEqual Solid)
{-| <i class="fas fa-grimace"></i> -}
grimace : Html msg
grimace = i [] (Grimace Solid)
{-| <i class="fas fa-grin"></i> -}
grin : Html msg
grin = i [] (Grin Solid)
{-| <i class="fas fa-grin-alt"></i> -}
grinAlt : Html msg
grinAlt = i [] (GrinAlt Solid)
{-| <i class="fas fa-grin-beam"></i> -}
grinBeam : Html msg
grinBeam = i [] (GrinBeam Solid)
{-| <i class="fas fa-grin-beam-sweat"></i> -}
grinBeamSweat : Html msg
grinBeamSweat = i [] (GrinBeamSweat Solid)
{-| <i class="fas fa-grin-hearts"></i> -}
grinHearts : Html msg
grinHearts = i [] (GrinHearts Solid)
{-| <i class="fas fa-grin-squint"></i> -}
grinSquint : Html msg
grinSquint = i [] (GrinSquint Solid)
{-| <i class="fas fa-grin-squint-tears"></i> -}
grinSquintTears : Html msg
grinSquintTears = i [] (GrinSquintTears Solid)
{-| <i class="fas fa-grin-stars"></i> -}
grinStars : Html msg
grinStars = i [] (GrinStars Solid)
{-| <i class="fas fa-grin-tears"></i> -}
grinTears : Html msg
grinTears = i [] (GrinTears Solid)
{-| <i class="fas fa-grin-tongue"></i> -}
grinTongue : Html msg
grinTongue = i [] (GrinTongue Solid)
{-| <i class="fas fa-grin-tongue-squint"></i> -}
grinTongueSquint : Html msg
grinTongueSquint = i [] (GrinTongueSquint Solid)
{-| <i class="fas fa-grin-tongue-wink"></i> -}
grinTongueWink : Html msg
grinTongueWink = i [] (GrinTongueWink Solid)
{-| <i class="fas fa-grin-wink"></i> -}
grinWink : Html msg
grinWink = i [] (GrinWink Solid)
{-| <i class="fas fa-grip-horizontal"></i> -}
gripHorizontal : Html msg
gripHorizontal = i [] (GripHorizontal Solid)
{-| <i class="fas fa-grip-vertical"></i> -}
gripVertical : Html msg
gripVertical = i [] (GripVertical Solid)
{-| <i class="fas fa-h-square"></i> -}
hSquare : Html msg
hSquare = i [] (HSquare Solid)
{-| <i class="fas fa-h1"></i> -}
h1 : Html msg
h1 = i [] (H1 Solid)
{-| <i class="fas fa-h2"></i> -}
h2 : Html msg
h2 = i [] (H2 Solid)
{-| <i class="fas fa-h3"></i> -}
h3 : Html msg
h3 = i [] (H3 Solid)
{-| <i class="fas fa-hand-heart"></i> -}
handHeart : Html msg
handHeart = i [] (HandHeart Solid)
{-| <i class="fas fa-hand-holding"></i> -}
handHolding : Html msg
handHolding = i [] (HandHolding Solid)
{-| <i class="fas fa-hand-holding-box"></i> -}
handHoldingBox : Html msg
handHoldingBox = i [] (HandHoldingBox Solid)
{-| <i class="fas fa-hand-holding-heart"></i> -}
handHoldingHeart : Html msg
handHoldingHeart = i [] (HandHoldingHeart Solid)
{-| <i class="fas fa-hand-holding-seedling"></i> -}
handHoldingSeedling : Html msg
handHoldingSeedling = i [] (HandHoldingSeedling Solid)
{-| <i class="fas fa-hand-holding-usd"></i> -}
handHoldingUsd : Html msg
handHoldingUsd = i [] (HandHoldingUsd Solid)
{-| <i class="fas fa-hand-holding-water"></i> -}
handHoldingWater : Html msg
handHoldingWater = i [] (HandHoldingWater Solid)
{-| <i class="fas fa-hand-lizard"></i> -}
handLizard : Html msg
handLizard = i [] (HandLizard Solid)
{-| <i class="fas fa-hand-paper"></i> -}
handPaper : Html msg
handPaper = i [] (HandPaper Solid)
{-| <i class="fas fa-hand-peace"></i> -}
handPeace : Html msg
handPeace = i [] (HandPeace Solid)
{-| <i class="fas fa-hand-point-down"></i> -}
handPointDown : Html msg
handPointDown = i [] (HandPointDown Solid)
{-| <i class="fas fa-hand-point-left"></i> -}
handPointLeft : Html msg
handPointLeft = i [] (HandPointLeft Solid)
{-| <i class="fas fa-hand-point-right"></i> -}
handPointRight : Html msg
handPointRight = i [] (HandPointRight Solid)
{-| <i class="fas fa-hand-point-up"></i> -}
handPointUp : Html msg
handPointUp = i [] (HandPointUp Solid)
{-| <i class="fas fa-hand-pointer"></i> -}
handPointer : Html msg
handPointer = i [] (HandPointer Solid)
{-| <i class="fas fa-hand-receiving"></i> -}
handReceiving : Html msg
handReceiving = i [] (HandReceiving Solid)
{-| <i class="fas fa-hand-rock"></i> -}
handRock : Html msg
handRock = i [] (HandRock Solid)
{-| <i class="fas fa-hand-scissors"></i> -}
handScissors : Html msg
handScissors = i [] (HandScissors Solid)
{-| <i class="fas fa-hand-spock"></i> -}
handSpock : Html msg
handSpock = i [] (HandSpock Solid)
{-| <i class="fas fa-hands"></i> -}
hands : Html msg
hands = i [] (Hands Solid)
{-| <i class="fas fa-hands-heart"></i> -}
handsHeart : Html msg
handsHeart = i [] (HandsHeart Solid)
{-| <i class="fas fa-hands-helping"></i> -}
handsHelping : Html msg
handsHelping = i [] (HandsHelping Solid)
{-| <i class="fas fa-hands-usd"></i> -}
handsUsd : Html msg
handsUsd = i [] (HandsUsd Solid)
{-| <i class="fas fa-handshake"></i> -}
handshake : Html msg
handshake = i [] (Handshake Solid)
{-| <i class="fas fa-handshake-alt"></i> -}
handshakeAlt : Html msg
handshakeAlt = i [] (HandshakeAlt Solid)
{-| <i class="fas fa-hashtag"></i> -}
hashtag : Html msg
hashtag = i [] (Hashtag Solid)
{-| <i class="fas fa-hdd"></i> -}
hdd : Html msg
hdd = i [] (Hdd Solid)
{-| <i class="fas fa-heading"></i> -}
heading : Html msg
heading = i [] (Heading Solid)
{-| <i class="fas fa-headphones"></i> -}
headphones : Html msg
headphones = i [] (Headphones Solid)
{-| <i class="fas fa-headphones-alt"></i> -}
headphonesAlt : Html msg
headphonesAlt = i [] (HeadphonesAlt Solid)
{-| <i class="fas fa-headset"></i> -}
headset : Html msg
headset = i [] (Headset Solid)
{-| <i class="fas fa-heart"></i> -}
heart : Html msg
heart = i [] (Heart Solid)
{-| <i class="fas fa-heart-circle"></i> -}
heartCircle : Html msg
heartCircle = i [] (HeartCircle Solid)
{-| <i class="fas fa-heart-square"></i> -}
heartSquare : Html msg
heartSquare = i [] (HeartSquare Solid)
{-| <i class="fas fa-heartbeat"></i> -}
heartbeat : Html msg
heartbeat = i [] (Heartbeat Solid)
{-| <i class="fas fa-helicopter"></i> -}
helicopter : Html msg
helicopter = i [] (Helicopter Solid)
{-| <i class="fas fa-hexagon"></i> -}
hexagon : Html msg
hexagon = i [] (Hexagon Solid)
{-| <i class="fas fa-highlighter"></i> -}
highlighter : Html msg
highlighter = i [] (Highlighter Solid)
{-| <i class="fas fa-history"></i> -}
history : Html msg
history = i [] (History Solid)
{-| <i class="fas fa-hockey-puck"></i> -}
hockeyPuck : Html msg
hockeyPuck = i [] (HockeyPuck Solid)
{-| <i class="fas fa-hockey-sticks"></i> -}
hockeySticks : Html msg
hockeySticks = i [] (HockeySticks Solid)
{-| <i class="fas fa-home"></i> -}
home : Html msg
home = i [] (Home Solid)
{-| <i class="fas fa-home-heart"></i> -}
homeHeart : Html msg
homeHeart = i [] (HomeHeart Solid)
{-| <i class="fas fa-hospital"></i> -}
hospital : Html msg
hospital = i [] (Hospital Solid)
{-| <i class="fas fa-hospital-alt"></i> -}
hospitalAlt : Html msg
hospitalAlt = i [] (HospitalAlt Solid)
{-| <i class="fas fa-hospital-symbol"></i> -}
hospitalSymbol : Html msg
hospitalSymbol = i [] (HospitalSymbol Solid)
{-| <i class="fas fa-hot-tub"></i> -}
hotTub : Html msg
hotTub = i [] (HotTub Solid)
{-| <i class="fas fa-hotel"></i> -}
hotel : Html msg
hotel = i [] (Hotel Solid)
{-| <i class="fas fa-hourglass"></i> -}
hourglass : Html msg
hourglass = i [] (Hourglass Solid)
{-| <i class="fas fa-hourglass-end"></i> -}
hourglassEnd : Html msg
hourglassEnd = i [] (HourglassEnd Solid)
{-| <i class="fas fa-hourglass-half"></i> -}
hourglassHalf : Html msg
hourglassHalf = i [] (HourglassHalf Solid)
{-| <i class="fas fa-hourglass-start"></i> -}
hourglassStart : Html msg
hourglassStart = i [] (HourglassStart Solid)
{-| <i class="fas fa-i-cursor"></i> -}
iCursor : Html msg
iCursor = i [] (ICursor Solid)
{-| <i class="fas fa-id-badge"></i> -}
idBadge : Html msg
idBadge = i [] (IdBadge Solid)
{-| <i class="fas fa-id-card"></i> -}
idCard : Html msg
idCard = i [] (IdCard Solid)
{-| <i class="fas fa-id-card-alt"></i> -}
idCardAlt : Html msg
idCardAlt = i [] (IdCardAlt Solid)
{-| <i class="fas fa-image"></i> -}
image : Html msg
image = i [] (Image Solid)
{-| <i class="fas fa-images"></i> -}
images : Html msg
images = i [] (Images Solid)
{-| <i class="fas fa-inbox"></i> -}
inbox : Html msg
inbox = i [] (Inbox Solid)
{-| <i class="fas fa-inbox-in"></i> -}
inboxIn : Html msg
inboxIn = i [] (InboxIn Solid)
{-| <i class="fas fa-inbox-out"></i> -}
inboxOut : Html msg
inboxOut = i [] (InboxOut Solid)
{-| <i class="fas fa-indent"></i> -}
indent : Html msg
indent = i [] (Indent Solid)
{-| <i class="fas fa-industry"></i> -}
industry : Html msg
industry = i [] (Industry Solid)
{-| <i class="fas fa-industry-alt"></i> -}
industryAlt : Html msg
industryAlt = i [] (IndustryAlt Solid)
{-| <i class="fas fa-infinity"></i> -}
infinity : Html msg
infinity = i [] (Infinity Solid)
{-| <i class="fas fa-info"></i> -}
info : Html msg
info = i [] (Info Solid)
{-| <i class="fas fa-info-circle"></i> -}
infoCircle : Html msg
infoCircle = i [] (InfoCircle Solid)
{-| <i class="fas fa-info-square"></i> -}
infoSquare : Html msg
infoSquare = i [] (InfoSquare Solid)
{-| <i class="fas fa-inventory"></i> -}
inventory : Html msg
inventory = i [] (Inventory Solid)
{-| <i class="fas fa-italic"></i> -}
italic : Html msg
italic = i [] (Italic Solid)
{-| <i class="fas fa-jack-o-lantern"></i> -}
jackOLantern : Html msg
jackOLantern = i [] (JackOLantern Solid)
{-| <i class="fas fa-joint"></i> -}
joint : Html msg
joint = i [] (Joint Solid)
{-| <i class="fas fa-key"></i> -}
key : Html msg
key = i [] (Key Solid)
{-| <i class="fas fa-keyboard"></i> -}
keyboard : Html msg
keyboard = i [] (Keyboard Solid)
{-| <i class="fas fa-kiss"></i> -}
kiss : Html msg
kiss = i [] (Kiss Solid)
{-| <i class="fas fa-kiss-beam"></i> -}
kissBeam : Html msg
kissBeam = i [] (KissBeam Solid)
{-| <i class="fas fa-kiss-wink-heart"></i> -}
kissWinkHeart : Html msg
kissWinkHeart = i [] (KissWinkHeart Solid)
{-| <i class="fas fa-kiwi-bird"></i> -}
kiwiBird : Html msg
kiwiBird = i [] (KiwiBird Solid)
{-| <i class="fas fa-lamp"></i> -}
lamp : Html msg
lamp = i [] (Lamp Solid)
{-| <i class="fas fa-language"></i> -}
language : Html msg
language = i [] (Language Solid)
{-| <i class="fas fa-laptop"></i> -}
laptop : Html msg
laptop = i [] (Laptop Solid)
{-| <i class="fas fa-laugh"></i> -}
laugh : Html msg
laugh = i [] (Laugh Solid)
{-| <i class="fas fa-laugh-beam"></i> -}
laughBeam : Html msg
laughBeam = i [] (LaughBeam Solid)
{-| <i class="fas fa-laugh-squint"></i> -}
laughSquint : Html msg
laughSquint = i [] (LaughSquint Solid)
{-| <i class="fas fa-laugh-wink"></i> -}
laughWink : Html msg
laughWink = i [] (LaughWink Solid)
{-| <i class="fas fa-leaf"></i> -}
leaf : Html msg
leaf = i [] (Leaf Solid)
{-| <i class="fas fa-leaf-heart"></i> -}
leafHeart : Html msg
leafHeart = i [] (LeafHeart Solid)
{-| <i class="fas fa-lemon"></i> -}
lemon : Html msg
lemon = i [] (Lemon Solid)
{-| <i class="fas fa-less-than"></i> -}
lessThan : Html msg
lessThan = i [] (LessThan Solid)
{-| <i class="fas fa-less-than-equal"></i> -}
lessThanEqual : Html msg
lessThanEqual = i [] (LessThanEqual Solid)
{-| <i class="fas fa-level-down"></i> -}
levelDown : Html msg
levelDown = i [] (LevelDown Solid)
{-| <i class="fas fa-level-down-alt"></i> -}
levelDownAlt : Html msg
levelDownAlt = i [] (LevelDownAlt Solid)
{-| <i class="fas fa-level-up"></i> -}
levelUp : Html msg
levelUp = i [] (LevelUp Solid)
{-| <i class="fas fa-level-up-alt"></i> -}
levelUpAlt : Html msg
levelUpAlt = i [] (LevelUpAlt Solid)
{-| <i class="fas fa-life-ring"></i> -}
lifeRing : Html msg
lifeRing = i [] (LifeRing Solid)
{-| <i class="fas fa-lightbulb"></i> -}
lightbulb : Html msg
lightbulb = i [] (Lightbulb Solid)
{-| <i class="fas fa-link"></i> -}
link : Html msg
link = i [] (Link Solid)
{-| <i class="fas fa-lira-sign"></i> -}
liraSign : Html msg
liraSign = i [] (LiraSign Solid)
{-| <i class="fas fa-list"></i> -}
list : Html msg
list = i [] (List Solid)
{-| <i class="fas fa-list-alt"></i> -}
listAlt : Html msg
listAlt = i [] (ListAlt Solid)
{-| <i class="fas fa-list-ol"></i> -}
listOl : Html msg
listOl = i [] (ListOl Solid)
{-| <i class="fas fa-list-ul"></i> -}
listUl : Html msg
listUl = i [] (ListUl Solid)
{-| <i class="fas fa-location-arrow"></i> -}
locationArrow : Html msg
locationArrow = i [] (LocationArrow Solid)
{-| <i class="fas fa-lock"></i> -}
lock : Html msg
lock = i [] (Lock Solid)
{-| <i class="fas fa-lock-alt"></i> -}
lockAlt : Html msg
lockAlt = i [] (LockAlt Solid)
{-| <i class="fas fa-lock-open"></i> -}
lockOpen : Html msg
lockOpen = i [] (LockOpen Solid)
{-| <i class="fas fa-lock-open-alt"></i> -}
lockOpenAlt : Html msg
lockOpenAlt = i [] (LockOpenAlt Solid)
{-| <i class="fas fa-long-arrow-alt-down"></i> -}
longArrowAltDown : Html msg
longArrowAltDown = i [] (LongArrowAltDown Solid)
{-| <i class="fas fa-long-arrow-alt-left"></i> -}
longArrowAltLeft : Html msg
longArrowAltLeft = i [] (LongArrowAltLeft Solid)
{-| <i class="fas fa-long-arrow-alt-right"></i> -}
longArrowAltRight : Html msg
longArrowAltRight = i [] (LongArrowAltRight Solid)
{-| <i class="fas fa-long-arrow-alt-up"></i> -}
longArrowAltUp : Html msg
longArrowAltUp = i [] (LongArrowAltUp Solid)
{-| <i class="fas fa-long-arrow-down"></i> -}
longArrowDown : Html msg
longArrowDown = i [] (LongArrowDown Solid)
{-| <i class="fas fa-long-arrow-left"></i> -}
longArrowLeft : Html msg
longArrowLeft = i [] (LongArrowLeft Solid)
{-| <i class="fas fa-long-arrow-right"></i> -}
longArrowRight : Html msg
longArrowRight = i [] (LongArrowRight Solid)
{-| <i class="fas fa-long-arrow-up"></i> -}
longArrowUp : Html msg
longArrowUp = i [] (LongArrowUp Solid)
{-| <i class="fas fa-loveseat"></i> -}
loveseat : Html msg
loveseat = i [] (Loveseat Solid)
{-| <i class="fas fa-low-vision"></i> -}
lowVision : Html msg
lowVision = i [] (LowVision Solid)
{-| <i class="fas fa-luchador"></i> -}
luchador : Html msg
luchador = i [] (Luchador Solid)
{-| <i class="fas fa-luggage-cart"></i> -}
luggageCart : Html msg
luggageCart = i [] (LuggageCart Solid)
{-| <i class="fas fa-magic"></i> -}
magic : Html msg
magic = i [] (Magic Solid)
{-| <i class="fas fa-magnet"></i> -}
magnet : Html msg
magnet = i [] (Magnet Solid)
{-| <i class="fas fa-male"></i> -}
male : Html msg
male = i [] (Male Solid)
{-| <i class="fas fa-map"></i> -}
map : Html msg
map = i [] (Map Solid)
{-| <i class="fas fa-map-marked"></i> -}
mapMarked : Html msg
mapMarked = i [] (MapMarked Solid)
{-| <i class="fas fa-map-marked-alt"></i> -}
mapMarkedAlt : Html msg
mapMarkedAlt = i [] (MapMarkedAlt Solid)
{-| <i class="fas fa-map-marker"></i> -}
mapMarker : Html msg
mapMarker = i [] (MapMarker Solid)
{-| <i class="fas fa-map-marker-alt"></i> -}
mapMarkerAlt : Html msg
mapMarkerAlt = i [] (MapMarkerAlt Solid)
{-| <i class="fas fa-map-pin"></i> -}
mapPin : Html msg
mapPin = i [] (MapPin Solid)
{-| <i class="fas fa-map-signs"></i> -}
mapSigns : Html msg
mapSigns = i [] (MapSigns Solid)
{-| <i class="fas fa-marker"></i> -}
marker : Html msg
marker = i [] (Marker Solid)
{-| <i class="fas fa-mars"></i> -}
mars : Html msg
mars = i [] (Mars Solid)
{-| <i class="fas fa-mars-double"></i> -}
marsDouble : Html msg
marsDouble = i [] (MarsDouble Solid)
{-| <i class="fas fa-mars-stroke"></i> -}
marsStroke : Html msg
marsStroke = i [] (MarsStroke Solid)
{-| <i class="fas fa-mars-stroke-h"></i> -}
marsStrokeH : Html msg
marsStrokeH = i [] (MarsStrokeH Solid)
{-| <i class="fas fa-mars-stroke-v"></i> -}
marsStrokeV : Html msg
marsStrokeV = i [] (MarsStrokeV Solid)
{-| <i class="fas fa-medal"></i> -}
medal : Html msg
medal = i [] (Medal Solid)
{-| <i class="fas fa-medkit"></i> -}
medkit : Html msg
medkit = i [] (Medkit Solid)
{-| <i class="fas fa-meh"></i> -}
meh : Html msg
meh = i [] (Meh Solid)
{-| <i class="fas fa-meh-blank"></i> -}
mehBlank : Html msg
mehBlank = i [] (MehBlank Solid)
{-| <i class="fas fa-meh-rolling-eyes"></i> -}
mehRollingEyes : Html msg
mehRollingEyes = i [] (MehRollingEyes Solid)
{-| <i class="fas fa-memory"></i> -}
memory : Html msg
memory = i [] (Memory Solid)
{-| <i class="fas fa-mercury"></i> -}
mercury : Html msg
mercury = i [] (Mercury Solid)
{-| <i class="fas fa-microchip"></i> -}
microchip : Html msg
microchip = i [] (Microchip Solid)
{-| <i class="fas fa-microphone"></i> -}
microphone : Html msg
microphone = i [] (Microphone Solid)
{-| <i class="fas fa-microphone-alt"></i> -}
microphoneAlt : Html msg
microphoneAlt = i [] (MicrophoneAlt Solid)
{-| <i class="fas fa-microphone-alt-slash"></i> -}
microphoneAltSlash : Html msg
microphoneAltSlash = i [] (MicrophoneAltSlash Solid)
{-| <i class="fas fa-microphone-slash"></i> -}
microphoneSlash : Html msg
microphoneSlash = i [] (MicrophoneSlash Solid)
{-| <i class="fas fa-minus"></i> -}
minus : Html msg
minus = i [] (Minus Solid)
{-| <i class="fas fa-minus-circle"></i> -}
minusCircle : Html msg
minusCircle = i [] (MinusCircle Solid)
{-| <i class="fas fa-minus-hexagon"></i> -}
minusHexagon : Html msg
minusHexagon = i [] (MinusHexagon Solid)
{-| <i class="fas fa-minus-octagon"></i> -}
minusOctagon : Html msg
minusOctagon = i [] (MinusOctagon Solid)
{-| <i class="fas fa-minus-square"></i> -}
minusSquare : Html msg
minusSquare = i [] (MinusSquare Solid)
{-| <i class="fas fa-mobile"></i> -}
mobile : Html msg
mobile = i [] (Mobile Solid)
{-| <i class="fas fa-mobile-alt"></i> -}
mobileAlt : Html msg
mobileAlt = i [] (MobileAlt Solid)
{-| <i class="fas fa-mobile-android"></i> -}
mobileAndroid : Html msg
mobileAndroid = i [] (MobileAndroid Solid)
{-| <i class="fas fa-mobile-android-alt"></i> -}
mobileAndroidAlt : Html msg
mobileAndroidAlt = i [] (MobileAndroidAlt Solid)
{-| <i class="fas fa-money-bill"></i> -}
moneyBill : Html msg
moneyBill = i [] (MoneyBill Solid)
{-| <i class="fas fa-money-bill-alt"></i> -}
moneyBillAlt : Html msg
moneyBillAlt = i [] (MoneyBillAlt Solid)
{-| <i class="fas fa-money-bill-wave"></i> -}
moneyBillWave : Html msg
moneyBillWave = i [] (MoneyBillWave Solid)
{-| <i class="fas fa-money-bill-wave-alt"></i> -}
moneyBillWaveAlt : Html msg
moneyBillWaveAlt = i [] (MoneyBillWaveAlt Solid)
{-| <i class="fas fa-money-check"></i> -}
moneyCheck : Html msg
moneyCheck = i [] (MoneyCheck Solid)
{-| <i class="fas fa-money-check-alt"></i> -}
moneyCheckAlt : Html msg
moneyCheckAlt = i [] (MoneyCheckAlt Solid)
{-| <i class="fas fa-monument"></i> -}
monument : Html msg
monument = i [] (Monument Solid)
{-| <i class="fas fa-moon"></i> -}
moon : Html msg
moon = i [] (Moon Solid)
{-| <i class="fas fa-mortar-pestle"></i> -}
mortarPestle : Html msg
mortarPestle = i [] (MortarPestle Solid)
{-| <i class="fas fa-motorcycle"></i> -}
motorcycle : Html msg
motorcycle = i [] (Motorcycle Solid)
{-| <i class="fas fa-mouse-pointer"></i> -}
mousePointer : Html msg
mousePointer = i [] (MousePointer Solid)
{-| <i class="fas fa-music"></i> -}
music : Html msg
music = i [] (Music Solid)
{-| <i class="fas fa-neuter"></i> -}
neuter : Html msg
neuter = i [] (Neuter Solid)
{-| <i class="fas fa-newspaper"></i> -}
newspaper : Html msg
newspaper = i [] (Newspaper Solid)
{-| <i class="fas fa-not-equal"></i> -}
notEqual : Html msg
notEqual = i [] (NotEqual Solid)
{-| <i class="fas fa-notes-medical"></i> -}
notesMedical : Html msg
notesMedical = i [] (NotesMedical Solid)
{-| <i class="fas fa-object-group"></i> -}
objectGroup : Html msg
objectGroup = i [] (ObjectGroup Solid)
{-| <i class="fas fa-object-ungroup"></i> -}
objectUngroup : Html msg
objectUngroup = i [] (ObjectUngroup Solid)
{-| <i class="fas fa-octagon"></i> -}
octagon : Html msg
octagon = i [] (Octagon Solid)
{-| <i class="fas fa-outdent"></i> -}
outdent : Html msg
outdent = i [] (Outdent Solid)
{-| <i class="fas fa-paint-brush"></i> -}
paintBrush : Html msg
paintBrush = i [] (PaintBrush Solid)
{-| <i class="fas fa-paint-brush-alt"></i> -}
paintBrushAlt : Html msg
paintBrushAlt = i [] (PaintBrushAlt Solid)
{-| <i class="fas fa-paint-roller"></i> -}
paintRoller : Html msg
paintRoller = i [] (PaintRoller Solid)
{-| <i class="fas fa-palette"></i> -}
palette : Html msg
palette = i [] (Palette Solid)
{-| <i class="fas fa-pallet"></i> -}
pallet : Html msg
pallet = i [] (Pallet Solid)
{-| <i class="fas fa-pallet-alt"></i> -}
palletAlt : Html msg
palletAlt = i [] (PalletAlt Solid)
{-| <i class="fas fa-paper-plane"></i> -}
paperPlane : Html msg
paperPlane = i [] (PaperPlane Solid)
{-| <i class="fas fa-paperclip"></i> -}
paperclip : Html msg
paperclip = i [] (Paperclip Solid)
{-| <i class="fas fa-parachute-box"></i> -}
parachuteBox : Html msg
parachuteBox = i [] (ParachuteBox Solid)
{-| <i class="fas fa-paragraph"></i> -}
paragraph : Html msg
paragraph = i [] (Paragraph Solid)
{-| <i class="fas fa-parking"></i> -}
parking : Html msg
parking = i [] (Parking Solid)
{-| <i class="fas fa-passport"></i> -}
passport : Html msg
passport = i [] (Passport Solid)
{-| <i class="fas fa-paste"></i> -}
paste : Html msg
paste = i [] (Paste Solid)
{-| <i class="fas fa-pause"></i> -}
pause : Html msg
pause = i [] (Pause Solid)
{-| <i class="fas fa-pause-circle"></i> -}
pauseCircle : Html msg
pauseCircle = i [] (PauseCircle Solid)
{-| <i class="fas fa-paw"></i> -}
paw : Html msg
paw = i [] (Paw Solid)
{-| <i class="fas fa-pen"></i> -}
pen : Html msg
pen = i [] (Pen Solid)
{-| <i class="fas fa-pen-alt"></i> -}
penAlt : Html msg
penAlt = i [] (PenAlt Solid)
{-| <i class="fas fa-pen-fancy"></i> -}
penFancy : Html msg
penFancy = i [] (PenFancy Solid)
{-| <i class="fas fa-pen-nib"></i> -}
penNib : Html msg
penNib = i [] (PenNib Solid)
{-| <i class="fas fa-pen-square"></i> -}
penSquare : Html msg
penSquare = i [] (PenSquare Solid)
{-| <i class="fas fa-pencil"></i> -}
pencil : Html msg
pencil = i [] (Pencil Solid)
{-| <i class="fas fa-pencil-alt"></i> -}
pencilAlt : Html msg
pencilAlt = i [] (PencilAlt Solid)
{-| <i class="fas fa-pencil-ruler"></i> -}
pencilRuler : Html msg
pencilRuler = i [] (PencilRuler Solid)
{-| <i class="fas fa-pennant"></i> -}
pennant : Html msg
pennant = i [] (Pennant Solid)
{-| <i class="fas fa-people-carry"></i> -}
peopleCarry : Html msg
peopleCarry = i [] (PeopleCarry Solid)
{-| <i class="fas fa-percent"></i> -}
percent : Html msg
percent = i [] (Percent Solid)
{-| <i class="fas fa-percentage"></i> -}
percentage : Html msg
percentage = i [] (Percentage Solid)
{-| <i class="fas fa-person-carry"></i> -}
personCarry : Html msg
personCarry = i [] (PersonCarry Solid)
{-| <i class="fas fa-person-dolly"></i> -}
personDolly : Html msg
personDolly = i [] (PersonDolly Solid)
{-| <i class="fas fa-person-dolly-empty"></i> -}
personDollyEmpty : Html msg
personDollyEmpty = i [] (PersonDollyEmpty Solid)
{-| <i class="fas fa-phone"></i> -}
phone : Html msg
phone = i [] (Phone Solid)
{-| <i class="fas fa-phone-plus"></i> -}
phonePlus : Html msg
phonePlus = i [] (PhonePlus Solid)
{-| <i class="fas fa-phone-slash"></i> -}
phoneSlash : Html msg
phoneSlash = i [] (PhoneSlash Solid)
{-| <i class="fas fa-phone-square"></i> -}
phoneSquare : Html msg
phoneSquare = i [] (PhoneSquare Solid)
{-| <i class="fas fa-phone-volume"></i> -}
phoneVolume : Html msg
phoneVolume = i [] (PhoneVolume Solid)
{-| <i class="fas fa-piggy-bank"></i> -}
piggyBank : Html msg
piggyBank = i [] (PiggyBank Solid)
{-| <i class="fas fa-pills"></i> -}
pills : Html msg
pills = i [] (Pills Solid)
{-| <i class="fas fa-plane"></i> -}
plane : Html msg
plane = i [] (Plane Solid)
{-| <i class="fas fa-plane-alt"></i> -}
planeAlt : Html msg
planeAlt = i [] (PlaneAlt Solid)
{-| <i class="fas fa-plane-arrival"></i> -}
planeArrival : Html msg
planeArrival = i [] (PlaneArrival Solid)
{-| <i class="fas fa-plane-departure"></i> -}
planeDeparture : Html msg
planeDeparture = i [] (PlaneDeparture Solid)
{-| <i class="fas fa-play"></i> -}
play : Html msg
play = i [] (Play Solid)
{-| <i class="fas fa-play-circle"></i> -}
playCircle : Html msg
playCircle = i [] (PlayCircle Solid)
{-| <i class="fas fa-plug"></i> -}
plug : Html msg
plug = i [] (Plug Solid)
{-| <i class="fas fa-plus"></i> -}
plus : Html msg
plus = i [] (Plus Solid)
{-| <i class="fas fa-plus-circle"></i> -}
plusCircle : Html msg
plusCircle = i [] (PlusCircle Solid)
{-| <i class="fas fa-plus-hexagon"></i> -}
plusHexagon : Html msg
plusHexagon = i [] (PlusHexagon Solid)
{-| <i class="fas fa-plus-octagon"></i> -}
plusOctagon : Html msg
plusOctagon = i [] (PlusOctagon Solid)
{-| <i class="fas fa-plus-square"></i> -}
plusSquare : Html msg
plusSquare = i [] (PlusSquare Solid)
{-| <i class="fas fa-podcast"></i> -}
podcast : Html msg
podcast = i [] (Podcast Solid)
{-| <i class="fas fa-poo"></i> -}
poo : Html msg
poo = i [] (Poo Solid)
{-| <i class="fas fa-portrait"></i> -}
portrait : Html msg
portrait = i [] (Portrait Solid)
{-| <i class="fas fa-pound-sign"></i> -}
poundSign : Html msg
poundSign = i [] (PoundSign Solid)
{-| <i class="fas fa-power-off"></i> -}
powerOff : Html msg
powerOff = i [] (PowerOff Solid)
{-| <i class="fas fa-prescription"></i> -}
prescription : Html msg
prescription = i [] (Prescription Solid)
{-| <i class="fas fa-prescription-bottle"></i> -}
prescriptionBottle : Html msg
prescriptionBottle = i [] (PrescriptionBottle Solid)
{-| <i class="fas fa-prescription-bottle-alt"></i> -}
prescriptionBottleAlt : Html msg
prescriptionBottleAlt = i [] (PrescriptionBottleAlt Solid)
{-| <i class="fas fa-print"></i> -}
print : Html msg
print = i [] (Print Solid)
{-| <i class="fas fa-procedures"></i> -}
procedures : Html msg
procedures = i [] (Procedures Solid)
{-| <i class="fas fa-project-diagram"></i> -}
projectDiagram : Html msg
projectDiagram = i [] (ProjectDiagram Solid)
{-| <i class="fas fa-puzzle-piece"></i> -}
puzzlePiece : Html msg
puzzlePiece = i [] (PuzzlePiece Solid)
{-| <i class="fas fa-qrcode"></i> -}
qrcode : Html msg
qrcode = i [] (Qrcode Solid)
{-| <i class="fas fa-question"></i> -}
question : Html msg
question = i [] (Question Solid)
{-| <i class="fas fa-question-circle"></i> -}
questionCircle : Html msg
questionCircle = i [] (QuestionCircle Solid)
{-| <i class="fas fa-question-square"></i> -}
questionSquare : Html msg
questionSquare = i [] (QuestionSquare Solid)
{-| <i class="fas fa-quidditch"></i> -}
quidditch : Html msg
quidditch = i [] (Quidditch Solid)
{-| <i class="fas fa-quote-left"></i> -}
quoteLeft : Html msg
quoteLeft = i [] (QuoteLeft Solid)
{-| <i class="fas fa-quote-right"></i> -}
quoteRight : Html msg
quoteRight = i [] (QuoteRight Solid)
{-| <i class="fas fa-racquet"></i> -}
racquet : Html msg
racquet = i [] (Racquet Solid)
{-| <i class="fas fa-ramp-loading"></i> -}
rampLoading : Html msg
rampLoading = i [] (RampLoading Solid)
{-| <i class="fas fa-random"></i> -}
random : Html msg
random = i [] (Random Solid)
{-| <i class="fas fa-receipt"></i> -}
receipt : Html msg
receipt = i [] (Receipt Solid)
{-| <i class="fas fa-rectangle-landscape"></i> -}
rectangleLandscape : Html msg
rectangleLandscape = i [] (RectangleLandscape Solid)
{-| <i class="fas fa-rectangle-portrait"></i> -}
rectanglePortrait : Html msg
rectanglePortrait = i [] (RectanglePortrait Solid)
{-| <i class="fas fa-rectangle-wide"></i> -}
rectangleWide : Html msg
rectangleWide = i [] (RectangleWide Solid)
{-| <i class="fas fa-recycle"></i> -}
recycle : Html msg
recycle = i [] (Recycle Solid)
{-| <i class="fas fa-redo"></i> -}
redo : Html msg
redo = i [] (Redo Solid)
{-| <i class="fas fa-redo-alt"></i> -}
redoAlt : Html msg
redoAlt = i [] (RedoAlt Solid)
{-| <i class="fas fa-registered"></i> -}
registered : Html msg
registered = i [] (Registered Solid)
{-| <i class="fas fa-repeat"></i> -}
repeat : Html msg
repeat = i [] (Repeat Solid)
{-| <i class="fas fa-repeat-1"></i> -}
repeat1 : Html msg
repeat1 = i [] (Repeat1 Solid)
{-| <i class="fas fa-repeat-1-alt"></i> -}
repeat1Alt : Html msg
repeat1Alt = i [] (Repeat1Alt Solid)
{-| <i class="fas fa-repeat-alt"></i> -}
repeatAlt : Html msg
repeatAlt = i [] (RepeatAlt Solid)
{-| <i class="fas fa-reply"></i> -}
reply : Html msg
reply = i [] (Reply Solid)
{-| <i class="fas fa-reply-all"></i> -}
replyAll : Html msg
replyAll = i [] (ReplyAll Solid)
{-| <i class="fas fa-retweet"></i> -}
retweet : Html msg
retweet = i [] (Retweet Solid)
{-| <i class="fas fa-retweet-alt"></i> -}
retweetAlt : Html msg
retweetAlt = i [] (RetweetAlt Solid)
{-| <i class="fas fa-ribbon"></i> -}
ribbon : Html msg
ribbon = i [] (Ribbon Solid)
{-| <i class="fas fa-road"></i> -}
road : Html msg
road = i [] (Road Solid)
{-| <i class="fas fa-robot"></i> -}
robot : Html msg
robot = i [] (Robot Solid)
{-| <i class="fas fa-rocket"></i> -}
rocket : Html msg
rocket = i [] (Rocket Solid)
{-| <i class="fas fa-route"></i> -}
route : Html msg
route = i [] (Route Solid)
{-| <i class="fas fa-rss"></i> -}
rss : Html msg
rss = i [] (Rss Solid)
{-| <i class="fas fa-rss-square"></i> -}
rssSquare : Html msg
rssSquare = i [] (RssSquare Solid)
{-| <i class="fas fa-ruble-sign"></i> -}
rubleSign : Html msg
rubleSign = i [] (RubleSign Solid)
{-| <i class="fas fa-ruler"></i> -}
ruler : Html msg
ruler = i [] (Ruler Solid)
{-| <i class="fas fa-ruler-combined"></i> -}
rulerCombined : Html msg
rulerCombined = i [] (RulerCombined Solid)
{-| <i class="fas fa-ruler-horizontal"></i> -}
rulerHorizontal : Html msg
rulerHorizontal = i [] (RulerHorizontal Solid)
{-| <i class="fas fa-ruler-vertical"></i> -}
rulerVertical : Html msg
rulerVertical = i [] (RulerVertical Solid)
{-| <i class="fas fa-rupee-sign"></i> -}
rupeeSign : Html msg
rupeeSign = i [] (RupeeSign Solid)
{-| <i class="fas fa-sad-cry"></i> -}
sadCry : Html msg
sadCry = i [] (SadCry Solid)
{-| <i class="fas fa-sad-tear"></i> -}
sadTear : Html msg
sadTear = i [] (SadTear Solid)
{-| <i class="fas fa-save"></i> -}
save : Html msg
save = i [] (Save Solid)
{-| <i class="fas fa-scanner"></i> -}
scanner : Html msg
scanner = i [] (Scanner Solid)
{-| <i class="fas fa-scanner-keyboard"></i> -}
scannerKeyboard : Html msg
scannerKeyboard = i [] (ScannerKeyboard Solid)
{-| <i class="fas fa-scanner-touchscreen"></i> -}
scannerTouchscreen : Html msg
scannerTouchscreen = i [] (ScannerTouchscreen Solid)
{-| <i class="fas fa-school"></i> -}
school : Html msg
school = i [] (School Solid)
{-| <i class="fas fa-screwdriver"></i> -}
screwdriver : Html msg
screwdriver = i [] (Screwdriver Solid)
{-| <i class="fas fa-scrubber"></i> -}
scrubber : Html msg
scrubber = i [] (Scrubber Solid)
{-| <i class="fas fa-search"></i> -}
search : Html msg
search = i [] (Search Solid)
{-| <i class="fas fa-search-minus"></i> -}
searchMinus : Html msg
searchMinus = i [] (SearchMinus Solid)
{-| <i class="fas fa-search-plus"></i> -}
searchPlus : Html msg
searchPlus = i [] (SearchPlus Solid)
{-| <i class="fas fa-seedling"></i> -}
seedling : Html msg
seedling = i [] (Seedling Solid)
{-| <i class="fas fa-server"></i> -}
server : Html msg
server = i [] (Server Solid)
{-| <i class="fas fa-share"></i> -}
share : Html msg
share = i [] (Share Solid)
{-| <i class="fas fa-share-all"></i> -}
shareAll : Html msg
shareAll = i [] (ShareAll Solid)
{-| <i class="fas fa-share-alt"></i> -}
shareAlt : Html msg
shareAlt = i [] (ShareAlt Solid)
{-| <i class="fas fa-share-alt-square"></i> -}
shareAltSquare : Html msg
shareAltSquare = i [] (ShareAltSquare Solid)
{-| <i class="fas fa-share-square"></i> -}
shareSquare : Html msg
shareSquare = i [] (ShareSquare Solid)
{-| <i class="fas fa-shekel-sign"></i> -}
shekelSign : Html msg
shekelSign = i [] (ShekelSign Solid)
{-| <i class="fas fa-shield"></i> -}
shield : Html msg
shield = i [] (Shield Solid)
{-| <i class="fas fa-shield-alt"></i> -}
shieldAlt : Html msg
shieldAlt = i [] (ShieldAlt Solid)
{-| <i class="fas fa-shield-check"></i> -}
shieldCheck : Html msg
shieldCheck = i [] (ShieldCheck Solid)
{-| <i class="fas fa-ship"></i> -}
ship : Html msg
ship = i [] (Ship Solid)
{-| <i class="fas fa-shipping-fast"></i> -}
shippingFast : Html msg
shippingFast = i [] (ShippingFast Solid)
{-| <i class="fas fa-shipping-timed"></i> -}
shippingTimed : Html msg
shippingTimed = i [] (ShippingTimed Solid)
{-| <i class="fas fa-shoe-prints"></i> -}
shoePrints : Html msg
shoePrints = i [] (ShoePrints Solid)
{-| <i class="fas fa-shopping-bag"></i> -}
shoppingBag : Html msg
shoppingBag = i [] (ShoppingBag Solid)
{-| <i class="fas fa-shopping-basket"></i> -}
shoppingBasket : Html msg
shoppingBasket = i [] (ShoppingBasket Solid)
{-| <i class="fas fa-shopping-cart"></i> -}
shoppingCart : Html msg
shoppingCart = i [] (ShoppingCart Solid)
{-| <i class="fas fa-shower"></i> -}
shower : Html msg
shower = i [] (Shower Solid)
{-| <i class="fas fa-shuttle-van"></i> -}
shuttleVan : Html msg
shuttleVan = i [] (ShuttleVan Solid)
{-| <i class="fas fa-shuttlecock"></i> -}
shuttlecock : Html msg
shuttlecock = i [] (Shuttlecock Solid)
{-| <i class="fas fa-sign"></i> -}
sign : Html msg
sign = i [] (Sign Solid)
{-| <i class="fas fa-sign-in"></i> -}
signIn : Html msg
signIn = i [] (SignIn Solid)
{-| <i class="fas fa-sign-in-alt"></i> -}
signInAlt : Html msg
signInAlt = i [] (SignInAlt Solid)
{-| <i class="fas fa-sign-language"></i> -}
signLanguage : Html msg
signLanguage = i [] (SignLanguage Solid)
{-| <i class="fas fa-sign-out"></i> -}
signOut : Html msg
signOut = i [] (SignOut Solid)
{-| <i class="fas fa-sign-out-alt"></i> -}
signOutAlt : Html msg
signOutAlt = i [] (SignOutAlt Solid)
{-| <i class="fas fa-signal"></i> -}
signal : Html msg
signal = i [] (Signal Solid)
{-| <i class="fas fa-signature"></i> -}
signature : Html msg
signature = i [] (Signature Solid)
{-| <i class="fas fa-sitemap"></i> -}
sitemap : Html msg
sitemap = i [] (Sitemap Solid)
{-| <i class="fas fa-skull"></i> -}
skull : Html msg
skull = i [] (Skull Solid)
{-| <i class="fas fa-sliders-h"></i> -}
slidersH : Html msg
slidersH = i [] (SlidersH Solid)
{-| <i class="fas fa-sliders-h-square"></i> -}
slidersHSquare : Html msg
slidersHSquare = i [] (SlidersHSquare Solid)
{-| <i class="fas fa-sliders-v"></i> -}
slidersV : Html msg
slidersV = i [] (SlidersV Solid)
{-| <i class="fas fa-sliders-v-square"></i> -}
slidersVSquare : Html msg
slidersVSquare = i [] (SlidersVSquare Solid)
{-| <i class="fas fa-smile"></i> -}
smile : Html msg
smile = i [] (Smile Solid)
{-| <i class="fas fa-smile-beam"></i> -}
smileBeam : Html msg
smileBeam = i [] (SmileBeam Solid)
{-| <i class="fas fa-smile-plus"></i> -}
smilePlus : Html msg
smilePlus = i [] (SmilePlus Solid)
{-| <i class="fas fa-smile-wink"></i> -}
smileWink : Html msg
smileWink = i [] (SmileWink Solid)
{-| <i class="fas fa-smoking"></i> -}
smoking : Html msg
smoking = i [] (Smoking Solid)
{-| <i class="fas fa-smoking-ban"></i> -}
smokingBan : Html msg
smokingBan = i [] (SmokingBan Solid)
{-| <i class="fas fa-snowflake"></i> -}
snowflake : Html msg
snowflake = i [] (Snowflake Solid)
{-| <i class="fas fa-solar-panel"></i> -}
solarPanel : Html msg
solarPanel = i [] (SolarPanel Solid)
{-| <i class="fas fa-sort"></i> -}
sort : Html msg
sort = i [] (Sort Solid)
{-| <i class="fas fa-sort-alpha-down"></i> -}
sortAlphaDown : Html msg
sortAlphaDown = i [] (SortAlphaDown Solid)
{-| <i class="fas fa-sort-alpha-up"></i> -}
sortAlphaUp : Html msg
sortAlphaUp = i [] (SortAlphaUp Solid)
{-| <i class="fas fa-sort-amount-down"></i> -}
sortAmountDown : Html msg
sortAmountDown = i [] (SortAmountDown Solid)
{-| <i class="fas fa-sort-amount-up"></i> -}
sortAmountUp : Html msg
sortAmountUp = i [] (SortAmountUp Solid)
{-| <i class="fas fa-sort-down"></i> -}
sortDown : Html msg
sortDown = i [] (SortDown Solid)
{-| <i class="fas fa-sort-numeric-down"></i> -}
sortNumericDown : Html msg
sortNumericDown = i [] (SortNumericDown Solid)
{-| <i class="fas fa-sort-numeric-up"></i> -}
sortNumericUp : Html msg
sortNumericUp = i [] (SortNumericUp Solid)
{-| <i class="fas fa-sort-up"></i> -}
sortUp : Html msg
sortUp = i [] (SortUp Solid)
{-| <i class="fas fa-spa"></i> -}
spa : Html msg
spa = i [] (Spa Solid)
{-| <i class="fas fa-space-shuttle"></i> -}
spaceShuttle : Html msg
spaceShuttle = i [] (SpaceShuttle Solid)
{-| <i class="fas fa-spade"></i> -}
spade : Html msg
spade = i [] (Spade Solid)
{-| <i class="fas fa-spinner"></i> -}
spinner : Html msg
spinner = i [] (Spinner Solid)
{-| <i class="fas fa-spinner-third"></i> -}
spinnerThird : Html msg
spinnerThird = i [] (SpinnerThird Solid)
{-| <i class="fas fa-splotch"></i> -}
splotch : Html msg
splotch = i [] (Splotch Solid)
{-| <i class="fas fa-spray-can"></i> -}
sprayCan : Html msg
sprayCan = i [] (SprayCan Solid)
{-| <i class="fas fa-square"></i> -}
square : Html msg
square = i [] (Square Solid)
{-| <i class="fas fa-square-full"></i> -}
squareFull : Html msg
squareFull = i [] (SquareFull Solid)
{-| <i class="fas fa-stamp"></i> -}
stamp : Html msg
stamp = i [] (Stamp Solid)
{-| <i class="fas fa-star"></i> -}
star : Html msg
star = i [] (Star Solid)
{-| <i class="fas fa-star-exclamation"></i> -}
starExclamation : Html msg
starExclamation = i [] (StarExclamation Solid)
{-| <i class="fas fa-star-half"></i> -}
starHalf : Html msg
starHalf = i [] (StarHalf Solid)
{-| <i class="fas fa-star-half-alt"></i> -}
starHalfAlt : Html msg
starHalfAlt = i [] (StarHalfAlt Solid)
{-| <i class="fas fa-step-backward"></i> -}
stepBackward : Html msg
stepBackward = i [] (StepBackward Solid)
{-| <i class="fas fa-step-forward"></i> -}
stepForward : Html msg
stepForward = i [] (StepForward Solid)
{-| <i class="fas fa-stethoscope"></i> -}
stethoscope : Html msg
stethoscope = i [] (Stethoscope Solid)
{-| <i class="fas fa-sticky-note"></i> -}
stickyNote : Html msg
stickyNote = i [] (StickyNote Solid)
{-| <i class="fas fa-stop"></i> -}
stop : Html msg
stop = i [] (Stop Solid)
{-| <i class="fas fa-stop-circle"></i> -}
stopCircle : Html msg
stopCircle = i [] (StopCircle Solid)
{-| <i class="fas fa-stopwatch"></i> -}
stopwatch : Html msg
stopwatch = i [] (Stopwatch Solid)
{-| <i class="fas fa-store"></i> -}
store : Html msg
store = i [] (Store Solid)
{-| <i class="fas fa-store-alt"></i> -}
storeAlt : Html msg
storeAlt = i [] (StoreAlt Solid)
{-| <i class="fas fa-stream"></i> -}
stream : Html msg
stream = i [] (Stream Solid)
{-| <i class="fas fa-street-view"></i> -}
streetView : Html msg
streetView = i [] (StreetView Solid)
{-| <i class="fas fa-strikethrough"></i> -}
strikethrough : Html msg
strikethrough = i [] (Strikethrough Solid)
{-| <i class="fas fa-stroopwafel"></i> -}
stroopwafel : Html msg
stroopwafel = i [] (Stroopwafel Solid)
{-| <i class="fas fa-subscript"></i> -}
subscript : Html msg
subscript = i [] (Subscript Solid)
{-| <i class="fas fa-subway"></i> -}
subway : Html msg
subway = i [] (Subway Solid)
{-| <i class="fas fa-suitcase"></i> -}
suitcase : Html msg
suitcase = i [] (Suitcase Solid)
{-| <i class="fas fa-suitcase-rolling"></i> -}
suitcaseRolling : Html msg
suitcaseRolling = i [] (SuitcaseRolling Solid)
{-| <i class="fas fa-sun"></i> -}
sun : Html msg
sun = i [] (Sun Solid)
{-| <i class="fas fa-superscript"></i> -}
superscript : Html msg
superscript = i [] (Superscript Solid)
{-| <i class="fas fa-surprise"></i> -}
surprise : Html msg
surprise = i [] (Surprise Solid)
{-| <i class="fas fa-swatchbook"></i> -}
swatchbook : Html msg
swatchbook = i [] (Swatchbook Solid)
{-| <i class="fas fa-swimmer"></i> -}
swimmer : Html msg
swimmer = i [] (Swimmer Solid)
{-| <i class="fas fa-swimming-pool"></i> -}
swimmingPool : Html msg
swimmingPool = i [] (SwimmingPool Solid)
{-| <i class="fas fa-sync"></i> -}
sync : Html msg
sync = i [] (Sync Solid)
{-| <i class="fas fa-sync-alt"></i> -}
syncAlt : Html msg
syncAlt = i [] (SyncAlt Solid)
{-| <i class="fas fa-syringe"></i> -}
syringe : Html msg
syringe = i [] (Syringe Solid)
{-| <i class="fas fa-table"></i> -}
table : Html msg
table = i [] (Table Solid)
{-| <i class="fas fa-table-tennis"></i> -}
tableTennis : Html msg
tableTennis = i [] (TableTennis Solid)
{-| <i class="fas fa-tablet"></i> -}
tablet : Html msg
tablet = i [] (Tablet Solid)
{-| <i class="fas fa-tablet-alt"></i> -}
tabletAlt : Html msg
tabletAlt = i [] (TabletAlt Solid)
{-| <i class="fas fa-tablet-android"></i> -}
tabletAndroid : Html msg
tabletAndroid = i [] (TabletAndroid Solid)
{-| <i class="fas fa-tablet-android-alt"></i> -}
tabletAndroidAlt : Html msg
tabletAndroidAlt = i [] (TabletAndroidAlt Solid)
{-| <i class="fas fa-tablet-rugged"></i> -}
tabletRugged : Html msg
tabletRugged = i [] (TabletRugged Solid)
{-| <i class="fas fa-tablets"></i> -}
tablets : Html msg
tablets = i [] (Tablets Solid)
{-| <i class="fas fa-tachometer"></i> -}
tachometer : Html msg
tachometer = i [] (Tachometer Solid)
{-| <i class="fas fa-tachometer-alt"></i> -}
tachometerAlt : Html msg
tachometerAlt = i [] (TachometerAlt Solid)
{-| <i class="fas fa-tag"></i> -}
tag : Html msg
tag = i [] (Tag Solid)
{-| <i class="fas fa-tags"></i> -}
tags : Html msg
tags = i [] (Tags Solid)
{-| <i class="fas fa-tape"></i> -}
tape : Html msg
tape = i [] (Tape Solid)
{-| <i class="fas fa-tasks"></i> -}
tasks : Html msg
tasks = i [] (Tasks Solid)
{-| <i class="fas fa-taxi"></i> -}
taxi : Html msg
taxi = i [] (Taxi Solid)
{-| <i class="fas fa-tennis-ball"></i> -}
tennisBall : Html msg
tennisBall = i [] (TennisBall Solid)
{-| <i class="fas fa-terminal"></i> -}
terminal : Html msg
terminal = i [] (Terminal Solid)
{-| <i class="fas fa-text-height"></i> -}
textHeight : Html msg
textHeight = i [] (TextHeight Solid)
{-| <i class="fas fa-text-width"></i> -}
textWidth : Html msg
textWidth = i [] (TextWidth Solid)
{-| <i class="fas fa-th"></i> -}
th : Html msg
th = i [] (Th Solid)
{-| <i class="fas fa-th-large"></i> -}
thLarge : Html msg
thLarge = i [] (ThLarge Solid)
{-| <i class="fas fa-th-list"></i> -}
thList : Html msg
thList = i [] (ThList Solid)
{-| <i class="fas fa-thermometer"></i> -}
thermometer : Html msg
thermometer = i [] (Thermometer Solid)
{-| <i class="fas fa-thermometer-empty"></i> -}
thermometerEmpty : Html msg
thermometerEmpty = i [] (ThermometerEmpty Solid)
{-| <i class="fas fa-thermometer-full"></i> -}
thermometerFull : Html msg
thermometerFull = i [] (ThermometerFull Solid)
{-| <i class="fas fa-thermometer-half"></i> -}
thermometerHalf : Html msg
thermometerHalf = i [] (ThermometerHalf Solid)
{-| <i class="fas fa-thermometer-quarter"></i> -}
thermometerQuarter : Html msg
thermometerQuarter = i [] (ThermometerQuarter Solid)
{-| <i class="fas fa-thermometer-three-quarters"></i> -}
thermometerThreeQuarters : Html msg
thermometerThreeQuarters = i [] (ThermometerThreeQuarters Solid)
{-| <i class="fas fa-thumbs-down"></i> -}
thumbsDown : Html msg
thumbsDown = i [] (ThumbsDown Solid)
{-| <i class="fas fa-thumbs-up"></i> -}
thumbsUp : Html msg
thumbsUp = i [] (ThumbsUp Solid)
{-| <i class="fas fa-thumbtack"></i> -}
thumbtack : Html msg
thumbtack = i [] (Thumbtack Solid)
{-| <i class="fas fa-ticket"></i> -}
ticket : Html msg
ticket = i [] (Ticket Solid)
{-| <i class="fas fa-ticket-alt"></i> -}
ticketAlt : Html msg
ticketAlt = i [] (TicketAlt Solid)
{-| <i class="fas fa-times"></i> -}
times : Html msg
times = i [] (Times Solid)
{-| <i class="fas fa-times-circle"></i> -}
timesCircle : Html msg
timesCircle = i [] (TimesCircle Solid)
{-| <i class="fas fa-times-hexagon"></i> -}
timesHexagon : Html msg
timesHexagon = i [] (TimesHexagon Solid)
{-| <i class="fas fa-times-octagon"></i> -}
timesOctagon : Html msg
timesOctagon = i [] (TimesOctagon Solid)
{-| <i class="fas fa-times-square"></i> -}
timesSquare : Html msg
timesSquare = i [] (TimesSquare Solid)
{-| <i class="fas fa-tint"></i> -}
tint : Html msg
tint = i [] (Tint Solid)
{-| <i class="fas fa-tint-slash"></i> -}
tintSlash : Html msg
tintSlash = i [] (TintSlash Solid)
{-| <i class="fas fa-tired"></i> -}
tired : Html msg
tired = i [] (Tired Solid)
{-| <i class="fas fa-toggle-off"></i> -}
toggleOff : Html msg
toggleOff = i [] (ToggleOff Solid)
{-| <i class="fas fa-toggle-on"></i> -}
toggleOn : Html msg
toggleOn = i [] (ToggleOn Solid)
{-| <i class="fas fa-toolbox"></i> -}
toolbox : Html msg
toolbox = i [] (Toolbox Solid)
{-| <i class="fas fa-tooth"></i> -}
tooth : Html msg
tooth = i [] (Tooth Solid)
{-| <i class="fas fa-trademark"></i> -}
trademark : Html msg
trademark = i [] (Trademark Solid)
{-| <i class="fas fa-train"></i> -}
train : Html msg
train = i [] (Train Solid)
{-| <i class="fas fa-transgender"></i> -}
transgender : Html msg
transgender = i [] (Transgender Solid)
{-| <i class="fas fa-transgender-alt"></i> -}
transgenderAlt : Html msg
transgenderAlt = i [] (TransgenderAlt Solid)
{-| <i class="fas fa-trash"></i> -}
trash : Html msg
trash = i [] (Trash Solid)
{-| <i class="fas fa-trash-alt"></i> -}
trashAlt : Html msg
trashAlt = i [] (TrashAlt Solid)
{-| <i class="fas fa-tree"></i> -}
tree : Html msg
tree = i [] (Tree Solid)
{-| <i class="fas fa-tree-alt"></i> -}
treeAlt : Html msg
treeAlt = i [] (TreeAlt Solid)
{-| <i class="fas fa-triangle"></i> -}
triangle : Html msg
triangle = i [] (Triangle Solid)
{-| <i class="fas fa-trophy"></i> -}
trophy : Html msg
trophy = i [] (Trophy Solid)
{-| <i class="fas fa-trophy-alt"></i> -}
trophyAlt : Html msg
trophyAlt = i [] (TrophyAlt Solid)
{-| <i class="fas fa-truck"></i> -}
truck : Html msg
truck = i [] (Truck Solid)
{-| <i class="fas fa-truck-container"></i> -}
truckContainer : Html msg
truckContainer = i [] (TruckContainer Solid)
{-| <i class="fas fa-truck-couch"></i> -}
truckCouch : Html msg
truckCouch = i [] (TruckCouch Solid)
{-| <i class="fas fa-truck-loading"></i> -}
truckLoading : Html msg
truckLoading = i [] (TruckLoading Solid)
{-| <i class="fas fa-truck-moving"></i> -}
truckMoving : Html msg
truckMoving = i [] (TruckMoving Solid)
{-| <i class="fas fa-truck-ramp"></i> -}
truckRamp : Html msg
truckRamp = i [] (TruckRamp Solid)
{-| <i class="fas fa-tshirt"></i> -}
tshirt : Html msg
tshirt = i [] (Tshirt Solid)
{-| <i class="fas fa-tty"></i> -}
tty : Html msg
tty = i [] (Tty Solid)
{-| <i class="fas fa-tv"></i> -}
tv : Html msg
tv = i [] (Tv Solid)
{-| <i class="fas fa-tv-retro"></i> -}
tvRetro : Html msg
tvRetro = i [] (TvRetro Solid)
{-| <i class="fas fa-umbrella"></i> -}
umbrella : Html msg
umbrella = i [] (Umbrella Solid)
{-| <i class="fas fa-umbrella-beach"></i> -}
umbrellaBeach : Html msg
umbrellaBeach = i [] (UmbrellaBeach Solid)
{-| <i class="fas fa-underline"></i> -}
underline : Html msg
underline = i [] (Underline Solid)
{-| <i class="fas fa-undo"></i> -}
undo : Html msg
undo = i [] (Undo Solid)
{-| <i class="fas fa-undo-alt"></i> -}
undoAlt : Html msg
undoAlt = i [] (UndoAlt Solid)
{-| <i class="fas fa-universal-access"></i> -}
universalAccess : Html msg
universalAccess = i [] (UniversalAccess Solid)
{-| <i class="fas fa-university"></i> -}
university : Html msg
university = i [] (University Solid)
{-| <i class="fas fa-unlink"></i> -}
unlink : Html msg
unlink = i [] (Unlink Solid)
{-| <i class="fas fa-unlock"></i> -}
unlock : Html msg
unlock = i [] (Unlock Solid)
{-| <i class="fas fa-unlock-alt"></i> -}
unlockAlt : Html msg
unlockAlt = i [] (UnlockAlt Solid)
{-| <i class="fas fa-upload"></i> -}
upload : Html msg
upload = i [] (Upload Solid)
{-| <i class="fas fa-usd-circle"></i> -}
usdCircle : Html msg
usdCircle = i [] (UsdCircle Solid)
{-| <i class="fas fa-usd-square"></i> -}
usdSquare : Html msg
usdSquare = i [] (UsdSquare Solid)
{-| <i class="fas fa-user"></i> -}
user : Html msg
user = i [] (User Solid)
{-| <i class="fas fa-user-alt"></i> -}
userAlt : Html msg
userAlt = i [] (UserAlt Solid)
{-| <i class="fas fa-user-alt-slash"></i> -}
userAltSlash : Html msg
userAltSlash = i [] (UserAltSlash Solid)
{-| <i class="fas fa-user-astronaut"></i> -}
userAstronaut : Html msg
userAstronaut = i [] (UserAstronaut Solid)
{-| <i class="fas fa-user-check"></i> -}
userCheck : Html msg
userCheck = i [] (UserCheck Solid)
{-| <i class="fas fa-user-circle"></i> -}
userCircle : Html msg
userCircle = i [] (UserCircle Solid)
{-| <i class="fas fa-user-clock"></i> -}
userClock : Html msg
userClock = i [] (UserClock Solid)
{-| <i class="fas fa-user-cog"></i> -}
userCog : Html msg
userCog = i [] (UserCog Solid)
{-| <i class="fas fa-user-edit"></i> -}
userEdit : Html msg
userEdit = i [] (UserEdit Solid)
{-| <i class="fas fa-user-friends"></i> -}
userFriends : Html msg
userFriends = i [] (UserFriends Solid)
{-| <i class="fas fa-user-graduate"></i> -}
userGraduate : Html msg
userGraduate = i [] (UserGraduate Solid)
{-| <i class="fas fa-user-lock"></i> -}
userLock : Html msg
userLock = i [] (UserLock Solid)
{-| <i class="fas fa-user-md"></i> -}
userMd : Html msg
userMd = i [] (UserMd Solid)
{-| <i class="fas fa-user-minus"></i> -}
userMinus : Html msg
userMinus = i [] (UserMinus Solid)
{-| <i class="fas fa-user-ninja"></i> -}
userNinja : Html msg
userNinja = i [] (UserNinja Solid)
{-| <i class="fas fa-user-plus"></i> -}
userPlus : Html msg
userPlus = i [] (UserPlus Solid)
{-| <i class="fas fa-user-secret"></i> -}
userSecret : Html msg
userSecret = i [] (UserSecret Solid)
{-| <i class="fas fa-user-shield"></i> -}
userShield : Html msg
userShield = i [] (UserShield Solid)
{-| <i class="fas fa-user-slash"></i> -}
userSlash : Html msg
userSlash = i [] (UserSlash Solid)
{-| <i class="fas fa-user-tag"></i> -}
userTag : Html msg
userTag = i [] (UserTag Solid)
{-| <i class="fas fa-user-tie"></i> -}
userTie : Html msg
userTie = i [] (UserTie Solid)
{-| <i class="fas fa-user-times"></i> -}
userTimes : Html msg
userTimes = i [] (UserTimes Solid)
{-| <i class="fas fa-users"></i> -}
users : Html msg
users = i [] (Users Solid)
{-| <i class="fas fa-users-cog"></i> -}
usersCog : Html msg
usersCog = i [] (UsersCog Solid)
{-| <i class="fas fa-utensil-fork"></i> -}
utensilFork : Html msg
utensilFork = i [] (UtensilFork Solid)
{-| <i class="fas fa-utensil-knife"></i> -}
utensilKnife : Html msg
utensilKnife = i [] (UtensilKnife Solid)
{-| <i class="fas fa-utensil-spoon"></i> -}
utensilSpoon : Html msg
utensilSpoon = i [] (UtensilSpoon Solid)
{-| <i class="fas fa-utensils"></i> -}
utensils : Html msg
utensils = i [] (Utensils Solid)
{-| <i class="fas fa-utensils-alt"></i> -}
utensilsAlt : Html msg
utensilsAlt = i [] (UtensilsAlt Solid)
{-| <i class="fas fa-vector-square"></i> -}
vectorSquare : Html msg
vectorSquare = i [] (VectorSquare Solid)
{-| <i class="fas fa-venus"></i> -}
venus : Html msg
venus = i [] (Venus Solid)
{-| <i class="fas fa-venus-double"></i> -}
venusDouble : Html msg
venusDouble = i [] (VenusDouble Solid)
{-| <i class="fas fa-venus-mars"></i> -}
venusMars : Html msg
venusMars = i [] (VenusMars Solid)
{-| <i class="fas fa-vial"></i> -}
vial : Html msg
vial = i [] (Vial Solid)
{-| <i class="fas fa-vials"></i> -}
vials : Html msg
vials = i [] (Vials Solid)
{-| <i class="fas fa-video"></i> -}
video : Html msg
video = i [] (Video Solid)
{-| <i class="fas fa-video-plus"></i> -}
videoPlus : Html msg
videoPlus = i [] (VideoPlus Solid)
{-| <i class="fas fa-video-slash"></i> -}
videoSlash : Html msg
videoSlash = i [] (VideoSlash Solid)
{-| <i class="fas fa-volleyball-ball"></i> -}
volleyballBall : Html msg
volleyballBall = i [] (VolleyballBall Solid)
{-| <i class="fas fa-volume-down"></i> -}
volumeDown : Html msg
volumeDown = i [] (VolumeDown Solid)
{-| <i class="fas fa-volume-mute"></i> -}
volumeMute : Html msg
volumeMute = i [] (VolumeMute Solid)
{-| <i class="fas fa-volume-off"></i> -}
volumeOff : Html msg
volumeOff = i [] (VolumeOff Solid)
{-| <i class="fas fa-volume-up"></i> -}
volumeUp : Html msg
volumeUp = i [] (VolumeUp Solid)
{-| <i class="fas fa-walking"></i> -}
walking : Html msg
walking = i [] (Walking Solid)
{-| <i class="fas fa-wallet"></i> -}
wallet : Html msg
wallet = i [] (Wallet Solid)
{-| <i class="fas fa-warehouse"></i> -}
warehouse : Html msg
warehouse = i [] (Warehouse Solid)
{-| <i class="fas fa-warehouse-alt"></i> -}
warehouseAlt : Html msg
warehouseAlt = i [] (WarehouseAlt Solid)
{-| <i class="fas fa-watch"></i> -}
watch : Html msg
watch = i [] (Watch Solid)
{-| <i class="fas fa-weight"></i> -}
weight : Html msg
weight = i [] (Weight Solid)
{-| <i class="fas fa-weight-hanging"></i> -}
weightHanging : Html msg
weightHanging = i [] (WeightHanging Solid)
{-| <i class="fas fa-wheelchair"></i> -}
wheelchair : Html msg
wheelchair = i [] (Wheelchair Solid)
{-| <i class="fas fa-whistle"></i> -}
whistle : Html msg
whistle = i [] (Whistle Solid)
{-| <i class="fas fa-wifi"></i> -}
wifi : Html msg
wifi = i [] (Wifi Solid)
{-| <i class="fas fa-window"></i> -}
window : Html msg
window = i [] (Window Solid)
{-| <i class="fas fa-window-alt"></i> -}
windowAlt : Html msg
windowAlt = i [] (WindowAlt Solid)
{-| <i class="fas fa-window-close"></i> -}
windowClose : Html msg
windowClose = i [] (WindowClose Solid)
{-| <i class="fas fa-window-maximize"></i> -}
windowMaximize : Html msg
windowMaximize = i [] (WindowMaximize Solid)
{-| <i class="fas fa-window-minimize"></i> -}
windowMinimize : Html msg
windowMinimize = i [] (WindowMinimize Solid)
{-| <i class="fas fa-window-restore"></i> -}
windowRestore : Html msg
windowRestore = i [] (WindowRestore Solid)
{-| <i class="fas fa-wine-glass"></i> -}
wineGlass : Html msg
wineGlass = i [] (WineGlass Solid)
{-| <i class="fas fa-wine-glass-alt"></i> -}
wineGlassAlt : Html msg
wineGlassAlt = i [] (WineGlassAlt Solid)
{-| <i class="fas fa-won-sign"></i> -}
wonSign : Html msg
wonSign = i [] (WonSign Solid)
{-| <i class="fas fa-wrench"></i> -}
wrench : Html msg
wrench = i [] (Wrench Solid)
{-| <i class="fas fa-x-ray"></i> -}
xRay : Html msg
xRay = i [] (XRay Solid)
{-| <i class="fas fa-yen-sign"></i> -}
yenSign : Html msg
yenSign = i [] (YenSign Solid)

{-| <i Class="fab fa-accessible-icon"></i> -}
accessibleIcon : Html msg
accessibleIcon = i [] AccessibleIcon
{-| <i Class="fab fa-accusoft"></i> -}
accusoft : Html msg
accusoft = i [] Accusoft
{-| <i Class="fab fa-adn"></i> -}
adn : Html msg
adn = i [] Adn
{-| <i Class="fab fa-adversal"></i> -}
adversal : Html msg
adversal = i [] Adversal
{-| <i Class="fab fa-affiliatetheme"></i> -}
affiliatetheme : Html msg
affiliatetheme = i [] Affiliatetheme
{-| <i Class="fab fa-algolia"></i> -}
algolia : Html msg
algolia = i [] Algolia
{-| <i Class="fab fa-amazon"></i> -}
amazon : Html msg
amazon = i [] Amazon
{-| <i Class="fab fa-amazon-pay"></i> -}
amazonPay : Html msg
amazonPay = i [] AmazonPay
{-| <i Class="fab fa-amilia"></i> -}
amilia : Html msg
amilia = i [] Amilia
{-| <i Class="fab fa-android"></i> -}
android : Html msg
android = i [] Android
{-| <i Class="fab fa-angellist"></i> -}
angellist : Html msg
angellist = i [] Angellist
{-| <i Class="fab fa-angrycreative"></i> -}
angrycreative : Html msg
angrycreative = i [] Angrycreative
{-| <i Class="fab fa-angular"></i> -}
angular : Html msg
angular = i [] Angular
{-| <i Class="fab fa-app-store"></i> -}
appStore : Html msg
appStore = i [] AppStore
{-| <i Class="fab fa-app-store-ios"></i> -}
appStoreIos : Html msg
appStoreIos = i [] AppStoreIos
{-| <i Class="fab fa-apper"></i> -}
apper : Html msg
apper = i [] Apper
{-| <i Class="fab fa-apple"></i> -}
apple : Html msg
apple = i [] Apple
{-| <i Class="fab fa-apple-pay"></i> -}
applePay : Html msg
applePay = i [] ApplePay
{-| <i Class="fab fa-asymmetrik"></i> -}
asymmetrik : Html msg
asymmetrik = i [] Asymmetrik
{-| <i Class="fab fa-audible"></i> -}
audible : Html msg
audible = i [] Audible
{-| <i Class="fab fa-autoprefixer"></i> -}
autoprefixer : Html msg
autoprefixer = i [] Autoprefixer
{-| <i Class="fab fa-avianex"></i> -}
avianex : Html msg
avianex = i [] Avianex
{-| <i Class="fab fa-aviato"></i> -}
aviato : Html msg
aviato = i [] Aviato
{-| <i Class="fab fa-aws"></i> -}
aws : Html msg
aws = i [] Aws
{-| <i Class="fab fa-bandcamp"></i> -}
bandcamp : Html msg
bandcamp = i [] Bandcamp
{-| <i Class="fab fa-behance"></i> -}
behance : Html msg
behance = i [] Behance
{-| <i Class="fab fa-behance-square"></i> -}
behanceSquare : Html msg
behanceSquare = i [] BehanceSquare
{-| <i Class="fab fa-bimobject"></i> -}
bimobject : Html msg
bimobject = i [] Bimobject
{-| <i Class="fab fa-bitbucket"></i> -}
bitbucket : Html msg
bitbucket = i [] Bitbucket
{-| <i Class="fab fa-bitcoin"></i> -}
bitcoin : Html msg
bitcoin = i [] Bitcoin
{-| <i Class="fab fa-bity"></i> -}
bity : Html msg
bity = i [] Bity
{-| <i Class="fab fa-black-tie"></i> -}
blackTie : Html msg
blackTie = i [] BlackTie
{-| <i Class="fab fa-blackberry"></i> -}
blackberry : Html msg
blackberry = i [] Blackberry
{-| <i Class="fab fa-blogger"></i> -}
blogger : Html msg
blogger = i [] Blogger
{-| <i Class="fab fa-blogger-b"></i> -}
bloggerB : Html msg
bloggerB = i [] BloggerB
{-| <i Class="fab fa-bluetooth"></i> -}
bluetooth : Html msg
bluetooth = i [] Bluetooth
{-| <i Class="fab fa-bluetooth-b"></i> -}
bluetoothB : Html msg
bluetoothB = i [] BluetoothB
{-| <i Class="fab fa-btc"></i> -}
btc : Html msg
btc = i [] Btc
{-| <i Class="fab fa-buromobelexperte"></i> -}
buromobelexperte : Html msg
buromobelexperte = i [] Buromobelexperte
{-| <i Class="fab fa-buysellads"></i> -}
buysellads : Html msg
buysellads = i [] Buysellads
{-| <i Class="fab fa-cc-amazon-pay"></i> -}
ccAmazonPay : Html msg
ccAmazonPay = i [] CcAmazonPay
{-| <i Class="fab fa-cc-amex"></i> -}
ccAmex : Html msg
ccAmex = i [] CcAmex
{-| <i Class="fab fa-cc-apple-pay"></i> -}
ccApplePay : Html msg
ccApplePay = i [] CcApplePay
{-| <i Class="fab fa-cc-diners-club"></i> -}
ccDinersClub : Html msg
ccDinersClub = i [] CcDinersClub
{-| <i Class="fab fa-cc-discover"></i> -}
ccDiscover : Html msg
ccDiscover = i [] CcDiscover
{-| <i Class="fab fa-cc-jcb"></i> -}
ccJcb : Html msg
ccJcb = i [] CcJcb
{-| <i Class="fab fa-cc-mastercard"></i> -}
ccMastercard : Html msg
ccMastercard = i [] CcMastercard
{-| <i Class="fab fa-cc-paypal"></i> -}
ccPaypal : Html msg
ccPaypal = i [] CcPaypal
{-| <i Class="fab fa-cc-stripe"></i> -}
ccStripe : Html msg
ccStripe = i [] CcStripe
{-| <i Class="fab fa-cc-visa"></i> -}
ccVisa : Html msg
ccVisa = i [] CcVisa
{-| <i Class="fab fa-centercode"></i> -}
centercode : Html msg
centercode = i [] Centercode
{-| <i Class="fab fa-chrome"></i> -}
chrome : Html msg
chrome = i [] Chrome
{-| <i Class="fab fa-cloudscale"></i> -}
cloudscale : Html msg
cloudscale = i [] Cloudscale
{-| <i Class="fab fa-cloudsmith"></i> -}
cloudsmith : Html msg
cloudsmith = i [] Cloudsmith
{-| <i Class="fab fa-cloudversify"></i> -}
cloudversify : Html msg
cloudversify = i [] Cloudversify
{-| <i Class="fab fa-codepen"></i> -}
codepen : Html msg
codepen = i [] Codepen
{-| <i Class="fab fa-codiepie"></i> -}
codiepie : Html msg
codiepie = i [] Codiepie
{-| <i Class="fab fa-connectdevelop"></i> -}
connectdevelop : Html msg
connectdevelop = i [] Connectdevelop
{-| <i Class="fab fa-contao"></i> -}
contao : Html msg
contao = i [] Contao
{-| <i Class="fab fa-cpanel"></i> -}
cpanel : Html msg
cpanel = i [] Cpanel
{-| <i Class="fab fa-creative-commons"></i> -}
creativeCommons : Html msg
creativeCommons = i [] CreativeCommons
{-| <i Class="fab fa-creative-commons-by"></i> -}
creativeCommonsBy : Html msg
creativeCommonsBy = i [] CreativeCommonsBy
{-| <i Class="fab fa-creative-commons-nc"></i> -}
creativeCommonsNc : Html msg
creativeCommonsNc = i [] CreativeCommonsNc
{-| <i Class="fab fa-creative-commons-nc-eu"></i> -}
creativeCommonsNcEu : Html msg
creativeCommonsNcEu = i [] CreativeCommonsNcEu
{-| <i Class="fab fa-creative-commons-nc-jp"></i> -}
creativeCommonsNcJp : Html msg
creativeCommonsNcJp = i [] CreativeCommonsNcJp
{-| <i Class="fab fa-creative-commons-nd"></i> -}
creativeCommonsNd : Html msg
creativeCommonsNd = i [] CreativeCommonsNd
{-| <i Class="fab fa-creative-commons-pd"></i> -}
creativeCommonsPd : Html msg
creativeCommonsPd = i [] CreativeCommonsPd
{-| <i Class="fab fa-creative-commons-pd-alt"></i> -}
creativeCommonsPdAlt : Html msg
creativeCommonsPdAlt = i [] CreativeCommonsPdAlt
{-| <i Class="fab fa-creative-commons-remix"></i> -}
creativeCommonsRemix : Html msg
creativeCommonsRemix = i [] CreativeCommonsRemix
{-| <i Class="fab fa-creative-commons-sa"></i> -}
creativeCommonsSa : Html msg
creativeCommonsSa = i [] CreativeCommonsSa
{-| <i Class="fab fa-creative-commons-sampling"></i> -}
creativeCommonsSampling : Html msg
creativeCommonsSampling = i [] CreativeCommonsSampling
{-| <i Class="fab fa-creative-commons-sampling-plus"></i> -}
creativeCommonsSamplingPlus : Html msg
creativeCommonsSamplingPlus = i [] CreativeCommonsSamplingPlus
{-| <i Class="fab fa-creative-commons-share"></i> -}
creativeCommonsShare : Html msg
creativeCommonsShare = i [] CreativeCommonsShare
{-| <i Class="fab fa-css3"></i> -}
css3 : Html msg
css3 = i [] Css3
{-| <i Class="fab fa-css3-alt"></i> -}
css3Alt : Html msg
css3Alt = i [] Css3Alt
{-| <i Class="fab fa-cuttlefish"></i> -}
cuttlefish : Html msg
cuttlefish = i [] Cuttlefish
{-| <i Class="fab fa-d-and-d"></i> -}
dAndD : Html msg
dAndD = i [] DAndD
{-| <i Class="fab fa-dashcube"></i> -}
dashcube : Html msg
dashcube = i [] Dashcube
{-| <i Class="fab fa-delicious"></i> -}
delicious : Html msg
delicious = i [] Delicious
{-| <i Class="fab fa-deploydog"></i> -}
deploydog : Html msg
deploydog = i [] Deploydog
{-| <i Class="fab fa-deskpro"></i> -}
deskpro : Html msg
deskpro = i [] Deskpro
{-| <i Class="fab fa-deviantart"></i> -}
deviantart : Html msg
deviantart = i [] Deviantart
{-| <i Class="fab fa-digg"></i> -}
digg : Html msg
digg = i [] Digg
{-| <i Class="fab fa-digital-ocean"></i> -}
digitalOcean : Html msg
digitalOcean = i [] DigitalOcean
{-| <i Class="fab fa-discord"></i> -}
discord : Html msg
discord = i [] Discord
{-| <i Class="fab fa-discourse"></i> -}
discourse : Html msg
discourse = i [] Discourse
{-| <i Class="fab fa-dochub"></i> -}
dochub : Html msg
dochub = i [] Dochub
{-| <i Class="fab fa-docker"></i> -}
docker : Html msg
docker = i [] Docker
{-| <i Class="fab fa-draft2digital"></i> -}
draft2Digital : Html msg
draft2Digital = i [] Draft2Digital
{-| <i Class="fab fa-dribbble"></i> -}
dribbble : Html msg
dribbble = i [] Dribbble
{-| <i Class="fab fa-dribbble-square"></i> -}
dribbbleSquare : Html msg
dribbbleSquare = i [] DribbbleSquare
{-| <i Class="fab fa-dropbox"></i> -}
dropbox : Html msg
dropbox = i [] Dropbox
{-| <i Class="fab fa-drupal"></i> -}
drupal : Html msg
drupal = i [] Drupal
{-| <i Class="fab fa-dyalog"></i> -}
dyalog : Html msg
dyalog = i [] Dyalog
{-| <i Class="fab fa-earlybirds"></i> -}
earlybirds : Html msg
earlybirds = i [] Earlybirds
{-| <i Class="fab fa-ebay"></i> -}
ebay : Html msg
ebay = i [] Ebay
{-| <i Class="fab fa-edge"></i> -}
edge : Html msg
edge = i [] Edge
{-| <i Class="fab fa-elementor"></i> -}
elementor : Html msg
elementor = i [] Elementor
{-| <i Class="fab fa-ember"></i> -}
ember : Html msg
ember = i [] Ember
{-| <i Class="fab fa-empire"></i> -}
empire : Html msg
empire = i [] Empire
{-| <i Class="fab fa-envira"></i> -}
envira : Html msg
envira = i [] Envira
{-| <i Class="fab fa-erlang"></i> -}
erlang : Html msg
erlang = i [] Erlang
{-| <i Class="fab fa-ethereum"></i> -}
ethereum : Html msg
ethereum = i [] Ethereum
{-| <i Class="fab fa-etsy"></i> -}
etsy : Html msg
etsy = i [] Etsy
{-| <i Class="fab fa-expeditedssl"></i> -}
expeditedssl : Html msg
expeditedssl = i [] Expeditedssl
{-| <i Class="fab fa-facebook"></i> -}
facebook : Html msg
facebook = i [] Facebook
{-| <i Class="fab fa-facebook-f"></i> -}
facebookF : Html msg
facebookF = i [] FacebookF
{-| <i Class="fab fa-facebook-messenger"></i> -}
facebookMessenger : Html msg
facebookMessenger = i [] FacebookMessenger
{-| <i Class="fab fa-facebook-square"></i> -}
facebookSquare : Html msg
facebookSquare = i [] FacebookSquare
{-| <i Class="fab fa-firefox"></i> -}
firefox : Html msg
firefox = i [] Firefox
{-| <i Class="fab fa-first-order"></i> -}
firstOrder : Html msg
firstOrder = i [] FirstOrder
{-| <i Class="fab fa-first-order-alt"></i> -}
firstOrderAlt : Html msg
firstOrderAlt = i [] FirstOrderAlt
{-| <i Class="fab fa-firstdraft"></i> -}
firstdraft : Html msg
firstdraft = i [] Firstdraft
{-| <i Class="fab fa-flickr"></i> -}
flickr : Html msg
flickr = i [] Flickr
{-| <i Class="fab fa-flipboard"></i> -}
flipboard : Html msg
flipboard = i [] Flipboard
{-| <i Class="fab fa-fly"></i> -}
fly : Html msg
fly = i [] Fly
{-| <i Class="fab fa-font-awesome"></i> -}
fontAwesome : Html msg
fontAwesome = i [] FontAwesome
{-| <i Class="fab fa-font-awesome-alt"></i> -}
fontAwesomeAlt : Html msg
fontAwesomeAlt = i [] FontAwesomeAlt
{-| <i Class="fab fa-font-awesome-flag"></i> -}
fontAwesomeFlag : Html msg
fontAwesomeFlag = i [] FontAwesomeFlag
{-| <i Class="fab fa-font-awesome-logo-full"></i> -}
fontAwesomeLogoFull : Html msg
fontAwesomeLogoFull = i [] FontAwesomeLogoFull
{-| <i Class="fab fa-fonticons"></i> -}
fonticons : Html msg
fonticons = i [] Fonticons
{-| <i Class="fab fa-fonticons-fi"></i> -}
fonticonsFi : Html msg
fonticonsFi = i [] FonticonsFi
{-| <i Class="fab fa-fort-awesome"></i> -}
fortAwesome : Html msg
fortAwesome = i [] FortAwesome
{-| <i Class="fab fa-fort-awesome-alt"></i> -}
fortAwesomeAlt : Html msg
fortAwesomeAlt = i [] FortAwesomeAlt
{-| <i Class="fab fa-forumbee"></i> -}
forumbee : Html msg
forumbee = i [] Forumbee
{-| <i Class="fab fa-foursquare"></i> -}
foursquare : Html msg
foursquare = i [] Foursquare
{-| <i Class="fab fa-free-code-camp"></i> -}
freeCodeCamp : Html msg
freeCodeCamp = i [] FreeCodeCamp
{-| <i Class="fab fa-freebsd"></i> -}
freebsd : Html msg
freebsd = i [] Freebsd
{-| <i Class="fab fa-fulcrum"></i> -}
fulcrum : Html msg
fulcrum = i [] Fulcrum
{-| <i Class="fab fa-galactic-republic"></i> -}
galacticRepublic : Html msg
galacticRepublic = i [] GalacticRepublic
{-| <i Class="fab fa-galactic-senate"></i> -}
galacticSenate : Html msg
galacticSenate = i [] GalacticSenate
{-| <i Class="fab fa-get-pocket"></i> -}
getPocket : Html msg
getPocket = i [] GetPocket
{-| <i Class="fab fa-gg"></i> -}
gg : Html msg
gg = i [] Gg
{-| <i Class="fab fa-gg-circle"></i> -}
ggCircle : Html msg
ggCircle = i [] GgCircle
{-| <i Class="fab fa-git"></i> -}
git : Html msg
git = i [] Git
{-| <i Class="fab fa-git-square"></i> -}
gitSquare : Html msg
gitSquare = i [] GitSquare
{-| <i Class="fab fa-github"></i> -}
github : Html msg
github = i [] Github
{-| <i Class="fab fa-github-alt"></i> -}
githubAlt : Html msg
githubAlt = i [] GithubAlt
{-| <i Class="fab fa-github-square"></i> -}
githubSquare : Html msg
githubSquare = i [] GithubSquare
{-| <i Class="fab fa-gitkraken"></i> -}
gitkraken : Html msg
gitkraken = i [] Gitkraken
{-| <i Class="fab fa-gitlab"></i> -}
gitlab : Html msg
gitlab = i [] Gitlab
{-| <i Class="fab fa-gitter"></i> -}
gitter : Html msg
gitter = i [] Gitter
{-| <i Class="fab fa-glide"></i> -}
glide : Html msg
glide = i [] Glide
{-| <i Class="fab fa-glide-g"></i> -}
glideG : Html msg
glideG = i [] GlideG
{-| <i Class="fab fa-gofore"></i> -}
gofore : Html msg
gofore = i [] Gofore
{-| <i Class="fab fa-goodreads"></i> -}
goodreads : Html msg
goodreads = i [] Goodreads
{-| <i Class="fab fa-goodreads-g"></i> -}
goodreadsG : Html msg
goodreadsG = i [] GoodreadsG
{-| <i Class="fab fa-google"></i> -}
google : Html msg
google = i [] Google
{-| <i Class="fab fa-google-drive"></i> -}
googleDrive : Html msg
googleDrive = i [] GoogleDrive
{-| <i Class="fab fa-google-play"></i> -}
googlePlay : Html msg
googlePlay = i [] GooglePlay
{-| <i Class="fab fa-google-plus"></i> -}
googlePlus : Html msg
googlePlus = i [] GooglePlus
{-| <i Class="fab fa-google-plus-g"></i> -}
googlePlusG : Html msg
googlePlusG = i [] GooglePlusG
{-| <i Class="fab fa-google-plus-square"></i> -}
googlePlusSquare : Html msg
googlePlusSquare = i [] GooglePlusSquare
{-| <i Class="fab fa-google-wallet"></i> -}
googleWallet : Html msg
googleWallet = i [] GoogleWallet
{-| <i Class="fab fa-gratipay"></i> -}
gratipay : Html msg
gratipay = i [] Gratipay
{-| <i Class="fab fa-grav"></i> -}
grav : Html msg
grav = i [] Grav
{-| <i Class="fab fa-gripfire"></i> -}
gripfire : Html msg
gripfire = i [] Gripfire
{-| <i Class="fab fa-grunt"></i> -}
grunt : Html msg
grunt = i [] Grunt
{-| <i Class="fab fa-gulp"></i> -}
gulp : Html msg
gulp = i [] Gulp
{-| <i Class="fab fa-hacker-news"></i> -}
hackerNews : Html msg
hackerNews = i [] HackerNews
{-| <i Class="fab fa-hacker-news-square"></i> -}
hackerNewsSquare : Html msg
hackerNewsSquare = i [] HackerNewsSquare
{-| <i Class="fab fa-hips"></i> -}
hips : Html msg
hips = i [] Hips
{-| <i Class="fab fa-hire-a-helper"></i> -}
hireAHelper : Html msg
hireAHelper = i [] HireAHelper
{-| <i Class="fab fa-hooli"></i> -}
hooli : Html msg
hooli = i [] Hooli
{-| <i Class="fab fa-hornbill"></i> -}
hornbill : Html msg
hornbill = i [] Hornbill
{-| <i Class="fab fa-hotjar"></i> -}
hotjar : Html msg
hotjar = i [] Hotjar
{-| <i Class="fab fa-houzz"></i> -}
houzz : Html msg
houzz = i [] Houzz
{-| <i Class="fab fa-html5"></i> -}
html5 : Html msg
html5 = i [] Html5
{-| <i Class="fab fa-hubspot"></i> -}
hubspot : Html msg
hubspot = i [] Hubspot
{-| <i Class="fab fa-imdb"></i> -}
imdb : Html msg
imdb = i [] Imdb
{-| <i Class="fab fa-instagram"></i> -}
instagram : Html msg
instagram = i [] Instagram
{-| <i Class="fab fa-internet-explorer"></i> -}
internetExplorer : Html msg
internetExplorer = i [] InternetExplorer
{-| <i Class="fab fa-ioxhost"></i> -}
ioxhost : Html msg
ioxhost = i [] Ioxhost
{-| <i Class="fab fa-itunes"></i> -}
itunes : Html msg
itunes = i [] Itunes
{-| <i Class="fab fa-itunes-note"></i> -}
itunesNote : Html msg
itunesNote = i [] ItunesNote
{-| <i Class="fab fa-java"></i> -}
java : Html msg
java = i [] Java
{-| <i Class="fab fa-jedi-order"></i> -}
jediOrder : Html msg
jediOrder = i [] JediOrder
{-| <i Class="fab fa-jenkins"></i> -}
jenkins : Html msg
jenkins = i [] Jenkins
{-| <i Class="fab fa-joget"></i> -}
joget : Html msg
joget = i [] Joget
{-| <i Class="fab fa-joomla"></i> -}
joomla : Html msg
joomla = i [] Joomla
{-| <i Class="fab fa-js"></i> -}
js : Html msg
js = i [] Js
{-| <i Class="fab fa-js-square"></i> -}
jsSquare : Html msg
jsSquare = i [] JsSquare
{-| <i Class="fab fa-jsfiddle"></i> -}
jsfiddle : Html msg
jsfiddle = i [] Jsfiddle
{-| <i Class="fab fa-keybase"></i> -}
keybase : Html msg
keybase = i [] Keybase
{-| <i Class="fab fa-keycdn"></i> -}
keycdn : Html msg
keycdn = i [] Keycdn
{-| <i Class="fab fa-kickstarter"></i> -}
kickstarter : Html msg
kickstarter = i [] Kickstarter
{-| <i Class="fab fa-kickstarter-k"></i> -}
kickstarterK : Html msg
kickstarterK = i [] KickstarterK
{-| <i Class="fab fa-korvue"></i> -}
korvue : Html msg
korvue = i [] Korvue
{-| <i Class="fab fa-laravel"></i> -}
laravel : Html msg
laravel = i [] Laravel
{-| <i Class="fab fa-lastfm"></i> -}
lastfm : Html msg
lastfm = i [] Lastfm
{-| <i Class="fab fa-lastfm-square"></i> -}
lastfmSquare : Html msg
lastfmSquare = i [] LastfmSquare
{-| <i Class="fab fa-leanpub"></i> -}
leanpub : Html msg
leanpub = i [] Leanpub
{-| <i Class="fab fa-less"></i> -}
less : Html msg
less = i [] Less
{-| <i Class="fab fa-line"></i> -}
line : Html msg
line = i [] Line
{-| <i Class="fab fa-linkedin"></i> -}
linkedin : Html msg
linkedin = i [] Linkedin
{-| <i Class="fab fa-linkedin-in"></i> -}
linkedinIn : Html msg
linkedinIn = i [] LinkedinIn
{-| <i Class="fab fa-linode"></i> -}
linode : Html msg
linode = i [] Linode
{-| <i Class="fab fa-linux"></i> -}
linux : Html msg
linux = i [] Linux
{-| <i Class="fab fa-lyft"></i> -}
lyft : Html msg
lyft = i [] Lyft
{-| <i Class="fab fa-magento"></i> -}
magento : Html msg
magento = i [] Magento
{-| <i Class="fab fa-mailchimp"></i> -}
mailchimp : Html msg
mailchimp = i [] Mailchimp
{-| <i Class="fab fa-mandalorian"></i> -}
mandalorian : Html msg
mandalorian = i [] Mandalorian
{-| <i Class="fab fa-mastodon"></i> -}
mastodon : Html msg
mastodon = i [] Mastodon
{-| <i Class="fab fa-maxcdn"></i> -}
maxcdn : Html msg
maxcdn = i [] Maxcdn
{-| <i Class="fab fa-medapps"></i> -}
medapps : Html msg
medapps = i [] Medapps
{-| <i Class="fab fa-medium"></i> -}
medium : Html msg
medium = i [] Medium
{-| <i Class="fab fa-medium-m"></i> -}
mediumM : Html msg
mediumM = i [] MediumM
{-| <i Class="fab fa-medrt"></i> -}
medrt : Html msg
medrt = i [] Medrt
{-| <i Class="fab fa-meetup"></i> -}
meetup : Html msg
meetup = i [] Meetup
{-| <i Class="fab fa-megaport"></i> -}
megaport : Html msg
megaport = i [] Megaport
{-| <i Class="fab fa-microsoft"></i> -}
microsoft : Html msg
microsoft = i [] Microsoft
{-| <i Class="fab fa-mix"></i> -}
mix : Html msg
mix = i [] Mix
{-| <i Class="fab fa-mixcloud"></i> -}
mixcloud : Html msg
mixcloud = i [] Mixcloud
{-| <i Class="fab fa-mizuni"></i> -}
mizuni : Html msg
mizuni = i [] Mizuni
{-| <i Class="fab fa-modx"></i> -}
modx : Html msg
modx = i [] Modx
{-| <i Class="fab fa-monero"></i> -}
monero : Html msg
monero = i [] Monero
{-| <i Class="fab fa-napster"></i> -}
napster : Html msg
napster = i [] Napster
{-| <i Class="fab fa-nimblr"></i> -}
nimblr : Html msg
nimblr = i [] Nimblr
{-| <i Class="fab fa-nintendo-switch"></i> -}
nintendoSwitch : Html msg
nintendoSwitch = i [] NintendoSwitch
{-| <i Class="fab fa-node"></i> -}
node : Html msg
node = i [] Node
{-| <i Class="fab fa-node-js"></i> -}
nodeJs : Html msg
nodeJs = i [] NodeJs
{-| <i Class="fab fa-npm"></i> -}
npm : Html msg
npm = i [] Npm
{-| <i Class="fab fa-ns8"></i> -}
ns8 : Html msg
ns8 = i [] Ns8
{-| <i Class="fab fa-nutritionix"></i> -}
nutritionix : Html msg
nutritionix = i [] Nutritionix
{-| <i Class="fab fa-odnoklassniki"></i> -}
odnoklassniki : Html msg
odnoklassniki = i [] Odnoklassniki
{-| <i Class="fab fa-odnoklassniki-square"></i> -}
odnoklassnikiSquare : Html msg
odnoklassnikiSquare = i [] OdnoklassnikiSquare
{-| <i Class="fab fa-old-republic"></i> -}
oldRepublic : Html msg
oldRepublic = i [] OldRepublic
{-| <i Class="fab fa-opencart"></i> -}
opencart : Html msg
opencart = i [] Opencart
{-| <i Class="fab fa-openid"></i> -}
openid : Html msg
openid = i [] Openid
{-| <i Class="fab fa-opera"></i> -}
opera : Html msg
opera = i [] Opera
{-| <i Class="fab fa-optin-monster"></i> -}
optinMonster : Html msg
optinMonster = i [] OptinMonster
{-| <i Class="fab fa-osi"></i> -}
osi : Html msg
osi = i [] Osi
{-| <i Class="fab fa-page4"></i> -}
page4 : Html msg
page4 = i [] Page4
{-| <i Class="fab fa-pagelines"></i> -}
pagelines : Html msg
pagelines = i [] Pagelines
{-| <i Class="fab fa-palfed"></i> -}
palfed : Html msg
palfed = i [] Palfed
{-| <i Class="fab fa-patreon"></i> -}
patreon : Html msg
patreon = i [] Patreon
{-| <i Class="fab fa-paypal"></i> -}
paypal : Html msg
paypal = i [] Paypal
{-| <i Class="fab fa-periscope"></i> -}
periscope : Html msg
periscope = i [] Periscope
{-| <i Class="fab fa-phabricator"></i> -}
phabricator : Html msg
phabricator = i [] Phabricator
{-| <i Class="fab fa-phoenix-framework"></i> -}
phoenixFramework : Html msg
phoenixFramework = i [] PhoenixFramework
{-| <i Class="fab fa-phoenix-squadron"></i> -}
phoenixSquadron : Html msg
phoenixSquadron = i [] PhoenixSquadron
{-| <i Class="fab fa-php"></i> -}
php : Html msg
php = i [] Php
{-| <i Class="fab fa-pied-piper"></i> -}
piedPiper : Html msg
piedPiper = i [] PiedPiper
{-| <i Class="fab fa-pied-piper-alt"></i> -}
piedPiperAlt : Html msg
piedPiperAlt = i [] PiedPiperAlt
{-| <i Class="fab fa-pied-piper-hat"></i> -}
piedPiperHat : Html msg
piedPiperHat = i [] PiedPiperHat
{-| <i Class="fab fa-pied-piper-pp"></i> -}
piedPiperPp : Html msg
piedPiperPp = i [] PiedPiperPp
{-| <i Class="fab fa-pinterest"></i> -}
pinterest : Html msg
pinterest = i [] Pinterest
{-| <i Class="fab fa-pinterest-p"></i> -}
pinterestP : Html msg
pinterestP = i [] PinterestP
{-| <i Class="fab fa-pinterest-square"></i> -}
pinterestSquare : Html msg
pinterestSquare = i [] PinterestSquare
{-| <i Class="fab fa-playstation"></i> -}
playstation : Html msg
playstation = i [] Playstation
{-| <i Class="fab fa-product-hunt"></i> -}
productHunt : Html msg
productHunt = i [] ProductHunt
{-| <i Class="fab fa-pushed"></i> -}
pushed : Html msg
pushed = i [] Pushed
{-| <i Class="fab fa-python"></i> -}
python : Html msg
python = i [] Python
{-| <i Class="fab fa-qq"></i> -}
qq : Html msg
qq = i [] Qq
{-| <i Class="fab fa-quinscape"></i> -}
quinscape : Html msg
quinscape = i [] Quinscape
{-| <i Class="fab fa-quora"></i> -}
quora : Html msg
quora = i [] Quora
{-| <i Class="fab fa-r-project"></i> -}
rProject : Html msg
rProject = i [] RProject
{-| <i Class="fab fa-ravelry"></i> -}
ravelry : Html msg
ravelry = i [] Ravelry
{-| <i Class="fab fa-react"></i> -}
react : Html msg
react = i [] React
{-| <i Class="fab fa-readme"></i> -}
readme : Html msg
readme = i [] Readme
{-| <i Class="fab fa-rebel"></i> -}
rebel : Html msg
rebel = i [] Rebel
{-| <i Class="fab fa-red-river"></i> -}
redRiver : Html msg
redRiver = i [] RedRiver
{-| <i Class="fab fa-reddit"></i> -}
reddit : Html msg
reddit = i [] Reddit
{-| <i Class="fab fa-reddit-alien"></i> -}
redditAlien : Html msg
redditAlien = i [] RedditAlien
{-| <i Class="fab fa-reddit-square"></i> -}
redditSquare : Html msg
redditSquare = i [] RedditSquare
{-| <i Class="fab fa-rendact"></i> -}
rendact : Html msg
rendact = i [] Rendact
{-| <i Class="fab fa-renren"></i> -}
renren : Html msg
renren = i [] Renren
{-| <i Class="fab fa-replyd"></i> -}
replyd : Html msg
replyd = i [] Replyd
{-| <i Class="fab fa-researchgate"></i> -}
researchgate : Html msg
researchgate = i [] Researchgate
{-| <i Class="fab fa-resolving"></i> -}
resolving : Html msg
resolving = i [] Resolving
{-| <i Class="fab fa-rev"></i> -}
rev : Html msg
rev = i [] Rev
{-| <i Class="fab fa-rocketchat"></i> -}
rocketchat : Html msg
rocketchat = i [] Rocketchat
{-| <i Class="fab fa-rockrms"></i> -}
rockrms : Html msg
rockrms = i [] Rockrms
{-| <i Class="fab fa-safari"></i> -}
safari : Html msg
safari = i [] Safari
{-| <i Class="fab fa-sass"></i> -}
sass : Html msg
sass = i [] Sass
{-| <i Class="fab fa-schlix"></i> -}
schlix : Html msg
schlix = i [] Schlix
{-| <i Class="fab fa-scribd"></i> -}
scribd : Html msg
scribd = i [] Scribd
{-| <i Class="fab fa-searchengin"></i> -}
searchengin : Html msg
searchengin = i [] Searchengin
{-| <i Class="fab fa-sellcast"></i> -}
sellcast : Html msg
sellcast = i [] Sellcast
{-| <i Class="fab fa-sellsy"></i> -}
sellsy : Html msg
sellsy = i [] Sellsy
{-| <i Class="fab fa-servicestack"></i> -}
servicestack : Html msg
servicestack = i [] Servicestack
{-| <i Class="fab fa-shirtsinbulk"></i> -}
shirtsinbulk : Html msg
shirtsinbulk = i [] Shirtsinbulk
{-| <i Class="fab fa-shopware"></i> -}
shopware : Html msg
shopware = i [] Shopware
{-| <i Class="fab fa-simplybuilt"></i> -}
simplybuilt : Html msg
simplybuilt = i [] Simplybuilt
{-| <i Class="fab fa-sistrix"></i> -}
sistrix : Html msg
sistrix = i [] Sistrix
{-| <i Class="fab fa-sith"></i> -}
sith : Html msg
sith = i [] Sith
{-| <i Class="fab fa-skyatlas"></i> -}
skyatlas : Html msg
skyatlas = i [] Skyatlas
{-| <i Class="fab fa-skype"></i> -}
skype : Html msg
skype = i [] Skype
{-| <i Class="fab fa-slack"></i> -}
slack : Html msg
slack = i [] Slack
{-| <i Class="fab fa-slack-hash"></i> -}
slackHash : Html msg
slackHash = i [] SlackHash
{-| <i Class="fab fa-slideshare"></i> -}
slideshare : Html msg
slideshare = i [] Slideshare
{-| <i Class="fab fa-snapchat"></i> -}
snapchat : Html msg
snapchat = i [] Snapchat
{-| <i Class="fab fa-snapchat-ghost"></i> -}
snapchatGhost : Html msg
snapchatGhost = i [] SnapchatGhost
{-| <i Class="fab fa-snapchat-square"></i> -}
snapchatSquare : Html msg
snapchatSquare = i [] SnapchatSquare
{-| <i Class="fab fa-soundcloud"></i> -}
soundcloud : Html msg
soundcloud = i [] Soundcloud
{-| <i Class="fab fa-speakap"></i> -}
speakap : Html msg
speakap = i [] Speakap
{-| <i Class="fab fa-spotify"></i> -}
spotify : Html msg
spotify = i [] Spotify
{-| <i Class="fab fa-squarespace"></i> -}
squarespace : Html msg
squarespace = i [] Squarespace
{-| <i Class="fab fa-stack-exchange"></i> -}
stackExchange : Html msg
stackExchange = i [] StackExchange
{-| <i Class="fab fa-stack-overflow"></i> -}
stackOverflow : Html msg
stackOverflow = i [] StackOverflow
{-| <i Class="fab fa-staylinked"></i> -}
staylinked : Html msg
staylinked = i [] Staylinked
{-| <i Class="fab fa-steam"></i> -}
steam : Html msg
steam = i [] Steam
{-| <i Class="fab fa-steam-square"></i> -}
steamSquare : Html msg
steamSquare = i [] SteamSquare
{-| <i Class="fab fa-steam-symbol"></i> -}
steamSymbol : Html msg
steamSymbol = i [] SteamSymbol
{-| <i Class="fab fa-sticker-mule"></i> -}
stickerMule : Html msg
stickerMule = i [] StickerMule
{-| <i Class="fab fa-strava"></i> -}
strava : Html msg
strava = i [] Strava
{-| <i Class="fab fa-stripe"></i> -}
stripe : Html msg
stripe = i [] Stripe
{-| <i Class="fab fa-stripe-s"></i> -}
stripeS : Html msg
stripeS = i [] StripeS
{-| <i Class="fab fa-studiovinari"></i> -}
studiovinari : Html msg
studiovinari = i [] Studiovinari
{-| <i Class="fab fa-stumbleupon"></i> -}
stumbleupon : Html msg
stumbleupon = i [] Stumbleupon
{-| <i Class="fab fa-stumbleupon-circle"></i> -}
stumbleuponCircle : Html msg
stumbleuponCircle = i [] StumbleuponCircle
{-| <i Class="fab fa-superpowers"></i> -}
superpowers : Html msg
superpowers = i [] Superpowers
{-| <i Class="fab fa-supple"></i> -}
supple : Html msg
supple = i [] Supple
{-| <i Class="fab fa-teamspeak"></i> -}
teamspeak : Html msg
teamspeak = i [] Teamspeak
{-| <i Class="fab fa-telegram"></i> -}
telegram : Html msg
telegram = i [] Telegram
{-| <i Class="fab fa-telegram-plane"></i> -}
telegramPlane : Html msg
telegramPlane = i [] TelegramPlane
{-| <i Class="fab fa-tencent-weibo"></i> -}
tencentWeibo : Html msg
tencentWeibo = i [] TencentWeibo
{-| <i Class="fab fa-themeco"></i> -}
themeco : Html msg
themeco = i [] Themeco
{-| <i Class="fab fa-themeisle"></i> -}
themeisle : Html msg
themeisle = i [] Themeisle
{-| <i Class="fab fa-trade-federation"></i> -}
tradeFederation : Html msg
tradeFederation = i [] TradeFederation
{-| <i Class="fab fa-trello"></i> -}
trello : Html msg
trello = i [] Trello
{-| <i Class="fab fa-tripadvisor"></i> -}
tripadvisor : Html msg
tripadvisor = i [] Tripadvisor
{-| <i Class="fab fa-tumblr"></i> -}
tumblr : Html msg
tumblr = i [] Tumblr
{-| <i Class="fab fa-tumblr-square"></i> -}
tumblrSquare : Html msg
tumblrSquare = i [] TumblrSquare
{-| <i Class="fab fa-twitch"></i> -}
twitch : Html msg
twitch = i [] Twitch
{-| <i Class="fab fa-twitter"></i> -}
twitter : Html msg
twitter = i [] Twitter
{-| <i Class="fab fa-twitter-square"></i> -}
twitterSquare : Html msg
twitterSquare = i [] TwitterSquare
{-| <i Class="fab fa-typo3"></i> -}
typo3 : Html msg
typo3 = i [] Typo3
{-| <i Class="fab fa-uber"></i> -}
uber : Html msg
uber = i [] Uber
{-| <i Class="fab fa-uikit"></i> -}
uikit : Html msg
uikit = i [] Uikit
{-| <i Class="fab fa-uniregistry"></i> -}
uniregistry : Html msg
uniregistry = i [] Uniregistry
{-| <i Class="fab fa-untappd"></i> -}
untappd : Html msg
untappd = i [] Untappd
{-| <i Class="fab fa-usb"></i> -}
usb : Html msg
usb = i [] Usb
{-| <i Class="fab fa-ussunnah"></i> -}
ussunnah : Html msg
ussunnah = i [] Ussunnah
{-| <i Class="fab fa-vaadin"></i> -}
vaadin : Html msg
vaadin = i [] Vaadin
{-| <i Class="fab fa-viacoin"></i> -}
viacoin : Html msg
viacoin = i [] Viacoin
{-| <i Class="fab fa-viadeo"></i> -}
viadeo : Html msg
viadeo = i [] Viadeo
{-| <i Class="fab fa-viadeo-square"></i> -}
viadeoSquare : Html msg
viadeoSquare = i [] ViadeoSquare
{-| <i Class="fab fa-viber"></i> -}
viber : Html msg
viber = i [] Viber
{-| <i Class="fab fa-vimeo"></i> -}
vimeo : Html msg
vimeo = i [] Vimeo
{-| <i Class="fab fa-vimeo-square"></i> -}
vimeoSquare : Html msg
vimeoSquare = i [] VimeoSquare
{-| <i Class="fab fa-vimeo-v"></i> -}
vimeoV : Html msg
vimeoV = i [] VimeoV
{-| <i Class="fab fa-vine"></i> -}
vine : Html msg
vine = i [] Vine
{-| <i Class="fab fa-vk"></i> -}
vk : Html msg
vk = i [] Vk
{-| <i Class="fab fa-vnv"></i> -}
vnv : Html msg
vnv = i [] Vnv
{-| <i Class="fab fa-vuejs"></i> -}
vuejs : Html msg
vuejs = i [] Vuejs
{-| <i Class="fab fa-weebly"></i> -}
weebly : Html msg
weebly = i [] Weebly
{-| <i Class="fab fa-weibo"></i> -}
weibo : Html msg
weibo = i [] Weibo
{-| <i Class="fab fa-weixin"></i> -}
weixin : Html msg
weixin = i [] Weixin
{-| <i Class="fab fa-whatsapp"></i> -}
whatsapp : Html msg
whatsapp = i [] Whatsapp
{-| <i Class="fab fa-whatsapp-square"></i> -}
whatsappSquare : Html msg
whatsappSquare = i [] WhatsappSquare
{-| <i Class="fab fa-whmcs"></i> -}
whmcs : Html msg
whmcs = i [] Whmcs
{-| <i Class="fab fa-wikipedia-w"></i> -}
wikipediaW : Html msg
wikipediaW = i [] WikipediaW
{-| <i Class="fab fa-windows"></i> -}
windows : Html msg
windows = i [] Windows
{-| <i Class="fab fa-wix"></i> -}
wix : Html msg
wix = i [] Wix
{-| <i Class="fab fa-wolf-pack-battalion"></i> -}
wolfPackBattalion : Html msg
wolfPackBattalion = i [] WolfPackBattalion
{-| <i Class="fab fa-wordpress"></i> -}
wordpress : Html msg
wordpress = i [] Wordpress
{-| <i Class="fab fa-wordpress-simple"></i> -}
wordpressSimple : Html msg
wordpressSimple = i [] WordpressSimple
{-| <i Class="fab fa-wpbeginner"></i> -}
wpbeginner : Html msg
wpbeginner = i [] Wpbeginner
{-| <i Class="fab fa-wpexplorer"></i> -}
wpexplorer : Html msg
wpexplorer = i [] Wpexplorer
{-| <i Class="fab fa-wpforms"></i> -}
wpforms : Html msg
wpforms = i [] Wpforms
{-| <i Class="fab fa-xbox"></i> -}
xbox : Html msg
xbox = i [] Xbox
{-| <i Class="fab fa-xing"></i> -}
xing : Html msg
xing = i [] Xing
{-| <i Class="fab fa-xing-square"></i> -}
xingSquare : Html msg
xingSquare = i [] XingSquare
{-| <i Class="fab fa-y-combinator"></i> -}
yCombinator : Html msg
yCombinator = i [] YCombinator
{-| <i Class="fab fa-yahoo"></i> -}
yahoo : Html msg
yahoo = i [] Yahoo
{-| <i Class="fab fa-yandex"></i> -}
yandex : Html msg
yandex = i [] Yandex
{-| <i Class="fab fa-yandex-international"></i> -}
yandexInternational : Html msg
yandexInternational = i [] YandexInternational
{-| <i Class="fab fa-yelp"></i> -}
yelp : Html msg
yelp = i [] Yelp
{-| <i Class="fab fa-yoast"></i> -}
yoast : Html msg
yoast = i [] Yoast
{-| <i Class="fab fa-youtube"></i> -}
youtube : Html msg
youtube = i [] Youtube
{-| <i Class="fab fa-youtube-square"></i> -}
youtubeSquare : Html msg
youtubeSquare = i [] YoutubeSquare
