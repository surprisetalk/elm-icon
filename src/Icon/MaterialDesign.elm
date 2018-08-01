
module Icon.MaterialDesign exposing (..)

-- DOCS ------------------------------------------------------------------------

{-| Learn more at [Material Design Icons](https://materialdesignicons.com/).

    import Icon.MaterialDesign as Icon 
      exposing ( stylesheet
               , Icon(Trophy)
               , i
               )

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , i [] Trophy
        ]

# Stylesheet
@docs stylesheet

# Html
@docs i

# Attributes
@docs toClass, toClassName

## Attribute Helpers
@docs dark, flipH, flipV, inactive, light, rotate, size

# Style
@docs Style
@docs Shade, Size, Rotation
@docs style

# Icons
@docs toString

## Union Type
@docs Icon

-}

-- ## HTML Helpers
-- @docs accessPoint, accessPointNetwork, account, accountAlert, accountBox, accountBoxOutline, accountCardDetails, accountCheck, accountCircle, accountConvert, accountEdit, accountKey, accountLocation, accountMinus, accountMultiple, accountMultipleMinus, accountMultipleOutline, accountMultiplePlus, accountMultiplePlusOutline, accountNetwork, accountOff, accountOutline, accountPlus, accountPlusOutline, accountRemove, accountSearch, accountSettings, accountSettingsVariant, accountStar, accountSwitch, adjust, airConditioner, airballoon, airplane, airplaneLanding, airplaneOff, airplaneTakeoff, airplay, alarm, alarmBell, alarmCheck, alarmLight, alarmMultiple, alarmOff, alarmPlus, alarmSnooze, album, alert, alertBox, alertCircle, alertCircleOutline, alertDecagram, alertOctagon, alertOctagram, alertOutline, allInclusive, allo, alpha, alphabetical, altimeter, amazon, amazonClouddrive, ambulance, amplifier, anchor, android, androidDebugBridge, androidHead, androidStudio, angular, angularjs, animation, apple, appleFinder, appleIos, appleKeyboardCaps, appleKeyboardCommand, appleKeyboardControl, appleKeyboardOption, appleKeyboardShift, appleMobileme, appleSafari, application, approval, apps, archive, arrangeBringForward, arrangeBringToFront, arrangeSendBackward, arrangeSendToBack, arrowAll, arrowBottomLeft, arrowBottomRight, arrowCollapse, arrowCollapseAll, arrowCollapseDown, arrowCollapseLeft, arrowCollapseRight, arrowCollapseUp, arrowDown, arrowDownBold, arrowDownBoldBox, arrowDownBoldBoxOutline, arrowDownBoldCircle, arrowDownBoldCircleOutline, arrowDownBoldHexagonOutline, arrowDownBox, arrowDownDropCircle, arrowDownDropCircleOutline, arrowDownThick, arrowExpand, arrowExpandAll, arrowExpandDown, arrowExpandLeft, arrowExpandRight, arrowExpandUp, arrowLeft, arrowLeftBold, arrowLeftBoldBox, arrowLeftBoldBoxOutline, arrowLeftBoldCircle, arrowLeftBoldCircleOutline, arrowLeftBoldHexagonOutline, arrowLeftBox, arrowLeftDropCircle, arrowLeftDropCircleOutline, arrowLeftThick, arrowRight, arrowRightBold, arrowRightBoldBox, arrowRightBoldBoxOutline, arrowRightBoldCircle, arrowRightBoldCircleOutline, arrowRightBoldHexagonOutline, arrowRightBox, arrowRightDropCircle, arrowRightDropCircleOutline, arrowRightThick, arrowTopLeft, arrowTopRight, arrowUp, arrowUpBold, arrowUpBoldBox, arrowUpBoldBoxOutline, arrowUpBoldCircle, arrowUpBoldCircleOutline, arrowUpBoldHexagonOutline, arrowUpBox, arrowUpDropCircle, arrowUpDropCircleOutline, arrowUpThick, artist, assistant, asterisk, at, atlassian, atom, attachment, audiobook, autoFix, autoUpload, autorenew, avTimer, azure, baby, babyBuggy, backburger, backspace, backupRestore, bandcamp, bank, barcode, barcodeScan, barley, barrel, basecamp, basket, basketFill, basketUnfill, basketball, battery, battery10, battery20, battery30, battery40, battery50, battery60, battery70, battery80, battery90, batteryAlert, batteryCharging, batteryCharging100, batteryCharging20, batteryCharging30, batteryCharging40, batteryCharging60, batteryCharging80, batteryCharging90, batteryChargingWireless, batteryChargingWireless10, batteryChargingWireless20, batteryChargingWireless30, batteryChargingWireless40, batteryChargingWireless50, batteryChargingWireless60, batteryChargingWireless70, batteryChargingWireless80, batteryChargingWireless90, batteryChargingWirelessAlert, batteryChargingWirelessOutline, batteryMinus, batteryNegative, batteryOutline, batteryPlus, batteryPositive, batteryUnknown, beach, beaker, beats, beer, behance, bell, bellOff, bellOutline, bellPlus, bellRing, bellRingOutline, bellSleep, beta, bible, bike, bing, binoculars, bio, biohazard, bitbucket, bitcoin, blackMesa, blackberry, blender, blinds, blockHelper, blogger, bluetooth, bluetoothAudio, bluetoothConnect, bluetoothOff, bluetoothSettings, bluetoothTransfer, blur, blurLinear, blurOff, blurRadial, bomb, bombOff, bone, book, bookMinus, bookMultiple, bookMultipleVariant, bookOpen, bookOpenPageVariant, bookOpenVariant, bookPlus, bookSecure, bookUnsecure, bookVariant, bookmark, bookmarkCheck, bookmarkMusic, bookmarkOutline, bookmarkPlus, bookmarkPlusOutline, bookmarkRemove, boombox, bootstrap, bordeR, borderAll, borderBottom, borderColor, borderInside, borderLeft, borderNone, borderOutside, borderRight, borderStyle, borderTop, borderVertical, bowTie, bowl, bowling, box, boxCutter, boxShadow, bridge, briefcase, briefcaseCheck, briefcaseDownload, briefcaseOutline, briefcaseUpload, brightness1, brightness2, brightness3, brightness4, brightness5, brightness6, brightness7, brightnessAuto, broom, brush, buffer, bug, bulletinBoard, bullhorn, bullseye, bus, busArticulatedEnd, busArticulatedFront, busDoubleDecker, busSchool, busSide, cached, cake, cakeLayered, cakeVariant, calculator, calendar, calendarBlank, calendarCheck, calendarClock, calendarMultiple, calendarMultipleCheck, calendarPlus, calendarQuestion, calendarRange, calendarRemove, calendarText, calendarToday, callMade, callMerge, callMissed, callReceived, callSplit, camcorder, camcorderBox, camcorderBoxOff, camcorderOff, camera, cameraBurst, cameraEnhance, cameraFront, cameraFrontVariant, cameraGopro, cameraIris, cameraMeteringCenter, cameraMeteringMatrix, cameraMeteringPartial, cameraMeteringSpot, cameraOff, cameraPartyMode, cameraRear, cameraRearVariant, cameraSwitch, cameraTimer, cancel, candle, candycane, cannabis, car, carBattery, carConnected, carConvertible, carEstate, carHatchback, carPickup, carSide, carSports, carWash, caravan, cards, cardsOutline, cardsPlayingOutline, cardsVariant, carrot, cart, cartOff, cartOutline, cartPlus, caseSensitiveAlt, cash, cash100, cashMultiple, cashUsd, cast, castConnected, castOff, castle, cat, cctv, ceilingLight, cellphone, cellphoneAndroid, cellphoneBasic, cellphoneDock, cellphoneIphone, cellphoneLink, cellphoneLinkOff, cellphoneSettings, cellphoneWireless, certificate, chairSchool, chartArc, chartAreaspline, chartBar, chartBarStacked, chartBubble, chartDonut, chartDonutVariant, chartGantt, chartHistogram, chartLine, chartLineStacked, chartLineVariant, chartPie, chartScatterplotHexbin, chartTimeline, check, checkAll, checkCircle, checkCircleOutline, checkboxBlank, checkboxBlankCircle, checkboxBlankCircleOutline, checkboxBlankOutline, checkboxMarked, checkboxMarkedCircle, checkboxMarkedCircleOutline, checkboxMarkedOutline, checkboxMultipleBlank, checkboxMultipleBlankCircle, checkboxMultipleBlankCircleOutline, checkboxMultipleBlankOutline, checkboxMultipleMarked, checkboxMultipleMarkedCircle, checkboxMultipleMarkedCircleOutline, checkboxMultipleMarkedOutline, checkerboard, chemicalWeapon, chevronDoubleDown, chevronDoubleLeft, chevronDoubleRight, chevronDoubleUp, chevronDown, chevronLeft, chevronRight, chevronUp, chiliHot, chiliMedium, chiliMild, chip, church, circle, circleOutline, ciscoWebex, city, clipboard, clipboardAccount, clipboardAlert, clipboardArrowDown, clipboardArrowLeft, clipboardCheck, clipboardFlow, clipboardOutline, clipboardPlus, clipboardText, clippy, clock, clockAlert, clockEnd, clockFast, clockIn, clockOut, clockStart, close, closeBox, closeBoxOutline, closeCircle, closeCircleOutline, closeNetwork, closeOctagon, closeOctagonOutline, closeOutline, closedCaption, cloud, cloudBraces, cloudCheck, cloudCircle, cloudDownload, cloudOffOutline, cloudOutline, cloudPrint, cloudPrintOutline, cloudSync, cloudTags, cloudUpload, clover, codeArray, codeBraces, codeBrackets, codeEqual, codeGreaterThan, codeGreaterThanOrEqual, codeLessThan, codeLessThanOrEqual, codeNotEqual, codeNotEqualVariant, codeParentheses, codeString, codeTags, codeTagsCheck, codepen, coffee, coffeeOutline, coffeeToGo, coin, coins, collage, colorHelper, comment, commentAccount, commentAccountOutline, commentAlert, commentAlertOutline, commentCheck, commentCheckOutline, commentMultipleOutline, commentOutline, commentPlusOutline, commentProcessing, commentProcessingOutline, commentQuestion, commentQuestionOutline, commentRemove, commentRemoveOutline, commentText, commentTextOutline, compare, compass, compassOutline, console, consoleLine, contactMail, contacts, contentCopy, contentCut, contentDuplicate, contentPaste, contentSave, contentSaveAll, contentSaveOutline, contentSaveSettings, contrast, contrastBox, contrastCircle, cookie, copyright, corn, counter, cow, creation, creditCard, creditCardMultiple, creditCardOff, creditCardPlus, creditCardScan, crop, cropFree, cropLandscape, cropPortrait, cropRotate, cropSquare, crosshairs, crosshairsGps, crown, cube, cubeOutline, cubeSend, cubeUnfolded, cup, cupOff, cupWater, currencyBtc, currencyChf, currencyCny, currencyEth, currencyEur, currencyGbp, currencyInr, currencyJpy, currencyKrw, currencyNgn, currencyRub, currencySign, currencyTry, currencyTwd, currencyUsd, currencyUsdOff, cursorDefault, cursorDefaultOutline, cursorMove, cursorPointer, cursorText, database, databaseMinus, databasePlus, debugStepInto, debugStepOut, debugStepOver, decagram, decagramOutline, decimalDecrease, decimalIncrease, delete, deleteCircle, deleteEmpty, deleteForever, deleteRestore, deleteSweep, deleteVariant, delta, deskphone, desktopClassic, desktopMac, desktopTower, details, developerBoard, deviantart, dialpad, diamond, dice1, dice2, dice3, dice4, dice5, dice6, diceD10, diceD20, diceD4, diceD6, diceD8, diceMultiple, dictionary, dipSwitch, directions, directionsFork, discord, disk, diskAlert, disqus, disqusOutline, division, divisionBox, dna, dns, doNotDisturb, doNotDisturbOff, dolby, domain, donkey, door, doorClosed, doorOpen, dotS, dotsVertical, dotsVerticalCircle, douban, download, downloadNetwork, draG, drag, dragVertical, drawing, drawingBox, dribbble, dribbbleBox, drone, dropbox, drupal, duck, dumbbell, earHearing, earth, earthBox, earthBoxOff, earthOff, edge, eject, elephant, elevationDecline, elevationRise, elevator, email, emailAlert, emailOpen, emailOpenOutline, emailOutline, emailSecure, emailVariant, emby, emoticon, emoticonCool, emoticonDead, emoticonDevil, emoticonExcited, emoticonHappy, emoticonNeutral, emoticonPoop, emoticonSad, emoticonTongue, engine, engineOutline, equal, equalBox, eraser, eraserVariant, escalator, ethernet, ethernetCable, ethernetCableOff, etsy, evStation, eventbrite, evernote, exclamation, exitToApp, export, eye, eyeOff, eyeOffOutline, eyeOutline, eyedropper, eyedropperVariant, face, faceProfile, facebook, facebookBox, facebookMessenger, factory, fan, fanOff, fastForward, fastForwardOutline, fax, feather, ferry, file, fileAccount, fileChart, fileCheck, fileCloud, fileDelimited, fileDocument, fileDocumentBox, fileExcel, fileExcelBox, fileExport, fileFind, fileHidden, fileImage, fileImport, fileLock, fileMultiple, fileMusic, fileOutline, filePdf, filePdfBox, filePercent, filePlus, filePowerpoint, filePowerpointBox, filePresentationBox, fileRestore, fileSend, fileTree, fileVideo, fileWord, fileWordBox, fileXml, film, filmstrip, filmstripOff, filter, filterOutline, filterRemove, filterRemoveOutline, filterVariant, finance, findReplace, fingerprint, fire, firefox, fish, flag, flagCheckered, flagOutline, flagTriangle, flagVariant, flagVariantOutline, flash, flashAuto, flashCircle, flashOff, flashOutline, flashRedEye, flashlight, flashlightOff, flask, flaskEmpty, flaskEmptyOutline, flaskOutline, flattr, flipToBack, flipToFront, floorPlan, floppy, flower, folder, folderAccount, folderDownload, folderGoogleDrive, folderImage, folderLock, folderLockOpen, folderMove, folderMultiple, folderMultipleImage, folderMultipleOutline, folderOpen, folderOutline, folderPlus, folderRemove, folderStar, folderUpload, fontAwesome, food, foodApple, foodCroissant, foodForkDrink, foodOff, foodVariant, football, footballAustralian, footballHelmet, forklift, formatAlignBottom, formatAlignCenter, formatAlignJustify, formatAlignLeft, formatAlignMiddle, formatAlignRight, formatAlignTop, formatAnnotationPlus, formatBold, formatClear, formatColorFill, formatColorText, formatFloatCenter, formatFloatLeft, formatFloatNone, formatFloatRight, formatFont, formatHeader1, formatHeader2, formatHeader3, formatHeader4, formatHeader5, formatHeader6, formatHeaderDecrease, formatHeaderEqual, formatHeaderIncrease, formatHeaderPound, formatHorizontalAlignCenter, formatHorizontalAlignLeft, formatHorizontalAlignRight, formatIndentDecrease, formatIndentIncrease, formatItalic, formatLineSpacing, formatLineStyle, formatLineWeight, formatListBulleted, formatListBulletedType, formatListChecks, formatListNumbers, formatPageBreak, formatPaint, formatParagraph, formatPilcrow, formatQuoteClose, formatQuoteOpen, formatRotate90, formatSection, formatSize, formatStrikethrough, formatStrikethroughVariant, formatSubscript, formatSuperscript, formatText, formatTextdirectionLToR, formatTextdirectionRToL, formatTitle, formatUnderline, formatVerticalAlignBottom, formatVerticalAlignCenter, formatVerticalAlignTop, formatWrapInline, formatWrapSquare, formatWrapTight, formatWrapTopBottom, forum, forumOutline, forward, foursquare, fridge, fridgeFilled, fridgeFilledBottom, fridgeFilledTop, fuel, fullscreen, fullscreenExit, function, gamepad, gamepadVariant, garage, garageOpen, gasCylinder, gasStation, gate, gauge, gavel, genderFemale, genderMale, genderMaleFemale, genderTransgender, gesture, gestureDoubleTap, gestureSwipeDown, gestureSwipeLeft, gestureSwipeRight, gestureSwipeUp, gestureTap, gestureTwoDoubleTap, gestureTwoTap, ghost, gift, git, githubBox, githubCircle, githubFace, glassFlute, glassMug, glassStange, glassTulip, glassdoor, glasses, gmail, gnome, golf, gondola, google, googleAnalytics, googleAssistant, googleCardboard, googleChrome, googleCircles, googleCirclesCommunities, googleCirclesExtended, googleCirclesGroup, googleController, googleControllerOff, googleDrive, googleEarth, googleGlass, googleHome, googleKeep, googleMaps, googleNearby, googlePages, googlePhotos, googlePhysicalWeb, googlePlay, googlePlus, googlePlusBox, googleTranslate, googleWallet, gradient, greasePencil, grid, gridLarge, gridOff, group, guitarAcoustic, guitarElectric, guitarPick, guitarPickOutline, guyFawkesMask, hackernews, hamburger, handPointingRight, hanger, hangouts, harddisk, headphones, headphonesBox, headphonesOff, headphonesSettings, headset, headsetDock, headsetOff, heart, heartBox, heartBoxOutline, heartBroken, heartHalf, heartHalfFull, heartHalfOutline, heartOff, heartOutline, heartPulse, help, helpBox, helpCircle, helpCircleOutline, helpNetwork, hexagon, hexagonMultiple, hexagonOutline, highDefinition, highway, history, hololens, home, homeAccount, homeAssistant, homeAutomation, homeCircle, homeHeart, homeMapMarker, homeModern, homeOutline, homeVariant, hook, hookOff, hops, hospital, hospitalBuilding, hospitalMarker, hotTub, hotel, houzz, houzzBox, hulu, human, humanChild, humanFemale, humanGreeting, humanHandsdown, humanHandsup, humanMale, humanMaleFemale, humanPregnant, humbleBundle, iceCream, image, imageAlbum, imageArea, imageAreaClose, imageBroken, imageBrokenVariant, imageFilter, imageFilterBlackWhite, imageFilterCenterFocus, imageFilterCenterFocusWeak, imageFilterDrama, imageFilterFrames, imageFilterHdr, imageFilterNone, imageFilterTiltShift, imageFilterVintage, imageMultiple, imageOff, inbox, inboxArrowDown, inboxArrowUp, incognito, infinity, information, informationOutline, informationVariant, instagram, instapaper, internetExplorer, invertColors, itunes, jeepney, jira, jsfiddle, json, karate, keg, kettle, key, keyChange, keyMinus, keyPlus, keyRemove, keyVariant, keyboard, keyboardBackspace, keyboardCaps, keyboardClose, keyboardOff, keyboardReturn, keyboardTab, keyboardVariant, kickstarter, kodi, label, labelOutline, ladybug, lambda, lamp, lan, lanConnect, lanDisconnect, lanPending, languageC, languageCpp, languageCsharp, languageCss3, languageGo, languageHtml5, languageJavascript, languagePhp, languagePython, languagePythonText, languageR, languageSwift, languageTypescript, laptop, laptopChromebook, laptopMac, laptopOff, laptopWindows, lastfm, lastpass, launch, lavaLamp, layers, layersOff, leadPencil, leaf, ledOff, ledOn, ledOutline, ledStrip, ledVariantOff, ledVariantOn, ledVariantOutline, library, libraryBooks, libraryMusic, libraryPlus, lightbulb, lightbulbOn, lightbulbOnOutline, lightbulbOutline, link, linkOff, linkVariant, linkVariantOff, linkedin, linkedinBox, linux, loading, lock, lockOpen, lockOpenOutline, lockOutline, lockPattern, lockPlus, lockReset, locker, lockerMultiple, login, loginVariant, logout, logoutVariant, looks, loop, loupe, lumx, magnet, magnetOn, magnify, magnifyMinus, magnifyMinusOutline, magnifyPlus, magnifyPlusOutline, mailRu, mailbox, map, mapMarker, mapMarkerCircle, mapMarkerMinus, mapMarkerMultiple, mapMarkerOff, mapMarkerOutline, mapMarkerPlus, mapMarkerRadius, margin, markdown, marker, markerCheck, martini, materialUi, mathCompass, matrix, maxcdn, medicalBag, medium, memory, menu, menuDown, menuDownOutline, menuLeft, menuRight, menuUp, menuUpOutline, message, messageAlert, messageBulleted, messageBulletedOff, messageDraw, messageImage, messageOutline, messagePlus, messageProcessing, messageReply, messageReplyText, messageSettings, messageSettingsVariant, messageText, messageTextOutline, messageVideo, meteor, metronome, metronomeTick, microSd, microphone, microphoneOff, microphoneOutline, microphoneSettings, microphoneVariant, microphoneVariantOff, microscope, microsoft, minecraft, minus, minusBox, minusBoxOutline, minusCircle, minusCircleOutline, minusNetwork, mixcloud, mixer, monitor, monitorMultiple, more, motorbike, mouse, mouseOff, mouseVariant, mouseVariantOff, moveResize, moveResizeVariant, movie, movieRoll, multiplication, multiplicationBox, mushroom, mushroomOutline, music, musicBox, musicBoxOutline, musicCircle, musicNote, musicNoteBluetooth, musicNoteBluetoothOff, musicNoteEighth, musicNoteHalf, musicNoteOff, musicNoteQuarter, musicNoteSixteenth, musicNoteWhole, musicOff, nature, naturePeople, navigation, nearMe, needle, nestProtect, nestThermostat, netflix, network, newBox, newspaper, nfc, nfcTap, nfcVariant, ninja, nintendoSwitch, nodejs, note, noteMultiple, noteMultipleOutline, noteOutline, notePlus, notePlusOutline, noteText, notebook, notificationClearAll, npm, nuke, null, numeric, numeric0Box, numeric0BoxMultipleOutline, numeric0BoxOutline, numeric1Box, numeric1BoxMultipleOutline, numeric1BoxOutline, numeric2Box, numeric2BoxMultipleOutline, numeric2BoxOutline, numeric3Box, numeric3BoxMultipleOutline, numeric3BoxOutline, numeric4Box, numeric4BoxMultipleOutline, numeric4BoxOutline, numeric5Box, numeric5BoxMultipleOutline, numeric5BoxOutline, numeric6Box, numeric6BoxMultipleOutline, numeric6BoxOutline, numeric7Box, numeric7BoxMultipleOutline, numeric7BoxOutline, numeric8Box, numeric8BoxMultipleOutline, numeric8BoxOutline, numeric9Box, numeric9BoxMultipleOutline, numeric9BoxOutline, numeric9PlusBox, numeric9PlusBoxMultipleOutline, numeric9PlusBoxOutline, nut, nutrition, oar, octagon, octagonOutline, octagram, octagramOutline, odnoklassniki, office, oil, oilTemperature, omega, onedrive, onenote, opacity, openInApp, openInNew, openid, opera, orbit, ornament, ornamentVariant, owl, package, packageDown, packageUp, packageVariant, packageVariantClosed, pageFirst, pageLast, pageLayoutBody, pageLayoutFooter, pageLayoutHeader, pageLayoutSidebarLeft, pageLayoutSidebarRight, palette, paletteAdvanced, panda, pandora, panoramA, panorama, panoramaFisheye, panoramaVertical, panoramaWideAngle, paperCutVertical, paperclip, parking, passport, pause, pauseCircle, pauseCircleOutline, pauseOctagon, pauseOctagonOutline, paw, pawOff, pen, pencil, pencilBox, pencilBoxOutline, pencilCircle, pencilCircleOutline, pencilLock, pencilOff, pentagon, pentagonOutline, percent, periodicTableCo2, periscope, pharmacy, phone, phoneBluetooth, phoneClassic, phoneForward, phoneHangup, phoneInTalk, phoneIncoming, phoneLocked, phoneLog, phoneMinus, phoneMissed, phoneOutgoing, phonePaused, phonePlus, phoneReturn, phoneSettings, phoneVoip, pi, piBox, piano, pig, pill, pillar, pin, pinOff, pineTree, pineTreeBox, pinterest, pinterestBox, pipe, pipeDisconnected, pistol, pizza, planeShield, play, playBoxOutline, playCircle, playCircleOutline, playPause, playProtectedContent, playlistCheck, playlistMinus, playlistPlay, playlistPlus, playlistRemove, playstation, plex, plus, plusBox, plusBoxOutline, plusCircle, plusCircleMultipleOutline, plusCircleOutline, plusNetwork, plusOne, plusOutline, pocket, pokeball, pokerChip, polaroid, poll, pollBox, polymer, pool, popcorn, pot, potMix, pound, poundBox, power, powerPlug, powerPlugOff, powerSettings, powerSocket, powerSocketEu, powerSocketUk, powerSocketUs, prescription, presentation, presentationPlay, printer, printer3d, printerAlert, printerSettings, priorityHigh, priorityLow, professionalHexagon, projector, projectorScreen, publish, pulse, puzzle, qqchat, qrcode, qrcodeScan, quadcopter, qualityHigh, quicktime, radar, radiator, radio, radioHandheld, radioTower, radioactive, radioboxBlank, radioboxMarked, raspberrypi, rayEnd, rayEndArrow, rayStart, rayStartArrow, rayStartEnd, rayVertex, react, read, receipt, record, recordRec, recycle, reddit, redo, redoVariant, refresh, regex, relativeScale, reload, remote, renameBox, reordeR, reorderVertical, repeat, repeatOff, repeatOnce, replay, reply, replyAll, reproduction, resizeBottomRight, responsive, restart, restore, rewind, rewindOutline, rhombus, rhombusOutline, ribbon, rice, ring, road, roadVariant, robot, rocket, roomba, rotate3d, rotateLeft, rotateLeftVariant, rotateRight, rotateRightVariant, roundedCorner, routerWireless, routes, rowing, rss, rssBox, ruler, run, runFast, sale, sass, satellite, satelliteVariant, saxophone, scale, scaleBalance, scaleBathroom, scanner, school, screenRotation, screenRotationLock, screwdriver, script, sd, seal, searchWeb, seatFlat, seatFlatAngled, seatIndividualSuite, seatLegroomExtra, seatLegroomNormal, seatLegroomReduced, seatReclineExtra, seatReclineNormal, security, securityHome, securityNetwork, select, selectAll, selectInverse, selectOff, selection, selectionOff, send, sendSecure, serialPort, server, serverMinus, serverNetwork, serverNetworkOff, serverOff, serverPlus, serverRemove, serverSecurity, setAll, setCenter, setCenterRight, setLeft, setLeftCenter, setLeftRight, setNone, setRight, settings, settingsBox, shape, shapeCirclePlus, shapeOutline, shapePlus, shapePolygonPlus, shapeRectanglePlus, shapeSquarePlus, share, shareVariant, shield, shieldHalfFull, shieldOutline, shipWheel, shopping, shoppingMusic, shovel, shovelOff, shredder, shuffle, shuffleDisabled, shuffleVariant, sigma, sigmaLower, signCaution, signDirection, signText, signal, signal2g, signal3g, signal4g, signalHspa, signalHspaPlus, signalOff, signalVariant, silverware, silverwareFork, silverwareSpoon, silverwareVariant, sim, simAlert, simOff, sitemap, skipBackward, skipForward, skipNext, skipNextCircle, skipNextCircleOutline, skipPrevious, skipPreviousCircle, skipPreviousCircleOutline, skull, skype, skypeBusiness, slack, sleep, sleepOff, smoking, smokingOff, snapchat, snowflake, snowman, soccer, soccerField, sofa, solid, sort, sortAlphabetical, sortAscending, sortDescending, sortNumeric, sortVariant, soundcloud, sourceBranch, sourceCommit, sourceCommitEnd, sourceCommitEndLocal, sourceCommitLocal, sourceCommitNextLocal, sourceCommitStart, sourceCommitStartNextLocal, sourceFork, sourceMerge, sourcePull, soySauce, speaker, speakerOff, speakerWireless, speedometer, spellcheck, spotify, spotlight, spotlightBeam, spray, square, squareInc, squareIncCash, squareOutline, squareRoot, stackOverflow, stackexchange, stadium, stairs, standardDefinition, star, starCircle, starHalf, starOff, starOutline, steam, steering, stepBackward, stepBackward2, stepForward, stepForward2, stethoscope, sticker, stickerEmoji, stocking, stop, stopCircle, stopCircleOutline, store, store24Hour, stove, subdirectoryArrowLeft, subdirectoryArrowRight, subway, subwayVariant, summit, sunglasses, surroundSound, surroundSound20, surroundSound31, surroundSound51, surroundSound71, svg, swaP, swapVertical, swim, switch, sword, swordCross, sync, syncAlert, syncOff, tab, tabPlus, tabUnselected, table, tableColumn, tableColumnPlusAfter, tableColumnPlusBefore, tableColumnRemove, tableColumnWidth, tableEdit, tableLarge, tableOfContents, tableRow, tableRowHeight, tableRowPlusAfter, tableRowPlusBefore, tableRowRemove, tableSettings, tablet, tabletAndroid, tabletIpad, taco, tag, tagFaces, tagHeart, tagMultiple, tagOutline, tagPlus, tagRemove, tagTextOutline, target, taxi, teamviewer, telegram, television, televisionBox, televisionClassic, televisionClassicOff, televisionGuide, televisionOff, temperatureCelsius, temperatureFahrenheit, temperatureKelvin, tennis, tent, terrain, testTube, textShadow, textToSpeech, textToSpeechOff, textbox, textboxPassword, texture, theater, themeLightDark, thermometer, thermometerLines, thoughtBubble, thoughtBubbleOutline, thumbDown, thumbDownOutline, thumbUp, thumbUpOutline, thumbsUpDown, ticket, ticketAccount, ticketConfirmation, ticketPercent, tie, tilde, timelapse, timer, timer10, timer3, timerOff, timerSand, timerSandEmpty, timerSandFull, timetable, toggleSwitch, toggleSwitchOff, tooltip, tooltipEdit, tooltipImage, tooltipOutline, tooltipOutlinePlus, tooltipText, tooth, tor, towerBeach, towerFire, towing, trackpad, trafficLight, train, tram, transcribe, transcribeClose, transfer, transitTransfer, translate, treasureChest, tree, trello, trendingDown, trendingNeutral, trendingUp, triangle, triangleOutline, trophy, trophyAward, trophyOutline, trophyVariant, trophyVariantOutline, truck, truckDelivery, truckFast, truckTrailer, tshirtCrew, tshirtV, tumblr, tumblrReblog, tune, tuneVertical, twitch, twitter, twitterBox, twitterCircle, twitterRetweet, uber, ubuntu, ultraHighDefinition, umbraco, umbrella, umbrellaOutline, undo, undoVariant, unfoldLesS, unfoldLessVertical, unfoldMorE, unfoldMoreVertical, ungroup, unity, untappd, update, upload, uploadMultiple, uploadNetwork, usb, vanPassenger, vanUtility, vanish, vectorArrangeAbove, vectorArrangeBelow, vectorCircle, vectorCircleVariant, vectorCombine, vectorCurve, vectorDifference, vectorDifferenceAb, vectorDifferenceBa, vectorIntersection, vectorLine, vectorPoint, vectorPolygon, vectorPolyline, vectorRadius, vectorRectangle, vectorSelection, vectorSquare, vectorTriangle, vectorUnion, venmo, verified, vibrate, video, video3d, video4kBox, videoInputAntenna, videoInputComponent, videoInputHdmi, videoInputSvideo, videoOff, videoSwitch, viewAgenda, viewArray, viewCarousel, viewColumn, viewDashboard, viewDashboardVariant, viewDay, viewGrid, viewHeadline, viewList, viewModule, viewParallel, viewQuilt, viewSequential, viewStream, viewWeek, vimeo, violin, visualstudio, vk, vkBox, vkCircle, vlc, voice, voicemail, volumeHigh, volumeLow, volumeMedium, volumeMinus, volumeMute, volumeOff, volumePlus, vpn, vuejs, walk, wall, wallet, walletGiftcard, walletMembership, walletTravel, wan, washingMachine, watch, watchExport, watchImport, watchVibrate, water, waterOff, waterPercent, waterPump, watermark, waves, weatherCloudy, weatherFog, weatherHail, weatherLightning, weatherLightningRainy, weatherNight, weatherPartlycloudy, weatherPouring, weatherRainy, weatherSnowy, weatherSnowyRainy, weatherSunny, weatherSunset, weatherSunsetDown, weatherSunsetUp, weatherWindy, weatherWindyVariant, web, webcam, webhook, webpack, wechat, weight, weightKilogram, whatsapp, wheelchairAccessibility, whiteBalanceAuto, whiteBalanceIncandescent, whiteBalanceIridescent, whiteBalanceSunny, widgets, wifi, wifiOff, wii, wiiu, wikipedia, windowClose, windowClosed, windowMaximize, windowMinimize, windowOpen, windowRestore, windows, wordpress, worker, wrap, wrench, wunderlist, xamarin, xamarinOutline, xaml, xbox, xboxController, xboxControllerBatteryAlert, xboxControllerBatteryEmpty, xboxControllerBatteryFull, xboxControllerBatteryLow, xboxControllerBatteryMedium, xboxControllerBatteryUnknown, xboxControllerOff, xda, xing, xingBox, xingCircle, xml, xmpp, yammer, yeast, yelp, yinYang, youtubeCreatorStudio, youtubeGaming, youtubePlay, youtubeTv, zipBox


-- IMPORTS ---------------------------------------------------------------------

import Html exposing ( Html, Attribute )
import Html.Attributes as Attr exposing ( class )

import Char


-- STYLESHEET ------------------------------------------------------------------

{-| <link rel="stylesheet" href="https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css"/>
Include Material Design 2.1.19 in your Elm project.

    import Icon.MaterialDesign as Icon exposing (stylesheet,Icon(..))

    view : Model -> Html msg
    view model
      = div []
        [ stylesheet
        , Icon.i [ Icon.style myIconStyle ] Tooth
        ]

-}
stylesheet : Html msg
stylesheet
  = Html.node "link"
    [ Attr.rel "stylesheet"
    , Attr.href "https://cdn.materialdesignicons.com/2.1.19/css/materialdesignicons.min.css"
    ]
    []


-- ICONS -----------------------------------------------------------------------

{-| 
    import Icon.MaterialDesign as Icon exposing (..)

    myIconStyle : Style
    myIconStyle
      = { shade    = Nothing
        , inactive = False
        , size     = Nothing
        , flipH    = False
        , flipV    = False
        , rotation = Nothing
        }

    myTacoIcon : Html msg
    myTacoIcon
      = Icon.i [ Icon.style myIconStyle ] Taco
-}
i : List (Attribute msg) -> Icon -> Html msg
i attrs icon
  = Html.i (toClass icon :: attrs) []

{-| 
    Icon.toString GuyFawkesMask
    -- "guy-fawkes-mask"
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
    Icon.toClassName CoffeeToGo
    -- "mdi mdi-coffee-to-go"
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
    in "mdi mdi" ++ snakeCase (Basics.toString icon)

{-| 
    Icon.toClass Apple
    -- Attribute.class "mdi mdi-apple"
-}
toClass : Icon -> Attribute msg
toClass = toClassName >> class

{-| -}
style : Style -> Attribute msg
style {shade,inactive,size,flipH,flipV,rotation}
  = Attr.classList
  <| List.map (flip (,) True)
    [ case size of
        Just X18 -> "mdi-18"
        Just X24 -> "mdi-24"
        Just X36 -> "mdi-36"
        Just X48 -> "mdi-48"
        Nothing  -> ""
    , case shade of
        Just Light -> "mdi-light"
        Just Dark  -> "mdi-dark"
        Nothing    -> ""
    , case inactive of
        True  -> "mdi-inactive"
        False -> ""
    , case flipH of
        True  -> "mdi-flip-h"
        False -> ""
    , case flipV of
        True  -> "mdi-flip-v"
        False -> ""
    , case rotation of
        Just Rotate45  -> "mdi-rotate-45"
        Just Rotate90  -> "mdi-rotate-90"
        Just Rotate135 -> "mdi-rotate-135"
        Just Rotate180 -> "mdi-rotate-180"
        Just Rotate225 -> "mdi-rotate-225"
        Just Rotate270 -> "mdi-rotate-270"
        Just Rotate315 -> "mdi-rotate-315"
        Nothing        -> ""
    ]

{-| -}
type alias Style
  = { shade    : Maybe Shade
    , inactive : Bool
    , size     : Maybe Size
    , flipH    : Bool
    , flipV    : Bool
    , rotation : Maybe Rotation
    }

{-|
    lightCat = i [ light ] Cat
-}
light : Attribute msg
light = class "mdi-light"

{-|
    darkCat = i [ dark ] Cat
-}
dark : Attribute msg
dark = class "mdi-dark"

{-|
    untouchableCat = i [ inactive ] Cat
-}
inactive : Attribute msg
inactive = class "mdi-inactive"

{-|
    fatCat = i [ size X48 ] Cat
-}
size : Size -> Attribute msg
size s
  = case s of
      X18 -> class "mdi-18"
      X24 -> class "mdi-24"
      X36 -> class "mdi-36"
      X48 -> class "mdi-48"

{-|
    mirrorCat = i [ flipH ] Cat
-}
flipH : Attribute msg
flipH = class "mdi-flip-h"

{-|
    upsideDownCat = i [ flipV ] Cat
-}
flipV : Attribute msg
flipV = class "mdi-flip-v"

{-|
    twistedCat = i [ rotate Rotate135 ] Cat
-}
rotate : Rotation -> Attribute msg
rotate rotation
  = case rotation of
      Rotate45  -> class "mdi-rotate-45"
      Rotate90  -> class "mdi-rotate-90"
      Rotate135 -> class "mdi-rotate-135"
      Rotate180 -> class "mdi-rotate-180"
      Rotate225 -> class "mdi-rotate-225"
      Rotate270 -> class "mdi-rotate-270"
      Rotate315 -> class "mdi-rotate-315"


{-| -}
type Shade
  = Light
  | Dark

{-| -}
type Rotation
  = Rotate45
  | Rotate90
  | Rotate135
  | Rotate180
  | Rotate225
  | Rotate270
  | Rotate315

{-| Width/height presets in pixels.
-}
type Size
  = X18
  | X24
  | X36
  | X48

{-| -}
type Icon
  = AccessPoint
  | AccessPointNetwork
  | Account
  | AccountAlert
  | AccountBox
  | AccountBoxOutline
  | AccountCardDetails
  | AccountCheck
  | AccountCircle
  | AccountConvert
  | AccountEdit
  | AccountKey
  | AccountLocation
  | AccountMinus
  | AccountMultiple
  | AccountMultipleMinus
  | AccountMultipleOutline
  | AccountMultiplePlus
  | AccountMultiplePlusOutline
  | AccountNetwork
  | AccountOff
  | AccountOutline
  | AccountPlus
  | AccountPlusOutline
  | AccountRemove
  | AccountSearch
  | AccountSettings
  | AccountSettingsVariant
  | AccountStar
  | AccountSwitch
  | Adjust
  | AirConditioner
  | Airballoon
  | Airplane
  | AirplaneLanding
  | AirplaneOff
  | AirplaneTakeoff
  | Airplay
  | Alarm
  | AlarmBell
  | AlarmCheck
  | AlarmLight
  | AlarmMultiple
  | AlarmOff
  | AlarmPlus
  | AlarmSnooze
  | Album
  | Alert
  | AlertBox
  | AlertCircle
  | AlertCircleOutline
  | AlertDecagram
  | AlertOctagon
  | AlertOctagram
  | AlertOutline
  | AllInclusive
  | Allo
  | Alpha
  | Alphabetical
  | Altimeter
  | Amazon
  | AmazonClouddrive
  | Ambulance
  | Amplifier
  | Anchor
  | Android
  | AndroidDebugBridge
  | AndroidHead
  | AndroidStudio
  | Angular
  | Angularjs
  | Animation
  | Apple
  | AppleFinder
  | AppleIos
  | AppleKeyboardCaps
  | AppleKeyboardCommand
  | AppleKeyboardControl
  | AppleKeyboardOption
  | AppleKeyboardShift
  | AppleMobileme
  | AppleSafari
  | Application
  | Approval
  | Apps
  | Archive
  | ArrangeBringForward
  | ArrangeBringToFront
  | ArrangeSendBackward
  | ArrangeSendToBack
  | ArrowAll
  | ArrowBottomLeft
  | ArrowBottomRight
  | ArrowCollapse
  | ArrowCollapseAll
  | ArrowCollapseDown
  | ArrowCollapseLeft
  | ArrowCollapseRight
  | ArrowCollapseUp
  | ArrowDown
  | ArrowDownBold
  | ArrowDownBoldBox
  | ArrowDownBoldBoxOutline
  | ArrowDownBoldCircle
  | ArrowDownBoldCircleOutline
  | ArrowDownBoldHexagonOutline
  | ArrowDownBox
  | ArrowDownDropCircle
  | ArrowDownDropCircleOutline
  | ArrowDownThick
  | ArrowExpand
  | ArrowExpandAll
  | ArrowExpandDown
  | ArrowExpandLeft
  | ArrowExpandRight
  | ArrowExpandUp
  | ArrowLeft
  | ArrowLeftBold
  | ArrowLeftBoldBox
  | ArrowLeftBoldBoxOutline
  | ArrowLeftBoldCircle
  | ArrowLeftBoldCircleOutline
  | ArrowLeftBoldHexagonOutline
  | ArrowLeftBox
  | ArrowLeftDropCircle
  | ArrowLeftDropCircleOutline
  | ArrowLeftThick
  | ArrowRight
  | ArrowRightBold
  | ArrowRightBoldBox
  | ArrowRightBoldBoxOutline
  | ArrowRightBoldCircle
  | ArrowRightBoldCircleOutline
  | ArrowRightBoldHexagonOutline
  | ArrowRightBox
  | ArrowRightDropCircle
  | ArrowRightDropCircleOutline
  | ArrowRightThick
  | ArrowTopLeft
  | ArrowTopRight
  | ArrowUp
  | ArrowUpBold
  | ArrowUpBoldBox
  | ArrowUpBoldBoxOutline
  | ArrowUpBoldCircle
  | ArrowUpBoldCircleOutline
  | ArrowUpBoldHexagonOutline
  | ArrowUpBox
  | ArrowUpDropCircle
  | ArrowUpDropCircleOutline
  | ArrowUpThick
  | Artist
  | Assistant
  | Asterisk
  | At
  | Atlassian
  | Atom
  | Attachment
  | Audiobook
  | AutoFix
  | AutoUpload
  | Autorenew
  | AvTimer
  | Azure
  | Baby
  | BabyBuggy
  | Backburger
  | Backspace
  | BackupRestore
  | Bandcamp
  | Bank
  | Barcode
  | BarcodeScan
  | Barley
  | Barrel
  | Basecamp
  | Basket
  | BasketFill
  | BasketUnfill
  | Basketball
  | Battery
  | Battery10
  | Battery20
  | Battery30
  | Battery40
  | Battery50
  | Battery60
  | Battery70
  | Battery80
  | Battery90
  | BatteryAlert
  | BatteryCharging
  | BatteryCharging100
  | BatteryCharging20
  | BatteryCharging30
  | BatteryCharging40
  | BatteryCharging60
  | BatteryCharging80
  | BatteryCharging90
  | BatteryChargingWireless
  | BatteryChargingWireless10
  | BatteryChargingWireless20
  | BatteryChargingWireless30
  | BatteryChargingWireless40
  | BatteryChargingWireless50
  | BatteryChargingWireless60
  | BatteryChargingWireless70
  | BatteryChargingWireless80
  | BatteryChargingWireless90
  | BatteryChargingWirelessAlert
  | BatteryChargingWirelessOutline
  | BatteryMinus
  | BatteryNegative
  | BatteryOutline
  | BatteryPlus
  | BatteryPositive
  | BatteryUnknown
  | Beach
  | Beaker
  | Beats
  | Beer
  | Behance
  | Bell
  | BellOff
  | BellOutline
  | BellPlus
  | BellRing
  | BellRingOutline
  | BellSleep
  | Beta
  | Bible
  | Bike
  | Bing
  | Binoculars
  | Bio
  | Biohazard
  | Bitbucket
  | Bitcoin
  | BlackMesa
  | Blackberry
  | Blender
  | Blinds
  | BlockHelper
  | Blogger
  | Bluetooth
  | BluetoothAudio
  | BluetoothConnect
  | BluetoothOff
  | BluetoothSettings
  | BluetoothTransfer
  | Blur
  | BlurLinear
  | BlurOff
  | BlurRadial
  | Bomb
  | BombOff
  | Bone
  | Book
  | BookMinus
  | BookMultiple
  | BookMultipleVariant
  | BookOpen
  | BookOpenPageVariant
  | BookOpenVariant
  | BookPlus
  | BookSecure
  | BookUnsecure
  | BookVariant
  | Bookmark
  | BookmarkCheck
  | BookmarkMusic
  | BookmarkOutline
  | BookmarkPlus
  | BookmarkPlusOutline
  | BookmarkRemove
  | Boombox
  | Bootstrap
  | BorderAll
  | BorderBottom
  | BorderColor
  | BordeR
  | BorderInside
  | BorderLeft
  | BorderNone
  | BorderOutside
  | BorderRight
  | BorderStyle
  | BorderTop
  | BorderVertical
  | BowTie
  | Bowl
  | Bowling
  | Box
  | BoxCutter
  | BoxShadow
  | Bridge
  | Briefcase
  | BriefcaseCheck
  | BriefcaseDownload
  | BriefcaseOutline
  | BriefcaseUpload
  | Brightness1
  | Brightness2
  | Brightness3
  | Brightness4
  | Brightness5
  | Brightness6
  | Brightness7
  | BrightnessAuto
  | Broom
  | Brush
  | Buffer
  | Bug
  | BulletinBoard
  | Bullhorn
  | Bullseye
  | Bus
  | BusArticulatedEnd
  | BusArticulatedFront
  | BusDoubleDecker
  | BusSchool
  | BusSide
  | Cached
  | Cake
  | CakeLayered
  | CakeVariant
  | Calculator
  | Calendar
  | CalendarBlank
  | CalendarCheck
  | CalendarClock
  | CalendarMultiple
  | CalendarMultipleCheck
  | CalendarPlus
  | CalendarQuestion
  | CalendarRange
  | CalendarRemove
  | CalendarText
  | CalendarToday
  | CallMade
  | CallMerge
  | CallMissed
  | CallReceived
  | CallSplit
  | Camcorder
  | CamcorderBox
  | CamcorderBoxOff
  | CamcorderOff
  | Camera
  | CameraBurst
  | CameraEnhance
  | CameraFront
  | CameraFrontVariant
  | CameraGopro
  | CameraIris
  | CameraMeteringCenter
  | CameraMeteringMatrix
  | CameraMeteringPartial
  | CameraMeteringSpot
  | CameraOff
  | CameraPartyMode
  | CameraRear
  | CameraRearVariant
  | CameraSwitch
  | CameraTimer
  | Cancel
  | Candle
  | Candycane
  | Cannabis
  | Car
  | CarBattery
  | CarConnected
  | CarConvertible
  | CarEstate
  | CarHatchback
  | CarPickup
  | CarSide
  | CarSports
  | CarWash
  | Caravan
  | Cards
  | CardsOutline
  | CardsPlayingOutline
  | CardsVariant
  | Carrot
  | Cart
  | CartOff
  | CartOutline
  | CartPlus
  | CaseSensitiveAlt
  | Cash
  | Cash100
  | CashMultiple
  | CashUsd
  | Cast
  | CastConnected
  | CastOff
  | Castle
  | Cat
  | Cctv
  | CeilingLight
  | Cellphone
  | CellphoneAndroid
  | CellphoneBasic
  | CellphoneDock
  | CellphoneIphone
  | CellphoneLink
  | CellphoneLinkOff
  | CellphoneSettings
  | CellphoneWireless
  | Certificate
  | ChairSchool
  | ChartArc
  | ChartAreaspline
  | ChartBar
  | ChartBarStacked
  | ChartBubble
  | ChartDonut
  | ChartDonutVariant
  | ChartGantt
  | ChartHistogram
  | ChartLine
  | ChartLineStacked
  | ChartLineVariant
  | ChartPie
  | ChartScatterplotHexbin
  | ChartTimeline
  | Check
  | CheckAll
  | CheckCircle
  | CheckCircleOutline
  | CheckboxBlank
  | CheckboxBlankCircle
  | CheckboxBlankCircleOutline
  | CheckboxBlankOutline
  | CheckboxMarked
  | CheckboxMarkedCircle
  | CheckboxMarkedCircleOutline
  | CheckboxMarkedOutline
  | CheckboxMultipleBlank
  | CheckboxMultipleBlankCircle
  | CheckboxMultipleBlankCircleOutline
  | CheckboxMultipleBlankOutline
  | CheckboxMultipleMarked
  | CheckboxMultipleMarkedCircle
  | CheckboxMultipleMarkedCircleOutline
  | CheckboxMultipleMarkedOutline
  | Checkerboard
  | ChemicalWeapon
  | ChevronDoubleDown
  | ChevronDoubleLeft
  | ChevronDoubleRight
  | ChevronDoubleUp
  | ChevronDown
  | ChevronLeft
  | ChevronRight
  | ChevronUp
  | ChiliHot
  | ChiliMedium
  | ChiliMild
  | Chip
  | Church
  | Circle
  | CircleOutline
  | CiscoWebex
  | City
  | Clipboard
  | ClipboardAccount
  | ClipboardAlert
  | ClipboardArrowDown
  | ClipboardArrowLeft
  | ClipboardCheck
  | ClipboardFlow
  | ClipboardOutline
  | ClipboardPlus
  | ClipboardText
  | Clippy
  | Clock
  | ClockAlert
  | ClockEnd
  | ClockFast
  | ClockIn
  | ClockOut
  | ClockStart
  | Close
  | CloseBox
  | CloseBoxOutline
  | CloseCircle
  | CloseCircleOutline
  | CloseNetwork
  | CloseOctagon
  | CloseOctagonOutline
  | CloseOutline
  | ClosedCaption
  | Cloud
  | CloudBraces
  | CloudCheck
  | CloudCircle
  | CloudDownload
  | CloudOffOutline
  | CloudOutline
  | CloudPrint
  | CloudPrintOutline
  | CloudSync
  | CloudTags
  | CloudUpload
  | Clover
  | CodeArray
  | CodeBraces
  | CodeBrackets
  | CodeEqual
  | CodeGreaterThan
  | CodeGreaterThanOrEqual
  | CodeLessThan
  | CodeLessThanOrEqual
  | CodeNotEqual
  | CodeNotEqualVariant
  | CodeParentheses
  | CodeString
  | CodeTags
  | CodeTagsCheck
  | Codepen
  | Coffee
  | CoffeeOutline
  | CoffeeToGo
  | Coin
  | Coins
  | Collage
  | ColorHelper
  | Comment
  | CommentAccount
  | CommentAccountOutline
  | CommentAlert
  | CommentAlertOutline
  | CommentCheck
  | CommentCheckOutline
  | CommentMultipleOutline
  | CommentOutline
  | CommentPlusOutline
  | CommentProcessing
  | CommentProcessingOutline
  | CommentQuestion
  | CommentQuestionOutline
  | CommentRemove
  | CommentRemoveOutline
  | CommentText
  | CommentTextOutline
  | Compare
  | Compass
  | CompassOutline
  | Console
  | ConsoleLine
  | ContactMail
  | Contacts
  | ContentCopy
  | ContentCut
  | ContentDuplicate
  | ContentPaste
  | ContentSave
  | ContentSaveAll
  | ContentSaveOutline
  | ContentSaveSettings
  | Contrast
  | ContrastBox
  | ContrastCircle
  | Cookie
  | Copyright
  | Corn
  | Counter
  | Cow
  | Creation
  | CreditCard
  | CreditCardMultiple
  | CreditCardOff
  | CreditCardPlus
  | CreditCardScan
  | Crop
  | CropFree
  | CropLandscape
  | CropPortrait
  | CropRotate
  | CropSquare
  | Crosshairs
  | CrosshairsGps
  | Crown
  | Cube
  | CubeOutline
  | CubeSend
  | CubeUnfolded
  | Cup
  | CupOff
  | CupWater
  | CurrencyBtc
  | CurrencyChf
  | CurrencyCny
  | CurrencyEth
  | CurrencyEur
  | CurrencyGbp
  | CurrencyInr
  | CurrencyJpy
  | CurrencyKrw
  | CurrencyNgn
  | CurrencyRub
  | CurrencySign
  | CurrencyTry
  | CurrencyTwd
  | CurrencyUsd
  | CurrencyUsdOff
  | CursorDefault
  | CursorDefaultOutline
  | CursorMove
  | CursorPointer
  | CursorText
  | Database
  | DatabaseMinus
  | DatabasePlus
  | DebugStepInto
  | DebugStepOut
  | DebugStepOver
  | Decagram
  | DecagramOutline
  | DecimalDecrease
  | DecimalIncrease
  | Delete
  | DeleteCircle
  | DeleteEmpty
  | DeleteForever
  | DeleteRestore
  | DeleteSweep
  | DeleteVariant
  | Delta
  | Deskphone
  | DesktopClassic
  | DesktopMac
  | DesktopTower
  | Details
  | DeveloperBoard
  | Deviantart
  | Dialpad
  | Diamond
  | Dice1
  | Dice2
  | Dice3
  | Dice4
  | Dice5
  | Dice6
  | DiceD10
  | DiceD20
  | DiceD4
  | DiceD6
  | DiceD8
  | DiceMultiple
  | Dictionary
  | DipSwitch
  | Directions
  | DirectionsFork
  | Discord
  | Disk
  | DiskAlert
  | Disqus
  | DisqusOutline
  | Division
  | DivisionBox
  | Dna
  | Dns
  | DoNotDisturb
  | DoNotDisturbOff
  | Dolby
  | Domain
  | Donkey
  | Door
  | DoorClosed
  | DoorOpen
  | DotS
  | DotsVertical
  | DotsVerticalCircle
  | Douban
  | Download
  | DownloadNetwork
  | Drag
  | DraG
  | DragVertical
  | Drawing
  | DrawingBox
  | Dribbble
  | DribbbleBox
  | Drone
  | Dropbox
  | Drupal
  | Duck
  | Dumbbell
  | EarHearing
  | Earth
  | EarthBox
  | EarthBoxOff
  | EarthOff
  | Edge
  | Eject
  | Elephant
  | ElevationDecline
  | ElevationRise
  | Elevator
  | Email
  | EmailAlert
  | EmailOpen
  | EmailOpenOutline
  | EmailOutline
  | EmailSecure
  | EmailVariant
  | Emby
  | Emoticon
  | EmoticonCool
  | EmoticonDead
  | EmoticonDevil
  | EmoticonExcited
  | EmoticonHappy
  | EmoticonNeutral
  | EmoticonPoop
  | EmoticonSad
  | EmoticonTongue
  | Engine
  | EngineOutline
  | Equal
  | EqualBox
  | Eraser
  | EraserVariant
  | Escalator
  | Ethernet
  | EthernetCable
  | EthernetCableOff
  | Etsy
  | EvStation
  | Eventbrite
  | Evernote
  | Exclamation
  | ExitToApp
  | Export
  | Eye
  | EyeOff
  | EyeOffOutline
  | EyeOutline
  | Eyedropper
  | EyedropperVariant
  | Face
  | FaceProfile
  | Facebook
  | FacebookBox
  | FacebookMessenger
  | Factory
  | Fan
  | FanOff
  | FastForward
  | FastForwardOutline
  | Fax
  | Feather
  | Ferry
  | File
  | FileAccount
  | FileChart
  | FileCheck
  | FileCloud
  | FileDelimited
  | FileDocument
  | FileDocumentBox
  | FileExcel
  | FileExcelBox
  | FileExport
  | FileFind
  | FileHidden
  | FileImage
  | FileImport
  | FileLock
  | FileMultiple
  | FileMusic
  | FileOutline
  | FilePdf
  | FilePdfBox
  | FilePercent
  | FilePlus
  | FilePowerpoint
  | FilePowerpointBox
  | FilePresentationBox
  | FileRestore
  | FileSend
  | FileTree
  | FileVideo
  | FileWord
  | FileWordBox
  | FileXml
  | Film
  | Filmstrip
  | FilmstripOff
  | Filter
  | FilterOutline
  | FilterRemove
  | FilterRemoveOutline
  | FilterVariant
  | Finance
  | FindReplace
  | Fingerprint
  | Fire
  | Firefox
  | Fish
  | Flag
  | FlagCheckered
  | FlagOutline
  | FlagTriangle
  | FlagVariant
  | FlagVariantOutline
  | Flash
  | FlashAuto
  | FlashCircle
  | FlashOff
  | FlashOutline
  | FlashRedEye
  | Flashlight
  | FlashlightOff
  | Flask
  | FlaskEmpty
  | FlaskEmptyOutline
  | FlaskOutline
  | Flattr
  | FlipToBack
  | FlipToFront
  | FloorPlan
  | Floppy
  | Flower
  | Folder
  | FolderAccount
  | FolderDownload
  | FolderGoogleDrive
  | FolderImage
  | FolderLock
  | FolderLockOpen
  | FolderMove
  | FolderMultiple
  | FolderMultipleImage
  | FolderMultipleOutline
  | FolderOpen
  | FolderOutline
  | FolderPlus
  | FolderRemove
  | FolderStar
  | FolderUpload
  | FontAwesome
  | Food
  | FoodApple
  | FoodCroissant
  | FoodForkDrink
  | FoodOff
  | FoodVariant
  | Football
  | FootballAustralian
  | FootballHelmet
  | Forklift
  | FormatAlignBottom
  | FormatAlignCenter
  | FormatAlignJustify
  | FormatAlignLeft
  | FormatAlignMiddle
  | FormatAlignRight
  | FormatAlignTop
  | FormatAnnotationPlus
  | FormatBold
  | FormatClear
  | FormatColorFill
  | FormatColorText
  | FormatFloatCenter
  | FormatFloatLeft
  | FormatFloatNone
  | FormatFloatRight
  | FormatFont
  | FormatHeader1
  | FormatHeader2
  | FormatHeader3
  | FormatHeader4
  | FormatHeader5
  | FormatHeader6
  | FormatHeaderDecrease
  | FormatHeaderEqual
  | FormatHeaderIncrease
  | FormatHeaderPound
  | FormatHorizontalAlignCenter
  | FormatHorizontalAlignLeft
  | FormatHorizontalAlignRight
  | FormatIndentDecrease
  | FormatIndentIncrease
  | FormatItalic
  | FormatLineSpacing
  | FormatLineStyle
  | FormatLineWeight
  | FormatListBulleted
  | FormatListBulletedType
  | FormatListChecks
  | FormatListNumbers
  | FormatPageBreak
  | FormatPaint
  | FormatParagraph
  | FormatPilcrow
  | FormatQuoteClose
  | FormatQuoteOpen
  | FormatRotate90
  | FormatSection
  | FormatSize
  | FormatStrikethrough
  | FormatStrikethroughVariant
  | FormatSubscript
  | FormatSuperscript
  | FormatText
  | FormatTextdirectionLToR
  | FormatTextdirectionRToL
  | FormatTitle
  | FormatUnderline
  | FormatVerticalAlignBottom
  | FormatVerticalAlignCenter
  | FormatVerticalAlignTop
  | FormatWrapInline
  | FormatWrapSquare
  | FormatWrapTight
  | FormatWrapTopBottom
  | Forum
  | ForumOutline
  | Forward
  | Foursquare
  | Fridge
  | FridgeFilled
  | FridgeFilledBottom
  | FridgeFilledTop
  | Fuel
  | Fullscreen
  | FullscreenExit
  | Function
  | Gamepad
  | GamepadVariant
  | Garage
  | GarageOpen
  | GasCylinder
  | GasStation
  | Gate
  | Gauge
  | Gavel
  | GenderFemale
  | GenderMale
  | GenderMaleFemale
  | GenderTransgender
  | Gesture
  | GestureDoubleTap
  | GestureSwipeDown
  | GestureSwipeLeft
  | GestureSwipeRight
  | GestureSwipeUp
  | GestureTap
  | GestureTwoDoubleTap
  | GestureTwoTap
  | Ghost
  | Gift
  | Git
  | GithubBox
  | GithubCircle
  | GithubFace
  | GlassFlute
  | GlassMug
  | GlassStange
  | GlassTulip
  | Glassdoor
  | Glasses
  | Gmail
  | Gnome
  | Golf
  | Gondola
  | Google
  | GoogleAnalytics
  | GoogleAssistant
  | GoogleCardboard
  | GoogleChrome
  | GoogleCircles
  | GoogleCirclesCommunities
  | GoogleCirclesExtended
  | GoogleCirclesGroup
  | GoogleController
  | GoogleControllerOff
  | GoogleDrive
  | GoogleEarth
  | GoogleGlass
  | GoogleHome
  | GoogleKeep
  | GoogleMaps
  | GoogleNearby
  | GooglePages
  | GooglePhotos
  | GooglePhysicalWeb
  | GooglePlay
  | GooglePlus
  | GooglePlusBox
  | GoogleTranslate
  | GoogleWallet
  | Gradient
  | GreasePencil
  | Grid
  | GridLarge
  | GridOff
  | Group
  | GuitarAcoustic
  | GuitarElectric
  | GuitarPick
  | GuitarPickOutline
  | GuyFawkesMask
  | Hackernews
  | Hamburger
  | HandPointingRight
  | Hanger
  | Hangouts
  | Harddisk
  | Headphones
  | HeadphonesBox
  | HeadphonesOff
  | HeadphonesSettings
  | Headset
  | HeadsetDock
  | HeadsetOff
  | Heart
  | HeartBox
  | HeartBoxOutline
  | HeartBroken
  | HeartHalf
  | HeartHalfFull
  | HeartHalfOutline
  | HeartOff
  | HeartOutline
  | HeartPulse
  | Help
  | HelpBox
  | HelpCircle
  | HelpCircleOutline
  | HelpNetwork
  | Hexagon
  | HexagonMultiple
  | HexagonOutline
  | HighDefinition
  | Highway
  | History
  | Hololens
  | Home
  | HomeAccount
  | HomeAssistant
  | HomeAutomation
  | HomeCircle
  | HomeHeart
  | HomeMapMarker
  | HomeModern
  | HomeOutline
  | HomeVariant
  | Hook
  | HookOff
  | Hops
  | Hospital
  | HospitalBuilding
  | HospitalMarker
  | HotTub
  | Hotel
  | Houzz
  | HouzzBox
  | Hulu
  | Human
  | HumanChild
  | HumanFemale
  | HumanGreeting
  | HumanHandsdown
  | HumanHandsup
  | HumanMale
  | HumanMaleFemale
  | HumanPregnant
  | HumbleBundle
  | IceCream
  | Image
  | ImageAlbum
  | ImageArea
  | ImageAreaClose
  | ImageBroken
  | ImageBrokenVariant
  | ImageFilter
  | ImageFilterBlackWhite
  | ImageFilterCenterFocus
  | ImageFilterCenterFocusWeak
  | ImageFilterDrama
  | ImageFilterFrames
  | ImageFilterHdr
  | ImageFilterNone
  | ImageFilterTiltShift
  | ImageFilterVintage
  | ImageMultiple
  | ImageOff
  | Import
  | Inbox
  | InboxArrowDown
  | InboxArrowUp
  | Incognito
  | Infinity
  | Information
  | InformationOutline
  | InformationVariant
  | Instagram
  | Instapaper
  | InternetExplorer
  | InvertColors
  | Itunes
  | Jeepney
  | Jira
  | Jsfiddle
  | Json
  | Karate
  | Keg
  | Kettle
  | Key
  | KeyChange
  | KeyMinus
  | KeyPlus
  | KeyRemove
  | KeyVariant
  | Keyboard
  | KeyboardBackspace
  | KeyboardCaps
  | KeyboardClose
  | KeyboardOff
  | KeyboardReturn
  | KeyboardTab
  | KeyboardVariant
  | Kickstarter
  | Kodi
  | Label
  | LabelOutline
  | Ladybug
  | Lambda
  | Lamp
  | Lan
  | LanConnect
  | LanDisconnect
  | LanPending
  | LanguageC
  | LanguageCpp
  | LanguageCsharp
  | LanguageCss3
  | LanguageGo
  | LanguageHtml5
  | LanguageJavascript
  | LanguagePhp
  | LanguagePython
  | LanguagePythonText
  | LanguageR
  | LanguageSwift
  | LanguageTypescript
  | Laptop
  | LaptopChromebook
  | LaptopMac
  | LaptopOff
  | LaptopWindows
  | Lastfm
  | Lastpass
  | Launch
  | LavaLamp
  | Layers
  | LayersOff
  | LeadPencil
  | Leaf
  | LedOff
  | LedOn
  | LedOutline
  | LedStrip
  | LedVariantOff
  | LedVariantOn
  | LedVariantOutline
  | Library
  | LibraryBooks
  | LibraryMusic
  | LibraryPlus
  | Lightbulb
  | LightbulbOn
  | LightbulbOnOutline
  | LightbulbOutline
  | Link
  | LinkOff
  | LinkVariant
  | LinkVariantOff
  | Linkedin
  | LinkedinBox
  | Linux
  | Loading
  | Lock
  | LockOpen
  | LockOpenOutline
  | LockOutline
  | LockPattern
  | LockPlus
  | LockReset
  | Locker
  | LockerMultiple
  | Login
  | LoginVariant
  | Logout
  | LogoutVariant
  | Looks
  | Loop
  | Loupe
  | Lumx
  | Magnet
  | MagnetOn
  | Magnify
  | MagnifyMinus
  | MagnifyMinusOutline
  | MagnifyPlus
  | MagnifyPlusOutline
  | MailRu
  | Mailbox
  | Map
  | MapMarker
  | MapMarkerCircle
  | MapMarkerMinus
  | MapMarkerMultiple
  | MapMarkerOff
  | MapMarkerOutline
  | MapMarkerPlus
  | MapMarkerRadius
  | Margin
  | Markdown
  | Marker
  | MarkerCheck
  | Martini
  | MaterialUi
  | MathCompass
  | Matrix
  | Maxcdn
  | MedicalBag
  | Medium
  | Memory
  | Menu
  | MenuDown
  | MenuDownOutline
  | MenuLeft
  | MenuRight
  | MenuUp
  | MenuUpOutline
  | Message
  | MessageAlert
  | MessageBulleted
  | MessageBulletedOff
  | MessageDraw
  | MessageImage
  | MessageOutline
  | MessagePlus
  | MessageProcessing
  | MessageReply
  | MessageReplyText
  | MessageSettings
  | MessageSettingsVariant
  | MessageText
  | MessageTextOutline
  | MessageVideo
  | Meteor
  | Metronome
  | MetronomeTick
  | MicroSd
  | Microphone
  | MicrophoneOff
  | MicrophoneOutline
  | MicrophoneSettings
  | MicrophoneVariant
  | MicrophoneVariantOff
  | Microscope
  | Microsoft
  | Minecraft
  | Minus
  | MinusBox
  | MinusBoxOutline
  | MinusCircle
  | MinusCircleOutline
  | MinusNetwork
  | Mixcloud
  | Mixer
  | Monitor
  | MonitorMultiple
  | More
  | Motorbike
  | Mouse
  | MouseOff
  | MouseVariant
  | MouseVariantOff
  | MoveResize
  | MoveResizeVariant
  | Movie
  | MovieRoll
  | Multiplication
  | MultiplicationBox
  | Mushroom
  | MushroomOutline
  | Music
  | MusicBox
  | MusicBoxOutline
  | MusicCircle
  | MusicNote
  | MusicNoteBluetooth
  | MusicNoteBluetoothOff
  | MusicNoteEighth
  | MusicNoteHalf
  | MusicNoteOff
  | MusicNoteQuarter
  | MusicNoteSixteenth
  | MusicNoteWhole
  | MusicOff
  | Nature
  | NaturePeople
  | Navigation
  | NearMe
  | Needle
  | NestProtect
  | NestThermostat
  | Netflix
  | Network
  | NewBox
  | Newspaper
  | Nfc
  | NfcTap
  | NfcVariant
  | Ninja
  | NintendoSwitch
  | Nodejs
  | Note
  | NoteMultiple
  | NoteMultipleOutline
  | NoteOutline
  | NotePlus
  | NotePlusOutline
  | NoteText
  | Notebook
  | NotificationClearAll
  | Npm
  | Nuke
  | Null
  | Numeric
  | Numeric0Box
  | Numeric0BoxMultipleOutline
  | Numeric0BoxOutline
  | Numeric1Box
  | Numeric1BoxMultipleOutline
  | Numeric1BoxOutline
  | Numeric2Box
  | Numeric2BoxMultipleOutline
  | Numeric2BoxOutline
  | Numeric3Box
  | Numeric3BoxMultipleOutline
  | Numeric3BoxOutline
  | Numeric4Box
  | Numeric4BoxMultipleOutline
  | Numeric4BoxOutline
  | Numeric5Box
  | Numeric5BoxMultipleOutline
  | Numeric5BoxOutline
  | Numeric6Box
  | Numeric6BoxMultipleOutline
  | Numeric6BoxOutline
  | Numeric7Box
  | Numeric7BoxMultipleOutline
  | Numeric7BoxOutline
  | Numeric8Box
  | Numeric8BoxMultipleOutline
  | Numeric8BoxOutline
  | Numeric9Box
  | Numeric9BoxMultipleOutline
  | Numeric9BoxOutline
  | Numeric9PlusBox
  | Numeric9PlusBoxMultipleOutline
  | Numeric9PlusBoxOutline
  | Nut
  | Nutrition
  | Oar
  | Octagon
  | OctagonOutline
  | Octagram
  | OctagramOutline
  | Odnoklassniki
  | Office
  | Oil
  | OilTemperature
  | Omega
  | Onedrive
  | Onenote
  | Opacity
  | OpenInApp
  | OpenInNew
  | Openid
  | Opera
  | Orbit
  | Ornament
  | OrnamentVariant
  | Owl
  | Package
  | PackageDown
  | PackageUp
  | PackageVariant
  | PackageVariantClosed
  | PageFirst
  | PageLast
  | PageLayoutBody
  | PageLayoutFooter
  | PageLayoutHeader
  | PageLayoutSidebarLeft
  | PageLayoutSidebarRight
  | Palette
  | PaletteAdvanced
  | Panda
  | Pandora
  | Panorama
  | PanoramaFisheye
  | PanoramA
  | PanoramaVertical
  | PanoramaWideAngle
  | PaperCutVertical
  | Paperclip
  | Parking
  | Passport
  | Pause
  | PauseCircle
  | PauseCircleOutline
  | PauseOctagon
  | PauseOctagonOutline
  | Paw
  | PawOff
  | Pen
  | Pencil
  | PencilBox
  | PencilBoxOutline
  | PencilCircle
  | PencilCircleOutline
  | PencilLock
  | PencilOff
  | Pentagon
  | PentagonOutline
  | Percent
  | PeriodicTableCo2
  | Periscope
  | Pharmacy
  | Phone
  | PhoneBluetooth
  | PhoneClassic
  | PhoneForward
  | PhoneHangup
  | PhoneInTalk
  | PhoneIncoming
  | PhoneLocked
  | PhoneLog
  | PhoneMinus
  | PhoneMissed
  | PhoneOutgoing
  | PhonePaused
  | PhonePlus
  | PhoneReturn
  | PhoneSettings
  | PhoneVoip
  | Pi
  | PiBox
  | Piano
  | Pig
  | Pill
  | Pillar
  | Pin
  | PinOff
  | PineTree
  | PineTreeBox
  | Pinterest
  | PinterestBox
  | Pipe
  | PipeDisconnected
  | Pistol
  | Pizza
  | PlaneShield
  | Play
  | PlayBoxOutline
  | PlayCircle
  | PlayCircleOutline
  | PlayPause
  | PlayProtectedContent
  | PlaylistCheck
  | PlaylistMinus
  | PlaylistPlay
  | PlaylistPlus
  | PlaylistRemove
  | Playstation
  | Plex
  | Plus
  | PlusBox
  | PlusBoxOutline
  | PlusCircle
  | PlusCircleMultipleOutline
  | PlusCircleOutline
  | PlusNetwork
  | PlusOne
  | PlusOutline
  | Pocket
  | Pokeball
  | PokerChip
  | Polaroid
  | Poll
  | PollBox
  | Polymer
  | Pool
  | Popcorn
  | Pot
  | PotMix
  | Pound
  | PoundBox
  | Power
  | PowerPlug
  | PowerPlugOff
  | PowerSettings
  | PowerSocket
  | PowerSocketEu
  | PowerSocketUk
  | PowerSocketUs
  | Prescription
  | Presentation
  | PresentationPlay
  | Printer
  | Printer3d
  | PrinterAlert
  | PrinterSettings
  | PriorityHigh
  | PriorityLow
  | ProfessionalHexagon
  | Projector
  | ProjectorScreen
  | Publish
  | Pulse
  | Puzzle
  | Qqchat
  | Qrcode
  | QrcodeScan
  | Quadcopter
  | QualityHigh
  | Quicktime
  | Radar
  | Radiator
  | Radio
  | RadioHandheld
  | RadioTower
  | Radioactive
  | RadioboxBlank
  | RadioboxMarked
  | Raspberrypi
  | RayEnd
  | RayEndArrow
  | RayStart
  | RayStartArrow
  | RayStartEnd
  | RayVertex
  | React
  | Read
  | Receipt
  | Record
  | RecordRec
  | Recycle
  | Reddit
  | Redo
  | RedoVariant
  | Refresh
  | Regex
  | RelativeScale
  | Reload
  | Remote
  | RenameBox
  | ReordeR
  | ReorderVertical
  | Repeat
  | RepeatOff
  | RepeatOnce
  | Replay
  | Reply
  | ReplyAll
  | Reproduction
  | ResizeBottomRight
  | Responsive
  | Restart
  | Restore
  | Rewind
  | RewindOutline
  | Rhombus
  | RhombusOutline
  | Ribbon
  | Rice
  | Ring
  | Road
  | RoadVariant
  | Robot
  | Rocket
  | Roomba
  | Rotate3d
  | RotateLeft
  | RotateLeftVariant
  | RotateRight
  | RotateRightVariant
  | RoundedCorner
  | RouterWireless
  | Routes
  | Rowing
  | Rss
  | RssBox
  | Ruler
  | Run
  | RunFast
  | Sale
  | Sass
  | Satellite
  | SatelliteVariant
  | Saxophone
  | Scale
  | ScaleBalance
  | ScaleBathroom
  | Scanner
  | School
  | ScreenRotation
  | ScreenRotationLock
  | Screwdriver
  | Script
  | Sd
  | Seal
  | SearchWeb
  | SeatFlat
  | SeatFlatAngled
  | SeatIndividualSuite
  | SeatLegroomExtra
  | SeatLegroomNormal
  | SeatLegroomReduced
  | SeatReclineExtra
  | SeatReclineNormal
  | Security
  | SecurityHome
  | SecurityNetwork
  | Select
  | SelectAll
  | SelectInverse
  | SelectOff
  | Selection
  | SelectionOff
  | Send
  | SendSecure
  | SerialPort
  | Server
  | ServerMinus
  | ServerNetwork
  | ServerNetworkOff
  | ServerOff
  | ServerPlus
  | ServerRemove
  | ServerSecurity
  | SetAll
  | SetCenter
  | SetCenterRight
  | SetLeft
  | SetLeftCenter
  | SetLeftRight
  | SetNone
  | SetRight
  | Settings
  | SettingsBox
  | Shape
  | ShapeCirclePlus
  | ShapeOutline
  | ShapePlus
  | ShapePolygonPlus
  | ShapeRectanglePlus
  | ShapeSquarePlus
  | Share
  | ShareVariant
  | Shield
  | ShieldHalfFull
  | ShieldOutline
  | ShipWheel
  | Shopping
  | ShoppingMusic
  | Shovel
  | ShovelOff
  | Shredder
  | Shuffle
  | ShuffleDisabled
  | ShuffleVariant
  | Sigma
  | SigmaLower
  | SignCaution
  | SignDirection
  | SignText
  | Signal
  | Signal2g
  | Signal3g
  | Signal4g
  | SignalHspa
  | SignalHspaPlus
  | SignalOff
  | SignalVariant
  | Silverware
  | SilverwareFork
  | SilverwareSpoon
  | SilverwareVariant
  | Sim
  | SimAlert
  | SimOff
  | Sitemap
  | SkipBackward
  | SkipForward
  | SkipNext
  | SkipNextCircle
  | SkipNextCircleOutline
  | SkipPrevious
  | SkipPreviousCircle
  | SkipPreviousCircleOutline
  | Skull
  | Skype
  | SkypeBusiness
  | Slack
  | Sleep
  | SleepOff
  | Smoking
  | SmokingOff
  | Snapchat
  | Snowflake
  | Snowman
  | Soccer
  | SoccerField
  | Sofa
  | Solid
  | Sort
  | SortAlphabetical
  | SortAscending
  | SortDescending
  | SortNumeric
  | SortVariant
  | Soundcloud
  | SourceBranch
  | SourceCommit
  | SourceCommitEnd
  | SourceCommitEndLocal
  | SourceCommitLocal
  | SourceCommitNextLocal
  | SourceCommitStart
  | SourceCommitStartNextLocal
  | SourceFork
  | SourceMerge
  | SourcePull
  | SoySauce
  | Speaker
  | SpeakerOff
  | SpeakerWireless
  | Speedometer
  | Spellcheck
  | Spotify
  | Spotlight
  | SpotlightBeam
  | Spray
  | Square
  | SquareInc
  | SquareIncCash
  | SquareOutline
  | SquareRoot
  | StackOverflow
  | Stackexchange
  | Stadium
  | Stairs
  | StandardDefinition
  | Star
  | StarCircle
  | StarHalf
  | StarOff
  | StarOutline
  | Steam
  | Steering
  | StepBackward
  | StepBackward2
  | StepForward
  | StepForward2
  | Stethoscope
  | Sticker
  | StickerEmoji
  | Stocking
  | Stop
  | StopCircle
  | StopCircleOutline
  | Store
  | Store24Hour
  | Stove
  | SubdirectoryArrowLeft
  | SubdirectoryArrowRight
  | Subway
  | SubwayVariant
  | Summit
  | Sunglasses
  | SurroundSound
  | SurroundSound20
  | SurroundSound31
  | SurroundSound51
  | SurroundSound71
  | Svg
  | SwaP
  | SwapVertical
  | Swim
  | Switch
  | Sword
  | SwordCross
  | Sync
  | SyncAlert
  | SyncOff
  | Tab
  | TabPlus
  | TabUnselected
  | Table
  | TableColumn
  | TableColumnPlusAfter
  | TableColumnPlusBefore
  | TableColumnRemove
  | TableColumnWidth
  | TableEdit
  | TableLarge
  | TableOfContents
  | TableRow
  | TableRowHeight
  | TableRowPlusAfter
  | TableRowPlusBefore
  | TableRowRemove
  | TableSettings
  | Tablet
  | TabletAndroid
  | TabletIpad
  | Taco
  | Tag
  | TagFaces
  | TagHeart
  | TagMultiple
  | TagOutline
  | TagPlus
  | TagRemove
  | TagTextOutline
  | Target
  | Taxi
  | Teamviewer
  | Telegram
  | Television
  | TelevisionBox
  | TelevisionClassic
  | TelevisionClassicOff
  | TelevisionGuide
  | TelevisionOff
  | TemperatureCelsius
  | TemperatureFahrenheit
  | TemperatureKelvin
  | Tennis
  | Tent
  | Terrain
  | TestTube
  | TextShadow
  | TextToSpeech
  | TextToSpeechOff
  | Textbox
  | TextboxPassword
  | Texture
  | Theater
  | ThemeLightDark
  | Thermometer
  | ThermometerLines
  | ThoughtBubble
  | ThoughtBubbleOutline
  | ThumbDown
  | ThumbDownOutline
  | ThumbUp
  | ThumbUpOutline
  | ThumbsUpDown
  | Ticket
  | TicketAccount
  | TicketConfirmation
  | TicketPercent
  | Tie
  | Tilde
  | Timelapse
  | Timer
  | Timer10
  | Timer3
  | TimerOff
  | TimerSand
  | TimerSandEmpty
  | TimerSandFull
  | Timetable
  | ToggleSwitch
  | ToggleSwitchOff
  | Tooltip
  | TooltipEdit
  | TooltipImage
  | TooltipOutline
  | TooltipOutlinePlus
  | TooltipText
  | Tooth
  | Tor
  | TowerBeach
  | TowerFire
  | Towing
  | Trackpad
  | TrafficLight
  | Train
  | Tram
  | Transcribe
  | TranscribeClose
  | Transfer
  | TransitTransfer
  | Translate
  | TreasureChest
  | Tree
  | Trello
  | TrendingDown
  | TrendingNeutral
  | TrendingUp
  | Triangle
  | TriangleOutline
  | Trophy
  | TrophyAward
  | TrophyOutline
  | TrophyVariant
  | TrophyVariantOutline
  | Truck
  | TruckDelivery
  | TruckFast
  | TruckTrailer
  | TshirtCrew
  | TshirtV
  | Tumblr
  | TumblrReblog
  | Tune
  | TuneVertical
  | Twitch
  | Twitter
  | TwitterBox
  | TwitterCircle
  | TwitterRetweet
  | Uber
  | Ubuntu
  | UltraHighDefinition
  | Umbraco
  | Umbrella
  | UmbrellaOutline
  | Undo
  | UndoVariant
  | UnfoldLesS
  | UnfoldLessVertical
  | UnfoldMorE
  | UnfoldMoreVertical
  | Ungroup
  | Unity
  | Untappd
  | Update
  | Upload
  | UploadMultiple
  | UploadNetwork
  | Usb
  | VanPassenger
  | VanUtility
  | Vanish
  | VectorArrangeAbove
  | VectorArrangeBelow
  | VectorCircle
  | VectorCircleVariant
  | VectorCombine
  | VectorCurve
  | VectorDifference
  | VectorDifferenceAb
  | VectorDifferenceBa
  | VectorIntersection
  | VectorLine
  | VectorPoint
  | VectorPolygon
  | VectorPolyline
  | VectorRadius
  | VectorRectangle
  | VectorSelection
  | VectorSquare
  | VectorTriangle
  | VectorUnion
  | Venmo
  | Verified
  | Vibrate
  | Video
  | Video3d
  | Video4kBox
  | VideoInputAntenna
  | VideoInputComponent
  | VideoInputHdmi
  | VideoInputSvideo
  | VideoOff
  | VideoSwitch
  | ViewAgenda
  | ViewArray
  | ViewCarousel
  | ViewColumn
  | ViewDashboard
  | ViewDashboardVariant
  | ViewDay
  | ViewGrid
  | ViewHeadline
  | ViewList
  | ViewModule
  | ViewParallel
  | ViewQuilt
  | ViewSequential
  | ViewStream
  | ViewWeek
  | Vimeo
  | Violin
  | Visualstudio
  | Vk
  | VkBox
  | VkCircle
  | Vlc
  | Voice
  | Voicemail
  | VolumeHigh
  | VolumeLow
  | VolumeMedium
  | VolumeMinus
  | VolumeMute
  | VolumeOff
  | VolumePlus
  | Vpn
  | Vuejs
  | Walk
  | Wall
  | Wallet
  | WalletGiftcard
  | WalletMembership
  | WalletTravel
  | Wan
  | WashingMachine
  | Watch
  | WatchExport
  | WatchImport
  | WatchVibrate
  | Water
  | WaterOff
  | WaterPercent
  | WaterPump
  | Watermark
  | Waves
  | WeatherCloudy
  | WeatherFog
  | WeatherHail
  | WeatherLightning
  | WeatherLightningRainy
  | WeatherNight
  | WeatherPartlycloudy
  | WeatherPouring
  | WeatherRainy
  | WeatherSnowy
  | WeatherSnowyRainy
  | WeatherSunny
  | WeatherSunset
  | WeatherSunsetDown
  | WeatherSunsetUp
  | WeatherWindy
  | WeatherWindyVariant
  | Web
  | Webcam
  | Webhook
  | Webpack
  | Wechat
  | Weight
  | WeightKilogram
  | Whatsapp
  | WheelchairAccessibility
  | WhiteBalanceAuto
  | WhiteBalanceIncandescent
  | WhiteBalanceIridescent
  | WhiteBalanceSunny
  | Widgets
  | Wifi
  | WifiOff
  | Wii
  | Wiiu
  | Wikipedia
  | WindowClose
  | WindowClosed
  | WindowMaximize
  | WindowMinimize
  | WindowOpen
  | WindowRestore
  | Windows
  | Wordpress
  | Worker
  | Wrap
  | Wrench
  | Wunderlist
  | Xamarin
  | XamarinOutline
  | Xaml
  | Xbox
  | XboxController
  | XboxControllerBatteryAlert
  | XboxControllerBatteryEmpty
  | XboxControllerBatteryFull
  | XboxControllerBatteryLow
  | XboxControllerBatteryMedium
  | XboxControllerBatteryUnknown
  | XboxControllerOff
  | Xda
  | Xing
  | XingBox
  | XingCircle
  | Xml
  | Xmpp
  | Yammer
  | Yeast
  | Yelp
  | YinYang
  | YoutubeCreatorStudio
  | YoutubeGaming
  | YoutubePlay
  | YoutubeTv
  | ZipBox
  
-- {-| <i class="mdi mdi-access-point"></i> -}
-- accessPoint : Html msg
-- accessPoint = i [] AccessPoint
-- {-| <i class="mdi mdi-access-point-network"></i> -}
-- accessPointNetwork : Html msg
-- accessPointNetwork = i [] AccessPointNetwork
-- {-| <i class="mdi mdi-account"></i> -}
-- account : Html msg
-- account = i [] Account
-- {-| <i class="mdi mdi-account-alert"></i> -}
-- accountAlert : Html msg
-- accountAlert = i [] AccountAlert
-- {-| <i class="mdi mdi-account-box"></i> -}
-- accountBox : Html msg
-- accountBox = i [] AccountBox
-- {-| <i class="mdi mdi-account-box-outline"></i> -}
-- accountBoxOutline : Html msg
-- accountBoxOutline = i [] AccountBoxOutline
-- {-| <i class="mdi mdi-account-card-details"></i> -}
-- accountCardDetails : Html msg
-- accountCardDetails = i [] AccountCardDetails
-- {-| <i class="mdi mdi-account-check"></i> -}
-- accountCheck : Html msg
-- accountCheck = i [] AccountCheck
-- {-| <i class="mdi mdi-account-circle"></i> -}
-- accountCircle : Html msg
-- accountCircle = i [] AccountCircle
-- {-| <i class="mdi mdi-account-convert"></i> -}
-- accountConvert : Html msg
-- accountConvert = i [] AccountConvert
-- {-| <i class="mdi mdi-account-edit"></i> -}
-- accountEdit : Html msg
-- accountEdit = i [] AccountEdit
-- {-| <i class="mdi mdi-account-key"></i> -}
-- accountKey : Html msg
-- accountKey = i [] AccountKey
-- {-| <i class="mdi mdi-account-location"></i> -}
-- accountLocation : Html msg
-- accountLocation = i [] AccountLocation
-- {-| <i class="mdi mdi-account-minus"></i> -}
-- accountMinus : Html msg
-- accountMinus = i [] AccountMinus
-- {-| <i class="mdi mdi-account-multiple"></i> -}
-- accountMultiple : Html msg
-- accountMultiple = i [] AccountMultiple
-- {-| <i class="mdi mdi-account-multiple-minus"></i> -}
-- accountMultipleMinus : Html msg
-- accountMultipleMinus = i [] AccountMultipleMinus
-- {-| <i class="mdi mdi-account-multiple-outline"></i> -}
-- accountMultipleOutline : Html msg
-- accountMultipleOutline = i [] AccountMultipleOutline
-- {-| <i class="mdi mdi-account-multiple-plus"></i> -}
-- accountMultiplePlus : Html msg
-- accountMultiplePlus = i [] AccountMultiplePlus
-- {-| <i class="mdi mdi-account-multiple-plus-outline"></i> -}
-- accountMultiplePlusOutline : Html msg
-- accountMultiplePlusOutline = i [] AccountMultiplePlusOutline
-- {-| <i class="mdi mdi-account-network"></i> -}
-- accountNetwork : Html msg
-- accountNetwork = i [] AccountNetwork
-- {-| <i class="mdi mdi-account-off"></i> -}
-- accountOff : Html msg
-- accountOff = i [] AccountOff
-- {-| <i class="mdi mdi-account-outline"></i> -}
-- accountOutline : Html msg
-- accountOutline = i [] AccountOutline
-- {-| <i class="mdi mdi-account-plus"></i> -}
-- accountPlus : Html msg
-- accountPlus = i [] AccountPlus
-- {-| <i class="mdi mdi-account-plus-outline"></i> -}
-- accountPlusOutline : Html msg
-- accountPlusOutline = i [] AccountPlusOutline
-- {-| <i class="mdi mdi-account-remove"></i> -}
-- accountRemove : Html msg
-- accountRemove = i [] AccountRemove
-- {-| <i class="mdi mdi-account-search"></i> -}
-- accountSearch : Html msg
-- accountSearch = i [] AccountSearch
-- {-| <i class="mdi mdi-account-settings"></i> -}
-- accountSettings : Html msg
-- accountSettings = i [] AccountSettings
-- {-| <i class="mdi mdi-account-settings-variant"></i> -}
-- accountSettingsVariant : Html msg
-- accountSettingsVariant = i [] AccountSettingsVariant
-- {-| <i class="mdi mdi-account-star"></i> -}
-- accountStar : Html msg
-- accountStar = i [] AccountStar
-- {-| <i class="mdi mdi-account-switch"></i> -}
-- accountSwitch : Html msg
-- accountSwitch = i [] AccountSwitch
-- {-| <i class="mdi mdi-adjust"></i> -}
-- adjust : Html msg
-- adjust = i [] Adjust
-- {-| <i class="mdi mdi-air-conditioner"></i> -}
-- airConditioner : Html msg
-- airConditioner = i [] AirConditioner
-- {-| <i class="mdi mdi-airballoon"></i> -}
-- airballoon : Html msg
-- airballoon = i [] Airballoon
-- {-| <i class="mdi mdi-airplane"></i> -}
-- airplane : Html msg
-- airplane = i [] Airplane
-- {-| <i class="mdi mdi-airplane-landing"></i> -}
-- airplaneLanding : Html msg
-- airplaneLanding = i [] AirplaneLanding
-- {-| <i class="mdi mdi-airplane-off"></i> -}
-- airplaneOff : Html msg
-- airplaneOff = i [] AirplaneOff
-- {-| <i class="mdi mdi-airplane-takeoff"></i> -}
-- airplaneTakeoff : Html msg
-- airplaneTakeoff = i [] AirplaneTakeoff
-- {-| <i class="mdi mdi-airplay"></i> -}
-- airplay : Html msg
-- airplay = i [] Airplay
-- {-| <i class="mdi mdi-alarm"></i> -}
-- alarm : Html msg
-- alarm = i [] Alarm
-- {-| <i class="mdi mdi-alarm-bell"></i> -}
-- alarmBell : Html msg
-- alarmBell = i [] AlarmBell
-- {-| <i class="mdi mdi-alarm-check"></i> -}
-- alarmCheck : Html msg
-- alarmCheck = i [] AlarmCheck
-- {-| <i class="mdi mdi-alarm-light"></i> -}
-- alarmLight : Html msg
-- alarmLight = i [] AlarmLight
-- {-| <i class="mdi mdi-alarm-multiple"></i> -}
-- alarmMultiple : Html msg
-- alarmMultiple = i [] AlarmMultiple
-- {-| <i class="mdi mdi-alarm-off"></i> -}
-- alarmOff : Html msg
-- alarmOff = i [] AlarmOff
-- {-| <i class="mdi mdi-alarm-plus"></i> -}
-- alarmPlus : Html msg
-- alarmPlus = i [] AlarmPlus
-- {-| <i class="mdi mdi-alarm-snooze"></i> -}
-- alarmSnooze : Html msg
-- alarmSnooze = i [] AlarmSnooze
-- {-| <i class="mdi mdi-album"></i> -}
-- album : Html msg
-- album = i [] Album
-- {-| <i class="mdi mdi-alert"></i> -}
-- alert : Html msg
-- alert = i [] Alert
-- {-| <i class="mdi mdi-alert-box"></i> -}
-- alertBox : Html msg
-- alertBox = i [] AlertBox
-- {-| <i class="mdi mdi-alert-circle"></i> -}
-- alertCircle : Html msg
-- alertCircle = i [] AlertCircle
-- {-| <i class="mdi mdi-alert-circle-outline"></i> -}
-- alertCircleOutline : Html msg
-- alertCircleOutline = i [] AlertCircleOutline
-- {-| <i class="mdi mdi-alert-decagram"></i> -}
-- alertDecagram : Html msg
-- alertDecagram = i [] AlertDecagram
-- {-| <i class="mdi mdi-alert-octagon"></i> -}
-- alertOctagon : Html msg
-- alertOctagon = i [] AlertOctagon
-- {-| <i class="mdi mdi-alert-octagram"></i> -}
-- alertOctagram : Html msg
-- alertOctagram = i [] AlertOctagram
-- {-| <i class="mdi mdi-alert-outline"></i> -}
-- alertOutline : Html msg
-- alertOutline = i [] AlertOutline
-- {-| <i class="mdi mdi-all-inclusive"></i> -}
-- allInclusive : Html msg
-- allInclusive = i [] AllInclusive
-- {-| <i class="mdi mdi-allo"></i> -}
-- allo : Html msg
-- allo = i [] Allo
-- {-| <i class="mdi mdi-alpha"></i> -}
-- alpha : Html msg
-- alpha = i [] Alpha
-- {-| <i class="mdi mdi-alphabetical"></i> -}
-- alphabetical : Html msg
-- alphabetical = i [] Alphabetical
-- {-| <i class="mdi mdi-altimeter"></i> -}
-- altimeter : Html msg
-- altimeter = i [] Altimeter
-- {-| <i class="mdi mdi-amazon"></i> -}
-- amazon : Html msg
-- amazon = i [] Amazon
-- {-| <i class="mdi mdi-amazon-clouddrive"></i> -}
-- amazonClouddrive : Html msg
-- amazonClouddrive = i [] AmazonClouddrive
-- {-| <i class="mdi mdi-ambulance"></i> -}
-- ambulance : Html msg
-- ambulance = i [] Ambulance
-- {-| <i class="mdi mdi-amplifier"></i> -}
-- amplifier : Html msg
-- amplifier = i [] Amplifier
-- {-| <i class="mdi mdi-anchor"></i> -}
-- anchor : Html msg
-- anchor = i [] Anchor
-- {-| <i class="mdi mdi-android"></i> -}
-- android : Html msg
-- android = i [] Android
-- {-| <i class="mdi mdi-android-debug-bridge"></i> -}
-- androidDebugBridge : Html msg
-- androidDebugBridge = i [] AndroidDebugBridge
-- {-| <i class="mdi mdi-android-head"></i> -}
-- androidHead : Html msg
-- androidHead = i [] AndroidHead
-- {-| <i class="mdi mdi-android-studio"></i> -}
-- androidStudio : Html msg
-- androidStudio = i [] AndroidStudio
-- {-| <i class="mdi mdi-angular"></i> -}
-- angular : Html msg
-- angular = i [] Angular
-- {-| <i class="mdi mdi-angularjs"></i> -}
-- angularjs : Html msg
-- angularjs = i [] Angularjs
-- {-| <i class="mdi mdi-animation"></i> -}
-- animation : Html msg
-- animation = i [] Animation
-- {-| <i class="mdi mdi-apple"></i> -}
-- apple : Html msg
-- apple = i [] Apple
-- {-| <i class="mdi mdi-apple-finder"></i> -}
-- appleFinder : Html msg
-- appleFinder = i [] AppleFinder
-- {-| <i class="mdi mdi-apple-ios"></i> -}
-- appleIos : Html msg
-- appleIos = i [] AppleIos
-- {-| <i class="mdi mdi-apple-keyboard-caps"></i> -}
-- appleKeyboardCaps : Html msg
-- appleKeyboardCaps = i [] AppleKeyboardCaps
-- {-| <i class="mdi mdi-apple-keyboard-command"></i> -}
-- appleKeyboardCommand : Html msg
-- appleKeyboardCommand = i [] AppleKeyboardCommand
-- {-| <i class="mdi mdi-apple-keyboard-control"></i> -}
-- appleKeyboardControl : Html msg
-- appleKeyboardControl = i [] AppleKeyboardControl
-- {-| <i class="mdi mdi-apple-keyboard-option"></i> -}
-- appleKeyboardOption : Html msg
-- appleKeyboardOption = i [] AppleKeyboardOption
-- {-| <i class="mdi mdi-apple-keyboard-shift"></i> -}
-- appleKeyboardShift : Html msg
-- appleKeyboardShift = i [] AppleKeyboardShift
-- {-| <i class="mdi mdi-apple-mobileme"></i> -}
-- appleMobileme : Html msg
-- appleMobileme = i [] AppleMobileme
-- {-| <i class="mdi mdi-apple-safari"></i> -}
-- appleSafari : Html msg
-- appleSafari = i [] AppleSafari
-- {-| <i class="mdi mdi-application"></i> -}
-- application : Html msg
-- application = i [] Application
-- {-| <i class="mdi mdi-approval"></i> -}
-- approval : Html msg
-- approval = i [] Approval
-- {-| <i class="mdi mdi-apps"></i> -}
-- apps : Html msg
-- apps = i [] Apps
-- {-| <i class="mdi mdi-archive"></i> -}
-- archive : Html msg
-- archive = i [] Archive
-- {-| <i class="mdi mdi-arrange-bring-forward"></i> -}
-- arrangeBringForward : Html msg
-- arrangeBringForward = i [] ArrangeBringForward
-- {-| <i class="mdi mdi-arrange-bring-to-front"></i> -}
-- arrangeBringToFront : Html msg
-- arrangeBringToFront = i [] ArrangeBringToFront
-- {-| <i class="mdi mdi-arrange-send-backward"></i> -}
-- arrangeSendBackward : Html msg
-- arrangeSendBackward = i [] ArrangeSendBackward
-- {-| <i class="mdi mdi-arrange-send-to-back"></i> -}
-- arrangeSendToBack : Html msg
-- arrangeSendToBack = i [] ArrangeSendToBack
-- {-| <i class="mdi mdi-arrow-all"></i> -}
-- arrowAll : Html msg
-- arrowAll = i [] ArrowAll
-- {-| <i class="mdi mdi-arrow-bottom-left"></i> -}
-- arrowBottomLeft : Html msg
-- arrowBottomLeft = i [] ArrowBottomLeft
-- {-| <i class="mdi mdi-arrow-bottom-right"></i> -}
-- arrowBottomRight : Html msg
-- arrowBottomRight = i [] ArrowBottomRight
-- {-| <i class="mdi mdi-arrow-collapse"></i> -}
-- arrowCollapse : Html msg
-- arrowCollapse = i [] ArrowCollapse
-- {-| <i class="mdi mdi-arrow-collapse-all"></i> -}
-- arrowCollapseAll : Html msg
-- arrowCollapseAll = i [] ArrowCollapseAll
-- {-| <i class="mdi mdi-arrow-collapse-down"></i> -}
-- arrowCollapseDown : Html msg
-- arrowCollapseDown = i [] ArrowCollapseDown
-- {-| <i class="mdi mdi-arrow-collapse-left"></i> -}
-- arrowCollapseLeft : Html msg
-- arrowCollapseLeft = i [] ArrowCollapseLeft
-- {-| <i class="mdi mdi-arrow-collapse-right"></i> -}
-- arrowCollapseRight : Html msg
-- arrowCollapseRight = i [] ArrowCollapseRight
-- {-| <i class="mdi mdi-arrow-collapse-up"></i> -}
-- arrowCollapseUp : Html msg
-- arrowCollapseUp = i [] ArrowCollapseUp
-- {-| <i class="mdi mdi-arrow-down"></i> -}
-- arrowDown : Html msg
-- arrowDown = i [] ArrowDown
-- {-| <i class="mdi mdi-arrow-down-bold"></i> -}
-- arrowDownBold : Html msg
-- arrowDownBold = i [] ArrowDownBold
-- {-| <i class="mdi mdi-arrow-down-bold-box"></i> -}
-- arrowDownBoldBox : Html msg
-- arrowDownBoldBox = i [] ArrowDownBoldBox
-- {-| <i class="mdi mdi-arrow-down-bold-box-outline"></i> -}
-- arrowDownBoldBoxOutline : Html msg
-- arrowDownBoldBoxOutline = i [] ArrowDownBoldBoxOutline
-- {-| <i class="mdi mdi-arrow-down-bold-circle"></i> -}
-- arrowDownBoldCircle : Html msg
-- arrowDownBoldCircle = i [] ArrowDownBoldCircle
-- {-| <i class="mdi mdi-arrow-down-bold-circle-outline"></i> -}
-- arrowDownBoldCircleOutline : Html msg
-- arrowDownBoldCircleOutline = i [] ArrowDownBoldCircleOutline
-- {-| <i class="mdi mdi-arrow-down-bold-hexagon-outline"></i> -}
-- arrowDownBoldHexagonOutline : Html msg
-- arrowDownBoldHexagonOutline = i [] ArrowDownBoldHexagonOutline
-- {-| <i class="mdi mdi-arrow-down-box"></i> -}
-- arrowDownBox : Html msg
-- arrowDownBox = i [] ArrowDownBox
-- {-| <i class="mdi mdi-arrow-down-drop-circle"></i> -}
-- arrowDownDropCircle : Html msg
-- arrowDownDropCircle = i [] ArrowDownDropCircle
-- {-| <i class="mdi mdi-arrow-down-drop-circle-outline"></i> -}
-- arrowDownDropCircleOutline : Html msg
-- arrowDownDropCircleOutline = i [] ArrowDownDropCircleOutline
-- {-| <i class="mdi mdi-arrow-down-thick"></i> -}
-- arrowDownThick : Html msg
-- arrowDownThick = i [] ArrowDownThick
-- {-| <i class="mdi mdi-arrow-expand"></i> -}
-- arrowExpand : Html msg
-- arrowExpand = i [] ArrowExpand
-- {-| <i class="mdi mdi-arrow-expand-all"></i> -}
-- arrowExpandAll : Html msg
-- arrowExpandAll = i [] ArrowExpandAll
-- {-| <i class="mdi mdi-arrow-expand-down"></i> -}
-- arrowExpandDown : Html msg
-- arrowExpandDown = i [] ArrowExpandDown
-- {-| <i class="mdi mdi-arrow-expand-left"></i> -}
-- arrowExpandLeft : Html msg
-- arrowExpandLeft = i [] ArrowExpandLeft
-- {-| <i class="mdi mdi-arrow-expand-right"></i> -}
-- arrowExpandRight : Html msg
-- arrowExpandRight = i [] ArrowExpandRight
-- {-| <i class="mdi mdi-arrow-expand-up"></i> -}
-- arrowExpandUp : Html msg
-- arrowExpandUp = i [] ArrowExpandUp
-- {-| <i class="mdi mdi-arrow-left"></i> -}
-- arrowLeft : Html msg
-- arrowLeft = i [] ArrowLeft
-- {-| <i class="mdi mdi-arrow-left-bold"></i> -}
-- arrowLeftBold : Html msg
-- arrowLeftBold = i [] ArrowLeftBold
-- {-| <i class="mdi mdi-arrow-left-bold-box"></i> -}
-- arrowLeftBoldBox : Html msg
-- arrowLeftBoldBox = i [] ArrowLeftBoldBox
-- {-| <i class="mdi mdi-arrow-left-bold-box-outline"></i> -}
-- arrowLeftBoldBoxOutline : Html msg
-- arrowLeftBoldBoxOutline = i [] ArrowLeftBoldBoxOutline
-- {-| <i class="mdi mdi-arrow-left-bold-circle"></i> -}
-- arrowLeftBoldCircle : Html msg
-- arrowLeftBoldCircle = i [] ArrowLeftBoldCircle
-- {-| <i class="mdi mdi-arrow-left-bold-circle-outline"></i> -}
-- arrowLeftBoldCircleOutline : Html msg
-- arrowLeftBoldCircleOutline = i [] ArrowLeftBoldCircleOutline
-- {-| <i class="mdi mdi-arrow-left-bold-hexagon-outline"></i> -}
-- arrowLeftBoldHexagonOutline : Html msg
-- arrowLeftBoldHexagonOutline = i [] ArrowLeftBoldHexagonOutline
-- {-| <i class="mdi mdi-arrow-left-box"></i> -}
-- arrowLeftBox : Html msg
-- arrowLeftBox = i [] ArrowLeftBox
-- {-| <i class="mdi mdi-arrow-left-drop-circle"></i> -}
-- arrowLeftDropCircle : Html msg
-- arrowLeftDropCircle = i [] ArrowLeftDropCircle
-- {-| <i class="mdi mdi-arrow-left-drop-circle-outline"></i> -}
-- arrowLeftDropCircleOutline : Html msg
-- arrowLeftDropCircleOutline = i [] ArrowLeftDropCircleOutline
-- {-| <i class="mdi mdi-arrow-left-thick"></i> -}
-- arrowLeftThick : Html msg
-- arrowLeftThick = i [] ArrowLeftThick
-- {-| <i class="mdi mdi-arrow-right"></i> -}
-- arrowRight : Html msg
-- arrowRight = i [] ArrowRight
-- {-| <i class="mdi mdi-arrow-right-bold"></i> -}
-- arrowRightBold : Html msg
-- arrowRightBold = i [] ArrowRightBold
-- {-| <i class="mdi mdi-arrow-right-bold-box"></i> -}
-- arrowRightBoldBox : Html msg
-- arrowRightBoldBox = i [] ArrowRightBoldBox
-- {-| <i class="mdi mdi-arrow-right-bold-box-outline"></i> -}
-- arrowRightBoldBoxOutline : Html msg
-- arrowRightBoldBoxOutline = i [] ArrowRightBoldBoxOutline
-- {-| <i class="mdi mdi-arrow-right-bold-circle"></i> -}
-- arrowRightBoldCircle : Html msg
-- arrowRightBoldCircle = i [] ArrowRightBoldCircle
-- {-| <i class="mdi mdi-arrow-right-bold-circle-outline"></i> -}
-- arrowRightBoldCircleOutline : Html msg
-- arrowRightBoldCircleOutline = i [] ArrowRightBoldCircleOutline
-- {-| <i class="mdi mdi-arrow-right-bold-hexagon-outline"></i> -}
-- arrowRightBoldHexagonOutline : Html msg
-- arrowRightBoldHexagonOutline = i [] ArrowRightBoldHexagonOutline
-- {-| <i class="mdi mdi-arrow-right-box"></i> -}
-- arrowRightBox : Html msg
-- arrowRightBox = i [] ArrowRightBox
-- {-| <i class="mdi mdi-arrow-right-drop-circle"></i> -}
-- arrowRightDropCircle : Html msg
-- arrowRightDropCircle = i [] ArrowRightDropCircle
-- {-| <i class="mdi mdi-arrow-right-drop-circle-outline"></i> -}
-- arrowRightDropCircleOutline : Html msg
-- arrowRightDropCircleOutline = i [] ArrowRightDropCircleOutline
-- {-| <i class="mdi mdi-arrow-right-thick"></i> -}
-- arrowRightThick : Html msg
-- arrowRightThick = i [] ArrowRightThick
-- {-| <i class="mdi mdi-arrow-top-left"></i> -}
-- arrowTopLeft : Html msg
-- arrowTopLeft = i [] ArrowTopLeft
-- {-| <i class="mdi mdi-arrow-top-right"></i> -}
-- arrowTopRight : Html msg
-- arrowTopRight = i [] ArrowTopRight
-- {-| <i class="mdi mdi-arrow-up"></i> -}
-- arrowUp : Html msg
-- arrowUp = i [] ArrowUp
-- {-| <i class="mdi mdi-arrow-up-bold"></i> -}
-- arrowUpBold : Html msg
-- arrowUpBold = i [] ArrowUpBold
-- {-| <i class="mdi mdi-arrow-up-bold-box"></i> -}
-- arrowUpBoldBox : Html msg
-- arrowUpBoldBox = i [] ArrowUpBoldBox
-- {-| <i class="mdi mdi-arrow-up-bold-box-outline"></i> -}
-- arrowUpBoldBoxOutline : Html msg
-- arrowUpBoldBoxOutline = i [] ArrowUpBoldBoxOutline
-- {-| <i class="mdi mdi-arrow-up-bold-circle"></i> -}
-- arrowUpBoldCircle : Html msg
-- arrowUpBoldCircle = i [] ArrowUpBoldCircle
-- {-| <i class="mdi mdi-arrow-up-bold-circle-outline"></i> -}
-- arrowUpBoldCircleOutline : Html msg
-- arrowUpBoldCircleOutline = i [] ArrowUpBoldCircleOutline
-- {-| <i class="mdi mdi-arrow-up-bold-hexagon-outline"></i> -}
-- arrowUpBoldHexagonOutline : Html msg
-- arrowUpBoldHexagonOutline = i [] ArrowUpBoldHexagonOutline
-- {-| <i class="mdi mdi-arrow-up-box"></i> -}
-- arrowUpBox : Html msg
-- arrowUpBox = i [] ArrowUpBox
-- {-| <i class="mdi mdi-arrow-up-drop-circle"></i> -}
-- arrowUpDropCircle : Html msg
-- arrowUpDropCircle = i [] ArrowUpDropCircle
-- {-| <i class="mdi mdi-arrow-up-drop-circle-outline"></i> -}
-- arrowUpDropCircleOutline : Html msg
-- arrowUpDropCircleOutline = i [] ArrowUpDropCircleOutline
-- {-| <i class="mdi mdi-arrow-up-thick"></i> -}
-- arrowUpThick : Html msg
-- arrowUpThick = i [] ArrowUpThick
-- {-| <i class="mdi mdi-artist"></i> -}
-- artist : Html msg
-- artist = i [] Artist
-- {-| <i class="mdi mdi-assistant"></i> -}
-- assistant : Html msg
-- assistant = i [] Assistant
-- {-| <i class="mdi mdi-asterisk"></i> -}
-- asterisk : Html msg
-- asterisk = i [] Asterisk
-- {-| <i class="mdi mdi-at"></i> -}
-- at : Html msg
-- at = i [] At
-- {-| <i class="mdi mdi-atlassian"></i> -}
-- atlassian : Html msg
-- atlassian = i [] Atlassian
-- {-| <i class="mdi mdi-atom"></i> -}
-- atom : Html msg
-- atom = i [] Atom
-- {-| <i class="mdi mdi-attachment"></i> -}
-- attachment : Html msg
-- attachment = i [] Attachment
-- {-| <i class="mdi mdi-audiobook"></i> -}
-- audiobook : Html msg
-- audiobook = i [] Audiobook
-- {-| <i class="mdi mdi-auto-fix"></i> -}
-- autoFix : Html msg
-- autoFix = i [] AutoFix
-- {-| <i class="mdi mdi-auto-upload"></i> -}
-- autoUpload : Html msg
-- autoUpload = i [] AutoUpload
-- {-| <i class="mdi mdi-autorenew"></i> -}
-- autorenew : Html msg
-- autorenew = i [] Autorenew
-- {-| <i class="mdi mdi-av-timer"></i> -}
-- avTimer : Html msg
-- avTimer = i [] AvTimer
-- {-| <i class="mdi mdi-azure"></i> -}
-- azure : Html msg
-- azure = i [] Azure
-- {-| <i class="mdi mdi-baby"></i> -}
-- baby : Html msg
-- baby = i [] Baby
-- {-| <i class="mdi mdi-baby-buggy"></i> -}
-- babyBuggy : Html msg
-- babyBuggy = i [] BabyBuggy
-- {-| <i class="mdi mdi-backburger"></i> -}
-- backburger : Html msg
-- backburger = i [] Backburger
-- {-| <i class="mdi mdi-backspace"></i> -}
-- backspace : Html msg
-- backspace = i [] Backspace
-- {-| <i class="mdi mdi-backup-restore"></i> -}
-- backupRestore : Html msg
-- backupRestore = i [] BackupRestore
-- {-| <i class="mdi mdi-bandcamp"></i> -}
-- bandcamp : Html msg
-- bandcamp = i [] Bandcamp
-- {-| <i class="mdi mdi-bank"></i> -}
-- bank : Html msg
-- bank = i [] Bank
-- {-| <i class="mdi mdi-barcode"></i> -}
-- barcode : Html msg
-- barcode = i [] Barcode
-- {-| <i class="mdi mdi-barcode-scan"></i> -}
-- barcodeScan : Html msg
-- barcodeScan = i [] BarcodeScan
-- {-| <i class="mdi mdi-barley"></i> -}
-- barley : Html msg
-- barley = i [] Barley
-- {-| <i class="mdi mdi-barrel"></i> -}
-- barrel : Html msg
-- barrel = i [] Barrel
-- {-| <i class="mdi mdi-basecamp"></i> -}
-- basecamp : Html msg
-- basecamp = i [] Basecamp
-- {-| <i class="mdi mdi-basket"></i> -}
-- basket : Html msg
-- basket = i [] Basket
-- {-| <i class="mdi mdi-basket-fill"></i> -}
-- basketFill : Html msg
-- basketFill = i [] BasketFill
-- {-| <i class="mdi mdi-basket-unfill"></i> -}
-- basketUnfill : Html msg
-- basketUnfill = i [] BasketUnfill
-- {-| <i class="mdi mdi-basketball"></i> -}
-- basketball : Html msg
-- basketball = i [] Basketball
-- {-| <i class="mdi mdi-battery"></i> -}
-- battery : Html msg
-- battery = i [] Battery
-- {-| <i class="mdi mdi-battery10"></i> -}
-- battery10 : Html msg
-- battery10 = i [] Battery10
-- {-| <i class="mdi mdi-battery20"></i> -}
-- battery20 : Html msg
-- battery20 = i [] Battery20
-- {-| <i class="mdi mdi-battery30"></i> -}
-- battery30 : Html msg
-- battery30 = i [] Battery30
-- {-| <i class="mdi mdi-battery40"></i> -}
-- battery40 : Html msg
-- battery40 = i [] Battery40
-- {-| <i class="mdi mdi-battery50"></i> -}
-- battery50 : Html msg
-- battery50 = i [] Battery50
-- {-| <i class="mdi mdi-battery60"></i> -}
-- battery60 : Html msg
-- battery60 = i [] Battery60
-- {-| <i class="mdi mdi-battery70"></i> -}
-- battery70 : Html msg
-- battery70 = i [] Battery70
-- {-| <i class="mdi mdi-battery80"></i> -}
-- battery80 : Html msg
-- battery80 = i [] Battery80
-- {-| <i class="mdi mdi-battery90"></i> -}
-- battery90 : Html msg
-- battery90 = i [] Battery90
-- {-| <i class="mdi mdi-battery-alert"></i> -}
-- batteryAlert : Html msg
-- batteryAlert = i [] BatteryAlert
-- {-| <i class="mdi mdi-battery-charging"></i> -}
-- batteryCharging : Html msg
-- batteryCharging = i [] BatteryCharging
-- {-| <i class="mdi mdi-battery-charging100"></i> -}
-- batteryCharging100 : Html msg
-- batteryCharging100 = i [] BatteryCharging100
-- {-| <i class="mdi mdi-battery-charging20"></i> -}
-- batteryCharging20 : Html msg
-- batteryCharging20 = i [] BatteryCharging20
-- {-| <i class="mdi mdi-battery-charging30"></i> -}
-- batteryCharging30 : Html msg
-- batteryCharging30 = i [] BatteryCharging30
-- {-| <i class="mdi mdi-battery-charging40"></i> -}
-- batteryCharging40 : Html msg
-- batteryCharging40 = i [] BatteryCharging40
-- {-| <i class="mdi mdi-battery-charging60"></i> -}
-- batteryCharging60 : Html msg
-- batteryCharging60 = i [] BatteryCharging60
-- {-| <i class="mdi mdi-battery-charging80"></i> -}
-- batteryCharging80 : Html msg
-- batteryCharging80 = i [] BatteryCharging80
-- {-| <i class="mdi mdi-battery-charging90"></i> -}
-- batteryCharging90 : Html msg
-- batteryCharging90 = i [] BatteryCharging90
-- {-| <i class="mdi mdi-battery-charging-wireless"></i> -}
-- batteryChargingWireless : Html msg
-- batteryChargingWireless = i [] BatteryChargingWireless
-- {-| <i class="mdi mdi-battery-charging-wireless10"></i> -}
-- batteryChargingWireless10 : Html msg
-- batteryChargingWireless10 = i [] BatteryChargingWireless10
-- {-| <i class="mdi mdi-battery-charging-wireless20"></i> -}
-- batteryChargingWireless20 : Html msg
-- batteryChargingWireless20 = i [] BatteryChargingWireless20
-- {-| <i class="mdi mdi-battery-charging-wireless30"></i> -}
-- batteryChargingWireless30 : Html msg
-- batteryChargingWireless30 = i [] BatteryChargingWireless30
-- {-| <i class="mdi mdi-battery-charging-wireless40"></i> -}
-- batteryChargingWireless40 : Html msg
-- batteryChargingWireless40 = i [] BatteryChargingWireless40
-- {-| <i class="mdi mdi-battery-charging-wireless50"></i> -}
-- batteryChargingWireless50 : Html msg
-- batteryChargingWireless50 = i [] BatteryChargingWireless50
-- {-| <i class="mdi mdi-battery-charging-wireless60"></i> -}
-- batteryChargingWireless60 : Html msg
-- batteryChargingWireless60 = i [] BatteryChargingWireless60
-- {-| <i class="mdi mdi-battery-charging-wireless70"></i> -}
-- batteryChargingWireless70 : Html msg
-- batteryChargingWireless70 = i [] BatteryChargingWireless70
-- {-| <i class="mdi mdi-battery-charging-wireless80"></i> -}
-- batteryChargingWireless80 : Html msg
-- batteryChargingWireless80 = i [] BatteryChargingWireless80
-- {-| <i class="mdi mdi-battery-charging-wireless90"></i> -}
-- batteryChargingWireless90 : Html msg
-- batteryChargingWireless90 = i [] BatteryChargingWireless90
-- {-| <i class="mdi mdi-battery-charging-wireless-alert"></i> -}
-- batteryChargingWirelessAlert : Html msg
-- batteryChargingWirelessAlert = i [] BatteryChargingWirelessAlert
-- {-| <i class="mdi mdi-battery-charging-wireless-outline"></i> -}
-- batteryChargingWirelessOutline : Html msg
-- batteryChargingWirelessOutline = i [] BatteryChargingWirelessOutline
-- {-| <i class="mdi mdi-battery-minus"></i> -}
-- batteryMinus : Html msg
-- batteryMinus = i [] BatteryMinus
-- {-| <i class="mdi mdi-battery-negative"></i> -}
-- batteryNegative : Html msg
-- batteryNegative = i [] BatteryNegative
-- {-| <i class="mdi mdi-battery-outline"></i> -}
-- batteryOutline : Html msg
-- batteryOutline = i [] BatteryOutline
-- {-| <i class="mdi mdi-battery-plus"></i> -}
-- batteryPlus : Html msg
-- batteryPlus = i [] BatteryPlus
-- {-| <i class="mdi mdi-battery-positive"></i> -}
-- batteryPositive : Html msg
-- batteryPositive = i [] BatteryPositive
-- {-| <i class="mdi mdi-battery-unknown"></i> -}
-- batteryUnknown : Html msg
-- batteryUnknown = i [] BatteryUnknown
-- {-| <i class="mdi mdi-beach"></i> -}
-- beach : Html msg
-- beach = i [] Beach
-- {-| <i class="mdi mdi-beaker"></i> -}
-- beaker : Html msg
-- beaker = i [] Beaker
-- {-| <i class="mdi mdi-beats"></i> -}
-- beats : Html msg
-- beats = i [] Beats
-- {-| <i class="mdi mdi-beer"></i> -}
-- beer : Html msg
-- beer = i [] Beer
-- {-| <i class="mdi mdi-behance"></i> -}
-- behance : Html msg
-- behance = i [] Behance
-- {-| <i class="mdi mdi-bell"></i> -}
-- bell : Html msg
-- bell = i [] Bell
-- {-| <i class="mdi mdi-bell-off"></i> -}
-- bellOff : Html msg
-- bellOff = i [] BellOff
-- {-| <i class="mdi mdi-bell-outline"></i> -}
-- bellOutline : Html msg
-- bellOutline = i [] BellOutline
-- {-| <i class="mdi mdi-bell-plus"></i> -}
-- bellPlus : Html msg
-- bellPlus = i [] BellPlus
-- {-| <i class="mdi mdi-bell-ring"></i> -}
-- bellRing : Html msg
-- bellRing = i [] BellRing
-- {-| <i class="mdi mdi-bell-ring-outline"></i> -}
-- bellRingOutline : Html msg
-- bellRingOutline = i [] BellRingOutline
-- {-| <i class="mdi mdi-bell-sleep"></i> -}
-- bellSleep : Html msg
-- bellSleep = i [] BellSleep
-- {-| <i class="mdi mdi-beta"></i> -}
-- beta : Html msg
-- beta = i [] Beta
-- {-| <i class="mdi mdi-bible"></i> -}
-- bible : Html msg
-- bible = i [] Bible
-- {-| <i class="mdi mdi-bike"></i> -}
-- bike : Html msg
-- bike = i [] Bike
-- {-| <i class="mdi mdi-bing"></i> -}
-- bing : Html msg
-- bing = i [] Bing
-- {-| <i class="mdi mdi-binoculars"></i> -}
-- binoculars : Html msg
-- binoculars = i [] Binoculars
-- {-| <i class="mdi mdi-bio"></i> -}
-- bio : Html msg
-- bio = i [] Bio
-- {-| <i class="mdi mdi-biohazard"></i> -}
-- biohazard : Html msg
-- biohazard = i [] Biohazard
-- {-| <i class="mdi mdi-bitbucket"></i> -}
-- bitbucket : Html msg
-- bitbucket = i [] Bitbucket
-- {-| <i class="mdi mdi-bitcoin"></i> -}
-- bitcoin : Html msg
-- bitcoin = i [] Bitcoin
-- {-| <i class="mdi mdi-black-mesa"></i> -}
-- blackMesa : Html msg
-- blackMesa = i [] BlackMesa
-- {-| <i class="mdi mdi-blackberry"></i> -}
-- blackberry : Html msg
-- blackberry = i [] Blackberry
-- {-| <i class="mdi mdi-blender"></i> -}
-- blender : Html msg
-- blender = i [] Blender
-- {-| <i class="mdi mdi-blinds"></i> -}
-- blinds : Html msg
-- blinds = i [] Blinds
-- {-| <i class="mdi mdi-block-helper"></i> -}
-- blockHelper : Html msg
-- blockHelper = i [] BlockHelper
-- {-| <i class="mdi mdi-blogger"></i> -}
-- blogger : Html msg
-- blogger = i [] Blogger
-- {-| <i class="mdi mdi-bluetooth"></i> -}
-- bluetooth : Html msg
-- bluetooth = i [] Bluetooth
-- {-| <i class="mdi mdi-bluetooth-audio"></i> -}
-- bluetoothAudio : Html msg
-- bluetoothAudio = i [] BluetoothAudio
-- {-| <i class="mdi mdi-bluetooth-connect"></i> -}
-- bluetoothConnect : Html msg
-- bluetoothConnect = i [] BluetoothConnect
-- {-| <i class="mdi mdi-bluetooth-off"></i> -}
-- bluetoothOff : Html msg
-- bluetoothOff = i [] BluetoothOff
-- {-| <i class="mdi mdi-bluetooth-settings"></i> -}
-- bluetoothSettings : Html msg
-- bluetoothSettings = i [] BluetoothSettings
-- {-| <i class="mdi mdi-bluetooth-transfer"></i> -}
-- bluetoothTransfer : Html msg
-- bluetoothTransfer = i [] BluetoothTransfer
-- {-| <i class="mdi mdi-blur"></i> -}
-- blur : Html msg
-- blur = i [] Blur
-- {-| <i class="mdi mdi-blur-linear"></i> -}
-- blurLinear : Html msg
-- blurLinear = i [] BlurLinear
-- {-| <i class="mdi mdi-blur-off"></i> -}
-- blurOff : Html msg
-- blurOff = i [] BlurOff
-- {-| <i class="mdi mdi-blur-radial"></i> -}
-- blurRadial : Html msg
-- blurRadial = i [] BlurRadial
-- {-| <i class="mdi mdi-bomb"></i> -}
-- bomb : Html msg
-- bomb = i [] Bomb
-- {-| <i class="mdi mdi-bomb-off"></i> -}
-- bombOff : Html msg
-- bombOff = i [] BombOff
-- {-| <i class="mdi mdi-bone"></i> -}
-- bone : Html msg
-- bone = i [] Bone
-- {-| <i class="mdi mdi-book"></i> -}
-- book : Html msg
-- book = i [] Book
-- {-| <i class="mdi mdi-book-minus"></i> -}
-- bookMinus : Html msg
-- bookMinus = i [] BookMinus
-- {-| <i class="mdi mdi-book-multiple"></i> -}
-- bookMultiple : Html msg
-- bookMultiple = i [] BookMultiple
-- {-| <i class="mdi mdi-book-multiple-variant"></i> -}
-- bookMultipleVariant : Html msg
-- bookMultipleVariant = i [] BookMultipleVariant
-- {-| <i class="mdi mdi-book-open"></i> -}
-- bookOpen : Html msg
-- bookOpen = i [] BookOpen
-- {-| <i class="mdi mdi-book-open-page-variant"></i> -}
-- bookOpenPageVariant : Html msg
-- bookOpenPageVariant = i [] BookOpenPageVariant
-- {-| <i class="mdi mdi-book-open-variant"></i> -}
-- bookOpenVariant : Html msg
-- bookOpenVariant = i [] BookOpenVariant
-- {-| <i class="mdi mdi-book-plus"></i> -}
-- bookPlus : Html msg
-- bookPlus = i [] BookPlus
-- {-| <i class="mdi mdi-book-secure"></i> -}
-- bookSecure : Html msg
-- bookSecure = i [] BookSecure
-- {-| <i class="mdi mdi-book-unsecure"></i> -}
-- bookUnsecure : Html msg
-- bookUnsecure = i [] BookUnsecure
-- {-| <i class="mdi mdi-book-variant"></i> -}
-- bookVariant : Html msg
-- bookVariant = i [] BookVariant
-- {-| <i class="mdi mdi-bookmark"></i> -}
-- bookmark : Html msg
-- bookmark = i [] Bookmark
-- {-| <i class="mdi mdi-bookmark-check"></i> -}
-- bookmarkCheck : Html msg
-- bookmarkCheck = i [] BookmarkCheck
-- {-| <i class="mdi mdi-bookmark-music"></i> -}
-- bookmarkMusic : Html msg
-- bookmarkMusic = i [] BookmarkMusic
-- {-| <i class="mdi mdi-bookmark-outline"></i> -}
-- bookmarkOutline : Html msg
-- bookmarkOutline = i [] BookmarkOutline
-- {-| <i class="mdi mdi-bookmark-plus"></i> -}
-- bookmarkPlus : Html msg
-- bookmarkPlus = i [] BookmarkPlus
-- {-| <i class="mdi mdi-bookmark-plus-outline"></i> -}
-- bookmarkPlusOutline : Html msg
-- bookmarkPlusOutline = i [] BookmarkPlusOutline
-- {-| <i class="mdi mdi-bookmark-remove"></i> -}
-- bookmarkRemove : Html msg
-- bookmarkRemove = i [] BookmarkRemove
-- {-| <i class="mdi mdi-boombox"></i> -}
-- boombox : Html msg
-- boombox = i [] Boombox
-- {-| <i class="mdi mdi-bootstrap"></i> -}
-- bootstrap : Html msg
-- bootstrap = i [] Bootstrap
-- {-| <i class="mdi mdi-border-all"></i> -}
-- borderAll : Html msg
-- borderAll = i [] BorderAll
-- {-| <i class="mdi mdi-border-bottom"></i> -}
-- borderBottom : Html msg
-- borderBottom = i [] BorderBottom
-- {-| <i class="mdi mdi-border-color"></i> -}
-- borderColor : Html msg
-- borderColor = i [] BorderColor
-- {-| <i class="mdi mdi-borde-r"></i> -}
-- bordeR : Html msg
-- bordeR = i [] BordeR
-- {-| <i class="mdi mdi-border-inside"></i> -}
-- borderInside : Html msg
-- borderInside = i [] BorderInside
-- {-| <i class="mdi mdi-border-left"></i> -}
-- borderLeft : Html msg
-- borderLeft = i [] BorderLeft
-- {-| <i class="mdi mdi-border-none"></i> -}
-- borderNone : Html msg
-- borderNone = i [] BorderNone
-- {-| <i class="mdi mdi-border-outside"></i> -}
-- borderOutside : Html msg
-- borderOutside = i [] BorderOutside
-- {-| <i class="mdi mdi-border-right"></i> -}
-- borderRight : Html msg
-- borderRight = i [] BorderRight
-- {-| <i class="mdi mdi-border-style"></i> -}
-- borderStyle : Html msg
-- borderStyle = i [] BorderStyle
-- {-| <i class="mdi mdi-border-top"></i> -}
-- borderTop : Html msg
-- borderTop = i [] BorderTop
-- {-| <i class="mdi mdi-border-vertical"></i> -}
-- borderVertical : Html msg
-- borderVertical = i [] BorderVertical
-- {-| <i class="mdi mdi-bow-tie"></i> -}
-- bowTie : Html msg
-- bowTie = i [] BowTie
-- {-| <i class="mdi mdi-bowl"></i> -}
-- bowl : Html msg
-- bowl = i [] Bowl
-- {-| <i class="mdi mdi-bowling"></i> -}
-- bowling : Html msg
-- bowling = i [] Bowling
-- {-| <i class="mdi mdi-box"></i> -}
-- box : Html msg
-- box = i [] Box
-- {-| <i class="mdi mdi-box-cutter"></i> -}
-- boxCutter : Html msg
-- boxCutter = i [] BoxCutter
-- {-| <i class="mdi mdi-box-shadow"></i> -}
-- boxShadow : Html msg
-- boxShadow = i [] BoxShadow
-- {-| <i class="mdi mdi-bridge"></i> -}
-- bridge : Html msg
-- bridge = i [] Bridge
-- {-| <i class="mdi mdi-briefcase"></i> -}
-- briefcase : Html msg
-- briefcase = i [] Briefcase
-- {-| <i class="mdi mdi-briefcase-check"></i> -}
-- briefcaseCheck : Html msg
-- briefcaseCheck = i [] BriefcaseCheck
-- {-| <i class="mdi mdi-briefcase-download"></i> -}
-- briefcaseDownload : Html msg
-- briefcaseDownload = i [] BriefcaseDownload
-- {-| <i class="mdi mdi-briefcase-outline"></i> -}
-- briefcaseOutline : Html msg
-- briefcaseOutline = i [] BriefcaseOutline
-- {-| <i class="mdi mdi-briefcase-upload"></i> -}
-- briefcaseUpload : Html msg
-- briefcaseUpload = i [] BriefcaseUpload
-- {-| <i class="mdi mdi-brightness1"></i> -}
-- brightness1 : Html msg
-- brightness1 = i [] Brightness1
-- {-| <i class="mdi mdi-brightness2"></i> -}
-- brightness2 : Html msg
-- brightness2 = i [] Brightness2
-- {-| <i class="mdi mdi-brightness3"></i> -}
-- brightness3 : Html msg
-- brightness3 = i [] Brightness3
-- {-| <i class="mdi mdi-brightness4"></i> -}
-- brightness4 : Html msg
-- brightness4 = i [] Brightness4
-- {-| <i class="mdi mdi-brightness5"></i> -}
-- brightness5 : Html msg
-- brightness5 = i [] Brightness5
-- {-| <i class="mdi mdi-brightness6"></i> -}
-- brightness6 : Html msg
-- brightness6 = i [] Brightness6
-- {-| <i class="mdi mdi-brightness7"></i> -}
-- brightness7 : Html msg
-- brightness7 = i [] Brightness7
-- {-| <i class="mdi mdi-brightness-auto"></i> -}
-- brightnessAuto : Html msg
-- brightnessAuto = i [] BrightnessAuto
-- {-| <i class="mdi mdi-broom"></i> -}
-- broom : Html msg
-- broom = i [] Broom
-- {-| <i class="mdi mdi-brush"></i> -}
-- brush : Html msg
-- brush = i [] Brush
-- {-| <i class="mdi mdi-buffer"></i> -}
-- buffer : Html msg
-- buffer = i [] Buffer
-- {-| <i class="mdi mdi-bug"></i> -}
-- bug : Html msg
-- bug = i [] Bug
-- {-| <i class="mdi mdi-bulletin-board"></i> -}
-- bulletinBoard : Html msg
-- bulletinBoard = i [] BulletinBoard
-- {-| <i class="mdi mdi-bullhorn"></i> -}
-- bullhorn : Html msg
-- bullhorn = i [] Bullhorn
-- {-| <i class="mdi mdi-bullseye"></i> -}
-- bullseye : Html msg
-- bullseye = i [] Bullseye
-- {-| <i class="mdi mdi-bus"></i> -}
-- bus : Html msg
-- bus = i [] Bus
-- {-| <i class="mdi mdi-bus-articulated-end"></i> -}
-- busArticulatedEnd : Html msg
-- busArticulatedEnd = i [] BusArticulatedEnd
-- {-| <i class="mdi mdi-bus-articulated-front"></i> -}
-- busArticulatedFront : Html msg
-- busArticulatedFront = i [] BusArticulatedFront
-- {-| <i class="mdi mdi-bus-double-decker"></i> -}
-- busDoubleDecker : Html msg
-- busDoubleDecker = i [] BusDoubleDecker
-- {-| <i class="mdi mdi-bus-school"></i> -}
-- busSchool : Html msg
-- busSchool = i [] BusSchool
-- {-| <i class="mdi mdi-bus-side"></i> -}
-- busSide : Html msg
-- busSide = i [] BusSide
-- {-| <i class="mdi mdi-cached"></i> -}
-- cached : Html msg
-- cached = i [] Cached
-- {-| <i class="mdi mdi-cake"></i> -}
-- cake : Html msg
-- cake = i [] Cake
-- {-| <i class="mdi mdi-cake-layered"></i> -}
-- cakeLayered : Html msg
-- cakeLayered = i [] CakeLayered
-- {-| <i class="mdi mdi-cake-variant"></i> -}
-- cakeVariant : Html msg
-- cakeVariant = i [] CakeVariant
-- {-| <i class="mdi mdi-calculator"></i> -}
-- calculator : Html msg
-- calculator = i [] Calculator
-- {-| <i class="mdi mdi-calendar"></i> -}
-- calendar : Html msg
-- calendar = i [] Calendar
-- {-| <i class="mdi mdi-calendar-blank"></i> -}
-- calendarBlank : Html msg
-- calendarBlank = i [] CalendarBlank
-- {-| <i class="mdi mdi-calendar-check"></i> -}
-- calendarCheck : Html msg
-- calendarCheck = i [] CalendarCheck
-- {-| <i class="mdi mdi-calendar-clock"></i> -}
-- calendarClock : Html msg
-- calendarClock = i [] CalendarClock
-- {-| <i class="mdi mdi-calendar-multiple"></i> -}
-- calendarMultiple : Html msg
-- calendarMultiple = i [] CalendarMultiple
-- {-| <i class="mdi mdi-calendar-multiple-check"></i> -}
-- calendarMultipleCheck : Html msg
-- calendarMultipleCheck = i [] CalendarMultipleCheck
-- {-| <i class="mdi mdi-calendar-plus"></i> -}
-- calendarPlus : Html msg
-- calendarPlus = i [] CalendarPlus
-- {-| <i class="mdi mdi-calendar-question"></i> -}
-- calendarQuestion : Html msg
-- calendarQuestion = i [] CalendarQuestion
-- {-| <i class="mdi mdi-calendar-range"></i> -}
-- calendarRange : Html msg
-- calendarRange = i [] CalendarRange
-- {-| <i class="mdi mdi-calendar-remove"></i> -}
-- calendarRemove : Html msg
-- calendarRemove = i [] CalendarRemove
-- {-| <i class="mdi mdi-calendar-text"></i> -}
-- calendarText : Html msg
-- calendarText = i [] CalendarText
-- {-| <i class="mdi mdi-calendar-today"></i> -}
-- calendarToday : Html msg
-- calendarToday = i [] CalendarToday
-- {-| <i class="mdi mdi-call-made"></i> -}
-- callMade : Html msg
-- callMade = i [] CallMade
-- {-| <i class="mdi mdi-call-merge"></i> -}
-- callMerge : Html msg
-- callMerge = i [] CallMerge
-- {-| <i class="mdi mdi-call-missed"></i> -}
-- callMissed : Html msg
-- callMissed = i [] CallMissed
-- {-| <i class="mdi mdi-call-received"></i> -}
-- callReceived : Html msg
-- callReceived = i [] CallReceived
-- {-| <i class="mdi mdi-call-split"></i> -}
-- callSplit : Html msg
-- callSplit = i [] CallSplit
-- {-| <i class="mdi mdi-camcorder"></i> -}
-- camcorder : Html msg
-- camcorder = i [] Camcorder
-- {-| <i class="mdi mdi-camcorder-box"></i> -}
-- camcorderBox : Html msg
-- camcorderBox = i [] CamcorderBox
-- {-| <i class="mdi mdi-camcorder-box-off"></i> -}
-- camcorderBoxOff : Html msg
-- camcorderBoxOff = i [] CamcorderBoxOff
-- {-| <i class="mdi mdi-camcorder-off"></i> -}
-- camcorderOff : Html msg
-- camcorderOff = i [] CamcorderOff
-- {-| <i class="mdi mdi-camera"></i> -}
-- camera : Html msg
-- camera = i [] Camera
-- {-| <i class="mdi mdi-camera-burst"></i> -}
-- cameraBurst : Html msg
-- cameraBurst = i [] CameraBurst
-- {-| <i class="mdi mdi-camera-enhance"></i> -}
-- cameraEnhance : Html msg
-- cameraEnhance = i [] CameraEnhance
-- {-| <i class="mdi mdi-camera-front"></i> -}
-- cameraFront : Html msg
-- cameraFront = i [] CameraFront
-- {-| <i class="mdi mdi-camera-front-variant"></i> -}
-- cameraFrontVariant : Html msg
-- cameraFrontVariant = i [] CameraFrontVariant
-- {-| <i class="mdi mdi-camera-gopro"></i> -}
-- cameraGopro : Html msg
-- cameraGopro = i [] CameraGopro
-- {-| <i class="mdi mdi-camera-iris"></i> -}
-- cameraIris : Html msg
-- cameraIris = i [] CameraIris
-- {-| <i class="mdi mdi-camera-metering-center"></i> -}
-- cameraMeteringCenter : Html msg
-- cameraMeteringCenter = i [] CameraMeteringCenter
-- {-| <i class="mdi mdi-camera-metering-matrix"></i> -}
-- cameraMeteringMatrix : Html msg
-- cameraMeteringMatrix = i [] CameraMeteringMatrix
-- {-| <i class="mdi mdi-camera-metering-partial"></i> -}
-- cameraMeteringPartial : Html msg
-- cameraMeteringPartial = i [] CameraMeteringPartial
-- {-| <i class="mdi mdi-camera-metering-spot"></i> -}
-- cameraMeteringSpot : Html msg
-- cameraMeteringSpot = i [] CameraMeteringSpot
-- {-| <i class="mdi mdi-camera-off"></i> -}
-- cameraOff : Html msg
-- cameraOff = i [] CameraOff
-- {-| <i class="mdi mdi-camera-party-mode"></i> -}
-- cameraPartyMode : Html msg
-- cameraPartyMode = i [] CameraPartyMode
-- {-| <i class="mdi mdi-camera-rear"></i> -}
-- cameraRear : Html msg
-- cameraRear = i [] CameraRear
-- {-| <i class="mdi mdi-camera-rear-variant"></i> -}
-- cameraRearVariant : Html msg
-- cameraRearVariant = i [] CameraRearVariant
-- {-| <i class="mdi mdi-camera-switch"></i> -}
-- cameraSwitch : Html msg
-- cameraSwitch = i [] CameraSwitch
-- {-| <i class="mdi mdi-camera-timer"></i> -}
-- cameraTimer : Html msg
-- cameraTimer = i [] CameraTimer
-- {-| <i class="mdi mdi-cancel"></i> -}
-- cancel : Html msg
-- cancel = i [] Cancel
-- {-| <i class="mdi mdi-candle"></i> -}
-- candle : Html msg
-- candle = i [] Candle
-- {-| <i class="mdi mdi-candycane"></i> -}
-- candycane : Html msg
-- candycane = i [] Candycane
-- {-| <i class="mdi mdi-cannabis"></i> -}
-- cannabis : Html msg
-- cannabis = i [] Cannabis
-- {-| <i class="mdi mdi-car"></i> -}
-- car : Html msg
-- car = i [] Car
-- {-| <i class="mdi mdi-car-battery"></i> -}
-- carBattery : Html msg
-- carBattery = i [] CarBattery
-- {-| <i class="mdi mdi-car-connected"></i> -}
-- carConnected : Html msg
-- carConnected = i [] CarConnected
-- {-| <i class="mdi mdi-car-convertible"></i> -}
-- carConvertible : Html msg
-- carConvertible = i [] CarConvertible
-- {-| <i class="mdi mdi-car-estate"></i> -}
-- carEstate : Html msg
-- carEstate = i [] CarEstate
-- {-| <i class="mdi mdi-car-hatchback"></i> -}
-- carHatchback : Html msg
-- carHatchback = i [] CarHatchback
-- {-| <i class="mdi mdi-car-pickup"></i> -}
-- carPickup : Html msg
-- carPickup = i [] CarPickup
-- {-| <i class="mdi mdi-car-side"></i> -}
-- carSide : Html msg
-- carSide = i [] CarSide
-- {-| <i class="mdi mdi-car-sports"></i> -}
-- carSports : Html msg
-- carSports = i [] CarSports
-- {-| <i class="mdi mdi-car-wash"></i> -}
-- carWash : Html msg
-- carWash = i [] CarWash
-- {-| <i class="mdi mdi-caravan"></i> -}
-- caravan : Html msg
-- caravan = i [] Caravan
-- {-| <i class="mdi mdi-cards"></i> -}
-- cards : Html msg
-- cards = i [] Cards
-- {-| <i class="mdi mdi-cards-outline"></i> -}
-- cardsOutline : Html msg
-- cardsOutline = i [] CardsOutline
-- {-| <i class="mdi mdi-cards-playing-outline"></i> -}
-- cardsPlayingOutline : Html msg
-- cardsPlayingOutline = i [] CardsPlayingOutline
-- {-| <i class="mdi mdi-cards-variant"></i> -}
-- cardsVariant : Html msg
-- cardsVariant = i [] CardsVariant
-- {-| <i class="mdi mdi-carrot"></i> -}
-- carrot : Html msg
-- carrot = i [] Carrot
-- {-| <i class="mdi mdi-cart"></i> -}
-- cart : Html msg
-- cart = i [] Cart
-- {-| <i class="mdi mdi-cart-off"></i> -}
-- cartOff : Html msg
-- cartOff = i [] CartOff
-- {-| <i class="mdi mdi-cart-outline"></i> -}
-- cartOutline : Html msg
-- cartOutline = i [] CartOutline
-- {-| <i class="mdi mdi-cart-plus"></i> -}
-- cartPlus : Html msg
-- cartPlus = i [] CartPlus
-- {-| <i class="mdi mdi-case-sensitive-alt"></i> -}
-- caseSensitiveAlt : Html msg
-- caseSensitiveAlt = i [] CaseSensitiveAlt
-- {-| <i class="mdi mdi-cash"></i> -}
-- cash : Html msg
-- cash = i [] Cash
-- {-| <i class="mdi mdi-cash100"></i> -}
-- cash100 : Html msg
-- cash100 = i [] Cash100
-- {-| <i class="mdi mdi-cash-multiple"></i> -}
-- cashMultiple : Html msg
-- cashMultiple = i [] CashMultiple
-- {-| <i class="mdi mdi-cash-usd"></i> -}
-- cashUsd : Html msg
-- cashUsd = i [] CashUsd
-- {-| <i class="mdi mdi-cast"></i> -}
-- cast : Html msg
-- cast = i [] Cast
-- {-| <i class="mdi mdi-cast-connected"></i> -}
-- castConnected : Html msg
-- castConnected = i [] CastConnected
-- {-| <i class="mdi mdi-cast-off"></i> -}
-- castOff : Html msg
-- castOff = i [] CastOff
-- {-| <i class="mdi mdi-castle"></i> -}
-- castle : Html msg
-- castle = i [] Castle
-- {-| <i class="mdi mdi-cat"></i> -}
-- cat : Html msg
-- cat = i [] Cat
-- {-| <i class="mdi mdi-cctv"></i> -}
-- cctv : Html msg
-- cctv = i [] Cctv
-- {-| <i class="mdi mdi-ceiling-light"></i> -}
-- ceilingLight : Html msg
-- ceilingLight = i [] CeilingLight
-- {-| <i class="mdi mdi-cellphone"></i> -}
-- cellphone : Html msg
-- cellphone = i [] Cellphone
-- {-| <i class="mdi mdi-cellphone-android"></i> -}
-- cellphoneAndroid : Html msg
-- cellphoneAndroid = i [] CellphoneAndroid
-- {-| <i class="mdi mdi-cellphone-basic"></i> -}
-- cellphoneBasic : Html msg
-- cellphoneBasic = i [] CellphoneBasic
-- {-| <i class="mdi mdi-cellphone-dock"></i> -}
-- cellphoneDock : Html msg
-- cellphoneDock = i [] CellphoneDock
-- {-| <i class="mdi mdi-cellphone-iphone"></i> -}
-- cellphoneIphone : Html msg
-- cellphoneIphone = i [] CellphoneIphone
-- {-| <i class="mdi mdi-cellphone-link"></i> -}
-- cellphoneLink : Html msg
-- cellphoneLink = i [] CellphoneLink
-- {-| <i class="mdi mdi-cellphone-link-off"></i> -}
-- cellphoneLinkOff : Html msg
-- cellphoneLinkOff = i [] CellphoneLinkOff
-- {-| <i class="mdi mdi-cellphone-settings"></i> -}
-- cellphoneSettings : Html msg
-- cellphoneSettings = i [] CellphoneSettings
-- {-| <i class="mdi mdi-cellphone-wireless"></i> -}
-- cellphoneWireless : Html msg
-- cellphoneWireless = i [] CellphoneWireless
-- {-| <i class="mdi mdi-certificate"></i> -}
-- certificate : Html msg
-- certificate = i [] Certificate
-- {-| <i class="mdi mdi-chair-school"></i> -}
-- chairSchool : Html msg
-- chairSchool = i [] ChairSchool
-- {-| <i class="mdi mdi-chart-arc"></i> -}
-- chartArc : Html msg
-- chartArc = i [] ChartArc
-- {-| <i class="mdi mdi-chart-areaspline"></i> -}
-- chartAreaspline : Html msg
-- chartAreaspline = i [] ChartAreaspline
-- {-| <i class="mdi mdi-chart-bar"></i> -}
-- chartBar : Html msg
-- chartBar = i [] ChartBar
-- {-| <i class="mdi mdi-chart-bar-stacked"></i> -}
-- chartBarStacked : Html msg
-- chartBarStacked = i [] ChartBarStacked
-- {-| <i class="mdi mdi-chart-bubble"></i> -}
-- chartBubble : Html msg
-- chartBubble = i [] ChartBubble
-- {-| <i class="mdi mdi-chart-donut"></i> -}
-- chartDonut : Html msg
-- chartDonut = i [] ChartDonut
-- {-| <i class="mdi mdi-chart-donut-variant"></i> -}
-- chartDonutVariant : Html msg
-- chartDonutVariant = i [] ChartDonutVariant
-- {-| <i class="mdi mdi-chart-gantt"></i> -}
-- chartGantt : Html msg
-- chartGantt = i [] ChartGantt
-- {-| <i class="mdi mdi-chart-histogram"></i> -}
-- chartHistogram : Html msg
-- chartHistogram = i [] ChartHistogram
-- {-| <i class="mdi mdi-chart-line"></i> -}
-- chartLine : Html msg
-- chartLine = i [] ChartLine
-- {-| <i class="mdi mdi-chart-line-stacked"></i> -}
-- chartLineStacked : Html msg
-- chartLineStacked = i [] ChartLineStacked
-- {-| <i class="mdi mdi-chart-line-variant"></i> -}
-- chartLineVariant : Html msg
-- chartLineVariant = i [] ChartLineVariant
-- {-| <i class="mdi mdi-chart-pie"></i> -}
-- chartPie : Html msg
-- chartPie = i [] ChartPie
-- {-| <i class="mdi mdi-chart-scatterplot-hexbin"></i> -}
-- chartScatterplotHexbin : Html msg
-- chartScatterplotHexbin = i [] ChartScatterplotHexbin
-- {-| <i class="mdi mdi-chart-timeline"></i> -}
-- chartTimeline : Html msg
-- chartTimeline = i [] ChartTimeline
-- {-| <i class="mdi mdi-check"></i> -}
-- check : Html msg
-- check = i [] Check
-- {-| <i class="mdi mdi-check-all"></i> -}
-- checkAll : Html msg
-- checkAll = i [] CheckAll
-- {-| <i class="mdi mdi-check-circle"></i> -}
-- checkCircle : Html msg
-- checkCircle = i [] CheckCircle
-- {-| <i class="mdi mdi-check-circle-outline"></i> -}
-- checkCircleOutline : Html msg
-- checkCircleOutline = i [] CheckCircleOutline
-- {-| <i class="mdi mdi-checkbox-blank"></i> -}
-- checkboxBlank : Html msg
-- checkboxBlank = i [] CheckboxBlank
-- {-| <i class="mdi mdi-checkbox-blank-circle"></i> -}
-- checkboxBlankCircle : Html msg
-- checkboxBlankCircle = i [] CheckboxBlankCircle
-- {-| <i class="mdi mdi-checkbox-blank-circle-outline"></i> -}
-- checkboxBlankCircleOutline : Html msg
-- checkboxBlankCircleOutline = i [] CheckboxBlankCircleOutline
-- {-| <i class="mdi mdi-checkbox-blank-outline"></i> -}
-- checkboxBlankOutline : Html msg
-- checkboxBlankOutline = i [] CheckboxBlankOutline
-- {-| <i class="mdi mdi-checkbox-marked"></i> -}
-- checkboxMarked : Html msg
-- checkboxMarked = i [] CheckboxMarked
-- {-| <i class="mdi mdi-checkbox-marked-circle"></i> -}
-- checkboxMarkedCircle : Html msg
-- checkboxMarkedCircle = i [] CheckboxMarkedCircle
-- {-| <i class="mdi mdi-checkbox-marked-circle-outline"></i> -}
-- checkboxMarkedCircleOutline : Html msg
-- checkboxMarkedCircleOutline = i [] CheckboxMarkedCircleOutline
-- {-| <i class="mdi mdi-checkbox-marked-outline"></i> -}
-- checkboxMarkedOutline : Html msg
-- checkboxMarkedOutline = i [] CheckboxMarkedOutline
-- {-| <i class="mdi mdi-checkbox-multiple-blank"></i> -}
-- checkboxMultipleBlank : Html msg
-- checkboxMultipleBlank = i [] CheckboxMultipleBlank
-- {-| <i class="mdi mdi-checkbox-multiple-blank-circle"></i> -}
-- checkboxMultipleBlankCircle : Html msg
-- checkboxMultipleBlankCircle = i [] CheckboxMultipleBlankCircle
-- {-| <i class="mdi mdi-checkbox-multiple-blank-circle-outline"></i> -}
-- checkboxMultipleBlankCircleOutline : Html msg
-- checkboxMultipleBlankCircleOutline = i [] CheckboxMultipleBlankCircleOutline
-- {-| <i class="mdi mdi-checkbox-multiple-blank-outline"></i> -}
-- checkboxMultipleBlankOutline : Html msg
-- checkboxMultipleBlankOutline = i [] CheckboxMultipleBlankOutline
-- {-| <i class="mdi mdi-checkbox-multiple-marked"></i> -}
-- checkboxMultipleMarked : Html msg
-- checkboxMultipleMarked = i [] CheckboxMultipleMarked
-- {-| <i class="mdi mdi-checkbox-multiple-marked-circle"></i> -}
-- checkboxMultipleMarkedCircle : Html msg
-- checkboxMultipleMarkedCircle = i [] CheckboxMultipleMarkedCircle
-- {-| <i class="mdi mdi-checkbox-multiple-marked-circle-outline"></i> -}
-- checkboxMultipleMarkedCircleOutline : Html msg
-- checkboxMultipleMarkedCircleOutline = i [] CheckboxMultipleMarkedCircleOutline
-- {-| <i class="mdi mdi-checkbox-multiple-marked-outline"></i> -}
-- checkboxMultipleMarkedOutline : Html msg
-- checkboxMultipleMarkedOutline = i [] CheckboxMultipleMarkedOutline
-- {-| <i class="mdi mdi-checkerboard"></i> -}
-- checkerboard : Html msg
-- checkerboard = i [] Checkerboard
-- {-| <i class="mdi mdi-chemical-weapon"></i> -}
-- chemicalWeapon : Html msg
-- chemicalWeapon = i [] ChemicalWeapon
-- {-| <i class="mdi mdi-chevron-double-down"></i> -}
-- chevronDoubleDown : Html msg
-- chevronDoubleDown = i [] ChevronDoubleDown
-- {-| <i class="mdi mdi-chevron-double-left"></i> -}
-- chevronDoubleLeft : Html msg
-- chevronDoubleLeft = i [] ChevronDoubleLeft
-- {-| <i class="mdi mdi-chevron-double-right"></i> -}
-- chevronDoubleRight : Html msg
-- chevronDoubleRight = i [] ChevronDoubleRight
-- {-| <i class="mdi mdi-chevron-double-up"></i> -}
-- chevronDoubleUp : Html msg
-- chevronDoubleUp = i [] ChevronDoubleUp
-- {-| <i class="mdi mdi-chevron-down"></i> -}
-- chevronDown : Html msg
-- chevronDown = i [] ChevronDown
-- {-| <i class="mdi mdi-chevron-left"></i> -}
-- chevronLeft : Html msg
-- chevronLeft = i [] ChevronLeft
-- {-| <i class="mdi mdi-chevron-right"></i> -}
-- chevronRight : Html msg
-- chevronRight = i [] ChevronRight
-- {-| <i class="mdi mdi-chevron-up"></i> -}
-- chevronUp : Html msg
-- chevronUp = i [] ChevronUp
-- {-| <i class="mdi mdi-chili-hot"></i> -}
-- chiliHot : Html msg
-- chiliHot = i [] ChiliHot
-- {-| <i class="mdi mdi-chili-medium"></i> -}
-- chiliMedium : Html msg
-- chiliMedium = i [] ChiliMedium
-- {-| <i class="mdi mdi-chili-mild"></i> -}
-- chiliMild : Html msg
-- chiliMild = i [] ChiliMild
-- {-| <i class="mdi mdi-chip"></i> -}
-- chip : Html msg
-- chip = i [] Chip
-- {-| <i class="mdi mdi-church"></i> -}
-- church : Html msg
-- church = i [] Church
-- {-| <i class="mdi mdi-circle"></i> -}
-- circle : Html msg
-- circle = i [] Circle
-- {-| <i class="mdi mdi-circle-outline"></i> -}
-- circleOutline : Html msg
-- circleOutline = i [] CircleOutline
-- {-| <i class="mdi mdi-cisco-webex"></i> -}
-- ciscoWebex : Html msg
-- ciscoWebex = i [] CiscoWebex
-- {-| <i class="mdi mdi-city"></i> -}
-- city : Html msg
-- city = i [] City
-- {-| <i class="mdi mdi-clipboard"></i> -}
-- clipboard : Html msg
-- clipboard = i [] Clipboard
-- {-| <i class="mdi mdi-clipboard-account"></i> -}
-- clipboardAccount : Html msg
-- clipboardAccount = i [] ClipboardAccount
-- {-| <i class="mdi mdi-clipboard-alert"></i> -}
-- clipboardAlert : Html msg
-- clipboardAlert = i [] ClipboardAlert
-- {-| <i class="mdi mdi-clipboard-arrow-down"></i> -}
-- clipboardArrowDown : Html msg
-- clipboardArrowDown = i [] ClipboardArrowDown
-- {-| <i class="mdi mdi-clipboard-arrow-left"></i> -}
-- clipboardArrowLeft : Html msg
-- clipboardArrowLeft = i [] ClipboardArrowLeft
-- {-| <i class="mdi mdi-clipboard-check"></i> -}
-- clipboardCheck : Html msg
-- clipboardCheck = i [] ClipboardCheck
-- {-| <i class="mdi mdi-clipboard-flow"></i> -}
-- clipboardFlow : Html msg
-- clipboardFlow = i [] ClipboardFlow
-- {-| <i class="mdi mdi-clipboard-outline"></i> -}
-- clipboardOutline : Html msg
-- clipboardOutline = i [] ClipboardOutline
-- {-| <i class="mdi mdi-clipboard-plus"></i> -}
-- clipboardPlus : Html msg
-- clipboardPlus = i [] ClipboardPlus
-- {-| <i class="mdi mdi-clipboard-text"></i> -}
-- clipboardText : Html msg
-- clipboardText = i [] ClipboardText
-- {-| <i class="mdi mdi-clippy"></i> -}
-- clippy : Html msg
-- clippy = i [] Clippy
-- {-| <i class="mdi mdi-clock"></i> -}
-- clock : Html msg
-- clock = i [] Clock
-- {-| <i class="mdi mdi-clock-alert"></i> -}
-- clockAlert : Html msg
-- clockAlert = i [] ClockAlert
-- {-| <i class="mdi mdi-clock-end"></i> -}
-- clockEnd : Html msg
-- clockEnd = i [] ClockEnd
-- {-| <i class="mdi mdi-clock-fast"></i> -}
-- clockFast : Html msg
-- clockFast = i [] ClockFast
-- {-| <i class="mdi mdi-clock-in"></i> -}
-- clockIn : Html msg
-- clockIn = i [] ClockIn
-- {-| <i class="mdi mdi-clock-out"></i> -}
-- clockOut : Html msg
-- clockOut = i [] ClockOut
-- {-| <i class="mdi mdi-clock-start"></i> -}
-- clockStart : Html msg
-- clockStart = i [] ClockStart
-- {-| <i class="mdi mdi-close"></i> -}
-- close : Html msg
-- close = i [] Close
-- {-| <i class="mdi mdi-close-box"></i> -}
-- closeBox : Html msg
-- closeBox = i [] CloseBox
-- {-| <i class="mdi mdi-close-box-outline"></i> -}
-- closeBoxOutline : Html msg
-- closeBoxOutline = i [] CloseBoxOutline
-- {-| <i class="mdi mdi-close-circle"></i> -}
-- closeCircle : Html msg
-- closeCircle = i [] CloseCircle
-- {-| <i class="mdi mdi-close-circle-outline"></i> -}
-- closeCircleOutline : Html msg
-- closeCircleOutline = i [] CloseCircleOutline
-- {-| <i class="mdi mdi-close-network"></i> -}
-- closeNetwork : Html msg
-- closeNetwork = i [] CloseNetwork
-- {-| <i class="mdi mdi-close-octagon"></i> -}
-- closeOctagon : Html msg
-- closeOctagon = i [] CloseOctagon
-- {-| <i class="mdi mdi-close-octagon-outline"></i> -}
-- closeOctagonOutline : Html msg
-- closeOctagonOutline = i [] CloseOctagonOutline
-- {-| <i class="mdi mdi-close-outline"></i> -}
-- closeOutline : Html msg
-- closeOutline = i [] CloseOutline
-- {-| <i class="mdi mdi-closed-caption"></i> -}
-- closedCaption : Html msg
-- closedCaption = i [] ClosedCaption
-- {-| <i class="mdi mdi-cloud"></i> -}
-- cloud : Html msg
-- cloud = i [] Cloud
-- {-| <i class="mdi mdi-cloud-braces"></i> -}
-- cloudBraces : Html msg
-- cloudBraces = i [] CloudBraces
-- {-| <i class="mdi mdi-cloud-check"></i> -}
-- cloudCheck : Html msg
-- cloudCheck = i [] CloudCheck
-- {-| <i class="mdi mdi-cloud-circle"></i> -}
-- cloudCircle : Html msg
-- cloudCircle = i [] CloudCircle
-- {-| <i class="mdi mdi-cloud-download"></i> -}
-- cloudDownload : Html msg
-- cloudDownload = i [] CloudDownload
-- {-| <i class="mdi mdi-cloud-off-outline"></i> -}
-- cloudOffOutline : Html msg
-- cloudOffOutline = i [] CloudOffOutline
-- {-| <i class="mdi mdi-cloud-outline"></i> -}
-- cloudOutline : Html msg
-- cloudOutline = i [] CloudOutline
-- {-| <i class="mdi mdi-cloud-print"></i> -}
-- cloudPrint : Html msg
-- cloudPrint = i [] CloudPrint
-- {-| <i class="mdi mdi-cloud-print-outline"></i> -}
-- cloudPrintOutline : Html msg
-- cloudPrintOutline = i [] CloudPrintOutline
-- {-| <i class="mdi mdi-cloud-sync"></i> -}
-- cloudSync : Html msg
-- cloudSync = i [] CloudSync
-- {-| <i class="mdi mdi-cloud-tags"></i> -}
-- cloudTags : Html msg
-- cloudTags = i [] CloudTags
-- {-| <i class="mdi mdi-cloud-upload"></i> -}
-- cloudUpload : Html msg
-- cloudUpload = i [] CloudUpload
-- {-| <i class="mdi mdi-clover"></i> -}
-- clover : Html msg
-- clover = i [] Clover
-- {-| <i class="mdi mdi-code-array"></i> -}
-- codeArray : Html msg
-- codeArray = i [] CodeArray
-- {-| <i class="mdi mdi-code-braces"></i> -}
-- codeBraces : Html msg
-- codeBraces = i [] CodeBraces
-- {-| <i class="mdi mdi-code-brackets"></i> -}
-- codeBrackets : Html msg
-- codeBrackets = i [] CodeBrackets
-- {-| <i class="mdi mdi-code-equal"></i> -}
-- codeEqual : Html msg
-- codeEqual = i [] CodeEqual
-- {-| <i class="mdi mdi-code-greater-than"></i> -}
-- codeGreaterThan : Html msg
-- codeGreaterThan = i [] CodeGreaterThan
-- {-| <i class="mdi mdi-code-greater-than-or-equal"></i> -}
-- codeGreaterThanOrEqual : Html msg
-- codeGreaterThanOrEqual = i [] CodeGreaterThanOrEqual
-- {-| <i class="mdi mdi-code-less-than"></i> -}
-- codeLessThan : Html msg
-- codeLessThan = i [] CodeLessThan
-- {-| <i class="mdi mdi-code-less-than-or-equal"></i> -}
-- codeLessThanOrEqual : Html msg
-- codeLessThanOrEqual = i [] CodeLessThanOrEqual
-- {-| <i class="mdi mdi-code-not-equal"></i> -}
-- codeNotEqual : Html msg
-- codeNotEqual = i [] CodeNotEqual
-- {-| <i class="mdi mdi-code-not-equal-variant"></i> -}
-- codeNotEqualVariant : Html msg
-- codeNotEqualVariant = i [] CodeNotEqualVariant
-- {-| <i class="mdi mdi-code-parentheses"></i> -}
-- codeParentheses : Html msg
-- codeParentheses = i [] CodeParentheses
-- {-| <i class="mdi mdi-code-string"></i> -}
-- codeString : Html msg
-- codeString = i [] CodeString
-- {-| <i class="mdi mdi-code-tags"></i> -}
-- codeTags : Html msg
-- codeTags = i [] CodeTags
-- {-| <i class="mdi mdi-code-tags-check"></i> -}
-- codeTagsCheck : Html msg
-- codeTagsCheck = i [] CodeTagsCheck
-- {-| <i class="mdi mdi-codepen"></i> -}
-- codepen : Html msg
-- codepen = i [] Codepen
-- {-| <i class="mdi mdi-coffee"></i> -}
-- coffee : Html msg
-- coffee = i [] Coffee
-- {-| <i class="mdi mdi-coffee-outline"></i> -}
-- coffeeOutline : Html msg
-- coffeeOutline = i [] CoffeeOutline
-- {-| <i class="mdi mdi-coffee-to-go"></i> -}
-- coffeeToGo : Html msg
-- coffeeToGo = i [] CoffeeToGo
-- {-| <i class="mdi mdi-coin"></i> -}
-- coin : Html msg
-- coin = i [] Coin
-- {-| <i class="mdi mdi-coins"></i> -}
-- coins : Html msg
-- coins = i [] Coins
-- {-| <i class="mdi mdi-collage"></i> -}
-- collage : Html msg
-- collage = i [] Collage
-- {-| <i class="mdi mdi-color-helper"></i> -}
-- colorHelper : Html msg
-- colorHelper = i [] ColorHelper
-- {-| <i class="mdi mdi-comment"></i> -}
-- comment : Html msg
-- comment = i [] Comment
-- {-| <i class="mdi mdi-comment-account"></i> -}
-- commentAccount : Html msg
-- commentAccount = i [] CommentAccount
-- {-| <i class="mdi mdi-comment-account-outline"></i> -}
-- commentAccountOutline : Html msg
-- commentAccountOutline = i [] CommentAccountOutline
-- {-| <i class="mdi mdi-comment-alert"></i> -}
-- commentAlert : Html msg
-- commentAlert = i [] CommentAlert
-- {-| <i class="mdi mdi-comment-alert-outline"></i> -}
-- commentAlertOutline : Html msg
-- commentAlertOutline = i [] CommentAlertOutline
-- {-| <i class="mdi mdi-comment-check"></i> -}
-- commentCheck : Html msg
-- commentCheck = i [] CommentCheck
-- {-| <i class="mdi mdi-comment-check-outline"></i> -}
-- commentCheckOutline : Html msg
-- commentCheckOutline = i [] CommentCheckOutline
-- {-| <i class="mdi mdi-comment-multiple-outline"></i> -}
-- commentMultipleOutline : Html msg
-- commentMultipleOutline = i [] CommentMultipleOutline
-- {-| <i class="mdi mdi-comment-outline"></i> -}
-- commentOutline : Html msg
-- commentOutline = i [] CommentOutline
-- {-| <i class="mdi mdi-comment-plus-outline"></i> -}
-- commentPlusOutline : Html msg
-- commentPlusOutline = i [] CommentPlusOutline
-- {-| <i class="mdi mdi-comment-processing"></i> -}
-- commentProcessing : Html msg
-- commentProcessing = i [] CommentProcessing
-- {-| <i class="mdi mdi-comment-processing-outline"></i> -}
-- commentProcessingOutline : Html msg
-- commentProcessingOutline = i [] CommentProcessingOutline
-- {-| <i class="mdi mdi-comment-question"></i> -}
-- commentQuestion : Html msg
-- commentQuestion = i [] CommentQuestion
-- {-| <i class="mdi mdi-comment-question-outline"></i> -}
-- commentQuestionOutline : Html msg
-- commentQuestionOutline = i [] CommentQuestionOutline
-- {-| <i class="mdi mdi-comment-remove"></i> -}
-- commentRemove : Html msg
-- commentRemove = i [] CommentRemove
-- {-| <i class="mdi mdi-comment-remove-outline"></i> -}
-- commentRemoveOutline : Html msg
-- commentRemoveOutline = i [] CommentRemoveOutline
-- {-| <i class="mdi mdi-comment-text"></i> -}
-- commentText : Html msg
-- commentText = i [] CommentText
-- {-| <i class="mdi mdi-comment-text-outline"></i> -}
-- commentTextOutline : Html msg
-- commentTextOutline = i [] CommentTextOutline
-- {-| <i class="mdi mdi-compare"></i> -}
-- compare : Html msg
-- compare = i [] Compare
-- {-| <i class="mdi mdi-compass"></i> -}
-- compass : Html msg
-- compass = i [] Compass
-- {-| <i class="mdi mdi-compass-outline"></i> -}
-- compassOutline : Html msg
-- compassOutline = i [] CompassOutline
-- {-| <i class="mdi mdi-console"></i> -}
-- console : Html msg
-- console = i [] Console
-- {-| <i class="mdi mdi-console-line"></i> -}
-- consoleLine : Html msg
-- consoleLine = i [] ConsoleLine
-- {-| <i class="mdi mdi-contact-mail"></i> -}
-- contactMail : Html msg
-- contactMail = i [] ContactMail
-- {-| <i class="mdi mdi-contacts"></i> -}
-- contacts : Html msg
-- contacts = i [] Contacts
-- {-| <i class="mdi mdi-content-copy"></i> -}
-- contentCopy : Html msg
-- contentCopy = i [] ContentCopy
-- {-| <i class="mdi mdi-content-cut"></i> -}
-- contentCut : Html msg
-- contentCut = i [] ContentCut
-- {-| <i class="mdi mdi-content-duplicate"></i> -}
-- contentDuplicate : Html msg
-- contentDuplicate = i [] ContentDuplicate
-- {-| <i class="mdi mdi-content-paste"></i> -}
-- contentPaste : Html msg
-- contentPaste = i [] ContentPaste
-- {-| <i class="mdi mdi-content-save"></i> -}
-- contentSave : Html msg
-- contentSave = i [] ContentSave
-- {-| <i class="mdi mdi-content-save-all"></i> -}
-- contentSaveAll : Html msg
-- contentSaveAll = i [] ContentSaveAll
-- {-| <i class="mdi mdi-content-save-outline"></i> -}
-- contentSaveOutline : Html msg
-- contentSaveOutline = i [] ContentSaveOutline
-- {-| <i class="mdi mdi-content-save-settings"></i> -}
-- contentSaveSettings : Html msg
-- contentSaveSettings = i [] ContentSaveSettings
-- {-| <i class="mdi mdi-contrast"></i> -}
-- contrast : Html msg
-- contrast = i [] Contrast
-- {-| <i class="mdi mdi-contrast-box"></i> -}
-- contrastBox : Html msg
-- contrastBox = i [] ContrastBox
-- {-| <i class="mdi mdi-contrast-circle"></i> -}
-- contrastCircle : Html msg
-- contrastCircle = i [] ContrastCircle
-- {-| <i class="mdi mdi-cookie"></i> -}
-- cookie : Html msg
-- cookie = i [] Cookie
-- {-| <i class="mdi mdi-copyright"></i> -}
-- copyright : Html msg
-- copyright = i [] Copyright
-- {-| <i class="mdi mdi-corn"></i> -}
-- corn : Html msg
-- corn = i [] Corn
-- {-| <i class="mdi mdi-counter"></i> -}
-- counter : Html msg
-- counter = i [] Counter
-- {-| <i class="mdi mdi-cow"></i> -}
-- cow : Html msg
-- cow = i [] Cow
-- {-| <i class="mdi mdi-creation"></i> -}
-- creation : Html msg
-- creation = i [] Creation
-- {-| <i class="mdi mdi-credit-card"></i> -}
-- creditCard : Html msg
-- creditCard = i [] CreditCard
-- {-| <i class="mdi mdi-credit-card-multiple"></i> -}
-- creditCardMultiple : Html msg
-- creditCardMultiple = i [] CreditCardMultiple
-- {-| <i class="mdi mdi-credit-card-off"></i> -}
-- creditCardOff : Html msg
-- creditCardOff = i [] CreditCardOff
-- {-| <i class="mdi mdi-credit-card-plus"></i> -}
-- creditCardPlus : Html msg
-- creditCardPlus = i [] CreditCardPlus
-- {-| <i class="mdi mdi-credit-card-scan"></i> -}
-- creditCardScan : Html msg
-- creditCardScan = i [] CreditCardScan
-- {-| <i class="mdi mdi-crop"></i> -}
-- crop : Html msg
-- crop = i [] Crop
-- {-| <i class="mdi mdi-crop-free"></i> -}
-- cropFree : Html msg
-- cropFree = i [] CropFree
-- {-| <i class="mdi mdi-crop-landscape"></i> -}
-- cropLandscape : Html msg
-- cropLandscape = i [] CropLandscape
-- {-| <i class="mdi mdi-crop-portrait"></i> -}
-- cropPortrait : Html msg
-- cropPortrait = i [] CropPortrait
-- {-| <i class="mdi mdi-crop-rotate"></i> -}
-- cropRotate : Html msg
-- cropRotate = i [] CropRotate
-- {-| <i class="mdi mdi-crop-square"></i> -}
-- cropSquare : Html msg
-- cropSquare = i [] CropSquare
-- {-| <i class="mdi mdi-crosshairs"></i> -}
-- crosshairs : Html msg
-- crosshairs = i [] Crosshairs
-- {-| <i class="mdi mdi-crosshairs-gps"></i> -}
-- crosshairsGps : Html msg
-- crosshairsGps = i [] CrosshairsGps
-- {-| <i class="mdi mdi-crown"></i> -}
-- crown : Html msg
-- crown = i [] Crown
-- {-| <i class="mdi mdi-cube"></i> -}
-- cube : Html msg
-- cube = i [] Cube
-- {-| <i class="mdi mdi-cube-outline"></i> -}
-- cubeOutline : Html msg
-- cubeOutline = i [] CubeOutline
-- {-| <i class="mdi mdi-cube-send"></i> -}
-- cubeSend : Html msg
-- cubeSend = i [] CubeSend
-- {-| <i class="mdi mdi-cube-unfolded"></i> -}
-- cubeUnfolded : Html msg
-- cubeUnfolded = i [] CubeUnfolded
-- {-| <i class="mdi mdi-cup"></i> -}
-- cup : Html msg
-- cup = i [] Cup
-- {-| <i class="mdi mdi-cup-off"></i> -}
-- cupOff : Html msg
-- cupOff = i [] CupOff
-- {-| <i class="mdi mdi-cup-water"></i> -}
-- cupWater : Html msg
-- cupWater = i [] CupWater
-- {-| <i class="mdi mdi-currency-btc"></i> -}
-- currencyBtc : Html msg
-- currencyBtc = i [] CurrencyBtc
-- {-| <i class="mdi mdi-currency-chf"></i> -}
-- currencyChf : Html msg
-- currencyChf = i [] CurrencyChf
-- {-| <i class="mdi mdi-currency-cny"></i> -}
-- currencyCny : Html msg
-- currencyCny = i [] CurrencyCny
-- {-| <i class="mdi mdi-currency-eth"></i> -}
-- currencyEth : Html msg
-- currencyEth = i [] CurrencyEth
-- {-| <i class="mdi mdi-currency-eur"></i> -}
-- currencyEur : Html msg
-- currencyEur = i [] CurrencyEur
-- {-| <i class="mdi mdi-currency-gbp"></i> -}
-- currencyGbp : Html msg
-- currencyGbp = i [] CurrencyGbp
-- {-| <i class="mdi mdi-currency-inr"></i> -}
-- currencyInr : Html msg
-- currencyInr = i [] CurrencyInr
-- {-| <i class="mdi mdi-currency-jpy"></i> -}
-- currencyJpy : Html msg
-- currencyJpy = i [] CurrencyJpy
-- {-| <i class="mdi mdi-currency-krw"></i> -}
-- currencyKrw : Html msg
-- currencyKrw = i [] CurrencyKrw
-- {-| <i class="mdi mdi-currency-ngn"></i> -}
-- currencyNgn : Html msg
-- currencyNgn = i [] CurrencyNgn
-- {-| <i class="mdi mdi-currency-rub"></i> -}
-- currencyRub : Html msg
-- currencyRub = i [] CurrencyRub
-- {-| <i class="mdi mdi-currency-sign"></i> -}
-- currencySign : Html msg
-- currencySign = i [] CurrencySign
-- {-| <i class="mdi mdi-currency-try"></i> -}
-- currencyTry : Html msg
-- currencyTry = i [] CurrencyTry
-- {-| <i class="mdi mdi-currency-twd"></i> -}
-- currencyTwd : Html msg
-- currencyTwd = i [] CurrencyTwd
-- {-| <i class="mdi mdi-currency-usd"></i> -}
-- currencyUsd : Html msg
-- currencyUsd = i [] CurrencyUsd
-- {-| <i class="mdi mdi-currency-usd-off"></i> -}
-- currencyUsdOff : Html msg
-- currencyUsdOff = i [] CurrencyUsdOff
-- {-| <i class="mdi mdi-cursor-default"></i> -}
-- cursorDefault : Html msg
-- cursorDefault = i [] CursorDefault
-- {-| <i class="mdi mdi-cursor-default-outline"></i> -}
-- cursorDefaultOutline : Html msg
-- cursorDefaultOutline = i [] CursorDefaultOutline
-- {-| <i class="mdi mdi-cursor-move"></i> -}
-- cursorMove : Html msg
-- cursorMove = i [] CursorMove
-- {-| <i class="mdi mdi-cursor-pointer"></i> -}
-- cursorPointer : Html msg
-- cursorPointer = i [] CursorPointer
-- {-| <i class="mdi mdi-cursor-text"></i> -}
-- cursorText : Html msg
-- cursorText = i [] CursorText
-- {-| <i class="mdi mdi-database"></i> -}
-- database : Html msg
-- database = i [] Database
-- {-| <i class="mdi mdi-database-minus"></i> -}
-- databaseMinus : Html msg
-- databaseMinus = i [] DatabaseMinus
-- {-| <i class="mdi mdi-database-plus"></i> -}
-- databasePlus : Html msg
-- databasePlus = i [] DatabasePlus
-- {-| <i class="mdi mdi-debug-step-into"></i> -}
-- debugStepInto : Html msg
-- debugStepInto = i [] DebugStepInto
-- {-| <i class="mdi mdi-debug-step-out"></i> -}
-- debugStepOut : Html msg
-- debugStepOut = i [] DebugStepOut
-- {-| <i class="mdi mdi-debug-step-over"></i> -}
-- debugStepOver : Html msg
-- debugStepOver = i [] DebugStepOver
-- {-| <i class="mdi mdi-decagram"></i> -}
-- decagram : Html msg
-- decagram = i [] Decagram
-- {-| <i class="mdi mdi-decagram-outline"></i> -}
-- decagramOutline : Html msg
-- decagramOutline = i [] DecagramOutline
-- {-| <i class="mdi mdi-decimal-decrease"></i> -}
-- decimalDecrease : Html msg
-- decimalDecrease = i [] DecimalDecrease
-- {-| <i class="mdi mdi-decimal-increase"></i> -}
-- decimalIncrease : Html msg
-- decimalIncrease = i [] DecimalIncrease
-- {-| <i class="mdi mdi-delete"></i> -}
-- delete : Html msg
-- delete = i [] Delete
-- {-| <i class="mdi mdi-delete-circle"></i> -}
-- deleteCircle : Html msg
-- deleteCircle = i [] DeleteCircle
-- {-| <i class="mdi mdi-delete-empty"></i> -}
-- deleteEmpty : Html msg
-- deleteEmpty = i [] DeleteEmpty
-- {-| <i class="mdi mdi-delete-forever"></i> -}
-- deleteForever : Html msg
-- deleteForever = i [] DeleteForever
-- {-| <i class="mdi mdi-delete-restore"></i> -}
-- deleteRestore : Html msg
-- deleteRestore = i [] DeleteRestore
-- {-| <i class="mdi mdi-delete-sweep"></i> -}
-- deleteSweep : Html msg
-- deleteSweep = i [] DeleteSweep
-- {-| <i class="mdi mdi-delete-variant"></i> -}
-- deleteVariant : Html msg
-- deleteVariant = i [] DeleteVariant
-- {-| <i class="mdi mdi-delta"></i> -}
-- delta : Html msg
-- delta = i [] Delta
-- {-| <i class="mdi mdi-deskphone"></i> -}
-- deskphone : Html msg
-- deskphone = i [] Deskphone
-- {-| <i class="mdi mdi-desktop-classic"></i> -}
-- desktopClassic : Html msg
-- desktopClassic = i [] DesktopClassic
-- {-| <i class="mdi mdi-desktop-mac"></i> -}
-- desktopMac : Html msg
-- desktopMac = i [] DesktopMac
-- {-| <i class="mdi mdi-desktop-tower"></i> -}
-- desktopTower : Html msg
-- desktopTower = i [] DesktopTower
-- {-| <i class="mdi mdi-details"></i> -}
-- details : Html msg
-- details = i [] Details
-- {-| <i class="mdi mdi-developer-board"></i> -}
-- developerBoard : Html msg
-- developerBoard = i [] DeveloperBoard
-- {-| <i class="mdi mdi-deviantart"></i> -}
-- deviantart : Html msg
-- deviantart = i [] Deviantart
-- {-| <i class="mdi mdi-dialpad"></i> -}
-- dialpad : Html msg
-- dialpad = i [] Dialpad
-- {-| <i class="mdi mdi-diamond"></i> -}
-- diamond : Html msg
-- diamond = i [] Diamond
-- {-| <i class="mdi mdi-dice1"></i> -}
-- dice1 : Html msg
-- dice1 = i [] Dice1
-- {-| <i class="mdi mdi-dice2"></i> -}
-- dice2 : Html msg
-- dice2 = i [] Dice2
-- {-| <i class="mdi mdi-dice3"></i> -}
-- dice3 : Html msg
-- dice3 = i [] Dice3
-- {-| <i class="mdi mdi-dice4"></i> -}
-- dice4 : Html msg
-- dice4 = i [] Dice4
-- {-| <i class="mdi mdi-dice5"></i> -}
-- dice5 : Html msg
-- dice5 = i [] Dice5
-- {-| <i class="mdi mdi-dice6"></i> -}
-- dice6 : Html msg
-- dice6 = i [] Dice6
-- {-| <i class="mdi mdi-dice-d10"></i> -}
-- diceD10 : Html msg
-- diceD10 = i [] DiceD10
-- {-| <i class="mdi mdi-dice-d20"></i> -}
-- diceD20 : Html msg
-- diceD20 = i [] DiceD20
-- {-| <i class="mdi mdi-dice-d4"></i> -}
-- diceD4 : Html msg
-- diceD4 = i [] DiceD4
-- {-| <i class="mdi mdi-dice-d6"></i> -}
-- diceD6 : Html msg
-- diceD6 = i [] DiceD6
-- {-| <i class="mdi mdi-dice-d8"></i> -}
-- diceD8 : Html msg
-- diceD8 = i [] DiceD8
-- {-| <i class="mdi mdi-dice-multiple"></i> -}
-- diceMultiple : Html msg
-- diceMultiple = i [] DiceMultiple
-- {-| <i class="mdi mdi-dictionary"></i> -}
-- dictionary : Html msg
-- dictionary = i [] Dictionary
-- {-| <i class="mdi mdi-dip-switch"></i> -}
-- dipSwitch : Html msg
-- dipSwitch = i [] DipSwitch
-- {-| <i class="mdi mdi-directions"></i> -}
-- directions : Html msg
-- directions = i [] Directions
-- {-| <i class="mdi mdi-directions-fork"></i> -}
-- directionsFork : Html msg
-- directionsFork = i [] DirectionsFork
-- {-| <i class="mdi mdi-discord"></i> -}
-- discord : Html msg
-- discord = i [] Discord
-- {-| <i class="mdi mdi-disk"></i> -}
-- disk : Html msg
-- disk = i [] Disk
-- {-| <i class="mdi mdi-disk-alert"></i> -}
-- diskAlert : Html msg
-- diskAlert = i [] DiskAlert
-- {-| <i class="mdi mdi-disqus"></i> -}
-- disqus : Html msg
-- disqus = i [] Disqus
-- {-| <i class="mdi mdi-disqus-outline"></i> -}
-- disqusOutline : Html msg
-- disqusOutline = i [] DisqusOutline
-- {-| <i class="mdi mdi-division"></i> -}
-- division : Html msg
-- division = i [] Division
-- {-| <i class="mdi mdi-division-box"></i> -}
-- divisionBox : Html msg
-- divisionBox = i [] DivisionBox
-- {-| <i class="mdi mdi-dna"></i> -}
-- dna : Html msg
-- dna = i [] Dna
-- {-| <i class="mdi mdi-dns"></i> -}
-- dns : Html msg
-- dns = i [] Dns
-- {-| <i class="mdi mdi-do-not-disturb"></i> -}
-- doNotDisturb : Html msg
-- doNotDisturb = i [] DoNotDisturb
-- {-| <i class="mdi mdi-do-not-disturb-off"></i> -}
-- doNotDisturbOff : Html msg
-- doNotDisturbOff = i [] DoNotDisturbOff
-- {-| <i class="mdi mdi-dolby"></i> -}
-- dolby : Html msg
-- dolby = i [] Dolby
-- {-| <i class="mdi mdi-domain"></i> -}
-- domain : Html msg
-- domain = i [] Domain
-- {-| <i class="mdi mdi-donkey"></i> -}
-- donkey : Html msg
-- donkey = i [] Donkey
-- {-| <i class="mdi mdi-door"></i> -}
-- door : Html msg
-- door = i [] Door
-- {-| <i class="mdi mdi-door-closed"></i> -}
-- doorClosed : Html msg
-- doorClosed = i [] DoorClosed
-- {-| <i class="mdi mdi-door-open"></i> -}
-- doorOpen : Html msg
-- doorOpen = i [] DoorOpen
-- {-| <i class="mdi mdi-dot-s"></i> -}
-- dotS : Html msg
-- dotS = i [] DotS
-- {-| <i class="mdi mdi-dots-vertical"></i> -}
-- dotsVertical : Html msg
-- dotsVertical = i [] DotsVertical
-- {-| <i class="mdi mdi-dots-vertical-circle"></i> -}
-- dotsVerticalCircle : Html msg
-- dotsVerticalCircle = i [] DotsVerticalCircle
-- {-| <i class="mdi mdi-douban"></i> -}
-- douban : Html msg
-- douban = i [] Douban
-- {-| <i class="mdi mdi-download"></i> -}
-- download : Html msg
-- download = i [] Download
-- {-| <i class="mdi mdi-download-network"></i> -}
-- downloadNetwork : Html msg
-- downloadNetwork = i [] DownloadNetwork
-- {-| <i class="mdi mdi-drag"></i> -}
-- drag : Html msg
-- drag = i [] Drag
-- {-| <i class="mdi mdi-dra-g"></i> -}
-- draG : Html msg
-- draG = i [] DraG
-- {-| <i class="mdi mdi-drag-vertical"></i> -}
-- dragVertical : Html msg
-- dragVertical = i [] DragVertical
-- {-| <i class="mdi mdi-drawing"></i> -}
-- drawing : Html msg
-- drawing = i [] Drawing
-- {-| <i class="mdi mdi-drawing-box"></i> -}
-- drawingBox : Html msg
-- drawingBox = i [] DrawingBox
-- {-| <i class="mdi mdi-dribbble"></i> -}
-- dribbble : Html msg
-- dribbble = i [] Dribbble
-- {-| <i class="mdi mdi-dribbble-box"></i> -}
-- dribbbleBox : Html msg
-- dribbbleBox = i [] DribbbleBox
-- {-| <i class="mdi mdi-drone"></i> -}
-- drone : Html msg
-- drone = i [] Drone
-- {-| <i class="mdi mdi-dropbox"></i> -}
-- dropbox : Html msg
-- dropbox = i [] Dropbox
-- {-| <i class="mdi mdi-drupal"></i> -}
-- drupal : Html msg
-- drupal = i [] Drupal
-- {-| <i class="mdi mdi-duck"></i> -}
-- duck : Html msg
-- duck = i [] Duck
-- {-| <i class="mdi mdi-dumbbell"></i> -}
-- dumbbell : Html msg
-- dumbbell = i [] Dumbbell
-- {-| <i class="mdi mdi-ear-hearing"></i> -}
-- earHearing : Html msg
-- earHearing = i [] EarHearing
-- {-| <i class="mdi mdi-earth"></i> -}
-- earth : Html msg
-- earth = i [] Earth
-- {-| <i class="mdi mdi-earth-box"></i> -}
-- earthBox : Html msg
-- earthBox = i [] EarthBox
-- {-| <i class="mdi mdi-earth-box-off"></i> -}
-- earthBoxOff : Html msg
-- earthBoxOff = i [] EarthBoxOff
-- {-| <i class="mdi mdi-earth-off"></i> -}
-- earthOff : Html msg
-- earthOff = i [] EarthOff
-- {-| <i class="mdi mdi-edge"></i> -}
-- edge : Html msg
-- edge = i [] Edge
-- {-| <i class="mdi mdi-eject"></i> -}
-- eject : Html msg
-- eject = i [] Eject
-- {-| <i class="mdi mdi-elephant"></i> -}
-- elephant : Html msg
-- elephant = i [] Elephant
-- {-| <i class="mdi mdi-elevation-decline"></i> -}
-- elevationDecline : Html msg
-- elevationDecline = i [] ElevationDecline
-- {-| <i class="mdi mdi-elevation-rise"></i> -}
-- elevationRise : Html msg
-- elevationRise = i [] ElevationRise
-- {-| <i class="mdi mdi-elevator"></i> -}
-- elevator : Html msg
-- elevator = i [] Elevator
-- {-| <i class="mdi mdi-email"></i> -}
-- email : Html msg
-- email = i [] Email
-- {-| <i class="mdi mdi-email-alert"></i> -}
-- emailAlert : Html msg
-- emailAlert = i [] EmailAlert
-- {-| <i class="mdi mdi-email-open"></i> -}
-- emailOpen : Html msg
-- emailOpen = i [] EmailOpen
-- {-| <i class="mdi mdi-email-open-outline"></i> -}
-- emailOpenOutline : Html msg
-- emailOpenOutline = i [] EmailOpenOutline
-- {-| <i class="mdi mdi-email-outline"></i> -}
-- emailOutline : Html msg
-- emailOutline = i [] EmailOutline
-- {-| <i class="mdi mdi-email-secure"></i> -}
-- emailSecure : Html msg
-- emailSecure = i [] EmailSecure
-- {-| <i class="mdi mdi-email-variant"></i> -}
-- emailVariant : Html msg
-- emailVariant = i [] EmailVariant
-- {-| <i class="mdi mdi-emby"></i> -}
-- emby : Html msg
-- emby = i [] Emby
-- {-| <i class="mdi mdi-emoticon"></i> -}
-- emoticon : Html msg
-- emoticon = i [] Emoticon
-- {-| <i class="mdi mdi-emoticon-cool"></i> -}
-- emoticonCool : Html msg
-- emoticonCool = i [] EmoticonCool
-- {-| <i class="mdi mdi-emoticon-dead"></i> -}
-- emoticonDead : Html msg
-- emoticonDead = i [] EmoticonDead
-- {-| <i class="mdi mdi-emoticon-devil"></i> -}
-- emoticonDevil : Html msg
-- emoticonDevil = i [] EmoticonDevil
-- {-| <i class="mdi mdi-emoticon-excited"></i> -}
-- emoticonExcited : Html msg
-- emoticonExcited = i [] EmoticonExcited
-- {-| <i class="mdi mdi-emoticon-happy"></i> -}
-- emoticonHappy : Html msg
-- emoticonHappy = i [] EmoticonHappy
-- {-| <i class="mdi mdi-emoticon-neutral"></i> -}
-- emoticonNeutral : Html msg
-- emoticonNeutral = i [] EmoticonNeutral
-- {-| <i class="mdi mdi-emoticon-poop"></i> -}
-- emoticonPoop : Html msg
-- emoticonPoop = i [] EmoticonPoop
-- {-| <i class="mdi mdi-emoticon-sad"></i> -}
-- emoticonSad : Html msg
-- emoticonSad = i [] EmoticonSad
-- {-| <i class="mdi mdi-emoticon-tongue"></i> -}
-- emoticonTongue : Html msg
-- emoticonTongue = i [] EmoticonTongue
-- {-| <i class="mdi mdi-engine"></i> -}
-- engine : Html msg
-- engine = i [] Engine
-- {-| <i class="mdi mdi-engine-outline"></i> -}
-- engineOutline : Html msg
-- engineOutline = i [] EngineOutline
-- {-| <i class="mdi mdi-equal"></i> -}
-- equal : Html msg
-- equal = i [] Equal
-- {-| <i class="mdi mdi-equal-box"></i> -}
-- equalBox : Html msg
-- equalBox = i [] EqualBox
-- {-| <i class="mdi mdi-eraser"></i> -}
-- eraser : Html msg
-- eraser = i [] Eraser
-- {-| <i class="mdi mdi-eraser-variant"></i> -}
-- eraserVariant : Html msg
-- eraserVariant = i [] EraserVariant
-- {-| <i class="mdi mdi-escalator"></i> -}
-- escalator : Html msg
-- escalator = i [] Escalator
-- {-| <i class="mdi mdi-ethernet"></i> -}
-- ethernet : Html msg
-- ethernet = i [] Ethernet
-- {-| <i class="mdi mdi-ethernet-cable"></i> -}
-- ethernetCable : Html msg
-- ethernetCable = i [] EthernetCable
-- {-| <i class="mdi mdi-ethernet-cable-off"></i> -}
-- ethernetCableOff : Html msg
-- ethernetCableOff = i [] EthernetCableOff
-- {-| <i class="mdi mdi-etsy"></i> -}
-- etsy : Html msg
-- etsy = i [] Etsy
-- {-| <i class="mdi mdi-ev-station"></i> -}
-- evStation : Html msg
-- evStation = i [] EvStation
-- {-| <i class="mdi mdi-eventbrite"></i> -}
-- eventbrite : Html msg
-- eventbrite = i [] Eventbrite
-- {-| <i class="mdi mdi-evernote"></i> -}
-- evernote : Html msg
-- evernote = i [] Evernote
-- {-| <i class="mdi mdi-exclamation"></i> -}
-- exclamation : Html msg
-- exclamation = i [] Exclamation
-- {-| <i class="mdi mdi-exit-to-app"></i> -}
-- exitToApp : Html msg
-- exitToApp = i [] ExitToApp
-- {-| <i class="mdi mdi-export"></i> -}
-- export : Html msg
-- export = i [] Export
-- {-| <i class="mdi mdi-eye"></i> -}
-- eye : Html msg
-- eye = i [] Eye
-- {-| <i class="mdi mdi-eye-off"></i> -}
-- eyeOff : Html msg
-- eyeOff = i [] EyeOff
-- {-| <i class="mdi mdi-eye-off-outline"></i> -}
-- eyeOffOutline : Html msg
-- eyeOffOutline = i [] EyeOffOutline
-- {-| <i class="mdi mdi-eye-outline"></i> -}
-- eyeOutline : Html msg
-- eyeOutline = i [] EyeOutline
-- {-| <i class="mdi mdi-eyedropper"></i> -}
-- eyedropper : Html msg
-- eyedropper = i [] Eyedropper
-- {-| <i class="mdi mdi-eyedropper-variant"></i> -}
-- eyedropperVariant : Html msg
-- eyedropperVariant = i [] EyedropperVariant
-- {-| <i class="mdi mdi-face"></i> -}
-- face : Html msg
-- face = i [] Face
-- {-| <i class="mdi mdi-face-profile"></i> -}
-- faceProfile : Html msg
-- faceProfile = i [] FaceProfile
-- {-| <i class="mdi mdi-facebook"></i> -}
-- facebook : Html msg
-- facebook = i [] Facebook
-- {-| <i class="mdi mdi-facebook-box"></i> -}
-- facebookBox : Html msg
-- facebookBox = i [] FacebookBox
-- {-| <i class="mdi mdi-facebook-messenger"></i> -}
-- facebookMessenger : Html msg
-- facebookMessenger = i [] FacebookMessenger
-- {-| <i class="mdi mdi-factory"></i> -}
-- factory : Html msg
-- factory = i [] Factory
-- {-| <i class="mdi mdi-fan"></i> -}
-- fan : Html msg
-- fan = i [] Fan
-- {-| <i class="mdi mdi-fan-off"></i> -}
-- fanOff : Html msg
-- fanOff = i [] FanOff
-- {-| <i class="mdi mdi-fast-forward"></i> -}
-- fastForward : Html msg
-- fastForward = i [] FastForward
-- {-| <i class="mdi mdi-fast-forward-outline"></i> -}
-- fastForwardOutline : Html msg
-- fastForwardOutline = i [] FastForwardOutline
-- {-| <i class="mdi mdi-fax"></i> -}
-- fax : Html msg
-- fax = i [] Fax
-- {-| <i class="mdi mdi-feather"></i> -}
-- feather : Html msg
-- feather = i [] Feather
-- {-| <i class="mdi mdi-ferry"></i> -}
-- ferry : Html msg
-- ferry = i [] Ferry
-- {-| <i class="mdi mdi-file"></i> -}
-- file : Html msg
-- file = i [] File
-- {-| <i class="mdi mdi-file-account"></i> -}
-- fileAccount : Html msg
-- fileAccount = i [] FileAccount
-- {-| <i class="mdi mdi-file-chart"></i> -}
-- fileChart : Html msg
-- fileChart = i [] FileChart
-- {-| <i class="mdi mdi-file-check"></i> -}
-- fileCheck : Html msg
-- fileCheck = i [] FileCheck
-- {-| <i class="mdi mdi-file-cloud"></i> -}
-- fileCloud : Html msg
-- fileCloud = i [] FileCloud
-- {-| <i class="mdi mdi-file-delimited"></i> -}
-- fileDelimited : Html msg
-- fileDelimited = i [] FileDelimited
-- {-| <i class="mdi mdi-file-document"></i> -}
-- fileDocument : Html msg
-- fileDocument = i [] FileDocument
-- {-| <i class="mdi mdi-file-document-box"></i> -}
-- fileDocumentBox : Html msg
-- fileDocumentBox = i [] FileDocumentBox
-- {-| <i class="mdi mdi-file-excel"></i> -}
-- fileExcel : Html msg
-- fileExcel = i [] FileExcel
-- {-| <i class="mdi mdi-file-excel-box"></i> -}
-- fileExcelBox : Html msg
-- fileExcelBox = i [] FileExcelBox
-- {-| <i class="mdi mdi-file-export"></i> -}
-- fileExport : Html msg
-- fileExport = i [] FileExport
-- {-| <i class="mdi mdi-file-find"></i> -}
-- fileFind : Html msg
-- fileFind = i [] FileFind
-- {-| <i class="mdi mdi-file-hidden"></i> -}
-- fileHidden : Html msg
-- fileHidden = i [] FileHidden
-- {-| <i class="mdi mdi-file-image"></i> -}
-- fileImage : Html msg
-- fileImage = i [] FileImage
-- {-| <i class="mdi mdi-file-import"></i> -}
-- fileImport : Html msg
-- fileImport = i [] FileImport
-- {-| <i class="mdi mdi-file-lock"></i> -}
-- fileLock : Html msg
-- fileLock = i [] FileLock
-- {-| <i class="mdi mdi-file-multiple"></i> -}
-- fileMultiple : Html msg
-- fileMultiple = i [] FileMultiple
-- {-| <i class="mdi mdi-file-music"></i> -}
-- fileMusic : Html msg
-- fileMusic = i [] FileMusic
-- {-| <i class="mdi mdi-file-outline"></i> -}
-- fileOutline : Html msg
-- fileOutline = i [] FileOutline
-- {-| <i class="mdi mdi-file-pdf"></i> -}
-- filePdf : Html msg
-- filePdf = i [] FilePdf
-- {-| <i class="mdi mdi-file-pdf-box"></i> -}
-- filePdfBox : Html msg
-- filePdfBox = i [] FilePdfBox
-- {-| <i class="mdi mdi-file-percent"></i> -}
-- filePercent : Html msg
-- filePercent = i [] FilePercent
-- {-| <i class="mdi mdi-file-plus"></i> -}
-- filePlus : Html msg
-- filePlus = i [] FilePlus
-- {-| <i class="mdi mdi-file-powerpoint"></i> -}
-- filePowerpoint : Html msg
-- filePowerpoint = i [] FilePowerpoint
-- {-| <i class="mdi mdi-file-powerpoint-box"></i> -}
-- filePowerpointBox : Html msg
-- filePowerpointBox = i [] FilePowerpointBox
-- {-| <i class="mdi mdi-file-presentation-box"></i> -}
-- filePresentationBox : Html msg
-- filePresentationBox = i [] FilePresentationBox
-- {-| <i class="mdi mdi-file-restore"></i> -}
-- fileRestore : Html msg
-- fileRestore = i [] FileRestore
-- {-| <i class="mdi mdi-file-send"></i> -}
-- fileSend : Html msg
-- fileSend = i [] FileSend
-- {-| <i class="mdi mdi-file-tree"></i> -}
-- fileTree : Html msg
-- fileTree = i [] FileTree
-- {-| <i class="mdi mdi-file-video"></i> -}
-- fileVideo : Html msg
-- fileVideo = i [] FileVideo
-- {-| <i class="mdi mdi-file-word"></i> -}
-- fileWord : Html msg
-- fileWord = i [] FileWord
-- {-| <i class="mdi mdi-file-word-box"></i> -}
-- fileWordBox : Html msg
-- fileWordBox = i [] FileWordBox
-- {-| <i class="mdi mdi-file-xml"></i> -}
-- fileXml : Html msg
-- fileXml = i [] FileXml
-- {-| <i class="mdi mdi-film"></i> -}
-- film : Html msg
-- film = i [] Film
-- {-| <i class="mdi mdi-filmstrip"></i> -}
-- filmstrip : Html msg
-- filmstrip = i [] Filmstrip
-- {-| <i class="mdi mdi-filmstrip-off"></i> -}
-- filmstripOff : Html msg
-- filmstripOff = i [] FilmstripOff
-- {-| <i class="mdi mdi-filter"></i> -}
-- filter : Html msg
-- filter = i [] Filter
-- {-| <i class="mdi mdi-filter-outline"></i> -}
-- filterOutline : Html msg
-- filterOutline = i [] FilterOutline
-- {-| <i class="mdi mdi-filter-remove"></i> -}
-- filterRemove : Html msg
-- filterRemove = i [] FilterRemove
-- {-| <i class="mdi mdi-filter-remove-outline"></i> -}
-- filterRemoveOutline : Html msg
-- filterRemoveOutline = i [] FilterRemoveOutline
-- {-| <i class="mdi mdi-filter-variant"></i> -}
-- filterVariant : Html msg
-- filterVariant = i [] FilterVariant
-- {-| <i class="mdi mdi-finance"></i> -}
-- finance : Html msg
-- finance = i [] Finance
-- {-| <i class="mdi mdi-find-replace"></i> -}
-- findReplace : Html msg
-- findReplace = i [] FindReplace
-- {-| <i class="mdi mdi-fingerprint"></i> -}
-- fingerprint : Html msg
-- fingerprint = i [] Fingerprint
-- {-| <i class="mdi mdi-fire"></i> -}
-- fire : Html msg
-- fire = i [] Fire
-- {-| <i class="mdi mdi-firefox"></i> -}
-- firefox : Html msg
-- firefox = i [] Firefox
-- {-| <i class="mdi mdi-fish"></i> -}
-- fish : Html msg
-- fish = i [] Fish
-- {-| <i class="mdi mdi-flag"></i> -}
-- flag : Html msg
-- flag = i [] Flag
-- {-| <i class="mdi mdi-flag-checkered"></i> -}
-- flagCheckered : Html msg
-- flagCheckered = i [] FlagCheckered
-- {-| <i class="mdi mdi-flag-outline"></i> -}
-- flagOutline : Html msg
-- flagOutline = i [] FlagOutline
-- {-| <i class="mdi mdi-flag-triangle"></i> -}
-- flagTriangle : Html msg
-- flagTriangle = i [] FlagTriangle
-- {-| <i class="mdi mdi-flag-variant"></i> -}
-- flagVariant : Html msg
-- flagVariant = i [] FlagVariant
-- {-| <i class="mdi mdi-flag-variant-outline"></i> -}
-- flagVariantOutline : Html msg
-- flagVariantOutline = i [] FlagVariantOutline
-- {-| <i class="mdi mdi-flash"></i> -}
-- flash : Html msg
-- flash = i [] Flash
-- {-| <i class="mdi mdi-flash-auto"></i> -}
-- flashAuto : Html msg
-- flashAuto = i [] FlashAuto
-- {-| <i class="mdi mdi-flash-circle"></i> -}
-- flashCircle : Html msg
-- flashCircle = i [] FlashCircle
-- {-| <i class="mdi mdi-flash-off"></i> -}
-- flashOff : Html msg
-- flashOff = i [] FlashOff
-- {-| <i class="mdi mdi-flash-outline"></i> -}
-- flashOutline : Html msg
-- flashOutline = i [] FlashOutline
-- {-| <i class="mdi mdi-flash-red-eye"></i> -}
-- flashRedEye : Html msg
-- flashRedEye = i [] FlashRedEye
-- {-| <i class="mdi mdi-flashlight"></i> -}
-- flashlight : Html msg
-- flashlight = i [] Flashlight
-- {-| <i class="mdi mdi-flashlight-off"></i> -}
-- flashlightOff : Html msg
-- flashlightOff = i [] FlashlightOff
-- {-| <i class="mdi mdi-flask"></i> -}
-- flask : Html msg
-- flask = i [] Flask
-- {-| <i class="mdi mdi-flask-empty"></i> -}
-- flaskEmpty : Html msg
-- flaskEmpty = i [] FlaskEmpty
-- {-| <i class="mdi mdi-flask-empty-outline"></i> -}
-- flaskEmptyOutline : Html msg
-- flaskEmptyOutline = i [] FlaskEmptyOutline
-- {-| <i class="mdi mdi-flask-outline"></i> -}
-- flaskOutline : Html msg
-- flaskOutline = i [] FlaskOutline
-- {-| <i class="mdi mdi-flattr"></i> -}
-- flattr : Html msg
-- flattr = i [] Flattr
-- {-| <i class="mdi mdi-flip-to-back"></i> -}
-- flipToBack : Html msg
-- flipToBack = i [] FlipToBack
-- {-| <i class="mdi mdi-flip-to-front"></i> -}
-- flipToFront : Html msg
-- flipToFront = i [] FlipToFront
-- {-| <i class="mdi mdi-floor-plan"></i> -}
-- floorPlan : Html msg
-- floorPlan = i [] FloorPlan
-- {-| <i class="mdi mdi-floppy"></i> -}
-- floppy : Html msg
-- floppy = i [] Floppy
-- {-| <i class="mdi mdi-flower"></i> -}
-- flower : Html msg
-- flower = i [] Flower
-- {-| <i class="mdi mdi-folder"></i> -}
-- folder : Html msg
-- folder = i [] Folder
-- {-| <i class="mdi mdi-folder-account"></i> -}
-- folderAccount : Html msg
-- folderAccount = i [] FolderAccount
-- {-| <i class="mdi mdi-folder-download"></i> -}
-- folderDownload : Html msg
-- folderDownload = i [] FolderDownload
-- {-| <i class="mdi mdi-folder-google-drive"></i> -}
-- folderGoogleDrive : Html msg
-- folderGoogleDrive = i [] FolderGoogleDrive
-- {-| <i class="mdi mdi-folder-image"></i> -}
-- folderImage : Html msg
-- folderImage = i [] FolderImage
-- {-| <i class="mdi mdi-folder-lock"></i> -}
-- folderLock : Html msg
-- folderLock = i [] FolderLock
-- {-| <i class="mdi mdi-folder-lock-open"></i> -}
-- folderLockOpen : Html msg
-- folderLockOpen = i [] FolderLockOpen
-- {-| <i class="mdi mdi-folder-move"></i> -}
-- folderMove : Html msg
-- folderMove = i [] FolderMove
-- {-| <i class="mdi mdi-folder-multiple"></i> -}
-- folderMultiple : Html msg
-- folderMultiple = i [] FolderMultiple
-- {-| <i class="mdi mdi-folder-multiple-image"></i> -}
-- folderMultipleImage : Html msg
-- folderMultipleImage = i [] FolderMultipleImage
-- {-| <i class="mdi mdi-folder-multiple-outline"></i> -}
-- folderMultipleOutline : Html msg
-- folderMultipleOutline = i [] FolderMultipleOutline
-- {-| <i class="mdi mdi-folder-open"></i> -}
-- folderOpen : Html msg
-- folderOpen = i [] FolderOpen
-- {-| <i class="mdi mdi-folder-outline"></i> -}
-- folderOutline : Html msg
-- folderOutline = i [] FolderOutline
-- {-| <i class="mdi mdi-folder-plus"></i> -}
-- folderPlus : Html msg
-- folderPlus = i [] FolderPlus
-- {-| <i class="mdi mdi-folder-remove"></i> -}
-- folderRemove : Html msg
-- folderRemove = i [] FolderRemove
-- {-| <i class="mdi mdi-folder-star"></i> -}
-- folderStar : Html msg
-- folderStar = i [] FolderStar
-- {-| <i class="mdi mdi-folder-upload"></i> -}
-- folderUpload : Html msg
-- folderUpload = i [] FolderUpload
-- {-| <i class="mdi mdi-font-awesome"></i> -}
-- fontAwesome : Html msg
-- fontAwesome = i [] FontAwesome
-- {-| <i class="mdi mdi-food"></i> -}
-- food : Html msg
-- food = i [] Food
-- {-| <i class="mdi mdi-food-apple"></i> -}
-- foodApple : Html msg
-- foodApple = i [] FoodApple
-- {-| <i class="mdi mdi-food-croissant"></i> -}
-- foodCroissant : Html msg
-- foodCroissant = i [] FoodCroissant
-- {-| <i class="mdi mdi-food-fork-drink"></i> -}
-- foodForkDrink : Html msg
-- foodForkDrink = i [] FoodForkDrink
-- {-| <i class="mdi mdi-food-off"></i> -}
-- foodOff : Html msg
-- foodOff = i [] FoodOff
-- {-| <i class="mdi mdi-food-variant"></i> -}
-- foodVariant : Html msg
-- foodVariant = i [] FoodVariant
-- {-| <i class="mdi mdi-football"></i> -}
-- football : Html msg
-- football = i [] Football
-- {-| <i class="mdi mdi-football-australian"></i> -}
-- footballAustralian : Html msg
-- footballAustralian = i [] FootballAustralian
-- {-| <i class="mdi mdi-football-helmet"></i> -}
-- footballHelmet : Html msg
-- footballHelmet = i [] FootballHelmet
-- {-| <i class="mdi mdi-forklift"></i> -}
-- forklift : Html msg
-- forklift = i [] Forklift
-- {-| <i class="mdi mdi-format-align-bottom"></i> -}
-- formatAlignBottom : Html msg
-- formatAlignBottom = i [] FormatAlignBottom
-- {-| <i class="mdi mdi-format-align-center"></i> -}
-- formatAlignCenter : Html msg
-- formatAlignCenter = i [] FormatAlignCenter
-- {-| <i class="mdi mdi-format-align-justify"></i> -}
-- formatAlignJustify : Html msg
-- formatAlignJustify = i [] FormatAlignJustify
-- {-| <i class="mdi mdi-format-align-left"></i> -}
-- formatAlignLeft : Html msg
-- formatAlignLeft = i [] FormatAlignLeft
-- {-| <i class="mdi mdi-format-align-middle"></i> -}
-- formatAlignMiddle : Html msg
-- formatAlignMiddle = i [] FormatAlignMiddle
-- {-| <i class="mdi mdi-format-align-right"></i> -}
-- formatAlignRight : Html msg
-- formatAlignRight = i [] FormatAlignRight
-- {-| <i class="mdi mdi-format-align-top"></i> -}
-- formatAlignTop : Html msg
-- formatAlignTop = i [] FormatAlignTop
-- {-| <i class="mdi mdi-format-annotation-plus"></i> -}
-- formatAnnotationPlus : Html msg
-- formatAnnotationPlus = i [] FormatAnnotationPlus
-- {-| <i class="mdi mdi-format-bold"></i> -}
-- formatBold : Html msg
-- formatBold = i [] FormatBold
-- {-| <i class="mdi mdi-format-clear"></i> -}
-- formatClear : Html msg
-- formatClear = i [] FormatClear
-- {-| <i class="mdi mdi-format-color-fill"></i> -}
-- formatColorFill : Html msg
-- formatColorFill = i [] FormatColorFill
-- {-| <i class="mdi mdi-format-color-text"></i> -}
-- formatColorText : Html msg
-- formatColorText = i [] FormatColorText
-- {-| <i class="mdi mdi-format-float-center"></i> -}
-- formatFloatCenter : Html msg
-- formatFloatCenter = i [] FormatFloatCenter
-- {-| <i class="mdi mdi-format-float-left"></i> -}
-- formatFloatLeft : Html msg
-- formatFloatLeft = i [] FormatFloatLeft
-- {-| <i class="mdi mdi-format-float-none"></i> -}
-- formatFloatNone : Html msg
-- formatFloatNone = i [] FormatFloatNone
-- {-| <i class="mdi mdi-format-float-right"></i> -}
-- formatFloatRight : Html msg
-- formatFloatRight = i [] FormatFloatRight
-- {-| <i class="mdi mdi-format-font"></i> -}
-- formatFont : Html msg
-- formatFont = i [] FormatFont
-- {-| <i class="mdi mdi-format-header1"></i> -}
-- formatHeader1 : Html msg
-- formatHeader1 = i [] FormatHeader1
-- {-| <i class="mdi mdi-format-header2"></i> -}
-- formatHeader2 : Html msg
-- formatHeader2 = i [] FormatHeader2
-- {-| <i class="mdi mdi-format-header3"></i> -}
-- formatHeader3 : Html msg
-- formatHeader3 = i [] FormatHeader3
-- {-| <i class="mdi mdi-format-header4"></i> -}
-- formatHeader4 : Html msg
-- formatHeader4 = i [] FormatHeader4
-- {-| <i class="mdi mdi-format-header5"></i> -}
-- formatHeader5 : Html msg
-- formatHeader5 = i [] FormatHeader5
-- {-| <i class="mdi mdi-format-header6"></i> -}
-- formatHeader6 : Html msg
-- formatHeader6 = i [] FormatHeader6
-- {-| <i class="mdi mdi-format-header-decrease"></i> -}
-- formatHeaderDecrease : Html msg
-- formatHeaderDecrease = i [] FormatHeaderDecrease
-- {-| <i class="mdi mdi-format-header-equal"></i> -}
-- formatHeaderEqual : Html msg
-- formatHeaderEqual = i [] FormatHeaderEqual
-- {-| <i class="mdi mdi-format-header-increase"></i> -}
-- formatHeaderIncrease : Html msg
-- formatHeaderIncrease = i [] FormatHeaderIncrease
-- {-| <i class="mdi mdi-format-header-pound"></i> -}
-- formatHeaderPound : Html msg
-- formatHeaderPound = i [] FormatHeaderPound
-- {-| <i class="mdi mdi-format-horizontal-align-center"></i> -}
-- formatHorizontalAlignCenter : Html msg
-- formatHorizontalAlignCenter = i [] FormatHorizontalAlignCenter
-- {-| <i class="mdi mdi-format-horizontal-align-left"></i> -}
-- formatHorizontalAlignLeft : Html msg
-- formatHorizontalAlignLeft = i [] FormatHorizontalAlignLeft
-- {-| <i class="mdi mdi-format-horizontal-align-right"></i> -}
-- formatHorizontalAlignRight : Html msg
-- formatHorizontalAlignRight = i [] FormatHorizontalAlignRight
-- {-| <i class="mdi mdi-format-indent-decrease"></i> -}
-- formatIndentDecrease : Html msg
-- formatIndentDecrease = i [] FormatIndentDecrease
-- {-| <i class="mdi mdi-format-indent-increase"></i> -}
-- formatIndentIncrease : Html msg
-- formatIndentIncrease = i [] FormatIndentIncrease
-- {-| <i class="mdi mdi-format-italic"></i> -}
-- formatItalic : Html msg
-- formatItalic = i [] FormatItalic
-- {-| <i class="mdi mdi-format-line-spacing"></i> -}
-- formatLineSpacing : Html msg
-- formatLineSpacing = i [] FormatLineSpacing
-- {-| <i class="mdi mdi-format-line-style"></i> -}
-- formatLineStyle : Html msg
-- formatLineStyle = i [] FormatLineStyle
-- {-| <i class="mdi mdi-format-line-weight"></i> -}
-- formatLineWeight : Html msg
-- formatLineWeight = i [] FormatLineWeight
-- {-| <i class="mdi mdi-format-list-bulleted"></i> -}
-- formatListBulleted : Html msg
-- formatListBulleted = i [] FormatListBulleted
-- {-| <i class="mdi mdi-format-list-bulleted-type"></i> -}
-- formatListBulletedType : Html msg
-- formatListBulletedType = i [] FormatListBulletedType
-- {-| <i class="mdi mdi-format-list-checks"></i> -}
-- formatListChecks : Html msg
-- formatListChecks = i [] FormatListChecks
-- {-| <i class="mdi mdi-format-list-numbers"></i> -}
-- formatListNumbers : Html msg
-- formatListNumbers = i [] FormatListNumbers
-- {-| <i class="mdi mdi-format-page-break"></i> -}
-- formatPageBreak : Html msg
-- formatPageBreak = i [] FormatPageBreak
-- {-| <i class="mdi mdi-format-paint"></i> -}
-- formatPaint : Html msg
-- formatPaint = i [] FormatPaint
-- {-| <i class="mdi mdi-format-paragraph"></i> -}
-- formatParagraph : Html msg
-- formatParagraph = i [] FormatParagraph
-- {-| <i class="mdi mdi-format-pilcrow"></i> -}
-- formatPilcrow : Html msg
-- formatPilcrow = i [] FormatPilcrow
-- {-| <i class="mdi mdi-format-quote-close"></i> -}
-- formatQuoteClose : Html msg
-- formatQuoteClose = i [] FormatQuoteClose
-- {-| <i class="mdi mdi-format-quote-open"></i> -}
-- formatQuoteOpen : Html msg
-- formatQuoteOpen = i [] FormatQuoteOpen
-- {-| <i class="mdi mdi-format-rotate90"></i> -}
-- formatRotate90 : Html msg
-- formatRotate90 = i [] FormatRotate90
-- {-| <i class="mdi mdi-format-section"></i> -}
-- formatSection : Html msg
-- formatSection = i [] FormatSection
-- {-| <i class="mdi mdi-format-size"></i> -}
-- formatSize : Html msg
-- formatSize = i [] FormatSize
-- {-| <i class="mdi mdi-format-strikethrough"></i> -}
-- formatStrikethrough : Html msg
-- formatStrikethrough = i [] FormatStrikethrough
-- {-| <i class="mdi mdi-format-strikethrough-variant"></i> -}
-- formatStrikethroughVariant : Html msg
-- formatStrikethroughVariant = i [] FormatStrikethroughVariant
-- {-| <i class="mdi mdi-format-subscript"></i> -}
-- formatSubscript : Html msg
-- formatSubscript = i [] FormatSubscript
-- {-| <i class="mdi mdi-format-superscript"></i> -}
-- formatSuperscript : Html msg
-- formatSuperscript = i [] FormatSuperscript
-- {-| <i class="mdi mdi-format-text"></i> -}
-- formatText : Html msg
-- formatText = i [] FormatText
-- {-| <i class="mdi mdi-format-textdirection-l-to-r"></i> -}
-- formatTextdirectionLToR : Html msg
-- formatTextdirectionLToR = i [] FormatTextdirectionLToR
-- {-| <i class="mdi mdi-format-textdirection-r-to-l"></i> -}
-- formatTextdirectionRToL : Html msg
-- formatTextdirectionRToL = i [] FormatTextdirectionRToL
-- {-| <i class="mdi mdi-format-title"></i> -}
-- formatTitle : Html msg
-- formatTitle = i [] FormatTitle
-- {-| <i class="mdi mdi-format-underline"></i> -}
-- formatUnderline : Html msg
-- formatUnderline = i [] FormatUnderline
-- {-| <i class="mdi mdi-format-vertical-align-bottom"></i> -}
-- formatVerticalAlignBottom : Html msg
-- formatVerticalAlignBottom = i [] FormatVerticalAlignBottom
-- {-| <i class="mdi mdi-format-vertical-align-center"></i> -}
-- formatVerticalAlignCenter : Html msg
-- formatVerticalAlignCenter = i [] FormatVerticalAlignCenter
-- {-| <i class="mdi mdi-format-vertical-align-top"></i> -}
-- formatVerticalAlignTop : Html msg
-- formatVerticalAlignTop = i [] FormatVerticalAlignTop
-- {-| <i class="mdi mdi-format-wrap-inline"></i> -}
-- formatWrapInline : Html msg
-- formatWrapInline = i [] FormatWrapInline
-- {-| <i class="mdi mdi-format-wrap-square"></i> -}
-- formatWrapSquare : Html msg
-- formatWrapSquare = i [] FormatWrapSquare
-- {-| <i class="mdi mdi-format-wrap-tight"></i> -}
-- formatWrapTight : Html msg
-- formatWrapTight = i [] FormatWrapTight
-- {-| <i class="mdi mdi-format-wrap-top-bottom"></i> -}
-- formatWrapTopBottom : Html msg
-- formatWrapTopBottom = i [] FormatWrapTopBottom
-- {-| <i class="mdi mdi-forum"></i> -}
-- forum : Html msg
-- forum = i [] Forum
-- {-| <i class="mdi mdi-forum-outline"></i> -}
-- forumOutline : Html msg
-- forumOutline = i [] ForumOutline
-- {-| <i class="mdi mdi-forward"></i> -}
-- forward : Html msg
-- forward = i [] Forward
-- {-| <i class="mdi mdi-foursquare"></i> -}
-- foursquare : Html msg
-- foursquare = i [] Foursquare
-- {-| <i class="mdi mdi-fridge"></i> -}
-- fridge : Html msg
-- fridge = i [] Fridge
-- {-| <i class="mdi mdi-fridge-filled"></i> -}
-- fridgeFilled : Html msg
-- fridgeFilled = i [] FridgeFilled
-- {-| <i class="mdi mdi-fridge-filled-bottom"></i> -}
-- fridgeFilledBottom : Html msg
-- fridgeFilledBottom = i [] FridgeFilledBottom
-- {-| <i class="mdi mdi-fridge-filled-top"></i> -}
-- fridgeFilledTop : Html msg
-- fridgeFilledTop = i [] FridgeFilledTop
-- {-| <i class="mdi mdi-fuel"></i> -}
-- fuel : Html msg
-- fuel = i [] Fuel
-- {-| <i class="mdi mdi-fullscreen"></i> -}
-- fullscreen : Html msg
-- fullscreen = i [] Fullscreen
-- {-| <i class="mdi mdi-fullscreen-exit"></i> -}
-- fullscreenExit : Html msg
-- fullscreenExit = i [] FullscreenExit
-- {-| <i class="mdi mdi-function"></i> -}
-- function : Html msg
-- function = i [] Function
-- {-| <i class="mdi mdi-gamepad"></i> -}
-- gamepad : Html msg
-- gamepad = i [] Gamepad
-- {-| <i class="mdi mdi-gamepad-variant"></i> -}
-- gamepadVariant : Html msg
-- gamepadVariant = i [] GamepadVariant
-- {-| <i class="mdi mdi-garage"></i> -}
-- garage : Html msg
-- garage = i [] Garage
-- {-| <i class="mdi mdi-garage-open"></i> -}
-- garageOpen : Html msg
-- garageOpen = i [] GarageOpen
-- {-| <i class="mdi mdi-gas-cylinder"></i> -}
-- gasCylinder : Html msg
-- gasCylinder = i [] GasCylinder
-- {-| <i class="mdi mdi-gas-station"></i> -}
-- gasStation : Html msg
-- gasStation = i [] GasStation
-- {-| <i class="mdi mdi-gate"></i> -}
-- gate : Html msg
-- gate = i [] Gate
-- {-| <i class="mdi mdi-gauge"></i> -}
-- gauge : Html msg
-- gauge = i [] Gauge
-- {-| <i class="mdi mdi-gavel"></i> -}
-- gavel : Html msg
-- gavel = i [] Gavel
-- {-| <i class="mdi mdi-gender-female"></i> -}
-- genderFemale : Html msg
-- genderFemale = i [] GenderFemale
-- {-| <i class="mdi mdi-gender-male"></i> -}
-- genderMale : Html msg
-- genderMale = i [] GenderMale
-- {-| <i class="mdi mdi-gender-male-female"></i> -}
-- genderMaleFemale : Html msg
-- genderMaleFemale = i [] GenderMaleFemale
-- {-| <i class="mdi mdi-gender-transgender"></i> -}
-- genderTransgender : Html msg
-- genderTransgender = i [] GenderTransgender
-- {-| <i class="mdi mdi-gesture"></i> -}
-- gesture : Html msg
-- gesture = i [] Gesture
-- {-| <i class="mdi mdi-gesture-double-tap"></i> -}
-- gestureDoubleTap : Html msg
-- gestureDoubleTap = i [] GestureDoubleTap
-- {-| <i class="mdi mdi-gesture-swipe-down"></i> -}
-- gestureSwipeDown : Html msg
-- gestureSwipeDown = i [] GestureSwipeDown
-- {-| <i class="mdi mdi-gesture-swipe-left"></i> -}
-- gestureSwipeLeft : Html msg
-- gestureSwipeLeft = i [] GestureSwipeLeft
-- {-| <i class="mdi mdi-gesture-swipe-right"></i> -}
-- gestureSwipeRight : Html msg
-- gestureSwipeRight = i [] GestureSwipeRight
-- {-| <i class="mdi mdi-gesture-swipe-up"></i> -}
-- gestureSwipeUp : Html msg
-- gestureSwipeUp = i [] GestureSwipeUp
-- {-| <i class="mdi mdi-gesture-tap"></i> -}
-- gestureTap : Html msg
-- gestureTap = i [] GestureTap
-- {-| <i class="mdi mdi-gesture-two-double-tap"></i> -}
-- gestureTwoDoubleTap : Html msg
-- gestureTwoDoubleTap = i [] GestureTwoDoubleTap
-- {-| <i class="mdi mdi-gesture-two-tap"></i> -}
-- gestureTwoTap : Html msg
-- gestureTwoTap = i [] GestureTwoTap
-- {-| <i class="mdi mdi-ghost"></i> -}
-- ghost : Html msg
-- ghost = i [] Ghost
-- {-| <i class="mdi mdi-gift"></i> -}
-- gift : Html msg
-- gift = i [] Gift
-- {-| <i class="mdi mdi-git"></i> -}
-- git : Html msg
-- git = i [] Git
-- {-| <i class="mdi mdi-github-box"></i> -}
-- githubBox : Html msg
-- githubBox = i [] GithubBox
-- {-| <i class="mdi mdi-github-circle"></i> -}
-- githubCircle : Html msg
-- githubCircle = i [] GithubCircle
-- {-| <i class="mdi mdi-github-face"></i> -}
-- githubFace : Html msg
-- githubFace = i [] GithubFace
-- {-| <i class="mdi mdi-glass-flute"></i> -}
-- glassFlute : Html msg
-- glassFlute = i [] GlassFlute
-- {-| <i class="mdi mdi-glass-mug"></i> -}
-- glassMug : Html msg
-- glassMug = i [] GlassMug
-- {-| <i class="mdi mdi-glass-stange"></i> -}
-- glassStange : Html msg
-- glassStange = i [] GlassStange
-- {-| <i class="mdi mdi-glass-tulip"></i> -}
-- glassTulip : Html msg
-- glassTulip = i [] GlassTulip
-- {-| <i class="mdi mdi-glassdoor"></i> -}
-- glassdoor : Html msg
-- glassdoor = i [] Glassdoor
-- {-| <i class="mdi mdi-glasses"></i> -}
-- glasses : Html msg
-- glasses = i [] Glasses
-- {-| <i class="mdi mdi-gmail"></i> -}
-- gmail : Html msg
-- gmail = i [] Gmail
-- {-| <i class="mdi mdi-gnome"></i> -}
-- gnome : Html msg
-- gnome = i [] Gnome
-- {-| <i class="mdi mdi-golf"></i> -}
-- golf : Html msg
-- golf = i [] Golf
-- {-| <i class="mdi mdi-gondola"></i> -}
-- gondola : Html msg
-- gondola = i [] Gondola
-- {-| <i class="mdi mdi-google"></i> -}
-- google : Html msg
-- google = i [] Google
-- {-| <i class="mdi mdi-google-analytics"></i> -}
-- googleAnalytics : Html msg
-- googleAnalytics = i [] GoogleAnalytics
-- {-| <i class="mdi mdi-google-assistant"></i> -}
-- googleAssistant : Html msg
-- googleAssistant = i [] GoogleAssistant
-- {-| <i class="mdi mdi-google-cardboard"></i> -}
-- googleCardboard : Html msg
-- googleCardboard = i [] GoogleCardboard
-- {-| <i class="mdi mdi-google-chrome"></i> -}
-- googleChrome : Html msg
-- googleChrome = i [] GoogleChrome
-- {-| <i class="mdi mdi-google-circles"></i> -}
-- googleCircles : Html msg
-- googleCircles = i [] GoogleCircles
-- {-| <i class="mdi mdi-google-circles-communities"></i> -}
-- googleCirclesCommunities : Html msg
-- googleCirclesCommunities = i [] GoogleCirclesCommunities
-- {-| <i class="mdi mdi-google-circles-extended"></i> -}
-- googleCirclesExtended : Html msg
-- googleCirclesExtended = i [] GoogleCirclesExtended
-- {-| <i class="mdi mdi-google-circles-group"></i> -}
-- googleCirclesGroup : Html msg
-- googleCirclesGroup = i [] GoogleCirclesGroup
-- {-| <i class="mdi mdi-google-controller"></i> -}
-- googleController : Html msg
-- googleController = i [] GoogleController
-- {-| <i class="mdi mdi-google-controller-off"></i> -}
-- googleControllerOff : Html msg
-- googleControllerOff = i [] GoogleControllerOff
-- {-| <i class="mdi mdi-google-drive"></i> -}
-- googleDrive : Html msg
-- googleDrive = i [] GoogleDrive
-- {-| <i class="mdi mdi-google-earth"></i> -}
-- googleEarth : Html msg
-- googleEarth = i [] GoogleEarth
-- {-| <i class="mdi mdi-google-glass"></i> -}
-- googleGlass : Html msg
-- googleGlass = i [] GoogleGlass
-- {-| <i class="mdi mdi-google-home"></i> -}
-- googleHome : Html msg
-- googleHome = i [] GoogleHome
-- {-| <i class="mdi mdi-google-keep"></i> -}
-- googleKeep : Html msg
-- googleKeep = i [] GoogleKeep
-- {-| <i class="mdi mdi-google-maps"></i> -}
-- googleMaps : Html msg
-- googleMaps = i [] GoogleMaps
-- {-| <i class="mdi mdi-google-nearby"></i> -}
-- googleNearby : Html msg
-- googleNearby = i [] GoogleNearby
-- {-| <i class="mdi mdi-google-pages"></i> -}
-- googlePages : Html msg
-- googlePages = i [] GooglePages
-- {-| <i class="mdi mdi-google-photos"></i> -}
-- googlePhotos : Html msg
-- googlePhotos = i [] GooglePhotos
-- {-| <i class="mdi mdi-google-physical-web"></i> -}
-- googlePhysicalWeb : Html msg
-- googlePhysicalWeb = i [] GooglePhysicalWeb
-- {-| <i class="mdi mdi-google-play"></i> -}
-- googlePlay : Html msg
-- googlePlay = i [] GooglePlay
-- {-| <i class="mdi mdi-google-plus"></i> -}
-- googlePlus : Html msg
-- googlePlus = i [] GooglePlus
-- {-| <i class="mdi mdi-google-plus-box"></i> -}
-- googlePlusBox : Html msg
-- googlePlusBox = i [] GooglePlusBox
-- {-| <i class="mdi mdi-google-translate"></i> -}
-- googleTranslate : Html msg
-- googleTranslate = i [] GoogleTranslate
-- {-| <i class="mdi mdi-google-wallet"></i> -}
-- googleWallet : Html msg
-- googleWallet = i [] GoogleWallet
-- {-| <i class="mdi mdi-gradient"></i> -}
-- gradient : Html msg
-- gradient = i [] Gradient
-- {-| <i class="mdi mdi-grease-pencil"></i> -}
-- greasePencil : Html msg
-- greasePencil = i [] GreasePencil
-- {-| <i class="mdi mdi-grid"></i> -}
-- grid : Html msg
-- grid = i [] Grid
-- {-| <i class="mdi mdi-grid-large"></i> -}
-- gridLarge : Html msg
-- gridLarge = i [] GridLarge
-- {-| <i class="mdi mdi-grid-off"></i> -}
-- gridOff : Html msg
-- gridOff = i [] GridOff
-- {-| <i class="mdi mdi-group"></i> -}
-- group : Html msg
-- group = i [] Group
-- {-| <i class="mdi mdi-guitar-acoustic"></i> -}
-- guitarAcoustic : Html msg
-- guitarAcoustic = i [] GuitarAcoustic
-- {-| <i class="mdi mdi-guitar-electric"></i> -}
-- guitarElectric : Html msg
-- guitarElectric = i [] GuitarElectric
-- {-| <i class="mdi mdi-guitar-pick"></i> -}
-- guitarPick : Html msg
-- guitarPick = i [] GuitarPick
-- {-| <i class="mdi mdi-guitar-pick-outline"></i> -}
-- guitarPickOutline : Html msg
-- guitarPickOutline = i [] GuitarPickOutline
-- {-| <i class="mdi mdi-guy-fawkes-mask"></i> -}
-- guyFawkesMask : Html msg
-- guyFawkesMask = i [] GuyFawkesMask
-- {-| <i class="mdi mdi-hackernews"></i> -}
-- hackernews : Html msg
-- hackernews = i [] Hackernews
-- {-| <i class="mdi mdi-hamburger"></i> -}
-- hamburger : Html msg
-- hamburger = i [] Hamburger
-- {-| <i class="mdi mdi-hand-pointing-right"></i> -}
-- handPointingRight : Html msg
-- handPointingRight = i [] HandPointingRight
-- {-| <i class="mdi mdi-hanger"></i> -}
-- hanger : Html msg
-- hanger = i [] Hanger
-- {-| <i class="mdi mdi-hangouts"></i> -}
-- hangouts : Html msg
-- hangouts = i [] Hangouts
-- {-| <i class="mdi mdi-harddisk"></i> -}
-- harddisk : Html msg
-- harddisk = i [] Harddisk
-- {-| <i class="mdi mdi-headphones"></i> -}
-- headphones : Html msg
-- headphones = i [] Headphones
-- {-| <i class="mdi mdi-headphones-box"></i> -}
-- headphonesBox : Html msg
-- headphonesBox = i [] HeadphonesBox
-- {-| <i class="mdi mdi-headphones-off"></i> -}
-- headphonesOff : Html msg
-- headphonesOff = i [] HeadphonesOff
-- {-| <i class="mdi mdi-headphones-settings"></i> -}
-- headphonesSettings : Html msg
-- headphonesSettings = i [] HeadphonesSettings
-- {-| <i class="mdi mdi-headset"></i> -}
-- headset : Html msg
-- headset = i [] Headset
-- {-| <i class="mdi mdi-headset-dock"></i> -}
-- headsetDock : Html msg
-- headsetDock = i [] HeadsetDock
-- {-| <i class="mdi mdi-headset-off"></i> -}
-- headsetOff : Html msg
-- headsetOff = i [] HeadsetOff
-- {-| <i class="mdi mdi-heart"></i> -}
-- heart : Html msg
-- heart = i [] Heart
-- {-| <i class="mdi mdi-heart-box"></i> -}
-- heartBox : Html msg
-- heartBox = i [] HeartBox
-- {-| <i class="mdi mdi-heart-box-outline"></i> -}
-- heartBoxOutline : Html msg
-- heartBoxOutline = i [] HeartBoxOutline
-- {-| <i class="mdi mdi-heart-broken"></i> -}
-- heartBroken : Html msg
-- heartBroken = i [] HeartBroken
-- {-| <i class="mdi mdi-heart-half"></i> -}
-- heartHalf : Html msg
-- heartHalf = i [] HeartHalf
-- {-| <i class="mdi mdi-heart-half-full"></i> -}
-- heartHalfFull : Html msg
-- heartHalfFull = i [] HeartHalfFull
-- {-| <i class="mdi mdi-heart-half-outline"></i> -}
-- heartHalfOutline : Html msg
-- heartHalfOutline = i [] HeartHalfOutline
-- {-| <i class="mdi mdi-heart-off"></i> -}
-- heartOff : Html msg
-- heartOff = i [] HeartOff
-- {-| <i class="mdi mdi-heart-outline"></i> -}
-- heartOutline : Html msg
-- heartOutline = i [] HeartOutline
-- {-| <i class="mdi mdi-heart-pulse"></i> -}
-- heartPulse : Html msg
-- heartPulse = i [] HeartPulse
-- {-| <i class="mdi mdi-help"></i> -}
-- help : Html msg
-- help = i [] Help
-- {-| <i class="mdi mdi-help-box"></i> -}
-- helpBox : Html msg
-- helpBox = i [] HelpBox
-- {-| <i class="mdi mdi-help-circle"></i> -}
-- helpCircle : Html msg
-- helpCircle = i [] HelpCircle
-- {-| <i class="mdi mdi-help-circle-outline"></i> -}
-- helpCircleOutline : Html msg
-- helpCircleOutline = i [] HelpCircleOutline
-- {-| <i class="mdi mdi-help-network"></i> -}
-- helpNetwork : Html msg
-- helpNetwork = i [] HelpNetwork
-- {-| <i class="mdi mdi-hexagon"></i> -}
-- hexagon : Html msg
-- hexagon = i [] Hexagon
-- {-| <i class="mdi mdi-hexagon-multiple"></i> -}
-- hexagonMultiple : Html msg
-- hexagonMultiple = i [] HexagonMultiple
-- {-| <i class="mdi mdi-hexagon-outline"></i> -}
-- hexagonOutline : Html msg
-- hexagonOutline = i [] HexagonOutline
-- {-| <i class="mdi mdi-high-definition"></i> -}
-- highDefinition : Html msg
-- highDefinition = i [] HighDefinition
-- {-| <i class="mdi mdi-highway"></i> -}
-- highway : Html msg
-- highway = i [] Highway
-- {-| <i class="mdi mdi-history"></i> -}
-- history : Html msg
-- history = i [] History
-- {-| <i class="mdi mdi-hololens"></i> -}
-- hololens : Html msg
-- hololens = i [] Hololens
-- {-| <i class="mdi mdi-home"></i> -}
-- home : Html msg
-- home = i [] Home
-- {-| <i class="mdi mdi-home-account"></i> -}
-- homeAccount : Html msg
-- homeAccount = i [] HomeAccount
-- {-| <i class="mdi mdi-home-assistant"></i> -}
-- homeAssistant : Html msg
-- homeAssistant = i [] HomeAssistant
-- {-| <i class="mdi mdi-home-automation"></i> -}
-- homeAutomation : Html msg
-- homeAutomation = i [] HomeAutomation
-- {-| <i class="mdi mdi-home-circle"></i> -}
-- homeCircle : Html msg
-- homeCircle = i [] HomeCircle
-- {-| <i class="mdi mdi-home-heart"></i> -}
-- homeHeart : Html msg
-- homeHeart = i [] HomeHeart
-- {-| <i class="mdi mdi-home-map-marker"></i> -}
-- homeMapMarker : Html msg
-- homeMapMarker = i [] HomeMapMarker
-- {-| <i class="mdi mdi-home-modern"></i> -}
-- homeModern : Html msg
-- homeModern = i [] HomeModern
-- {-| <i class="mdi mdi-home-outline"></i> -}
-- homeOutline : Html msg
-- homeOutline = i [] HomeOutline
-- {-| <i class="mdi mdi-home-variant"></i> -}
-- homeVariant : Html msg
-- homeVariant = i [] HomeVariant
-- {-| <i class="mdi mdi-hook"></i> -}
-- hook : Html msg
-- hook = i [] Hook
-- {-| <i class="mdi mdi-hook-off"></i> -}
-- hookOff : Html msg
-- hookOff = i [] HookOff
-- {-| <i class="mdi mdi-hops"></i> -}
-- hops : Html msg
-- hops = i [] Hops
-- {-| <i class="mdi mdi-hospital"></i> -}
-- hospital : Html msg
-- hospital = i [] Hospital
-- {-| <i class="mdi mdi-hospital-building"></i> -}
-- hospitalBuilding : Html msg
-- hospitalBuilding = i [] HospitalBuilding
-- {-| <i class="mdi mdi-hospital-marker"></i> -}
-- hospitalMarker : Html msg
-- hospitalMarker = i [] HospitalMarker
-- {-| <i class="mdi mdi-hot-tub"></i> -}
-- hotTub : Html msg
-- hotTub = i [] HotTub
-- {-| <i class="mdi mdi-hotel"></i> -}
-- hotel : Html msg
-- hotel = i [] Hotel
-- {-| <i class="mdi mdi-houzz"></i> -}
-- houzz : Html msg
-- houzz = i [] Houzz
-- {-| <i class="mdi mdi-houzz-box"></i> -}
-- houzzBox : Html msg
-- houzzBox = i [] HouzzBox
-- {-| <i class="mdi mdi-hulu"></i> -}
-- hulu : Html msg
-- hulu = i [] Hulu
-- {-| <i class="mdi mdi-human"></i> -}
-- human : Html msg
-- human = i [] Human
-- {-| <i class="mdi mdi-human-child"></i> -}
-- humanChild : Html msg
-- humanChild = i [] HumanChild
-- {-| <i class="mdi mdi-human-female"></i> -}
-- humanFemale : Html msg
-- humanFemale = i [] HumanFemale
-- {-| <i class="mdi mdi-human-greeting"></i> -}
-- humanGreeting : Html msg
-- humanGreeting = i [] HumanGreeting
-- {-| <i class="mdi mdi-human-handsdown"></i> -}
-- humanHandsdown : Html msg
-- humanHandsdown = i [] HumanHandsdown
-- {-| <i class="mdi mdi-human-handsup"></i> -}
-- humanHandsup : Html msg
-- humanHandsup = i [] HumanHandsup
-- {-| <i class="mdi mdi-human-male"></i> -}
-- humanMale : Html msg
-- humanMale = i [] HumanMale
-- {-| <i class="mdi mdi-human-male-female"></i> -}
-- humanMaleFemale : Html msg
-- humanMaleFemale = i [] HumanMaleFemale
-- {-| <i class="mdi mdi-human-pregnant"></i> -}
-- humanPregnant : Html msg
-- humanPregnant = i [] HumanPregnant
-- {-| <i class="mdi mdi-humble-bundle"></i> -}
-- humbleBundle : Html msg
-- humbleBundle = i [] HumbleBundle
-- {-| <i class="mdi mdi-ice-cream"></i> -}
-- iceCream : Html msg
-- iceCream = i [] IceCream
-- {-| <i class="mdi mdi-image"></i> -}
-- image : Html msg
-- image = i [] Image
-- {-| <i class="mdi mdi-image-album"></i> -}
-- imageAlbum : Html msg
-- imageAlbum = i [] ImageAlbum
-- {-| <i class="mdi mdi-image-area"></i> -}
-- imageArea : Html msg
-- imageArea = i [] ImageArea
-- {-| <i class="mdi mdi-image-area-close"></i> -}
-- imageAreaClose : Html msg
-- imageAreaClose = i [] ImageAreaClose
-- {-| <i class="mdi mdi-image-broken"></i> -}
-- imageBroken : Html msg
-- imageBroken = i [] ImageBroken
-- {-| <i class="mdi mdi-image-broken-variant"></i> -}
-- imageBrokenVariant : Html msg
-- imageBrokenVariant = i [] ImageBrokenVariant
-- {-| <i class="mdi mdi-image-filter"></i> -}
-- imageFilter : Html msg
-- imageFilter = i [] ImageFilter
-- {-| <i class="mdi mdi-image-filter-black-white"></i> -}
-- imageFilterBlackWhite : Html msg
-- imageFilterBlackWhite = i [] ImageFilterBlackWhite
-- {-| <i class="mdi mdi-image-filter-center-focus"></i> -}
-- imageFilterCenterFocus : Html msg
-- imageFilterCenterFocus = i [] ImageFilterCenterFocus
-- {-| <i class="mdi mdi-image-filter-center-focus-weak"></i> -}
-- imageFilterCenterFocusWeak : Html msg
-- imageFilterCenterFocusWeak = i [] ImageFilterCenterFocusWeak
-- {-| <i class="mdi mdi-image-filter-drama"></i> -}
-- imageFilterDrama : Html msg
-- imageFilterDrama = i [] ImageFilterDrama
-- {-| <i class="mdi mdi-image-filter-frames"></i> -}
-- imageFilterFrames : Html msg
-- imageFilterFrames = i [] ImageFilterFrames
-- {-| <i class="mdi mdi-image-filter-hdr"></i> -}
-- imageFilterHdr : Html msg
-- imageFilterHdr = i [] ImageFilterHdr
-- {-| <i class="mdi mdi-image-filter-none"></i> -}
-- imageFilterNone : Html msg
-- imageFilterNone = i [] ImageFilterNone
-- {-| <i class="mdi mdi-image-filter-tilt-shift"></i> -}
-- imageFilterTiltShift : Html msg
-- imageFilterTiltShift = i [] ImageFilterTiltShift
-- {-| <i class="mdi mdi-image-filter-vintage"></i> -}
-- imageFilterVintage : Html msg
-- imageFilterVintage = i [] ImageFilterVintage
-- {-| <i class="mdi mdi-image-multiple"></i> -}
-- imageMultiple : Html msg
-- imageMultiple = i [] ImageMultiple
-- {-| <i class="mdi mdi-image-off"></i> -}
-- imageOff : Html msg
-- imageOff = i [] ImageOff
-- {-| <i class="mdi mdi-inbox"></i> -}
-- inbox : Html msg
-- inbox = i [] Inbox
-- {-| <i class="mdi mdi-inbox-arrow-down"></i> -}
-- inboxArrowDown : Html msg
-- inboxArrowDown = i [] InboxArrowDown
-- {-| <i class="mdi mdi-inbox-arrow-up"></i> -}
-- inboxArrowUp : Html msg
-- inboxArrowUp = i [] InboxArrowUp
-- {-| <i class="mdi mdi-incognito"></i> -}
-- incognito : Html msg
-- incognito = i [] Incognito
-- {-| <i class="mdi mdi-infinity"></i> -}
-- infinity : Html msg
-- infinity = i [] Infinity
-- {-| <i class="mdi mdi-information"></i> -}
-- information : Html msg
-- information = i [] Information
-- {-| <i class="mdi mdi-information-outline"></i> -}
-- informationOutline : Html msg
-- informationOutline = i [] InformationOutline
-- {-| <i class="mdi mdi-information-variant"></i> -}
-- informationVariant : Html msg
-- informationVariant = i [] InformationVariant
-- {-| <i class="mdi mdi-instagram"></i> -}
-- instagram : Html msg
-- instagram = i [] Instagram
-- {-| <i class="mdi mdi-instapaper"></i> -}
-- instapaper : Html msg
-- instapaper = i [] Instapaper
-- {-| <i class="mdi mdi-internet-explorer"></i> -}
-- internetExplorer : Html msg
-- internetExplorer = i [] InternetExplorer
-- {-| <i class="mdi mdi-invert-colors"></i> -}
-- invertColors : Html msg
-- invertColors = i [] InvertColors
-- {-| <i class="mdi mdi-itunes"></i> -}
-- itunes : Html msg
-- itunes = i [] Itunes
-- {-| <i class="mdi mdi-jeepney"></i> -}
-- jeepney : Html msg
-- jeepney = i [] Jeepney
-- {-| <i class="mdi mdi-jira"></i> -}
-- jira : Html msg
-- jira = i [] Jira
-- {-| <i class="mdi mdi-jsfiddle"></i> -}
-- jsfiddle : Html msg
-- jsfiddle = i [] Jsfiddle
-- {-| <i class="mdi mdi-json"></i> -}
-- json : Html msg
-- json = i [] Json
-- {-| <i class="mdi mdi-karate"></i> -}
-- karate : Html msg
-- karate = i [] Karate
-- {-| <i class="mdi mdi-keg"></i> -}
-- keg : Html msg
-- keg = i [] Keg
-- {-| <i class="mdi mdi-kettle"></i> -}
-- kettle : Html msg
-- kettle = i [] Kettle
-- {-| <i class="mdi mdi-key"></i> -}
-- key : Html msg
-- key = i [] Key
-- {-| <i class="mdi mdi-key-change"></i> -}
-- keyChange : Html msg
-- keyChange = i [] KeyChange
-- {-| <i class="mdi mdi-key-minus"></i> -}
-- keyMinus : Html msg
-- keyMinus = i [] KeyMinus
-- {-| <i class="mdi mdi-key-plus"></i> -}
-- keyPlus : Html msg
-- keyPlus = i [] KeyPlus
-- {-| <i class="mdi mdi-key-remove"></i> -}
-- keyRemove : Html msg
-- keyRemove = i [] KeyRemove
-- {-| <i class="mdi mdi-key-variant"></i> -}
-- keyVariant : Html msg
-- keyVariant = i [] KeyVariant
-- {-| <i class="mdi mdi-keyboard"></i> -}
-- keyboard : Html msg
-- keyboard = i [] Keyboard
-- {-| <i class="mdi mdi-keyboard-backspace"></i> -}
-- keyboardBackspace : Html msg
-- keyboardBackspace = i [] KeyboardBackspace
-- {-| <i class="mdi mdi-keyboard-caps"></i> -}
-- keyboardCaps : Html msg
-- keyboardCaps = i [] KeyboardCaps
-- {-| <i class="mdi mdi-keyboard-close"></i> -}
-- keyboardClose : Html msg
-- keyboardClose = i [] KeyboardClose
-- {-| <i class="mdi mdi-keyboard-off"></i> -}
-- keyboardOff : Html msg
-- keyboardOff = i [] KeyboardOff
-- {-| <i class="mdi mdi-keyboard-return"></i> -}
-- keyboardReturn : Html msg
-- keyboardReturn = i [] KeyboardReturn
-- {-| <i class="mdi mdi-keyboard-tab"></i> -}
-- keyboardTab : Html msg
-- keyboardTab = i [] KeyboardTab
-- {-| <i class="mdi mdi-keyboard-variant"></i> -}
-- keyboardVariant : Html msg
-- keyboardVariant = i [] KeyboardVariant
-- {-| <i class="mdi mdi-kickstarter"></i> -}
-- kickstarter : Html msg
-- kickstarter = i [] Kickstarter
-- {-| <i class="mdi mdi-kodi"></i> -}
-- kodi : Html msg
-- kodi = i [] Kodi
-- {-| <i class="mdi mdi-label"></i> -}
-- label : Html msg
-- label = i [] Label
-- {-| <i class="mdi mdi-label-outline"></i> -}
-- labelOutline : Html msg
-- labelOutline = i [] LabelOutline
-- {-| <i class="mdi mdi-ladybug"></i> -}
-- ladybug : Html msg
-- ladybug = i [] Ladybug
-- {-| <i class="mdi mdi-lambda"></i> -}
-- lambda : Html msg
-- lambda = i [] Lambda
-- {-| <i class="mdi mdi-lamp"></i> -}
-- lamp : Html msg
-- lamp = i [] Lamp
-- {-| <i class="mdi mdi-lan"></i> -}
-- lan : Html msg
-- lan = i [] Lan
-- {-| <i class="mdi mdi-lan-connect"></i> -}
-- lanConnect : Html msg
-- lanConnect = i [] LanConnect
-- {-| <i class="mdi mdi-lan-disconnect"></i> -}
-- lanDisconnect : Html msg
-- lanDisconnect = i [] LanDisconnect
-- {-| <i class="mdi mdi-lan-pending"></i> -}
-- lanPending : Html msg
-- lanPending = i [] LanPending
-- {-| <i class="mdi mdi-language-c"></i> -}
-- languageC : Html msg
-- languageC = i [] LanguageC
-- {-| <i class="mdi mdi-language-cpp"></i> -}
-- languageCpp : Html msg
-- languageCpp = i [] LanguageCpp
-- {-| <i class="mdi mdi-language-csharp"></i> -}
-- languageCsharp : Html msg
-- languageCsharp = i [] LanguageCsharp
-- {-| <i class="mdi mdi-language-css3"></i> -}
-- languageCss3 : Html msg
-- languageCss3 = i [] LanguageCss3
-- {-| <i class="mdi mdi-language-go"></i> -}
-- languageGo : Html msg
-- languageGo = i [] LanguageGo
-- {-| <i class="mdi mdi-language-html5"></i> -}
-- languageHtml5 : Html msg
-- languageHtml5 = i [] LanguageHtml5
-- {-| <i class="mdi mdi-language-javascript"></i> -}
-- languageJavascript : Html msg
-- languageJavascript = i [] LanguageJavascript
-- {-| <i class="mdi mdi-language-php"></i> -}
-- languagePhp : Html msg
-- languagePhp = i [] LanguagePhp
-- {-| <i class="mdi mdi-language-python"></i> -}
-- languagePython : Html msg
-- languagePython = i [] LanguagePython
-- {-| <i class="mdi mdi-language-python-text"></i> -}
-- languagePythonText : Html msg
-- languagePythonText = i [] LanguagePythonText
-- {-| <i class="mdi mdi-language-r"></i> -}
-- languageR : Html msg
-- languageR = i [] LanguageR
-- {-| <i class="mdi mdi-language-swift"></i> -}
-- languageSwift : Html msg
-- languageSwift = i [] LanguageSwift
-- {-| <i class="mdi mdi-language-typescript"></i> -}
-- languageTypescript : Html msg
-- languageTypescript = i [] LanguageTypescript
-- {-| <i class="mdi mdi-laptop"></i> -}
-- laptop : Html msg
-- laptop = i [] Laptop
-- {-| <i class="mdi mdi-laptop-chromebook"></i> -}
-- laptopChromebook : Html msg
-- laptopChromebook = i [] LaptopChromebook
-- {-| <i class="mdi mdi-laptop-mac"></i> -}
-- laptopMac : Html msg
-- laptopMac = i [] LaptopMac
-- {-| <i class="mdi mdi-laptop-off"></i> -}
-- laptopOff : Html msg
-- laptopOff = i [] LaptopOff
-- {-| <i class="mdi mdi-laptop-windows"></i> -}
-- laptopWindows : Html msg
-- laptopWindows = i [] LaptopWindows
-- {-| <i class="mdi mdi-lastfm"></i> -}
-- lastfm : Html msg
-- lastfm = i [] Lastfm
-- {-| <i class="mdi mdi-lastpass"></i> -}
-- lastpass : Html msg
-- lastpass = i [] Lastpass
-- {-| <i class="mdi mdi-launch"></i> -}
-- launch : Html msg
-- launch = i [] Launch
-- {-| <i class="mdi mdi-lava-lamp"></i> -}
-- lavaLamp : Html msg
-- lavaLamp = i [] LavaLamp
-- {-| <i class="mdi mdi-layers"></i> -}
-- layers : Html msg
-- layers = i [] Layers
-- {-| <i class="mdi mdi-layers-off"></i> -}
-- layersOff : Html msg
-- layersOff = i [] LayersOff
-- {-| <i class="mdi mdi-lead-pencil"></i> -}
-- leadPencil : Html msg
-- leadPencil = i [] LeadPencil
-- {-| <i class="mdi mdi-leaf"></i> -}
-- leaf : Html msg
-- leaf = i [] Leaf
-- {-| <i class="mdi mdi-led-off"></i> -}
-- ledOff : Html msg
-- ledOff = i [] LedOff
-- {-| <i class="mdi mdi-led-on"></i> -}
-- ledOn : Html msg
-- ledOn = i [] LedOn
-- {-| <i class="mdi mdi-led-outline"></i> -}
-- ledOutline : Html msg
-- ledOutline = i [] LedOutline
-- {-| <i class="mdi mdi-led-strip"></i> -}
-- ledStrip : Html msg
-- ledStrip = i [] LedStrip
-- {-| <i class="mdi mdi-led-variant-off"></i> -}
-- ledVariantOff : Html msg
-- ledVariantOff = i [] LedVariantOff
-- {-| <i class="mdi mdi-led-variant-on"></i> -}
-- ledVariantOn : Html msg
-- ledVariantOn = i [] LedVariantOn
-- {-| <i class="mdi mdi-led-variant-outline"></i> -}
-- ledVariantOutline : Html msg
-- ledVariantOutline = i [] LedVariantOutline
-- {-| <i class="mdi mdi-library"></i> -}
-- library : Html msg
-- library = i [] Library
-- {-| <i class="mdi mdi-library-books"></i> -}
-- libraryBooks : Html msg
-- libraryBooks = i [] LibraryBooks
-- {-| <i class="mdi mdi-library-music"></i> -}
-- libraryMusic : Html msg
-- libraryMusic = i [] LibraryMusic
-- {-| <i class="mdi mdi-library-plus"></i> -}
-- libraryPlus : Html msg
-- libraryPlus = i [] LibraryPlus
-- {-| <i class="mdi mdi-lightbulb"></i> -}
-- lightbulb : Html msg
-- lightbulb = i [] Lightbulb
-- {-| <i class="mdi mdi-lightbulb-on"></i> -}
-- lightbulbOn : Html msg
-- lightbulbOn = i [] LightbulbOn
-- {-| <i class="mdi mdi-lightbulb-on-outline"></i> -}
-- lightbulbOnOutline : Html msg
-- lightbulbOnOutline = i [] LightbulbOnOutline
-- {-| <i class="mdi mdi-lightbulb-outline"></i> -}
-- lightbulbOutline : Html msg
-- lightbulbOutline = i [] LightbulbOutline
-- {-| <i class="mdi mdi-link"></i> -}
-- link : Html msg
-- link = i [] Link
-- {-| <i class="mdi mdi-link-off"></i> -}
-- linkOff : Html msg
-- linkOff = i [] LinkOff
-- {-| <i class="mdi mdi-link-variant"></i> -}
-- linkVariant : Html msg
-- linkVariant = i [] LinkVariant
-- {-| <i class="mdi mdi-link-variant-off"></i> -}
-- linkVariantOff : Html msg
-- linkVariantOff = i [] LinkVariantOff
-- {-| <i class="mdi mdi-linkedin"></i> -}
-- linkedin : Html msg
-- linkedin = i [] Linkedin
-- {-| <i class="mdi mdi-linkedin-box"></i> -}
-- linkedinBox : Html msg
-- linkedinBox = i [] LinkedinBox
-- {-| <i class="mdi mdi-linux"></i> -}
-- linux : Html msg
-- linux = i [] Linux
-- {-| <i class="mdi mdi-loading"></i> -}
-- loading : Html msg
-- loading = i [] Loading
-- {-| <i class="mdi mdi-lock"></i> -}
-- lock : Html msg
-- lock = i [] Lock
-- {-| <i class="mdi mdi-lock-open"></i> -}
-- lockOpen : Html msg
-- lockOpen = i [] LockOpen
-- {-| <i class="mdi mdi-lock-open-outline"></i> -}
-- lockOpenOutline : Html msg
-- lockOpenOutline = i [] LockOpenOutline
-- {-| <i class="mdi mdi-lock-outline"></i> -}
-- lockOutline : Html msg
-- lockOutline = i [] LockOutline
-- {-| <i class="mdi mdi-lock-pattern"></i> -}
-- lockPattern : Html msg
-- lockPattern = i [] LockPattern
-- {-| <i class="mdi mdi-lock-plus"></i> -}
-- lockPlus : Html msg
-- lockPlus = i [] LockPlus
-- {-| <i class="mdi mdi-lock-reset"></i> -}
-- lockReset : Html msg
-- lockReset = i [] LockReset
-- {-| <i class="mdi mdi-locker"></i> -}
-- locker : Html msg
-- locker = i [] Locker
-- {-| <i class="mdi mdi-locker-multiple"></i> -}
-- lockerMultiple : Html msg
-- lockerMultiple = i [] LockerMultiple
-- {-| <i class="mdi mdi-login"></i> -}
-- login : Html msg
-- login = i [] Login
-- {-| <i class="mdi mdi-login-variant"></i> -}
-- loginVariant : Html msg
-- loginVariant = i [] LoginVariant
-- {-| <i class="mdi mdi-logout"></i> -}
-- logout : Html msg
-- logout = i [] Logout
-- {-| <i class="mdi mdi-logout-variant"></i> -}
-- logoutVariant : Html msg
-- logoutVariant = i [] LogoutVariant
-- {-| <i class="mdi mdi-looks"></i> -}
-- looks : Html msg
-- looks = i [] Looks
-- {-| <i class="mdi mdi-loop"></i> -}
-- loop : Html msg
-- loop = i [] Loop
-- {-| <i class="mdi mdi-loupe"></i> -}
-- loupe : Html msg
-- loupe = i [] Loupe
-- {-| <i class="mdi mdi-lumx"></i> -}
-- lumx : Html msg
-- lumx = i [] Lumx
-- {-| <i class="mdi mdi-magnet"></i> -}
-- magnet : Html msg
-- magnet = i [] Magnet
-- {-| <i class="mdi mdi-magnet-on"></i> -}
-- magnetOn : Html msg
-- magnetOn = i [] MagnetOn
-- {-| <i class="mdi mdi-magnify"></i> -}
-- magnify : Html msg
-- magnify = i [] Magnify
-- {-| <i class="mdi mdi-magnify-minus"></i> -}
-- magnifyMinus : Html msg
-- magnifyMinus = i [] MagnifyMinus
-- {-| <i class="mdi mdi-magnify-minus-outline"></i> -}
-- magnifyMinusOutline : Html msg
-- magnifyMinusOutline = i [] MagnifyMinusOutline
-- {-| <i class="mdi mdi-magnify-plus"></i> -}
-- magnifyPlus : Html msg
-- magnifyPlus = i [] MagnifyPlus
-- {-| <i class="mdi mdi-magnify-plus-outline"></i> -}
-- magnifyPlusOutline : Html msg
-- magnifyPlusOutline = i [] MagnifyPlusOutline
-- {-| <i class="mdi mdi-mail-ru"></i> -}
-- mailRu : Html msg
-- mailRu = i [] MailRu
-- {-| <i class="mdi mdi-mailbox"></i> -}
-- mailbox : Html msg
-- mailbox = i [] Mailbox
-- {-| <i class="mdi mdi-map"></i> -}
-- map : Html msg
-- map = i [] Map
-- {-| <i class="mdi mdi-map-marker"></i> -}
-- mapMarker : Html msg
-- mapMarker = i [] MapMarker
-- {-| <i class="mdi mdi-map-marker-circle"></i> -}
-- mapMarkerCircle : Html msg
-- mapMarkerCircle = i [] MapMarkerCircle
-- {-| <i class="mdi mdi-map-marker-minus"></i> -}
-- mapMarkerMinus : Html msg
-- mapMarkerMinus = i [] MapMarkerMinus
-- {-| <i class="mdi mdi-map-marker-multiple"></i> -}
-- mapMarkerMultiple : Html msg
-- mapMarkerMultiple = i [] MapMarkerMultiple
-- {-| <i class="mdi mdi-map-marker-off"></i> -}
-- mapMarkerOff : Html msg
-- mapMarkerOff = i [] MapMarkerOff
-- {-| <i class="mdi mdi-map-marker-outline"></i> -}
-- mapMarkerOutline : Html msg
-- mapMarkerOutline = i [] MapMarkerOutline
-- {-| <i class="mdi mdi-map-marker-plus"></i> -}
-- mapMarkerPlus : Html msg
-- mapMarkerPlus = i [] MapMarkerPlus
-- {-| <i class="mdi mdi-map-marker-radius"></i> -}
-- mapMarkerRadius : Html msg
-- mapMarkerRadius = i [] MapMarkerRadius
-- {-| <i class="mdi mdi-margin"></i> -}
-- margin : Html msg
-- margin = i [] Margin
-- {-| <i class="mdi mdi-markdown"></i> -}
-- markdown : Html msg
-- markdown = i [] Markdown
-- {-| <i class="mdi mdi-marker"></i> -}
-- marker : Html msg
-- marker = i [] Marker
-- {-| <i class="mdi mdi-marker-check"></i> -}
-- markerCheck : Html msg
-- markerCheck = i [] MarkerCheck
-- {-| <i class="mdi mdi-martini"></i> -}
-- martini : Html msg
-- martini = i [] Martini
-- {-| <i class="mdi mdi-material-ui"></i> -}
-- materialUi : Html msg
-- materialUi = i [] MaterialUi
-- {-| <i class="mdi mdi-math-compass"></i> -}
-- mathCompass : Html msg
-- mathCompass = i [] MathCompass
-- {-| <i class="mdi mdi-matrix"></i> -}
-- matrix : Html msg
-- matrix = i [] Matrix
-- {-| <i class="mdi mdi-maxcdn"></i> -}
-- maxcdn : Html msg
-- maxcdn = i [] Maxcdn
-- {-| <i class="mdi mdi-medical-bag"></i> -}
-- medicalBag : Html msg
-- medicalBag = i [] MedicalBag
-- {-| <i class="mdi mdi-medium"></i> -}
-- medium : Html msg
-- medium = i [] Medium
-- {-| <i class="mdi mdi-memory"></i> -}
-- memory : Html msg
-- memory = i [] Memory
-- {-| <i class="mdi mdi-menu"></i> -}
-- menu : Html msg
-- menu = i [] Menu
-- {-| <i class="mdi mdi-menu-down"></i> -}
-- menuDown : Html msg
-- menuDown = i [] MenuDown
-- {-| <i class="mdi mdi-menu-down-outline"></i> -}
-- menuDownOutline : Html msg
-- menuDownOutline = i [] MenuDownOutline
-- {-| <i class="mdi mdi-menu-left"></i> -}
-- menuLeft : Html msg
-- menuLeft = i [] MenuLeft
-- {-| <i class="mdi mdi-menu-right"></i> -}
-- menuRight : Html msg
-- menuRight = i [] MenuRight
-- {-| <i class="mdi mdi-menu-up"></i> -}
-- menuUp : Html msg
-- menuUp = i [] MenuUp
-- {-| <i class="mdi mdi-menu-up-outline"></i> -}
-- menuUpOutline : Html msg
-- menuUpOutline = i [] MenuUpOutline
-- {-| <i class="mdi mdi-message"></i> -}
-- message : Html msg
-- message = i [] Message
-- {-| <i class="mdi mdi-message-alert"></i> -}
-- messageAlert : Html msg
-- messageAlert = i [] MessageAlert
-- {-| <i class="mdi mdi-message-bulleted"></i> -}
-- messageBulleted : Html msg
-- messageBulleted = i [] MessageBulleted
-- {-| <i class="mdi mdi-message-bulleted-off"></i> -}
-- messageBulletedOff : Html msg
-- messageBulletedOff = i [] MessageBulletedOff
-- {-| <i class="mdi mdi-message-draw"></i> -}
-- messageDraw : Html msg
-- messageDraw = i [] MessageDraw
-- {-| <i class="mdi mdi-message-image"></i> -}
-- messageImage : Html msg
-- messageImage = i [] MessageImage
-- {-| <i class="mdi mdi-message-outline"></i> -}
-- messageOutline : Html msg
-- messageOutline = i [] MessageOutline
-- {-| <i class="mdi mdi-message-plus"></i> -}
-- messagePlus : Html msg
-- messagePlus = i [] MessagePlus
-- {-| <i class="mdi mdi-message-processing"></i> -}
-- messageProcessing : Html msg
-- messageProcessing = i [] MessageProcessing
-- {-| <i class="mdi mdi-message-reply"></i> -}
-- messageReply : Html msg
-- messageReply = i [] MessageReply
-- {-| <i class="mdi mdi-message-reply-text"></i> -}
-- messageReplyText : Html msg
-- messageReplyText = i [] MessageReplyText
-- {-| <i class="mdi mdi-message-settings"></i> -}
-- messageSettings : Html msg
-- messageSettings = i [] MessageSettings
-- {-| <i class="mdi mdi-message-settings-variant"></i> -}
-- messageSettingsVariant : Html msg
-- messageSettingsVariant = i [] MessageSettingsVariant
-- {-| <i class="mdi mdi-message-text"></i> -}
-- messageText : Html msg
-- messageText = i [] MessageText
-- {-| <i class="mdi mdi-message-text-outline"></i> -}
-- messageTextOutline : Html msg
-- messageTextOutline = i [] MessageTextOutline
-- {-| <i class="mdi mdi-message-video"></i> -}
-- messageVideo : Html msg
-- messageVideo = i [] MessageVideo
-- {-| <i class="mdi mdi-meteor"></i> -}
-- meteor : Html msg
-- meteor = i [] Meteor
-- {-| <i class="mdi mdi-metronome"></i> -}
-- metronome : Html msg
-- metronome = i [] Metronome
-- {-| <i class="mdi mdi-metronome-tick"></i> -}
-- metronomeTick : Html msg
-- metronomeTick = i [] MetronomeTick
-- {-| <i class="mdi mdi-micro-sd"></i> -}
-- microSd : Html msg
-- microSd = i [] MicroSd
-- {-| <i class="mdi mdi-microphone"></i> -}
-- microphone : Html msg
-- microphone = i [] Microphone
-- {-| <i class="mdi mdi-microphone-off"></i> -}
-- microphoneOff : Html msg
-- microphoneOff = i [] MicrophoneOff
-- {-| <i class="mdi mdi-microphone-outline"></i> -}
-- microphoneOutline : Html msg
-- microphoneOutline = i [] MicrophoneOutline
-- {-| <i class="mdi mdi-microphone-settings"></i> -}
-- microphoneSettings : Html msg
-- microphoneSettings = i [] MicrophoneSettings
-- {-| <i class="mdi mdi-microphone-variant"></i> -}
-- microphoneVariant : Html msg
-- microphoneVariant = i [] MicrophoneVariant
-- {-| <i class="mdi mdi-microphone-variant-off"></i> -}
-- microphoneVariantOff : Html msg
-- microphoneVariantOff = i [] MicrophoneVariantOff
-- {-| <i class="mdi mdi-microscope"></i> -}
-- microscope : Html msg
-- microscope = i [] Microscope
-- {-| <i class="mdi mdi-microsoft"></i> -}
-- microsoft : Html msg
-- microsoft = i [] Microsoft
-- {-| <i class="mdi mdi-minecraft"></i> -}
-- minecraft : Html msg
-- minecraft = i [] Minecraft
-- {-| <i class="mdi mdi-minus"></i> -}
-- minus : Html msg
-- minus = i [] Minus
-- {-| <i class="mdi mdi-minus-box"></i> -}
-- minusBox : Html msg
-- minusBox = i [] MinusBox
-- {-| <i class="mdi mdi-minus-box-outline"></i> -}
-- minusBoxOutline : Html msg
-- minusBoxOutline = i [] MinusBoxOutline
-- {-| <i class="mdi mdi-minus-circle"></i> -}
-- minusCircle : Html msg
-- minusCircle = i [] MinusCircle
-- {-| <i class="mdi mdi-minus-circle-outline"></i> -}
-- minusCircleOutline : Html msg
-- minusCircleOutline = i [] MinusCircleOutline
-- {-| <i class="mdi mdi-minus-network"></i> -}
-- minusNetwork : Html msg
-- minusNetwork = i [] MinusNetwork
-- {-| <i class="mdi mdi-mixcloud"></i> -}
-- mixcloud : Html msg
-- mixcloud = i [] Mixcloud
-- {-| <i class="mdi mdi-mixer"></i> -}
-- mixer : Html msg
-- mixer = i [] Mixer
-- {-| <i class="mdi mdi-monitor"></i> -}
-- monitor : Html msg
-- monitor = i [] Monitor
-- {-| <i class="mdi mdi-monitor-multiple"></i> -}
-- monitorMultiple : Html msg
-- monitorMultiple = i [] MonitorMultiple
-- {-| <i class="mdi mdi-more"></i> -}
-- more : Html msg
-- more = i [] More
-- {-| <i class="mdi mdi-motorbike"></i> -}
-- motorbike : Html msg
-- motorbike = i [] Motorbike
-- {-| <i class="mdi mdi-mouse"></i> -}
-- mouse : Html msg
-- mouse = i [] Mouse
-- {-| <i class="mdi mdi-mouse-off"></i> -}
-- mouseOff : Html msg
-- mouseOff = i [] MouseOff
-- {-| <i class="mdi mdi-mouse-variant"></i> -}
-- mouseVariant : Html msg
-- mouseVariant = i [] MouseVariant
-- {-| <i class="mdi mdi-mouse-variant-off"></i> -}
-- mouseVariantOff : Html msg
-- mouseVariantOff = i [] MouseVariantOff
-- {-| <i class="mdi mdi-move-resize"></i> -}
-- moveResize : Html msg
-- moveResize = i [] MoveResize
-- {-| <i class="mdi mdi-move-resize-variant"></i> -}
-- moveResizeVariant : Html msg
-- moveResizeVariant = i [] MoveResizeVariant
-- {-| <i class="mdi mdi-movie"></i> -}
-- movie : Html msg
-- movie = i [] Movie
-- {-| <i class="mdi mdi-movie-roll"></i> -}
-- movieRoll : Html msg
-- movieRoll = i [] MovieRoll
-- {-| <i class="mdi mdi-multiplication"></i> -}
-- multiplication : Html msg
-- multiplication = i [] Multiplication
-- {-| <i class="mdi mdi-multiplication-box"></i> -}
-- multiplicationBox : Html msg
-- multiplicationBox = i [] MultiplicationBox
-- {-| <i class="mdi mdi-mushroom"></i> -}
-- mushroom : Html msg
-- mushroom = i [] Mushroom
-- {-| <i class="mdi mdi-mushroom-outline"></i> -}
-- mushroomOutline : Html msg
-- mushroomOutline = i [] MushroomOutline
-- {-| <i class="mdi mdi-music"></i> -}
-- music : Html msg
-- music = i [] Music
-- {-| <i class="mdi mdi-music-box"></i> -}
-- musicBox : Html msg
-- musicBox = i [] MusicBox
-- {-| <i class="mdi mdi-music-box-outline"></i> -}
-- musicBoxOutline : Html msg
-- musicBoxOutline = i [] MusicBoxOutline
-- {-| <i class="mdi mdi-music-circle"></i> -}
-- musicCircle : Html msg
-- musicCircle = i [] MusicCircle
-- {-| <i class="mdi mdi-music-note"></i> -}
-- musicNote : Html msg
-- musicNote = i [] MusicNote
-- {-| <i class="mdi mdi-music-note-bluetooth"></i> -}
-- musicNoteBluetooth : Html msg
-- musicNoteBluetooth = i [] MusicNoteBluetooth
-- {-| <i class="mdi mdi-music-note-bluetooth-off"></i> -}
-- musicNoteBluetoothOff : Html msg
-- musicNoteBluetoothOff = i [] MusicNoteBluetoothOff
-- {-| <i class="mdi mdi-music-note-eighth"></i> -}
-- musicNoteEighth : Html msg
-- musicNoteEighth = i [] MusicNoteEighth
-- {-| <i class="mdi mdi-music-note-half"></i> -}
-- musicNoteHalf : Html msg
-- musicNoteHalf = i [] MusicNoteHalf
-- {-| <i class="mdi mdi-music-note-off"></i> -}
-- musicNoteOff : Html msg
-- musicNoteOff = i [] MusicNoteOff
-- {-| <i class="mdi mdi-music-note-quarter"></i> -}
-- musicNoteQuarter : Html msg
-- musicNoteQuarter = i [] MusicNoteQuarter
-- {-| <i class="mdi mdi-music-note-sixteenth"></i> -}
-- musicNoteSixteenth : Html msg
-- musicNoteSixteenth = i [] MusicNoteSixteenth
-- {-| <i class="mdi mdi-music-note-whole"></i> -}
-- musicNoteWhole : Html msg
-- musicNoteWhole = i [] MusicNoteWhole
-- {-| <i class="mdi mdi-music-off"></i> -}
-- musicOff : Html msg
-- musicOff = i [] MusicOff
-- {-| <i class="mdi mdi-nature"></i> -}
-- nature : Html msg
-- nature = i [] Nature
-- {-| <i class="mdi mdi-nature-people"></i> -}
-- naturePeople : Html msg
-- naturePeople = i [] NaturePeople
-- {-| <i class="mdi mdi-navigation"></i> -}
-- navigation : Html msg
-- navigation = i [] Navigation
-- {-| <i class="mdi mdi-near-me"></i> -}
-- nearMe : Html msg
-- nearMe = i [] NearMe
-- {-| <i class="mdi mdi-needle"></i> -}
-- needle : Html msg
-- needle = i [] Needle
-- {-| <i class="mdi mdi-nest-protect"></i> -}
-- nestProtect : Html msg
-- nestProtect = i [] NestProtect
-- {-| <i class="mdi mdi-nest-thermostat"></i> -}
-- nestThermostat : Html msg
-- nestThermostat = i [] NestThermostat
-- {-| <i class="mdi mdi-netflix"></i> -}
-- netflix : Html msg
-- netflix = i [] Netflix
-- {-| <i class="mdi mdi-network"></i> -}
-- network : Html msg
-- network = i [] Network
-- {-| <i class="mdi mdi-new-box"></i> -}
-- newBox : Html msg
-- newBox = i [] NewBox
-- {-| <i class="mdi mdi-newspaper"></i> -}
-- newspaper : Html msg
-- newspaper = i [] Newspaper
-- {-| <i class="mdi mdi-nfc"></i> -}
-- nfc : Html msg
-- nfc = i [] Nfc
-- {-| <i class="mdi mdi-nfc-tap"></i> -}
-- nfcTap : Html msg
-- nfcTap = i [] NfcTap
-- {-| <i class="mdi mdi-nfc-variant"></i> -}
-- nfcVariant : Html msg
-- nfcVariant = i [] NfcVariant
-- {-| <i class="mdi mdi-ninja"></i> -}
-- ninja : Html msg
-- ninja = i [] Ninja
-- {-| <i class="mdi mdi-nintendo-switch"></i> -}
-- nintendoSwitch : Html msg
-- nintendoSwitch = i [] NintendoSwitch
-- {-| <i class="mdi mdi-nodejs"></i> -}
-- nodejs : Html msg
-- nodejs = i [] Nodejs
-- {-| <i class="mdi mdi-note"></i> -}
-- note : Html msg
-- note = i [] Note
-- {-| <i class="mdi mdi-note-multiple"></i> -}
-- noteMultiple : Html msg
-- noteMultiple = i [] NoteMultiple
-- {-| <i class="mdi mdi-note-multiple-outline"></i> -}
-- noteMultipleOutline : Html msg
-- noteMultipleOutline = i [] NoteMultipleOutline
-- {-| <i class="mdi mdi-note-outline"></i> -}
-- noteOutline : Html msg
-- noteOutline = i [] NoteOutline
-- {-| <i class="mdi mdi-note-plus"></i> -}
-- notePlus : Html msg
-- notePlus = i [] NotePlus
-- {-| <i class="mdi mdi-note-plus-outline"></i> -}
-- notePlusOutline : Html msg
-- notePlusOutline = i [] NotePlusOutline
-- {-| <i class="mdi mdi-note-text"></i> -}
-- noteText : Html msg
-- noteText = i [] NoteText
-- {-| <i class="mdi mdi-notebook"></i> -}
-- notebook : Html msg
-- notebook = i [] Notebook
-- {-| <i class="mdi mdi-notification-clear-all"></i> -}
-- notificationClearAll : Html msg
-- notificationClearAll = i [] NotificationClearAll
-- {-| <i class="mdi mdi-npm"></i> -}
-- npm : Html msg
-- npm = i [] Npm
-- {-| <i class="mdi mdi-nuke"></i> -}
-- nuke : Html msg
-- nuke = i [] Nuke
-- {-| <i class="mdi mdi-null"></i> -}
-- null : Html msg
-- null = i [] Null
-- {-| <i class="mdi mdi-numeric"></i> -}
-- numeric : Html msg
-- numeric = i [] Numeric
-- {-| <i class="mdi mdi-numeric0-box"></i> -}
-- numeric0Box : Html msg
-- numeric0Box = i [] Numeric0Box
-- {-| <i class="mdi mdi-numeric0-box-multiple-outline"></i> -}
-- numeric0BoxMultipleOutline : Html msg
-- numeric0BoxMultipleOutline = i [] Numeric0BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric0-box-outline"></i> -}
-- numeric0BoxOutline : Html msg
-- numeric0BoxOutline = i [] Numeric0BoxOutline
-- {-| <i class="mdi mdi-numeric1-box"></i> -}
-- numeric1Box : Html msg
-- numeric1Box = i [] Numeric1Box
-- {-| <i class="mdi mdi-numeric1-box-multiple-outline"></i> -}
-- numeric1BoxMultipleOutline : Html msg
-- numeric1BoxMultipleOutline = i [] Numeric1BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric1-box-outline"></i> -}
-- numeric1BoxOutline : Html msg
-- numeric1BoxOutline = i [] Numeric1BoxOutline
-- {-| <i class="mdi mdi-numeric2-box"></i> -}
-- numeric2Box : Html msg
-- numeric2Box = i [] Numeric2Box
-- {-| <i class="mdi mdi-numeric2-box-multiple-outline"></i> -}
-- numeric2BoxMultipleOutline : Html msg
-- numeric2BoxMultipleOutline = i [] Numeric2BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric2-box-outline"></i> -}
-- numeric2BoxOutline : Html msg
-- numeric2BoxOutline = i [] Numeric2BoxOutline
-- {-| <i class="mdi mdi-numeric3-box"></i> -}
-- numeric3Box : Html msg
-- numeric3Box = i [] Numeric3Box
-- {-| <i class="mdi mdi-numeric3-box-multiple-outline"></i> -}
-- numeric3BoxMultipleOutline : Html msg
-- numeric3BoxMultipleOutline = i [] Numeric3BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric3-box-outline"></i> -}
-- numeric3BoxOutline : Html msg
-- numeric3BoxOutline = i [] Numeric3BoxOutline
-- {-| <i class="mdi mdi-numeric4-box"></i> -}
-- numeric4Box : Html msg
-- numeric4Box = i [] Numeric4Box
-- {-| <i class="mdi mdi-numeric4-box-multiple-outline"></i> -}
-- numeric4BoxMultipleOutline : Html msg
-- numeric4BoxMultipleOutline = i [] Numeric4BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric4-box-outline"></i> -}
-- numeric4BoxOutline : Html msg
-- numeric4BoxOutline = i [] Numeric4BoxOutline
-- {-| <i class="mdi mdi-numeric5-box"></i> -}
-- numeric5Box : Html msg
-- numeric5Box = i [] Numeric5Box
-- {-| <i class="mdi mdi-numeric5-box-multiple-outline"></i> -}
-- numeric5BoxMultipleOutline : Html msg
-- numeric5BoxMultipleOutline = i [] Numeric5BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric5-box-outline"></i> -}
-- numeric5BoxOutline : Html msg
-- numeric5BoxOutline = i [] Numeric5BoxOutline
-- {-| <i class="mdi mdi-numeric6-box"></i> -}
-- numeric6Box : Html msg
-- numeric6Box = i [] Numeric6Box
-- {-| <i class="mdi mdi-numeric6-box-multiple-outline"></i> -}
-- numeric6BoxMultipleOutline : Html msg
-- numeric6BoxMultipleOutline = i [] Numeric6BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric6-box-outline"></i> -}
-- numeric6BoxOutline : Html msg
-- numeric6BoxOutline = i [] Numeric6BoxOutline
-- {-| <i class="mdi mdi-numeric7-box"></i> -}
-- numeric7Box : Html msg
-- numeric7Box = i [] Numeric7Box
-- {-| <i class="mdi mdi-numeric7-box-multiple-outline"></i> -}
-- numeric7BoxMultipleOutline : Html msg
-- numeric7BoxMultipleOutline = i [] Numeric7BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric7-box-outline"></i> -}
-- numeric7BoxOutline : Html msg
-- numeric7BoxOutline = i [] Numeric7BoxOutline
-- {-| <i class="mdi mdi-numeric8-box"></i> -}
-- numeric8Box : Html msg
-- numeric8Box = i [] Numeric8Box
-- {-| <i class="mdi mdi-numeric8-box-multiple-outline"></i> -}
-- numeric8BoxMultipleOutline : Html msg
-- numeric8BoxMultipleOutline = i [] Numeric8BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric8-box-outline"></i> -}
-- numeric8BoxOutline : Html msg
-- numeric8BoxOutline = i [] Numeric8BoxOutline
-- {-| <i class="mdi mdi-numeric9-box"></i> -}
-- numeric9Box : Html msg
-- numeric9Box = i [] Numeric9Box
-- {-| <i class="mdi mdi-numeric9-box-multiple-outline"></i> -}
-- numeric9BoxMultipleOutline : Html msg
-- numeric9BoxMultipleOutline = i [] Numeric9BoxMultipleOutline
-- {-| <i class="mdi mdi-numeric9-box-outline"></i> -}
-- numeric9BoxOutline : Html msg
-- numeric9BoxOutline = i [] Numeric9BoxOutline
-- {-| <i class="mdi mdi-numeric9-plus-box"></i> -}
-- numeric9PlusBox : Html msg
-- numeric9PlusBox = i [] Numeric9PlusBox
-- {-| <i class="mdi mdi-numeric9-plus-box-multiple-outline"></i> -}
-- numeric9PlusBoxMultipleOutline : Html msg
-- numeric9PlusBoxMultipleOutline = i [] Numeric9PlusBoxMultipleOutline
-- {-| <i class="mdi mdi-numeric9-plus-box-outline"></i> -}
-- numeric9PlusBoxOutline : Html msg
-- numeric9PlusBoxOutline = i [] Numeric9PlusBoxOutline
-- {-| <i class="mdi mdi-nut"></i> -}
-- nut : Html msg
-- nut = i [] Nut
-- {-| <i class="mdi mdi-nutrition"></i> -}
-- nutrition : Html msg
-- nutrition = i [] Nutrition
-- {-| <i class="mdi mdi-oar"></i> -}
-- oar : Html msg
-- oar = i [] Oar
-- {-| <i class="mdi mdi-octagon"></i> -}
-- octagon : Html msg
-- octagon = i [] Octagon
-- {-| <i class="mdi mdi-octagon-outline"></i> -}
-- octagonOutline : Html msg
-- octagonOutline = i [] OctagonOutline
-- {-| <i class="mdi mdi-octagram"></i> -}
-- octagram : Html msg
-- octagram = i [] Octagram
-- {-| <i class="mdi mdi-octagram-outline"></i> -}
-- octagramOutline : Html msg
-- octagramOutline = i [] OctagramOutline
-- {-| <i class="mdi mdi-odnoklassniki"></i> -}
-- odnoklassniki : Html msg
-- odnoklassniki = i [] Odnoklassniki
-- {-| <i class="mdi mdi-office"></i> -}
-- office : Html msg
-- office = i [] Office
-- {-| <i class="mdi mdi-oil"></i> -}
-- oil : Html msg
-- oil = i [] Oil
-- {-| <i class="mdi mdi-oil-temperature"></i> -}
-- oilTemperature : Html msg
-- oilTemperature = i [] OilTemperature
-- {-| <i class="mdi mdi-omega"></i> -}
-- omega : Html msg
-- omega = i [] Omega
-- {-| <i class="mdi mdi-onedrive"></i> -}
-- onedrive : Html msg
-- onedrive = i [] Onedrive
-- {-| <i class="mdi mdi-onenote"></i> -}
-- onenote : Html msg
-- onenote = i [] Onenote
-- {-| <i class="mdi mdi-opacity"></i> -}
-- opacity : Html msg
-- opacity = i [] Opacity
-- {-| <i class="mdi mdi-open-in-app"></i> -}
-- openInApp : Html msg
-- openInApp = i [] OpenInApp
-- {-| <i class="mdi mdi-open-in-new"></i> -}
-- openInNew : Html msg
-- openInNew = i [] OpenInNew
-- {-| <i class="mdi mdi-openid"></i> -}
-- openid : Html msg
-- openid = i [] Openid
-- {-| <i class="mdi mdi-opera"></i> -}
-- opera : Html msg
-- opera = i [] Opera
-- {-| <i class="mdi mdi-orbit"></i> -}
-- orbit : Html msg
-- orbit = i [] Orbit
-- {-| <i class="mdi mdi-ornament"></i> -}
-- ornament : Html msg
-- ornament = i [] Ornament
-- {-| <i class="mdi mdi-ornament-variant"></i> -}
-- ornamentVariant : Html msg
-- ornamentVariant = i [] OrnamentVariant
-- {-| <i class="mdi mdi-owl"></i> -}
-- owl : Html msg
-- owl = i [] Owl
-- {-| <i class="mdi mdi-package"></i> -}
-- package : Html msg
-- package = i [] Package
-- {-| <i class="mdi mdi-package-down"></i> -}
-- packageDown : Html msg
-- packageDown = i [] PackageDown
-- {-| <i class="mdi mdi-package-up"></i> -}
-- packageUp : Html msg
-- packageUp = i [] PackageUp
-- {-| <i class="mdi mdi-package-variant"></i> -}
-- packageVariant : Html msg
-- packageVariant = i [] PackageVariant
-- {-| <i class="mdi mdi-package-variant-closed"></i> -}
-- packageVariantClosed : Html msg
-- packageVariantClosed = i [] PackageVariantClosed
-- {-| <i class="mdi mdi-page-first"></i> -}
-- pageFirst : Html msg
-- pageFirst = i [] PageFirst
-- {-| <i class="mdi mdi-page-last"></i> -}
-- pageLast : Html msg
-- pageLast = i [] PageLast
-- {-| <i class="mdi mdi-page-layout-body"></i> -}
-- pageLayoutBody : Html msg
-- pageLayoutBody = i [] PageLayoutBody
-- {-| <i class="mdi mdi-page-layout-footer"></i> -}
-- pageLayoutFooter : Html msg
-- pageLayoutFooter = i [] PageLayoutFooter
-- {-| <i class="mdi mdi-page-layout-header"></i> -}
-- pageLayoutHeader : Html msg
-- pageLayoutHeader = i [] PageLayoutHeader
-- {-| <i class="mdi mdi-page-layout-sidebar-left"></i> -}
-- pageLayoutSidebarLeft : Html msg
-- pageLayoutSidebarLeft = i [] PageLayoutSidebarLeft
-- {-| <i class="mdi mdi-page-layout-sidebar-right"></i> -}
-- pageLayoutSidebarRight : Html msg
-- pageLayoutSidebarRight = i [] PageLayoutSidebarRight
-- {-| <i class="mdi mdi-palette"></i> -}
-- palette : Html msg
-- palette = i [] Palette
-- {-| <i class="mdi mdi-palette-advanced"></i> -}
-- paletteAdvanced : Html msg
-- paletteAdvanced = i [] PaletteAdvanced
-- {-| <i class="mdi mdi-panda"></i> -}
-- panda : Html msg
-- panda = i [] Panda
-- {-| <i class="mdi mdi-pandora"></i> -}
-- pandora : Html msg
-- pandora = i [] Pandora
-- {-| <i class="mdi mdi-panorama"></i> -}
-- panorama : Html msg
-- panorama = i [] Panorama
-- {-| <i class="mdi mdi-panorama-fisheye"></i> -}
-- panoramaFisheye : Html msg
-- panoramaFisheye = i [] PanoramaFisheye
-- {-| <i class="mdi mdi-panoram-a"></i> -}
-- panoramA : Html msg
-- panoramA = i [] PanoramA
-- {-| <i class="mdi mdi-panorama-vertical"></i> -}
-- panoramaVertical : Html msg
-- panoramaVertical = i [] PanoramaVertical
-- {-| <i class="mdi mdi-panorama-wide-angle"></i> -}
-- panoramaWideAngle : Html msg
-- panoramaWideAngle = i [] PanoramaWideAngle
-- {-| <i class="mdi mdi-paper-cut-vertical"></i> -}
-- paperCutVertical : Html msg
-- paperCutVertical = i [] PaperCutVertical
-- {-| <i class="mdi mdi-paperclip"></i> -}
-- paperclip : Html msg
-- paperclip = i [] Paperclip
-- {-| <i class="mdi mdi-parking"></i> -}
-- parking : Html msg
-- parking = i [] Parking
-- {-| <i class="mdi mdi-passport"></i> -}
-- passport : Html msg
-- passport = i [] Passport
-- {-| <i class="mdi mdi-pause"></i> -}
-- pause : Html msg
-- pause = i [] Pause
-- {-| <i class="mdi mdi-pause-circle"></i> -}
-- pauseCircle : Html msg
-- pauseCircle = i [] PauseCircle
-- {-| <i class="mdi mdi-pause-circle-outline"></i> -}
-- pauseCircleOutline : Html msg
-- pauseCircleOutline = i [] PauseCircleOutline
-- {-| <i class="mdi mdi-pause-octagon"></i> -}
-- pauseOctagon : Html msg
-- pauseOctagon = i [] PauseOctagon
-- {-| <i class="mdi mdi-pause-octagon-outline"></i> -}
-- pauseOctagonOutline : Html msg
-- pauseOctagonOutline = i [] PauseOctagonOutline
-- {-| <i class="mdi mdi-paw"></i> -}
-- paw : Html msg
-- paw = i [] Paw
-- {-| <i class="mdi mdi-paw-off"></i> -}
-- pawOff : Html msg
-- pawOff = i [] PawOff
-- {-| <i class="mdi mdi-pen"></i> -}
-- pen : Html msg
-- pen = i [] Pen
-- {-| <i class="mdi mdi-pencil"></i> -}
-- pencil : Html msg
-- pencil = i [] Pencil
-- {-| <i class="mdi mdi-pencil-box"></i> -}
-- pencilBox : Html msg
-- pencilBox = i [] PencilBox
-- {-| <i class="mdi mdi-pencil-box-outline"></i> -}
-- pencilBoxOutline : Html msg
-- pencilBoxOutline = i [] PencilBoxOutline
-- {-| <i class="mdi mdi-pencil-circle"></i> -}
-- pencilCircle : Html msg
-- pencilCircle = i [] PencilCircle
-- {-| <i class="mdi mdi-pencil-circle-outline"></i> -}
-- pencilCircleOutline : Html msg
-- pencilCircleOutline = i [] PencilCircleOutline
-- {-| <i class="mdi mdi-pencil-lock"></i> -}
-- pencilLock : Html msg
-- pencilLock = i [] PencilLock
-- {-| <i class="mdi mdi-pencil-off"></i> -}
-- pencilOff : Html msg
-- pencilOff = i [] PencilOff
-- {-| <i class="mdi mdi-pentagon"></i> -}
-- pentagon : Html msg
-- pentagon = i [] Pentagon
-- {-| <i class="mdi mdi-pentagon-outline"></i> -}
-- pentagonOutline : Html msg
-- pentagonOutline = i [] PentagonOutline
-- {-| <i class="mdi mdi-percent"></i> -}
-- percent : Html msg
-- percent = i [] Percent
-- {-| <i class="mdi mdi-periodic-table-co2"></i> -}
-- periodicTableCo2 : Html msg
-- periodicTableCo2 = i [] PeriodicTableCo2
-- {-| <i class="mdi mdi-periscope"></i> -}
-- periscope : Html msg
-- periscope = i [] Periscope
-- {-| <i class="mdi mdi-pharmacy"></i> -}
-- pharmacy : Html msg
-- pharmacy = i [] Pharmacy
-- {-| <i class="mdi mdi-phone"></i> -}
-- phone : Html msg
-- phone = i [] Phone
-- {-| <i class="mdi mdi-phone-bluetooth"></i> -}
-- phoneBluetooth : Html msg
-- phoneBluetooth = i [] PhoneBluetooth
-- {-| <i class="mdi mdi-phone-classic"></i> -}
-- phoneClassic : Html msg
-- phoneClassic = i [] PhoneClassic
-- {-| <i class="mdi mdi-phone-forward"></i> -}
-- phoneForward : Html msg
-- phoneForward = i [] PhoneForward
-- {-| <i class="mdi mdi-phone-hangup"></i> -}
-- phoneHangup : Html msg
-- phoneHangup = i [] PhoneHangup
-- {-| <i class="mdi mdi-phone-in-talk"></i> -}
-- phoneInTalk : Html msg
-- phoneInTalk = i [] PhoneInTalk
-- {-| <i class="mdi mdi-phone-incoming"></i> -}
-- phoneIncoming : Html msg
-- phoneIncoming = i [] PhoneIncoming
-- {-| <i class="mdi mdi-phone-locked"></i> -}
-- phoneLocked : Html msg
-- phoneLocked = i [] PhoneLocked
-- {-| <i class="mdi mdi-phone-log"></i> -}
-- phoneLog : Html msg
-- phoneLog = i [] PhoneLog
-- {-| <i class="mdi mdi-phone-minus"></i> -}
-- phoneMinus : Html msg
-- phoneMinus = i [] PhoneMinus
-- {-| <i class="mdi mdi-phone-missed"></i> -}
-- phoneMissed : Html msg
-- phoneMissed = i [] PhoneMissed
-- {-| <i class="mdi mdi-phone-outgoing"></i> -}
-- phoneOutgoing : Html msg
-- phoneOutgoing = i [] PhoneOutgoing
-- {-| <i class="mdi mdi-phone-paused"></i> -}
-- phonePaused : Html msg
-- phonePaused = i [] PhonePaused
-- {-| <i class="mdi mdi-phone-plus"></i> -}
-- phonePlus : Html msg
-- phonePlus = i [] PhonePlus
-- {-| <i class="mdi mdi-phone-return"></i> -}
-- phoneReturn : Html msg
-- phoneReturn = i [] PhoneReturn
-- {-| <i class="mdi mdi-phone-settings"></i> -}
-- phoneSettings : Html msg
-- phoneSettings = i [] PhoneSettings
-- {-| <i class="mdi mdi-phone-voip"></i> -}
-- phoneVoip : Html msg
-- phoneVoip = i [] PhoneVoip
-- {-| <i class="mdi mdi-pi"></i> -}
-- pi : Html msg
-- pi = i [] Pi
-- {-| <i class="mdi mdi-pi-box"></i> -}
-- piBox : Html msg
-- piBox = i [] PiBox
-- {-| <i class="mdi mdi-piano"></i> -}
-- piano : Html msg
-- piano = i [] Piano
-- {-| <i class="mdi mdi-pig"></i> -}
-- pig : Html msg
-- pig = i [] Pig
-- {-| <i class="mdi mdi-pill"></i> -}
-- pill : Html msg
-- pill = i [] Pill
-- {-| <i class="mdi mdi-pillar"></i> -}
-- pillar : Html msg
-- pillar = i [] Pillar
-- {-| <i class="mdi mdi-pin"></i> -}
-- pin : Html msg
-- pin = i [] Pin
-- {-| <i class="mdi mdi-pin-off"></i> -}
-- pinOff : Html msg
-- pinOff = i [] PinOff
-- {-| <i class="mdi mdi-pine-tree"></i> -}
-- pineTree : Html msg
-- pineTree = i [] PineTree
-- {-| <i class="mdi mdi-pine-tree-box"></i> -}
-- pineTreeBox : Html msg
-- pineTreeBox = i [] PineTreeBox
-- {-| <i class="mdi mdi-pinterest"></i> -}
-- pinterest : Html msg
-- pinterest = i [] Pinterest
-- {-| <i class="mdi mdi-pinterest-box"></i> -}
-- pinterestBox : Html msg
-- pinterestBox = i [] PinterestBox
-- {-| <i class="mdi mdi-pipe"></i> -}
-- pipe : Html msg
-- pipe = i [] Pipe
-- {-| <i class="mdi mdi-pipe-disconnected"></i> -}
-- pipeDisconnected : Html msg
-- pipeDisconnected = i [] PipeDisconnected
-- {-| <i class="mdi mdi-pistol"></i> -}
-- pistol : Html msg
-- pistol = i [] Pistol
-- {-| <i class="mdi mdi-pizza"></i> -}
-- pizza : Html msg
-- pizza = i [] Pizza
-- {-| <i class="mdi mdi-plane-shield"></i> -}
-- planeShield : Html msg
-- planeShield = i [] PlaneShield
-- {-| <i class="mdi mdi-play"></i> -}
-- play : Html msg
-- play = i [] Play
-- {-| <i class="mdi mdi-play-box-outline"></i> -}
-- playBoxOutline : Html msg
-- playBoxOutline = i [] PlayBoxOutline
-- {-| <i class="mdi mdi-play-circle"></i> -}
-- playCircle : Html msg
-- playCircle = i [] PlayCircle
-- {-| <i class="mdi mdi-play-circle-outline"></i> -}
-- playCircleOutline : Html msg
-- playCircleOutline = i [] PlayCircleOutline
-- {-| <i class="mdi mdi-play-pause"></i> -}
-- playPause : Html msg
-- playPause = i [] PlayPause
-- {-| <i class="mdi mdi-play-protected-content"></i> -}
-- playProtectedContent : Html msg
-- playProtectedContent = i [] PlayProtectedContent
-- {-| <i class="mdi mdi-playlist-check"></i> -}
-- playlistCheck : Html msg
-- playlistCheck = i [] PlaylistCheck
-- {-| <i class="mdi mdi-playlist-minus"></i> -}
-- playlistMinus : Html msg
-- playlistMinus = i [] PlaylistMinus
-- {-| <i class="mdi mdi-playlist-play"></i> -}
-- playlistPlay : Html msg
-- playlistPlay = i [] PlaylistPlay
-- {-| <i class="mdi mdi-playlist-plus"></i> -}
-- playlistPlus : Html msg
-- playlistPlus = i [] PlaylistPlus
-- {-| <i class="mdi mdi-playlist-remove"></i> -}
-- playlistRemove : Html msg
-- playlistRemove = i [] PlaylistRemove
-- {-| <i class="mdi mdi-playstation"></i> -}
-- playstation : Html msg
-- playstation = i [] Playstation
-- {-| <i class="mdi mdi-plex"></i> -}
-- plex : Html msg
-- plex = i [] Plex
-- {-| <i class="mdi mdi-plus"></i> -}
-- plus : Html msg
-- plus = i [] Plus
-- {-| <i class="mdi mdi-plus-box"></i> -}
-- plusBox : Html msg
-- plusBox = i [] PlusBox
-- {-| <i class="mdi mdi-plus-box-outline"></i> -}
-- plusBoxOutline : Html msg
-- plusBoxOutline = i [] PlusBoxOutline
-- {-| <i class="mdi mdi-plus-circle"></i> -}
-- plusCircle : Html msg
-- plusCircle = i [] PlusCircle
-- {-| <i class="mdi mdi-plus-circle-multiple-outline"></i> -}
-- plusCircleMultipleOutline : Html msg
-- plusCircleMultipleOutline = i [] PlusCircleMultipleOutline
-- {-| <i class="mdi mdi-plus-circle-outline"></i> -}
-- plusCircleOutline : Html msg
-- plusCircleOutline = i [] PlusCircleOutline
-- {-| <i class="mdi mdi-plus-network"></i> -}
-- plusNetwork : Html msg
-- plusNetwork = i [] PlusNetwork
-- {-| <i class="mdi mdi-plus-one"></i> -}
-- plusOne : Html msg
-- plusOne = i [] PlusOne
-- {-| <i class="mdi mdi-plus-outline"></i> -}
-- plusOutline : Html msg
-- plusOutline = i [] PlusOutline
-- {-| <i class="mdi mdi-pocket"></i> -}
-- pocket : Html msg
-- pocket = i [] Pocket
-- {-| <i class="mdi mdi-pokeball"></i> -}
-- pokeball : Html msg
-- pokeball = i [] Pokeball
-- {-| <i class="mdi mdi-poker-chip"></i> -}
-- pokerChip : Html msg
-- pokerChip = i [] PokerChip
-- {-| <i class="mdi mdi-polaroid"></i> -}
-- polaroid : Html msg
-- polaroid = i [] Polaroid
-- {-| <i class="mdi mdi-poll"></i> -}
-- poll : Html msg
-- poll = i [] Poll
-- {-| <i class="mdi mdi-poll-box"></i> -}
-- pollBox : Html msg
-- pollBox = i [] PollBox
-- {-| <i class="mdi mdi-polymer"></i> -}
-- polymer : Html msg
-- polymer = i [] Polymer
-- {-| <i class="mdi mdi-pool"></i> -}
-- pool : Html msg
-- pool = i [] Pool
-- {-| <i class="mdi mdi-popcorn"></i> -}
-- popcorn : Html msg
-- popcorn = i [] Popcorn
-- {-| <i class="mdi mdi-pot"></i> -}
-- pot : Html msg
-- pot = i [] Pot
-- {-| <i class="mdi mdi-pot-mix"></i> -}
-- potMix : Html msg
-- potMix = i [] PotMix
-- {-| <i class="mdi mdi-pound"></i> -}
-- pound : Html msg
-- pound = i [] Pound
-- {-| <i class="mdi mdi-pound-box"></i> -}
-- poundBox : Html msg
-- poundBox = i [] PoundBox
-- {-| <i class="mdi mdi-power"></i> -}
-- power : Html msg
-- power = i [] Power
-- {-| <i class="mdi mdi-power-plug"></i> -}
-- powerPlug : Html msg
-- powerPlug = i [] PowerPlug
-- {-| <i class="mdi mdi-power-plug-off"></i> -}
-- powerPlugOff : Html msg
-- powerPlugOff = i [] PowerPlugOff
-- {-| <i class="mdi mdi-power-settings"></i> -}
-- powerSettings : Html msg
-- powerSettings = i [] PowerSettings
-- {-| <i class="mdi mdi-power-socket"></i> -}
-- powerSocket : Html msg
-- powerSocket = i [] PowerSocket
-- {-| <i class="mdi mdi-power-socket-eu"></i> -}
-- powerSocketEu : Html msg
-- powerSocketEu = i [] PowerSocketEu
-- {-| <i class="mdi mdi-power-socket-uk"></i> -}
-- powerSocketUk : Html msg
-- powerSocketUk = i [] PowerSocketUk
-- {-| <i class="mdi mdi-power-socket-us"></i> -}
-- powerSocketUs : Html msg
-- powerSocketUs = i [] PowerSocketUs
-- {-| <i class="mdi mdi-prescription"></i> -}
-- prescription : Html msg
-- prescription = i [] Prescription
-- {-| <i class="mdi mdi-presentation"></i> -}
-- presentation : Html msg
-- presentation = i [] Presentation
-- {-| <i class="mdi mdi-presentation-play"></i> -}
-- presentationPlay : Html msg
-- presentationPlay = i [] PresentationPlay
-- {-| <i class="mdi mdi-printer"></i> -}
-- printer : Html msg
-- printer = i [] Printer
-- {-| <i class="mdi mdi-printer3d"></i> -}
-- printer3d : Html msg
-- printer3d = i [] Printer3d
-- {-| <i class="mdi mdi-printer-alert"></i> -}
-- printerAlert : Html msg
-- printerAlert = i [] PrinterAlert
-- {-| <i class="mdi mdi-printer-settings"></i> -}
-- printerSettings : Html msg
-- printerSettings = i [] PrinterSettings
-- {-| <i class="mdi mdi-priority-high"></i> -}
-- priorityHigh : Html msg
-- priorityHigh = i [] PriorityHigh
-- {-| <i class="mdi mdi-priority-low"></i> -}
-- priorityLow : Html msg
-- priorityLow = i [] PriorityLow
-- {-| <i class="mdi mdi-professional-hexagon"></i> -}
-- professionalHexagon : Html msg
-- professionalHexagon = i [] ProfessionalHexagon
-- {-| <i class="mdi mdi-projector"></i> -}
-- projector : Html msg
-- projector = i [] Projector
-- {-| <i class="mdi mdi-projector-screen"></i> -}
-- projectorScreen : Html msg
-- projectorScreen = i [] ProjectorScreen
-- {-| <i class="mdi mdi-publish"></i> -}
-- publish : Html msg
-- publish = i [] Publish
-- {-| <i class="mdi mdi-pulse"></i> -}
-- pulse : Html msg
-- pulse = i [] Pulse
-- {-| <i class="mdi mdi-puzzle"></i> -}
-- puzzle : Html msg
-- puzzle = i [] Puzzle
-- {-| <i class="mdi mdi-qqchat"></i> -}
-- qqchat : Html msg
-- qqchat = i [] Qqchat
-- {-| <i class="mdi mdi-qrcode"></i> -}
-- qrcode : Html msg
-- qrcode = i [] Qrcode
-- {-| <i class="mdi mdi-qrcode-scan"></i> -}
-- qrcodeScan : Html msg
-- qrcodeScan = i [] QrcodeScan
-- {-| <i class="mdi mdi-quadcopter"></i> -}
-- quadcopter : Html msg
-- quadcopter = i [] Quadcopter
-- {-| <i class="mdi mdi-quality-high"></i> -}
-- qualityHigh : Html msg
-- qualityHigh = i [] QualityHigh
-- {-| <i class="mdi mdi-quicktime"></i> -}
-- quicktime : Html msg
-- quicktime = i [] Quicktime
-- {-| <i class="mdi mdi-radar"></i> -}
-- radar : Html msg
-- radar = i [] Radar
-- {-| <i class="mdi mdi-radiator"></i> -}
-- radiator : Html msg
-- radiator = i [] Radiator
-- {-| <i class="mdi mdi-radio"></i> -}
-- radio : Html msg
-- radio = i [] Radio
-- {-| <i class="mdi mdi-radio-handheld"></i> -}
-- radioHandheld : Html msg
-- radioHandheld = i [] RadioHandheld
-- {-| <i class="mdi mdi-radio-tower"></i> -}
-- radioTower : Html msg
-- radioTower = i [] RadioTower
-- {-| <i class="mdi mdi-radioactive"></i> -}
-- radioactive : Html msg
-- radioactive = i [] Radioactive
-- {-| <i class="mdi mdi-radiobox-blank"></i> -}
-- radioboxBlank : Html msg
-- radioboxBlank = i [] RadioboxBlank
-- {-| <i class="mdi mdi-radiobox-marked"></i> -}
-- radioboxMarked : Html msg
-- radioboxMarked = i [] RadioboxMarked
-- {-| <i class="mdi mdi-raspberrypi"></i> -}
-- raspberrypi : Html msg
-- raspberrypi = i [] Raspberrypi
-- {-| <i class="mdi mdi-ray-end"></i> -}
-- rayEnd : Html msg
-- rayEnd = i [] RayEnd
-- {-| <i class="mdi mdi-ray-end-arrow"></i> -}
-- rayEndArrow : Html msg
-- rayEndArrow = i [] RayEndArrow
-- {-| <i class="mdi mdi-ray-start"></i> -}
-- rayStart : Html msg
-- rayStart = i [] RayStart
-- {-| <i class="mdi mdi-ray-start-arrow"></i> -}
-- rayStartArrow : Html msg
-- rayStartArrow = i [] RayStartArrow
-- {-| <i class="mdi mdi-ray-start-end"></i> -}
-- rayStartEnd : Html msg
-- rayStartEnd = i [] RayStartEnd
-- {-| <i class="mdi mdi-ray-vertex"></i> -}
-- rayVertex : Html msg
-- rayVertex = i [] RayVertex
-- {-| <i class="mdi mdi-react"></i> -}
-- react : Html msg
-- react = i [] React
-- {-| <i class="mdi mdi-read"></i> -}
-- read : Html msg
-- read = i [] Read
-- {-| <i class="mdi mdi-receipt"></i> -}
-- receipt : Html msg
-- receipt = i [] Receipt
-- {-| <i class="mdi mdi-record"></i> -}
-- record : Html msg
-- record = i [] Record
-- {-| <i class="mdi mdi-record-rec"></i> -}
-- recordRec : Html msg
-- recordRec = i [] RecordRec
-- {-| <i class="mdi mdi-recycle"></i> -}
-- recycle : Html msg
-- recycle = i [] Recycle
-- {-| <i class="mdi mdi-reddit"></i> -}
-- reddit : Html msg
-- reddit = i [] Reddit
-- {-| <i class="mdi mdi-redo"></i> -}
-- redo : Html msg
-- redo = i [] Redo
-- {-| <i class="mdi mdi-redo-variant"></i> -}
-- redoVariant : Html msg
-- redoVariant = i [] RedoVariant
-- {-| <i class="mdi mdi-refresh"></i> -}
-- refresh : Html msg
-- refresh = i [] Refresh
-- {-| <i class="mdi mdi-regex"></i> -}
-- regex : Html msg
-- regex = i [] Regex
-- {-| <i class="mdi mdi-relative-scale"></i> -}
-- relativeScale : Html msg
-- relativeScale = i [] RelativeScale
-- {-| <i class="mdi mdi-reload"></i> -}
-- reload : Html msg
-- reload = i [] Reload
-- {-| <i class="mdi mdi-remote"></i> -}
-- remote : Html msg
-- remote = i [] Remote
-- {-| <i class="mdi mdi-rename-box"></i> -}
-- renameBox : Html msg
-- renameBox = i [] RenameBox
-- {-| <i class="mdi mdi-reorde-r"></i> -}
-- reordeR : Html msg
-- reordeR = i [] ReordeR
-- {-| <i class="mdi mdi-reorder-vertical"></i> -}
-- reorderVertical : Html msg
-- reorderVertical = i [] ReorderVertical
-- {-| <i class="mdi mdi-repeat"></i> -}
-- repeat : Html msg
-- repeat = i [] Repeat
-- {-| <i class="mdi mdi-repeat-off"></i> -}
-- repeatOff : Html msg
-- repeatOff = i [] RepeatOff
-- {-| <i class="mdi mdi-repeat-once"></i> -}
-- repeatOnce : Html msg
-- repeatOnce = i [] RepeatOnce
-- {-| <i class="mdi mdi-replay"></i> -}
-- replay : Html msg
-- replay = i [] Replay
-- {-| <i class="mdi mdi-reply"></i> -}
-- reply : Html msg
-- reply = i [] Reply
-- {-| <i class="mdi mdi-reply-all"></i> -}
-- replyAll : Html msg
-- replyAll = i [] ReplyAll
-- {-| <i class="mdi mdi-reproduction"></i> -}
-- reproduction : Html msg
-- reproduction = i [] Reproduction
-- {-| <i class="mdi mdi-resize-bottom-right"></i> -}
-- resizeBottomRight : Html msg
-- resizeBottomRight = i [] ResizeBottomRight
-- {-| <i class="mdi mdi-responsive"></i> -}
-- responsive : Html msg
-- responsive = i [] Responsive
-- {-| <i class="mdi mdi-restart"></i> -}
-- restart : Html msg
-- restart = i [] Restart
-- {-| <i class="mdi mdi-restore"></i> -}
-- restore : Html msg
-- restore = i [] Restore
-- {-| <i class="mdi mdi-rewind"></i> -}
-- rewind : Html msg
-- rewind = i [] Rewind
-- {-| <i class="mdi mdi-rewind-outline"></i> -}
-- rewindOutline : Html msg
-- rewindOutline = i [] RewindOutline
-- {-| <i class="mdi mdi-rhombus"></i> -}
-- rhombus : Html msg
-- rhombus = i [] Rhombus
-- {-| <i class="mdi mdi-rhombus-outline"></i> -}
-- rhombusOutline : Html msg
-- rhombusOutline = i [] RhombusOutline
-- {-| <i class="mdi mdi-ribbon"></i> -}
-- ribbon : Html msg
-- ribbon = i [] Ribbon
-- {-| <i class="mdi mdi-rice"></i> -}
-- rice : Html msg
-- rice = i [] Rice
-- {-| <i class="mdi mdi-ring"></i> -}
-- ring : Html msg
-- ring = i [] Ring
-- {-| <i class="mdi mdi-road"></i> -}
-- road : Html msg
-- road = i [] Road
-- {-| <i class="mdi mdi-road-variant"></i> -}
-- roadVariant : Html msg
-- roadVariant = i [] RoadVariant
-- {-| <i class="mdi mdi-robot"></i> -}
-- robot : Html msg
-- robot = i [] Robot
-- {-| <i class="mdi mdi-rocket"></i> -}
-- rocket : Html msg
-- rocket = i [] Rocket
-- {-| <i class="mdi mdi-roomba"></i> -}
-- roomba : Html msg
-- roomba = i [] Roomba
-- {-| <i class="mdi mdi-rotate3d"></i> -}
-- rotate3d : Html msg
-- rotate3d = i [] Rotate3d
-- {-| <i class="mdi mdi-rotate-left"></i> -}
-- rotateLeft : Html msg
-- rotateLeft = i [] RotateLeft
-- {-| <i class="mdi mdi-rotate-left-variant"></i> -}
-- rotateLeftVariant : Html msg
-- rotateLeftVariant = i [] RotateLeftVariant
-- {-| <i class="mdi mdi-rotate-right"></i> -}
-- rotateRight : Html msg
-- rotateRight = i [] RotateRight
-- {-| <i class="mdi mdi-rotate-right-variant"></i> -}
-- rotateRightVariant : Html msg
-- rotateRightVariant = i [] RotateRightVariant
-- {-| <i class="mdi mdi-rounded-corner"></i> -}
-- roundedCorner : Html msg
-- roundedCorner = i [] RoundedCorner
-- {-| <i class="mdi mdi-router-wireless"></i> -}
-- routerWireless : Html msg
-- routerWireless = i [] RouterWireless
-- {-| <i class="mdi mdi-routes"></i> -}
-- routes : Html msg
-- routes = i [] Routes
-- {-| <i class="mdi mdi-rowing"></i> -}
-- rowing : Html msg
-- rowing = i [] Rowing
-- {-| <i class="mdi mdi-rss"></i> -}
-- rss : Html msg
-- rss = i [] Rss
-- {-| <i class="mdi mdi-rss-box"></i> -}
-- rssBox : Html msg
-- rssBox = i [] RssBox
-- {-| <i class="mdi mdi-ruler"></i> -}
-- ruler : Html msg
-- ruler = i [] Ruler
-- {-| <i class="mdi mdi-run"></i> -}
-- run : Html msg
-- run = i [] Run
-- {-| <i class="mdi mdi-run-fast"></i> -}
-- runFast : Html msg
-- runFast = i [] RunFast
-- {-| <i class="mdi mdi-sale"></i> -}
-- sale : Html msg
-- sale = i [] Sale
-- {-| <i class="mdi mdi-sass"></i> -}
-- sass : Html msg
-- sass = i [] Sass
-- {-| <i class="mdi mdi-satellite"></i> -}
-- satellite : Html msg
-- satellite = i [] Satellite
-- {-| <i class="mdi mdi-satellite-variant"></i> -}
-- satelliteVariant : Html msg
-- satelliteVariant = i [] SatelliteVariant
-- {-| <i class="mdi mdi-saxophone"></i> -}
-- saxophone : Html msg
-- saxophone = i [] Saxophone
-- {-| <i class="mdi mdi-scale"></i> -}
-- scale : Html msg
-- scale = i [] Scale
-- {-| <i class="mdi mdi-scale-balance"></i> -}
-- scaleBalance : Html msg
-- scaleBalance = i [] ScaleBalance
-- {-| <i class="mdi mdi-scale-bathroom"></i> -}
-- scaleBathroom : Html msg
-- scaleBathroom = i [] ScaleBathroom
-- {-| <i class="mdi mdi-scanner"></i> -}
-- scanner : Html msg
-- scanner = i [] Scanner
-- {-| <i class="mdi mdi-school"></i> -}
-- school : Html msg
-- school = i [] School
-- {-| <i class="mdi mdi-screen-rotation"></i> -}
-- screenRotation : Html msg
-- screenRotation = i [] ScreenRotation
-- {-| <i class="mdi mdi-screen-rotation-lock"></i> -}
-- screenRotationLock : Html msg
-- screenRotationLock = i [] ScreenRotationLock
-- {-| <i class="mdi mdi-screwdriver"></i> -}
-- screwdriver : Html msg
-- screwdriver = i [] Screwdriver
-- {-| <i class="mdi mdi-script"></i> -}
-- script : Html msg
-- script = i [] Script
-- {-| <i class="mdi mdi-sd"></i> -}
-- sd : Html msg
-- sd = i [] Sd
-- {-| <i class="mdi mdi-seal"></i> -}
-- seal : Html msg
-- seal = i [] Seal
-- {-| <i class="mdi mdi-search-web"></i> -}
-- searchWeb : Html msg
-- searchWeb = i [] SearchWeb
-- {-| <i class="mdi mdi-seat-flat"></i> -}
-- seatFlat : Html msg
-- seatFlat = i [] SeatFlat
-- {-| <i class="mdi mdi-seat-flat-angled"></i> -}
-- seatFlatAngled : Html msg
-- seatFlatAngled = i [] SeatFlatAngled
-- {-| <i class="mdi mdi-seat-individual-suite"></i> -}
-- seatIndividualSuite : Html msg
-- seatIndividualSuite = i [] SeatIndividualSuite
-- {-| <i class="mdi mdi-seat-legroom-extra"></i> -}
-- seatLegroomExtra : Html msg
-- seatLegroomExtra = i [] SeatLegroomExtra
-- {-| <i class="mdi mdi-seat-legroom-normal"></i> -}
-- seatLegroomNormal : Html msg
-- seatLegroomNormal = i [] SeatLegroomNormal
-- {-| <i class="mdi mdi-seat-legroom-reduced"></i> -}
-- seatLegroomReduced : Html msg
-- seatLegroomReduced = i [] SeatLegroomReduced
-- {-| <i class="mdi mdi-seat-recline-extra"></i> -}
-- seatReclineExtra : Html msg
-- seatReclineExtra = i [] SeatReclineExtra
-- {-| <i class="mdi mdi-seat-recline-normal"></i> -}
-- seatReclineNormal : Html msg
-- seatReclineNormal = i [] SeatReclineNormal
-- {-| <i class="mdi mdi-security"></i> -}
-- security : Html msg
-- security = i [] Security
-- {-| <i class="mdi mdi-security-home"></i> -}
-- securityHome : Html msg
-- securityHome = i [] SecurityHome
-- {-| <i class="mdi mdi-security-network"></i> -}
-- securityNetwork : Html msg
-- securityNetwork = i [] SecurityNetwork
-- {-| <i class="mdi mdi-select"></i> -}
-- select : Html msg
-- select = i [] Select
-- {-| <i class="mdi mdi-select-all"></i> -}
-- selectAll : Html msg
-- selectAll = i [] SelectAll
-- {-| <i class="mdi mdi-select-inverse"></i> -}
-- selectInverse : Html msg
-- selectInverse = i [] SelectInverse
-- {-| <i class="mdi mdi-select-off"></i> -}
-- selectOff : Html msg
-- selectOff = i [] SelectOff
-- {-| <i class="mdi mdi-selection"></i> -}
-- selection : Html msg
-- selection = i [] Selection
-- {-| <i class="mdi mdi-selection-off"></i> -}
-- selectionOff : Html msg
-- selectionOff = i [] SelectionOff
-- {-| <i class="mdi mdi-send"></i> -}
-- send : Html msg
-- send = i [] Send
-- {-| <i class="mdi mdi-send-secure"></i> -}
-- sendSecure : Html msg
-- sendSecure = i [] SendSecure
-- {-| <i class="mdi mdi-serial-port"></i> -}
-- serialPort : Html msg
-- serialPort = i [] SerialPort
-- {-| <i class="mdi mdi-server"></i> -}
-- server : Html msg
-- server = i [] Server
-- {-| <i class="mdi mdi-server-minus"></i> -}
-- serverMinus : Html msg
-- serverMinus = i [] ServerMinus
-- {-| <i class="mdi mdi-server-network"></i> -}
-- serverNetwork : Html msg
-- serverNetwork = i [] ServerNetwork
-- {-| <i class="mdi mdi-server-network-off"></i> -}
-- serverNetworkOff : Html msg
-- serverNetworkOff = i [] ServerNetworkOff
-- {-| <i class="mdi mdi-server-off"></i> -}
-- serverOff : Html msg
-- serverOff = i [] ServerOff
-- {-| <i class="mdi mdi-server-plus"></i> -}
-- serverPlus : Html msg
-- serverPlus = i [] ServerPlus
-- {-| <i class="mdi mdi-server-remove"></i> -}
-- serverRemove : Html msg
-- serverRemove = i [] ServerRemove
-- {-| <i class="mdi mdi-server-security"></i> -}
-- serverSecurity : Html msg
-- serverSecurity = i [] ServerSecurity
-- {-| <i class="mdi mdi-set-all"></i> -}
-- setAll : Html msg
-- setAll = i [] SetAll
-- {-| <i class="mdi mdi-set-center"></i> -}
-- setCenter : Html msg
-- setCenter = i [] SetCenter
-- {-| <i class="mdi mdi-set-center-right"></i> -}
-- setCenterRight : Html msg
-- setCenterRight = i [] SetCenterRight
-- {-| <i class="mdi mdi-set-left"></i> -}
-- setLeft : Html msg
-- setLeft = i [] SetLeft
-- {-| <i class="mdi mdi-set-left-center"></i> -}
-- setLeftCenter : Html msg
-- setLeftCenter = i [] SetLeftCenter
-- {-| <i class="mdi mdi-set-left-right"></i> -}
-- setLeftRight : Html msg
-- setLeftRight = i [] SetLeftRight
-- {-| <i class="mdi mdi-set-none"></i> -}
-- setNone : Html msg
-- setNone = i [] SetNone
-- {-| <i class="mdi mdi-set-right"></i> -}
-- setRight : Html msg
-- setRight = i [] SetRight
-- {-| <i class="mdi mdi-settings"></i> -}
-- settings : Html msg
-- settings = i [] Settings
-- {-| <i class="mdi mdi-settings-box"></i> -}
-- settingsBox : Html msg
-- settingsBox = i [] SettingsBox
-- {-| <i class="mdi mdi-shape"></i> -}
-- shape : Html msg
-- shape = i [] Shape
-- {-| <i class="mdi mdi-shape-circle-plus"></i> -}
-- shapeCirclePlus : Html msg
-- shapeCirclePlus = i [] ShapeCirclePlus
-- {-| <i class="mdi mdi-shape-outline"></i> -}
-- shapeOutline : Html msg
-- shapeOutline = i [] ShapeOutline
-- {-| <i class="mdi mdi-shape-plus"></i> -}
-- shapePlus : Html msg
-- shapePlus = i [] ShapePlus
-- {-| <i class="mdi mdi-shape-polygon-plus"></i> -}
-- shapePolygonPlus : Html msg
-- shapePolygonPlus = i [] ShapePolygonPlus
-- {-| <i class="mdi mdi-shape-rectangle-plus"></i> -}
-- shapeRectanglePlus : Html msg
-- shapeRectanglePlus = i [] ShapeRectanglePlus
-- {-| <i class="mdi mdi-shape-square-plus"></i> -}
-- shapeSquarePlus : Html msg
-- shapeSquarePlus = i [] ShapeSquarePlus
-- {-| <i class="mdi mdi-share"></i> -}
-- share : Html msg
-- share = i [] Share
-- {-| <i class="mdi mdi-share-variant"></i> -}
-- shareVariant : Html msg
-- shareVariant = i [] ShareVariant
-- {-| <i class="mdi mdi-shield"></i> -}
-- shield : Html msg
-- shield = i [] Shield
-- {-| <i class="mdi mdi-shield-half-full"></i> -}
-- shieldHalfFull : Html msg
-- shieldHalfFull = i [] ShieldHalfFull
-- {-| <i class="mdi mdi-shield-outline"></i> -}
-- shieldOutline : Html msg
-- shieldOutline = i [] ShieldOutline
-- {-| <i class="mdi mdi-ship-wheel"></i> -}
-- shipWheel : Html msg
-- shipWheel = i [] ShipWheel
-- {-| <i class="mdi mdi-shopping"></i> -}
-- shopping : Html msg
-- shopping = i [] Shopping
-- {-| <i class="mdi mdi-shopping-music"></i> -}
-- shoppingMusic : Html msg
-- shoppingMusic = i [] ShoppingMusic
-- {-| <i class="mdi mdi-shovel"></i> -}
-- shovel : Html msg
-- shovel = i [] Shovel
-- {-| <i class="mdi mdi-shovel-off"></i> -}
-- shovelOff : Html msg
-- shovelOff = i [] ShovelOff
-- {-| <i class="mdi mdi-shredder"></i> -}
-- shredder : Html msg
-- shredder = i [] Shredder
-- {-| <i class="mdi mdi-shuffle"></i> -}
-- shuffle : Html msg
-- shuffle = i [] Shuffle
-- {-| <i class="mdi mdi-shuffle-disabled"></i> -}
-- shuffleDisabled : Html msg
-- shuffleDisabled = i [] ShuffleDisabled
-- {-| <i class="mdi mdi-shuffle-variant"></i> -}
-- shuffleVariant : Html msg
-- shuffleVariant = i [] ShuffleVariant
-- {-| <i class="mdi mdi-sigma"></i> -}
-- sigma : Html msg
-- sigma = i [] Sigma
-- {-| <i class="mdi mdi-sigma-lower"></i> -}
-- sigmaLower : Html msg
-- sigmaLower = i [] SigmaLower
-- {-| <i class="mdi mdi-sign-caution"></i> -}
-- signCaution : Html msg
-- signCaution = i [] SignCaution
-- {-| <i class="mdi mdi-sign-direction"></i> -}
-- signDirection : Html msg
-- signDirection = i [] SignDirection
-- {-| <i class="mdi mdi-sign-text"></i> -}
-- signText : Html msg
-- signText = i [] SignText
-- {-| <i class="mdi mdi-signal"></i> -}
-- signal : Html msg
-- signal = i [] Signal
-- {-| <i class="mdi mdi-signal2g"></i> -}
-- signal2g : Html msg
-- signal2g = i [] Signal2g
-- {-| <i class="mdi mdi-signal3g"></i> -}
-- signal3g : Html msg
-- signal3g = i [] Signal3g
-- {-| <i class="mdi mdi-signal4g"></i> -}
-- signal4g : Html msg
-- signal4g = i [] Signal4g
-- {-| <i class="mdi mdi-signal-hspa"></i> -}
-- signalHspa : Html msg
-- signalHspa = i [] SignalHspa
-- {-| <i class="mdi mdi-signal-hspa-plus"></i> -}
-- signalHspaPlus : Html msg
-- signalHspaPlus = i [] SignalHspaPlus
-- {-| <i class="mdi mdi-signal-off"></i> -}
-- signalOff : Html msg
-- signalOff = i [] SignalOff
-- {-| <i class="mdi mdi-signal-variant"></i> -}
-- signalVariant : Html msg
-- signalVariant = i [] SignalVariant
-- {-| <i class="mdi mdi-silverware"></i> -}
-- silverware : Html msg
-- silverware = i [] Silverware
-- {-| <i class="mdi mdi-silverware-fork"></i> -}
-- silverwareFork : Html msg
-- silverwareFork = i [] SilverwareFork
-- {-| <i class="mdi mdi-silverware-spoon"></i> -}
-- silverwareSpoon : Html msg
-- silverwareSpoon = i [] SilverwareSpoon
-- {-| <i class="mdi mdi-silverware-variant"></i> -}
-- silverwareVariant : Html msg
-- silverwareVariant = i [] SilverwareVariant
-- {-| <i class="mdi mdi-sim"></i> -}
-- sim : Html msg
-- sim = i [] Sim
-- {-| <i class="mdi mdi-sim-alert"></i> -}
-- simAlert : Html msg
-- simAlert = i [] SimAlert
-- {-| <i class="mdi mdi-sim-off"></i> -}
-- simOff : Html msg
-- simOff = i [] SimOff
-- {-| <i class="mdi mdi-sitemap"></i> -}
-- sitemap : Html msg
-- sitemap = i [] Sitemap
-- {-| <i class="mdi mdi-skip-backward"></i> -}
-- skipBackward : Html msg
-- skipBackward = i [] SkipBackward
-- {-| <i class="mdi mdi-skip-forward"></i> -}
-- skipForward : Html msg
-- skipForward = i [] SkipForward
-- {-| <i class="mdi mdi-skip-next"></i> -}
-- skipNext : Html msg
-- skipNext = i [] SkipNext
-- {-| <i class="mdi mdi-skip-next-circle"></i> -}
-- skipNextCircle : Html msg
-- skipNextCircle = i [] SkipNextCircle
-- {-| <i class="mdi mdi-skip-next-circle-outline"></i> -}
-- skipNextCircleOutline : Html msg
-- skipNextCircleOutline = i [] SkipNextCircleOutline
-- {-| <i class="mdi mdi-skip-previous"></i> -}
-- skipPrevious : Html msg
-- skipPrevious = i [] SkipPrevious
-- {-| <i class="mdi mdi-skip-previous-circle"></i> -}
-- skipPreviousCircle : Html msg
-- skipPreviousCircle = i [] SkipPreviousCircle
-- {-| <i class="mdi mdi-skip-previous-circle-outline"></i> -}
-- skipPreviousCircleOutline : Html msg
-- skipPreviousCircleOutline = i [] SkipPreviousCircleOutline
-- {-| <i class="mdi mdi-skull"></i> -}
-- skull : Html msg
-- skull = i [] Skull
-- {-| <i class="mdi mdi-skype"></i> -}
-- skype : Html msg
-- skype = i [] Skype
-- {-| <i class="mdi mdi-skype-business"></i> -}
-- skypeBusiness : Html msg
-- skypeBusiness = i [] SkypeBusiness
-- {-| <i class="mdi mdi-slack"></i> -}
-- slack : Html msg
-- slack = i [] Slack
-- {-| <i class="mdi mdi-sleep"></i> -}
-- sleep : Html msg
-- sleep = i [] Sleep
-- {-| <i class="mdi mdi-sleep-off"></i> -}
-- sleepOff : Html msg
-- sleepOff = i [] SleepOff
-- {-| <i class="mdi mdi-smoking"></i> -}
-- smoking : Html msg
-- smoking = i [] Smoking
-- {-| <i class="mdi mdi-smoking-off"></i> -}
-- smokingOff : Html msg
-- smokingOff = i [] SmokingOff
-- {-| <i class="mdi mdi-snapchat"></i> -}
-- snapchat : Html msg
-- snapchat = i [] Snapchat
-- {-| <i class="mdi mdi-snowflake"></i> -}
-- snowflake : Html msg
-- snowflake = i [] Snowflake
-- {-| <i class="mdi mdi-snowman"></i> -}
-- snowman : Html msg
-- snowman = i [] Snowman
-- {-| <i class="mdi mdi-soccer"></i> -}
-- soccer : Html msg
-- soccer = i [] Soccer
-- {-| <i class="mdi mdi-soccer-field"></i> -}
-- soccerField : Html msg
-- soccerField = i [] SoccerField
-- {-| <i class="mdi mdi-sofa"></i> -}
-- sofa : Html msg
-- sofa = i [] Sofa
-- {-| <i class="mdi mdi-solid"></i> -}
-- solid : Html msg
-- solid = i [] Solid
-- {-| <i class="mdi mdi-sort"></i> -}
-- sort : Html msg
-- sort = i [] Sort
-- {-| <i class="mdi mdi-sort-alphabetical"></i> -}
-- sortAlphabetical : Html msg
-- sortAlphabetical = i [] SortAlphabetical
-- {-| <i class="mdi mdi-sort-ascending"></i> -}
-- sortAscending : Html msg
-- sortAscending = i [] SortAscending
-- {-| <i class="mdi mdi-sort-descending"></i> -}
-- sortDescending : Html msg
-- sortDescending = i [] SortDescending
-- {-| <i class="mdi mdi-sort-numeric"></i> -}
-- sortNumeric : Html msg
-- sortNumeric = i [] SortNumeric
-- {-| <i class="mdi mdi-sort-variant"></i> -}
-- sortVariant : Html msg
-- sortVariant = i [] SortVariant
-- {-| <i class="mdi mdi-soundcloud"></i> -}
-- soundcloud : Html msg
-- soundcloud = i [] Soundcloud
-- {-| <i class="mdi mdi-source-branch"></i> -}
-- sourceBranch : Html msg
-- sourceBranch = i [] SourceBranch
-- {-| <i class="mdi mdi-source-commit"></i> -}
-- sourceCommit : Html msg
-- sourceCommit = i [] SourceCommit
-- {-| <i class="mdi mdi-source-commit-end"></i> -}
-- sourceCommitEnd : Html msg
-- sourceCommitEnd = i [] SourceCommitEnd
-- {-| <i class="mdi mdi-source-commit-end-local"></i> -}
-- sourceCommitEndLocal : Html msg
-- sourceCommitEndLocal = i [] SourceCommitEndLocal
-- {-| <i class="mdi mdi-source-commit-local"></i> -}
-- sourceCommitLocal : Html msg
-- sourceCommitLocal = i [] SourceCommitLocal
-- {-| <i class="mdi mdi-source-commit-next-local"></i> -}
-- sourceCommitNextLocal : Html msg
-- sourceCommitNextLocal = i [] SourceCommitNextLocal
-- {-| <i class="mdi mdi-source-commit-start"></i> -}
-- sourceCommitStart : Html msg
-- sourceCommitStart = i [] SourceCommitStart
-- {-| <i class="mdi mdi-source-commit-start-next-local"></i> -}
-- sourceCommitStartNextLocal : Html msg
-- sourceCommitStartNextLocal = i [] SourceCommitStartNextLocal
-- {-| <i class="mdi mdi-source-fork"></i> -}
-- sourceFork : Html msg
-- sourceFork = i [] SourceFork
-- {-| <i class="mdi mdi-source-merge"></i> -}
-- sourceMerge : Html msg
-- sourceMerge = i [] SourceMerge
-- {-| <i class="mdi mdi-source-pull"></i> -}
-- sourcePull : Html msg
-- sourcePull = i [] SourcePull
-- {-| <i class="mdi mdi-soy-sauce"></i> -}
-- soySauce : Html msg
-- soySauce = i [] SoySauce
-- {-| <i class="mdi mdi-speaker"></i> -}
-- speaker : Html msg
-- speaker = i [] Speaker
-- {-| <i class="mdi mdi-speaker-off"></i> -}
-- speakerOff : Html msg
-- speakerOff = i [] SpeakerOff
-- {-| <i class="mdi mdi-speaker-wireless"></i> -}
-- speakerWireless : Html msg
-- speakerWireless = i [] SpeakerWireless
-- {-| <i class="mdi mdi-speedometer"></i> -}
-- speedometer : Html msg
-- speedometer = i [] Speedometer
-- {-| <i class="mdi mdi-spellcheck"></i> -}
-- spellcheck : Html msg
-- spellcheck = i [] Spellcheck
-- {-| <i class="mdi mdi-spotify"></i> -}
-- spotify : Html msg
-- spotify = i [] Spotify
-- {-| <i class="mdi mdi-spotlight"></i> -}
-- spotlight : Html msg
-- spotlight = i [] Spotlight
-- {-| <i class="mdi mdi-spotlight-beam"></i> -}
-- spotlightBeam : Html msg
-- spotlightBeam = i [] SpotlightBeam
-- {-| <i class="mdi mdi-spray"></i> -}
-- spray : Html msg
-- spray = i [] Spray
-- {-| <i class="mdi mdi-square"></i> -}
-- square : Html msg
-- square = i [] Square
-- {-| <i class="mdi mdi-square-inc"></i> -}
-- squareInc : Html msg
-- squareInc = i [] SquareInc
-- {-| <i class="mdi mdi-square-inc-cash"></i> -}
-- squareIncCash : Html msg
-- squareIncCash = i [] SquareIncCash
-- {-| <i class="mdi mdi-square-outline"></i> -}
-- squareOutline : Html msg
-- squareOutline = i [] SquareOutline
-- {-| <i class="mdi mdi-square-root"></i> -}
-- squareRoot : Html msg
-- squareRoot = i [] SquareRoot
-- {-| <i class="mdi mdi-stack-overflow"></i> -}
-- stackOverflow : Html msg
-- stackOverflow = i [] StackOverflow
-- {-| <i class="mdi mdi-stackexchange"></i> -}
-- stackexchange : Html msg
-- stackexchange = i [] Stackexchange
-- {-| <i class="mdi mdi-stadium"></i> -}
-- stadium : Html msg
-- stadium = i [] Stadium
-- {-| <i class="mdi mdi-stairs"></i> -}
-- stairs : Html msg
-- stairs = i [] Stairs
-- {-| <i class="mdi mdi-standard-definition"></i> -}
-- standardDefinition : Html msg
-- standardDefinition = i [] StandardDefinition
-- {-| <i class="mdi mdi-star"></i> -}
-- star : Html msg
-- star = i [] Star
-- {-| <i class="mdi mdi-star-circle"></i> -}
-- starCircle : Html msg
-- starCircle = i [] StarCircle
-- {-| <i class="mdi mdi-star-half"></i> -}
-- starHalf : Html msg
-- starHalf = i [] StarHalf
-- {-| <i class="mdi mdi-star-off"></i> -}
-- starOff : Html msg
-- starOff = i [] StarOff
-- {-| <i class="mdi mdi-star-outline"></i> -}
-- starOutline : Html msg
-- starOutline = i [] StarOutline
-- {-| <i class="mdi mdi-steam"></i> -}
-- steam : Html msg
-- steam = i [] Steam
-- {-| <i class="mdi mdi-steering"></i> -}
-- steering : Html msg
-- steering = i [] Steering
-- {-| <i class="mdi mdi-step-backward"></i> -}
-- stepBackward : Html msg
-- stepBackward = i [] StepBackward
-- {-| <i class="mdi mdi-step-backward2"></i> -}
-- stepBackward2 : Html msg
-- stepBackward2 = i [] StepBackward2
-- {-| <i class="mdi mdi-step-forward"></i> -}
-- stepForward : Html msg
-- stepForward = i [] StepForward
-- {-| <i class="mdi mdi-step-forward2"></i> -}
-- stepForward2 : Html msg
-- stepForward2 = i [] StepForward2
-- {-| <i class="mdi mdi-stethoscope"></i> -}
-- stethoscope : Html msg
-- stethoscope = i [] Stethoscope
-- {-| <i class="mdi mdi-sticker"></i> -}
-- sticker : Html msg
-- sticker = i [] Sticker
-- {-| <i class="mdi mdi-sticker-emoji"></i> -}
-- stickerEmoji : Html msg
-- stickerEmoji = i [] StickerEmoji
-- {-| <i class="mdi mdi-stocking"></i> -}
-- stocking : Html msg
-- stocking = i [] Stocking
-- {-| <i class="mdi mdi-stop"></i> -}
-- stop : Html msg
-- stop = i [] Stop
-- {-| <i class="mdi mdi-stop-circle"></i> -}
-- stopCircle : Html msg
-- stopCircle = i [] StopCircle
-- {-| <i class="mdi mdi-stop-circle-outline"></i> -}
-- stopCircleOutline : Html msg
-- stopCircleOutline = i [] StopCircleOutline
-- {-| <i class="mdi mdi-store"></i> -}
-- store : Html msg
-- store = i [] Store
-- {-| <i class="mdi mdi-store24-hour"></i> -}
-- store24Hour : Html msg
-- store24Hour = i [] Store24Hour
-- {-| <i class="mdi mdi-stove"></i> -}
-- stove : Html msg
-- stove = i [] Stove
-- {-| <i class="mdi mdi-subdirectory-arrow-left"></i> -}
-- subdirectoryArrowLeft : Html msg
-- subdirectoryArrowLeft = i [] SubdirectoryArrowLeft
-- {-| <i class="mdi mdi-subdirectory-arrow-right"></i> -}
-- subdirectoryArrowRight : Html msg
-- subdirectoryArrowRight = i [] SubdirectoryArrowRight
-- {-| <i class="mdi mdi-subway"></i> -}
-- subway : Html msg
-- subway = i [] Subway
-- {-| <i class="mdi mdi-subway-variant"></i> -}
-- subwayVariant : Html msg
-- subwayVariant = i [] SubwayVariant
-- {-| <i class="mdi mdi-summit"></i> -}
-- summit : Html msg
-- summit = i [] Summit
-- {-| <i class="mdi mdi-sunglasses"></i> -}
-- sunglasses : Html msg
-- sunglasses = i [] Sunglasses
-- {-| <i class="mdi mdi-surround-sound"></i> -}
-- surroundSound : Html msg
-- surroundSound = i [] SurroundSound
-- {-| <i class="mdi mdi-surround-sound20"></i> -}
-- surroundSound20 : Html msg
-- surroundSound20 = i [] SurroundSound20
-- {-| <i class="mdi mdi-surround-sound31"></i> -}
-- surroundSound31 : Html msg
-- surroundSound31 = i [] SurroundSound31
-- {-| <i class="mdi mdi-surround-sound51"></i> -}
-- surroundSound51 : Html msg
-- surroundSound51 = i [] SurroundSound51
-- {-| <i class="mdi mdi-surround-sound71"></i> -}
-- surroundSound71 : Html msg
-- surroundSound71 = i [] SurroundSound71
-- {-| <i class="mdi mdi-svg"></i> -}
-- svg : Html msg
-- svg = i [] Svg
-- {-| <i class="mdi mdi-swa-p"></i> -}
-- swaP : Html msg
-- swaP = i [] SwaP
-- {-| <i class="mdi mdi-swap-vertical"></i> -}
-- swapVertical : Html msg
-- swapVertical = i [] SwapVertical
-- {-| <i class="mdi mdi-swim"></i> -}
-- swim : Html msg
-- swim = i [] Swim
-- {-| <i class="mdi mdi-switch"></i> -}
-- switch : Html msg
-- switch = i [] Switch
-- {-| <i class="mdi mdi-sword"></i> -}
-- sword : Html msg
-- sword = i [] Sword
-- {-| <i class="mdi mdi-sword-cross"></i> -}
-- swordCross : Html msg
-- swordCross = i [] SwordCross
-- {-| <i class="mdi mdi-sync"></i> -}
-- sync : Html msg
-- sync = i [] Sync
-- {-| <i class="mdi mdi-sync-alert"></i> -}
-- syncAlert : Html msg
-- syncAlert = i [] SyncAlert
-- {-| <i class="mdi mdi-sync-off"></i> -}
-- syncOff : Html msg
-- syncOff = i [] SyncOff
-- {-| <i class="mdi mdi-tab"></i> -}
-- tab : Html msg
-- tab = i [] Tab
-- {-| <i class="mdi mdi-tab-plus"></i> -}
-- tabPlus : Html msg
-- tabPlus = i [] TabPlus
-- {-| <i class="mdi mdi-tab-unselected"></i> -}
-- tabUnselected : Html msg
-- tabUnselected = i [] TabUnselected
-- {-| <i class="mdi mdi-table"></i> -}
-- table : Html msg
-- table = i [] Table
-- {-| <i class="mdi mdi-table-column"></i> -}
-- tableColumn : Html msg
-- tableColumn = i [] TableColumn
-- {-| <i class="mdi mdi-table-column-plus-after"></i> -}
-- tableColumnPlusAfter : Html msg
-- tableColumnPlusAfter = i [] TableColumnPlusAfter
-- {-| <i class="mdi mdi-table-column-plus-before"></i> -}
-- tableColumnPlusBefore : Html msg
-- tableColumnPlusBefore = i [] TableColumnPlusBefore
-- {-| <i class="mdi mdi-table-column-remove"></i> -}
-- tableColumnRemove : Html msg
-- tableColumnRemove = i [] TableColumnRemove
-- {-| <i class="mdi mdi-table-column-width"></i> -}
-- tableColumnWidth : Html msg
-- tableColumnWidth = i [] TableColumnWidth
-- {-| <i class="mdi mdi-table-edit"></i> -}
-- tableEdit : Html msg
-- tableEdit = i [] TableEdit
-- {-| <i class="mdi mdi-table-large"></i> -}
-- tableLarge : Html msg
-- tableLarge = i [] TableLarge
-- {-| <i class="mdi mdi-table-of-contents"></i> -}
-- tableOfContents : Html msg
-- tableOfContents = i [] TableOfContents
-- {-| <i class="mdi mdi-table-row"></i> -}
-- tableRow : Html msg
-- tableRow = i [] TableRow
-- {-| <i class="mdi mdi-table-row-height"></i> -}
-- tableRowHeight : Html msg
-- tableRowHeight = i [] TableRowHeight
-- {-| <i class="mdi mdi-table-row-plus-after"></i> -}
-- tableRowPlusAfter : Html msg
-- tableRowPlusAfter = i [] TableRowPlusAfter
-- {-| <i class="mdi mdi-table-row-plus-before"></i> -}
-- tableRowPlusBefore : Html msg
-- tableRowPlusBefore = i [] TableRowPlusBefore
-- {-| <i class="mdi mdi-table-row-remove"></i> -}
-- tableRowRemove : Html msg
-- tableRowRemove = i [] TableRowRemove
-- {-| <i class="mdi mdi-table-settings"></i> -}
-- tableSettings : Html msg
-- tableSettings = i [] TableSettings
-- {-| <i class="mdi mdi-tablet"></i> -}
-- tablet : Html msg
-- tablet = i [] Tablet
-- {-| <i class="mdi mdi-tablet-android"></i> -}
-- tabletAndroid : Html msg
-- tabletAndroid = i [] TabletAndroid
-- {-| <i class="mdi mdi-tablet-ipad"></i> -}
-- tabletIpad : Html msg
-- tabletIpad = i [] TabletIpad
-- {-| <i class="mdi mdi-taco"></i> -}
-- taco : Html msg
-- taco = i [] Taco
-- {-| <i class="mdi mdi-tag"></i> -}
-- tag : Html msg
-- tag = i [] Tag
-- {-| <i class="mdi mdi-tag-faces"></i> -}
-- tagFaces : Html msg
-- tagFaces = i [] TagFaces
-- {-| <i class="mdi mdi-tag-heart"></i> -}
-- tagHeart : Html msg
-- tagHeart = i [] TagHeart
-- {-| <i class="mdi mdi-tag-multiple"></i> -}
-- tagMultiple : Html msg
-- tagMultiple = i [] TagMultiple
-- {-| <i class="mdi mdi-tag-outline"></i> -}
-- tagOutline : Html msg
-- tagOutline = i [] TagOutline
-- {-| <i class="mdi mdi-tag-plus"></i> -}
-- tagPlus : Html msg
-- tagPlus = i [] TagPlus
-- {-| <i class="mdi mdi-tag-remove"></i> -}
-- tagRemove : Html msg
-- tagRemove = i [] TagRemove
-- {-| <i class="mdi mdi-tag-text-outline"></i> -}
-- tagTextOutline : Html msg
-- tagTextOutline = i [] TagTextOutline
-- {-| <i class="mdi mdi-target"></i> -}
-- target : Html msg
-- target = i [] Target
-- {-| <i class="mdi mdi-taxi"></i> -}
-- taxi : Html msg
-- taxi = i [] Taxi
-- {-| <i class="mdi mdi-teamviewer"></i> -}
-- teamviewer : Html msg
-- teamviewer = i [] Teamviewer
-- {-| <i class="mdi mdi-telegram"></i> -}
-- telegram : Html msg
-- telegram = i [] Telegram
-- {-| <i class="mdi mdi-television"></i> -}
-- television : Html msg
-- television = i [] Television
-- {-| <i class="mdi mdi-television-box"></i> -}
-- televisionBox : Html msg
-- televisionBox = i [] TelevisionBox
-- {-| <i class="mdi mdi-television-classic"></i> -}
-- televisionClassic : Html msg
-- televisionClassic = i [] TelevisionClassic
-- {-| <i class="mdi mdi-television-classic-off"></i> -}
-- televisionClassicOff : Html msg
-- televisionClassicOff = i [] TelevisionClassicOff
-- {-| <i class="mdi mdi-television-guide"></i> -}
-- televisionGuide : Html msg
-- televisionGuide = i [] TelevisionGuide
-- {-| <i class="mdi mdi-television-off"></i> -}
-- televisionOff : Html msg
-- televisionOff = i [] TelevisionOff
-- {-| <i class="mdi mdi-temperature-celsius"></i> -}
-- temperatureCelsius : Html msg
-- temperatureCelsius = i [] TemperatureCelsius
-- {-| <i class="mdi mdi-temperature-fahrenheit"></i> -}
-- temperatureFahrenheit : Html msg
-- temperatureFahrenheit = i [] TemperatureFahrenheit
-- {-| <i class="mdi mdi-temperature-kelvin"></i> -}
-- temperatureKelvin : Html msg
-- temperatureKelvin = i [] TemperatureKelvin
-- {-| <i class="mdi mdi-tennis"></i> -}
-- tennis : Html msg
-- tennis = i [] Tennis
-- {-| <i class="mdi mdi-tent"></i> -}
-- tent : Html msg
-- tent = i [] Tent
-- {-| <i class="mdi mdi-terrain"></i> -}
-- terrain : Html msg
-- terrain = i [] Terrain
-- {-| <i class="mdi mdi-test-tube"></i> -}
-- testTube : Html msg
-- testTube = i [] TestTube
-- {-| <i class="mdi mdi-text-shadow"></i> -}
-- textShadow : Html msg
-- textShadow = i [] TextShadow
-- {-| <i class="mdi mdi-text-to-speech"></i> -}
-- textToSpeech : Html msg
-- textToSpeech = i [] TextToSpeech
-- {-| <i class="mdi mdi-text-to-speech-off"></i> -}
-- textToSpeechOff : Html msg
-- textToSpeechOff = i [] TextToSpeechOff
-- {-| <i class="mdi mdi-textbox"></i> -}
-- textbox : Html msg
-- textbox = i [] Textbox
-- {-| <i class="mdi mdi-textbox-password"></i> -}
-- textboxPassword : Html msg
-- textboxPassword = i [] TextboxPassword
-- {-| <i class="mdi mdi-texture"></i> -}
-- texture : Html msg
-- texture = i [] Texture
-- {-| <i class="mdi mdi-theater"></i> -}
-- theater : Html msg
-- theater = i [] Theater
-- {-| <i class="mdi mdi-theme-light-dark"></i> -}
-- themeLightDark : Html msg
-- themeLightDark = i [] ThemeLightDark
-- {-| <i class="mdi mdi-thermometer"></i> -}
-- thermometer : Html msg
-- thermometer = i [] Thermometer
-- {-| <i class="mdi mdi-thermometer-lines"></i> -}
-- thermometerLines : Html msg
-- thermometerLines = i [] ThermometerLines
-- {-| <i class="mdi mdi-thought-bubble"></i> -}
-- thoughtBubble : Html msg
-- thoughtBubble = i [] ThoughtBubble
-- {-| <i class="mdi mdi-thought-bubble-outline"></i> -}
-- thoughtBubbleOutline : Html msg
-- thoughtBubbleOutline = i [] ThoughtBubbleOutline
-- {-| <i class="mdi mdi-thumb-down"></i> -}
-- thumbDown : Html msg
-- thumbDown = i [] ThumbDown
-- {-| <i class="mdi mdi-thumb-down-outline"></i> -}
-- thumbDownOutline : Html msg
-- thumbDownOutline = i [] ThumbDownOutline
-- {-| <i class="mdi mdi-thumb-up"></i> -}
-- thumbUp : Html msg
-- thumbUp = i [] ThumbUp
-- {-| <i class="mdi mdi-thumb-up-outline"></i> -}
-- thumbUpOutline : Html msg
-- thumbUpOutline = i [] ThumbUpOutline
-- {-| <i class="mdi mdi-thumbs-up-down"></i> -}
-- thumbsUpDown : Html msg
-- thumbsUpDown = i [] ThumbsUpDown
-- {-| <i class="mdi mdi-ticket"></i> -}
-- ticket : Html msg
-- ticket = i [] Ticket
-- {-| <i class="mdi mdi-ticket-account"></i> -}
-- ticketAccount : Html msg
-- ticketAccount = i [] TicketAccount
-- {-| <i class="mdi mdi-ticket-confirmation"></i> -}
-- ticketConfirmation : Html msg
-- ticketConfirmation = i [] TicketConfirmation
-- {-| <i class="mdi mdi-ticket-percent"></i> -}
-- ticketPercent : Html msg
-- ticketPercent = i [] TicketPercent
-- {-| <i class="mdi mdi-tie"></i> -}
-- tie : Html msg
-- tie = i [] Tie
-- {-| <i class="mdi mdi-tilde"></i> -}
-- tilde : Html msg
-- tilde = i [] Tilde
-- {-| <i class="mdi mdi-timelapse"></i> -}
-- timelapse : Html msg
-- timelapse = i [] Timelapse
-- {-| <i class="mdi mdi-timer"></i> -}
-- timer : Html msg
-- timer = i [] Timer
-- {-| <i class="mdi mdi-timer10"></i> -}
-- timer10 : Html msg
-- timer10 = i [] Timer10
-- {-| <i class="mdi mdi-timer3"></i> -}
-- timer3 : Html msg
-- timer3 = i [] Timer3
-- {-| <i class="mdi mdi-timer-off"></i> -}
-- timerOff : Html msg
-- timerOff = i [] TimerOff
-- {-| <i class="mdi mdi-timer-sand"></i> -}
-- timerSand : Html msg
-- timerSand = i [] TimerSand
-- {-| <i class="mdi mdi-timer-sand-empty"></i> -}
-- timerSandEmpty : Html msg
-- timerSandEmpty = i [] TimerSandEmpty
-- {-| <i class="mdi mdi-timer-sand-full"></i> -}
-- timerSandFull : Html msg
-- timerSandFull = i [] TimerSandFull
-- {-| <i class="mdi mdi-timetable"></i> -}
-- timetable : Html msg
-- timetable = i [] Timetable
-- {-| <i class="mdi mdi-toggle-switch"></i> -}
-- toggleSwitch : Html msg
-- toggleSwitch = i [] ToggleSwitch
-- {-| <i class="mdi mdi-toggle-switch-off"></i> -}
-- toggleSwitchOff : Html msg
-- toggleSwitchOff = i [] ToggleSwitchOff
-- {-| <i class="mdi mdi-tooltip"></i> -}
-- tooltip : Html msg
-- tooltip = i [] Tooltip
-- {-| <i class="mdi mdi-tooltip-edit"></i> -}
-- tooltipEdit : Html msg
-- tooltipEdit = i [] TooltipEdit
-- {-| <i class="mdi mdi-tooltip-image"></i> -}
-- tooltipImage : Html msg
-- tooltipImage = i [] TooltipImage
-- {-| <i class="mdi mdi-tooltip-outline"></i> -}
-- tooltipOutline : Html msg
-- tooltipOutline = i [] TooltipOutline
-- {-| <i class="mdi mdi-tooltip-outline-plus"></i> -}
-- tooltipOutlinePlus : Html msg
-- tooltipOutlinePlus = i [] TooltipOutlinePlus
-- {-| <i class="mdi mdi-tooltip-text"></i> -}
-- tooltipText : Html msg
-- tooltipText = i [] TooltipText
-- {-| <i class="mdi mdi-tooth"></i> -}
-- tooth : Html msg
-- tooth = i [] Tooth
-- {-| <i class="mdi mdi-tor"></i> -}
-- tor : Html msg
-- tor = i [] Tor
-- {-| <i class="mdi mdi-tower-beach"></i> -}
-- towerBeach : Html msg
-- towerBeach = i [] TowerBeach
-- {-| <i class="mdi mdi-tower-fire"></i> -}
-- towerFire : Html msg
-- towerFire = i [] TowerFire
-- {-| <i class="mdi mdi-towing"></i> -}
-- towing : Html msg
-- towing = i [] Towing
-- {-| <i class="mdi mdi-trackpad"></i> -}
-- trackpad : Html msg
-- trackpad = i [] Trackpad
-- {-| <i class="mdi mdi-traffic-light"></i> -}
-- trafficLight : Html msg
-- trafficLight = i [] TrafficLight
-- {-| <i class="mdi mdi-train"></i> -}
-- train : Html msg
-- train = i [] Train
-- {-| <i class="mdi mdi-tram"></i> -}
-- tram : Html msg
-- tram = i [] Tram
-- {-| <i class="mdi mdi-transcribe"></i> -}
-- transcribe : Html msg
-- transcribe = i [] Transcribe
-- {-| <i class="mdi mdi-transcribe-close"></i> -}
-- transcribeClose : Html msg
-- transcribeClose = i [] TranscribeClose
-- {-| <i class="mdi mdi-transfer"></i> -}
-- transfer : Html msg
-- transfer = i [] Transfer
-- {-| <i class="mdi mdi-transit-transfer"></i> -}
-- transitTransfer : Html msg
-- transitTransfer = i [] TransitTransfer
-- {-| <i class="mdi mdi-translate"></i> -}
-- translate : Html msg
-- translate = i [] Translate
-- {-| <i class="mdi mdi-treasure-chest"></i> -}
-- treasureChest : Html msg
-- treasureChest = i [] TreasureChest
-- {-| <i class="mdi mdi-tree"></i> -}
-- tree : Html msg
-- tree = i [] Tree
-- {-| <i class="mdi mdi-trello"></i> -}
-- trello : Html msg
-- trello = i [] Trello
-- {-| <i class="mdi mdi-trending-down"></i> -}
-- trendingDown : Html msg
-- trendingDown = i [] TrendingDown
-- {-| <i class="mdi mdi-trending-neutral"></i> -}
-- trendingNeutral : Html msg
-- trendingNeutral = i [] TrendingNeutral
-- {-| <i class="mdi mdi-trending-up"></i> -}
-- trendingUp : Html msg
-- trendingUp = i [] TrendingUp
-- {-| <i class="mdi mdi-triangle"></i> -}
-- triangle : Html msg
-- triangle = i [] Triangle
-- {-| <i class="mdi mdi-triangle-outline"></i> -}
-- triangleOutline : Html msg
-- triangleOutline = i [] TriangleOutline
-- {-| <i class="mdi mdi-trophy"></i> -}
-- trophy : Html msg
-- trophy = i [] Trophy
-- {-| <i class="mdi mdi-trophy-award"></i> -}
-- trophyAward : Html msg
-- trophyAward = i [] TrophyAward
-- {-| <i class="mdi mdi-trophy-outline"></i> -}
-- trophyOutline : Html msg
-- trophyOutline = i [] TrophyOutline
-- {-| <i class="mdi mdi-trophy-variant"></i> -}
-- trophyVariant : Html msg
-- trophyVariant = i [] TrophyVariant
-- {-| <i class="mdi mdi-trophy-variant-outline"></i> -}
-- trophyVariantOutline : Html msg
-- trophyVariantOutline = i [] TrophyVariantOutline
-- {-| <i class="mdi mdi-truck"></i> -}
-- truck : Html msg
-- truck = i [] Truck
-- {-| <i class="mdi mdi-truck-delivery"></i> -}
-- truckDelivery : Html msg
-- truckDelivery = i [] TruckDelivery
-- {-| <i class="mdi mdi-truck-fast"></i> -}
-- truckFast : Html msg
-- truckFast = i [] TruckFast
-- {-| <i class="mdi mdi-truck-trailer"></i> -}
-- truckTrailer : Html msg
-- truckTrailer = i [] TruckTrailer
-- {-| <i class="mdi mdi-tshirt-crew"></i> -}
-- tshirtCrew : Html msg
-- tshirtCrew = i [] TshirtCrew
-- {-| <i class="mdi mdi-tshirt-v"></i> -}
-- tshirtV : Html msg
-- tshirtV = i [] TshirtV
-- {-| <i class="mdi mdi-tumblr"></i> -}
-- tumblr : Html msg
-- tumblr = i [] Tumblr
-- {-| <i class="mdi mdi-tumblr-reblog"></i> -}
-- tumblrReblog : Html msg
-- tumblrReblog = i [] TumblrReblog
-- {-| <i class="mdi mdi-tune"></i> -}
-- tune : Html msg
-- tune = i [] Tune
-- {-| <i class="mdi mdi-tune-vertical"></i> -}
-- tuneVertical : Html msg
-- tuneVertical = i [] TuneVertical
-- {-| <i class="mdi mdi-twitch"></i> -}
-- twitch : Html msg
-- twitch = i [] Twitch
-- {-| <i class="mdi mdi-twitter"></i> -}
-- twitter : Html msg
-- twitter = i [] Twitter
-- {-| <i class="mdi mdi-twitter-box"></i> -}
-- twitterBox : Html msg
-- twitterBox = i [] TwitterBox
-- {-| <i class="mdi mdi-twitter-circle"></i> -}
-- twitterCircle : Html msg
-- twitterCircle = i [] TwitterCircle
-- {-| <i class="mdi mdi-twitter-retweet"></i> -}
-- twitterRetweet : Html msg
-- twitterRetweet = i [] TwitterRetweet
-- {-| <i class="mdi mdi-uber"></i> -}
-- uber : Html msg
-- uber = i [] Uber
-- {-| <i class="mdi mdi-ubuntu"></i> -}
-- ubuntu : Html msg
-- ubuntu = i [] Ubuntu
-- {-| <i class="mdi mdi-ultra-high-definition"></i> -}
-- ultraHighDefinition : Html msg
-- ultraHighDefinition = i [] UltraHighDefinition
-- {-| <i class="mdi mdi-umbraco"></i> -}
-- umbraco : Html msg
-- umbraco = i [] Umbraco
-- {-| <i class="mdi mdi-umbrella"></i> -}
-- umbrella : Html msg
-- umbrella = i [] Umbrella
-- {-| <i class="mdi mdi-umbrella-outline"></i> -}
-- umbrellaOutline : Html msg
-- umbrellaOutline = i [] UmbrellaOutline
-- {-| <i class="mdi mdi-undo"></i> -}
-- undo : Html msg
-- undo = i [] Undo
-- {-| <i class="mdi mdi-undo-variant"></i> -}
-- undoVariant : Html msg
-- undoVariant = i [] UndoVariant
-- {-| <i class="mdi mdi-unfold-les-s"></i> -}
-- unfoldLesS : Html msg
-- unfoldLesS = i [] UnfoldLesS
-- {-| <i class="mdi mdi-unfold-less-vertical"></i> -}
-- unfoldLessVertical : Html msg
-- unfoldLessVertical = i [] UnfoldLessVertical
-- {-| <i class="mdi mdi-unfold-mor-e"></i> -}
-- unfoldMorE : Html msg
-- unfoldMorE = i [] UnfoldMorE
-- {-| <i class="mdi mdi-unfold-more-vertical"></i> -}
-- unfoldMoreVertical : Html msg
-- unfoldMoreVertical = i [] UnfoldMoreVertical
-- {-| <i class="mdi mdi-ungroup"></i> -}
-- ungroup : Html msg
-- ungroup = i [] Ungroup
-- {-| <i class="mdi mdi-unity"></i> -}
-- unity : Html msg
-- unity = i [] Unity
-- {-| <i class="mdi mdi-untappd"></i> -}
-- untappd : Html msg
-- untappd = i [] Untappd
-- {-| <i class="mdi mdi-update"></i> -}
-- update : Html msg
-- update = i [] Update
-- {-| <i class="mdi mdi-upload"></i> -}
-- upload : Html msg
-- upload = i [] Upload
-- {-| <i class="mdi mdi-upload-multiple"></i> -}
-- uploadMultiple : Html msg
-- uploadMultiple = i [] UploadMultiple
-- {-| <i class="mdi mdi-upload-network"></i> -}
-- uploadNetwork : Html msg
-- uploadNetwork = i [] UploadNetwork
-- {-| <i class="mdi mdi-usb"></i> -}
-- usb : Html msg
-- usb = i [] Usb
-- {-| <i class="mdi mdi-van-passenger"></i> -}
-- vanPassenger : Html msg
-- vanPassenger = i [] VanPassenger
-- {-| <i class="mdi mdi-van-utility"></i> -}
-- vanUtility : Html msg
-- vanUtility = i [] VanUtility
-- {-| <i class="mdi mdi-vanish"></i> -}
-- vanish : Html msg
-- vanish = i [] Vanish
-- {-| <i class="mdi mdi-vector-arrange-above"></i> -}
-- vectorArrangeAbove : Html msg
-- vectorArrangeAbove = i [] VectorArrangeAbove
-- {-| <i class="mdi mdi-vector-arrange-below"></i> -}
-- vectorArrangeBelow : Html msg
-- vectorArrangeBelow = i [] VectorArrangeBelow
-- {-| <i class="mdi mdi-vector-circle"></i> -}
-- vectorCircle : Html msg
-- vectorCircle = i [] VectorCircle
-- {-| <i class="mdi mdi-vector-circle-variant"></i> -}
-- vectorCircleVariant : Html msg
-- vectorCircleVariant = i [] VectorCircleVariant
-- {-| <i class="mdi mdi-vector-combine"></i> -}
-- vectorCombine : Html msg
-- vectorCombine = i [] VectorCombine
-- {-| <i class="mdi mdi-vector-curve"></i> -}
-- vectorCurve : Html msg
-- vectorCurve = i [] VectorCurve
-- {-| <i class="mdi mdi-vector-difference"></i> -}
-- vectorDifference : Html msg
-- vectorDifference = i [] VectorDifference
-- {-| <i class="mdi mdi-vector-difference-ab"></i> -}
-- vectorDifferenceAb : Html msg
-- vectorDifferenceAb = i [] VectorDifferenceAb
-- {-| <i class="mdi mdi-vector-difference-ba"></i> -}
-- vectorDifferenceBa : Html msg
-- vectorDifferenceBa = i [] VectorDifferenceBa
-- {-| <i class="mdi mdi-vector-intersection"></i> -}
-- vectorIntersection : Html msg
-- vectorIntersection = i [] VectorIntersection
-- {-| <i class="mdi mdi-vector-line"></i> -}
-- vectorLine : Html msg
-- vectorLine = i [] VectorLine
-- {-| <i class="mdi mdi-vector-point"></i> -}
-- vectorPoint : Html msg
-- vectorPoint = i [] VectorPoint
-- {-| <i class="mdi mdi-vector-polygon"></i> -}
-- vectorPolygon : Html msg
-- vectorPolygon = i [] VectorPolygon
-- {-| <i class="mdi mdi-vector-polyline"></i> -}
-- vectorPolyline : Html msg
-- vectorPolyline = i [] VectorPolyline
-- {-| <i class="mdi mdi-vector-radius"></i> -}
-- vectorRadius : Html msg
-- vectorRadius = i [] VectorRadius
-- {-| <i class="mdi mdi-vector-rectangle"></i> -}
-- vectorRectangle : Html msg
-- vectorRectangle = i [] VectorRectangle
-- {-| <i class="mdi mdi-vector-selection"></i> -}
-- vectorSelection : Html msg
-- vectorSelection = i [] VectorSelection
-- {-| <i class="mdi mdi-vector-square"></i> -}
-- vectorSquare : Html msg
-- vectorSquare = i [] VectorSquare
-- {-| <i class="mdi mdi-vector-triangle"></i> -}
-- vectorTriangle : Html msg
-- vectorTriangle = i [] VectorTriangle
-- {-| <i class="mdi mdi-vector-union"></i> -}
-- vectorUnion : Html msg
-- vectorUnion = i [] VectorUnion
-- {-| <i class="mdi mdi-venmo"></i> -}
-- venmo : Html msg
-- venmo = i [] Venmo
-- {-| <i class="mdi mdi-verified"></i> -}
-- verified : Html msg
-- verified = i [] Verified
-- {-| <i class="mdi mdi-vibrate"></i> -}
-- vibrate : Html msg
-- vibrate = i [] Vibrate
-- {-| <i class="mdi mdi-video"></i> -}
-- video : Html msg
-- video = i [] Video
-- {-| <i class="mdi mdi-video3d"></i> -}
-- video3d : Html msg
-- video3d = i [] Video3d
-- {-| <i class="mdi mdi-video4k-box"></i> -}
-- video4kBox : Html msg
-- video4kBox = i [] Video4kBox
-- {-| <i class="mdi mdi-video-input-antenna"></i> -}
-- videoInputAntenna : Html msg
-- videoInputAntenna = i [] VideoInputAntenna
-- {-| <i class="mdi mdi-video-input-component"></i> -}
-- videoInputComponent : Html msg
-- videoInputComponent = i [] VideoInputComponent
-- {-| <i class="mdi mdi-video-input-hdmi"></i> -}
-- videoInputHdmi : Html msg
-- videoInputHdmi = i [] VideoInputHdmi
-- {-| <i class="mdi mdi-video-input-svideo"></i> -}
-- videoInputSvideo : Html msg
-- videoInputSvideo = i [] VideoInputSvideo
-- {-| <i class="mdi mdi-video-off"></i> -}
-- videoOff : Html msg
-- videoOff = i [] VideoOff
-- {-| <i class="mdi mdi-video-switch"></i> -}
-- videoSwitch : Html msg
-- videoSwitch = i [] VideoSwitch
-- {-| <i class="mdi mdi-view-agenda"></i> -}
-- viewAgenda : Html msg
-- viewAgenda = i [] ViewAgenda
-- {-| <i class="mdi mdi-view-array"></i> -}
-- viewArray : Html msg
-- viewArray = i [] ViewArray
-- {-| <i class="mdi mdi-view-carousel"></i> -}
-- viewCarousel : Html msg
-- viewCarousel = i [] ViewCarousel
-- {-| <i class="mdi mdi-view-column"></i> -}
-- viewColumn : Html msg
-- viewColumn = i [] ViewColumn
-- {-| <i class="mdi mdi-view-dashboard"></i> -}
-- viewDashboard : Html msg
-- viewDashboard = i [] ViewDashboard
-- {-| <i class="mdi mdi-view-dashboard-variant"></i> -}
-- viewDashboardVariant : Html msg
-- viewDashboardVariant = i [] ViewDashboardVariant
-- {-| <i class="mdi mdi-view-day"></i> -}
-- viewDay : Html msg
-- viewDay = i [] ViewDay
-- {-| <i class="mdi mdi-view-grid"></i> -}
-- viewGrid : Html msg
-- viewGrid = i [] ViewGrid
-- {-| <i class="mdi mdi-view-headline"></i> -}
-- viewHeadline : Html msg
-- viewHeadline = i [] ViewHeadline
-- {-| <i class="mdi mdi-view-list"></i> -}
-- viewList : Html msg
-- viewList = i [] ViewList
-- {-| <i class="mdi mdi-view-module"></i> -}
-- viewModule : Html msg
-- viewModule = i [] ViewModule
-- {-| <i class="mdi mdi-view-parallel"></i> -}
-- viewParallel : Html msg
-- viewParallel = i [] ViewParallel
-- {-| <i class="mdi mdi-view-quilt"></i> -}
-- viewQuilt : Html msg
-- viewQuilt = i [] ViewQuilt
-- {-| <i class="mdi mdi-view-sequential"></i> -}
-- viewSequential : Html msg
-- viewSequential = i [] ViewSequential
-- {-| <i class="mdi mdi-view-stream"></i> -}
-- viewStream : Html msg
-- viewStream = i [] ViewStream
-- {-| <i class="mdi mdi-view-week"></i> -}
-- viewWeek : Html msg
-- viewWeek = i [] ViewWeek
-- {-| <i class="mdi mdi-vimeo"></i> -}
-- vimeo : Html msg
-- vimeo = i [] Vimeo
-- {-| <i class="mdi mdi-violin"></i> -}
-- violin : Html msg
-- violin = i [] Violin
-- {-| <i class="mdi mdi-visualstudio"></i> -}
-- visualstudio : Html msg
-- visualstudio = i [] Visualstudio
-- {-| <i class="mdi mdi-vk"></i> -}
-- vk : Html msg
-- vk = i [] Vk
-- {-| <i class="mdi mdi-vk-box"></i> -}
-- vkBox : Html msg
-- vkBox = i [] VkBox
-- {-| <i class="mdi mdi-vk-circle"></i> -}
-- vkCircle : Html msg
-- vkCircle = i [] VkCircle
-- {-| <i class="mdi mdi-vlc"></i> -}
-- vlc : Html msg
-- vlc = i [] Vlc
-- {-| <i class="mdi mdi-voice"></i> -}
-- voice : Html msg
-- voice = i [] Voice
-- {-| <i class="mdi mdi-voicemail"></i> -}
-- voicemail : Html msg
-- voicemail = i [] Voicemail
-- {-| <i class="mdi mdi-volume-high"></i> -}
-- volumeHigh : Html msg
-- volumeHigh = i [] VolumeHigh
-- {-| <i class="mdi mdi-volume-low"></i> -}
-- volumeLow : Html msg
-- volumeLow = i [] VolumeLow
-- {-| <i class="mdi mdi-volume-medium"></i> -}
-- volumeMedium : Html msg
-- volumeMedium = i [] VolumeMedium
-- {-| <i class="mdi mdi-volume-minus"></i> -}
-- volumeMinus : Html msg
-- volumeMinus = i [] VolumeMinus
-- {-| <i class="mdi mdi-volume-mute"></i> -}
-- volumeMute : Html msg
-- volumeMute = i [] VolumeMute
-- {-| <i class="mdi mdi-volume-off"></i> -}
-- volumeOff : Html msg
-- volumeOff = i [] VolumeOff
-- {-| <i class="mdi mdi-volume-plus"></i> -}
-- volumePlus : Html msg
-- volumePlus = i [] VolumePlus
-- {-| <i class="mdi mdi-vpn"></i> -}
-- vpn : Html msg
-- vpn = i [] Vpn
-- {-| <i class="mdi mdi-vuejs"></i> -}
-- vuejs : Html msg
-- vuejs = i [] Vuejs
-- {-| <i class="mdi mdi-walk"></i> -}
-- walk : Html msg
-- walk = i [] Walk
-- {-| <i class="mdi mdi-wall"></i> -}
-- wall : Html msg
-- wall = i [] Wall
-- {-| <i class="mdi mdi-wallet"></i> -}
-- wallet : Html msg
-- wallet = i [] Wallet
-- {-| <i class="mdi mdi-wallet-giftcard"></i> -}
-- walletGiftcard : Html msg
-- walletGiftcard = i [] WalletGiftcard
-- {-| <i class="mdi mdi-wallet-membership"></i> -}
-- walletMembership : Html msg
-- walletMembership = i [] WalletMembership
-- {-| <i class="mdi mdi-wallet-travel"></i> -}
-- walletTravel : Html msg
-- walletTravel = i [] WalletTravel
-- {-| <i class="mdi mdi-wan"></i> -}
-- wan : Html msg
-- wan = i [] Wan
-- {-| <i class="mdi mdi-washing-machine"></i> -}
-- washingMachine : Html msg
-- washingMachine = i [] WashingMachine
-- {-| <i class="mdi mdi-watch"></i> -}
-- watch : Html msg
-- watch = i [] Watch
-- {-| <i class="mdi mdi-watch-export"></i> -}
-- watchExport : Html msg
-- watchExport = i [] WatchExport
-- {-| <i class="mdi mdi-watch-import"></i> -}
-- watchImport : Html msg
-- watchImport = i [] WatchImport
-- {-| <i class="mdi mdi-watch-vibrate"></i> -}
-- watchVibrate : Html msg
-- watchVibrate = i [] WatchVibrate
-- {-| <i class="mdi mdi-water"></i> -}
-- water : Html msg
-- water = i [] Water
-- {-| <i class="mdi mdi-water-off"></i> -}
-- waterOff : Html msg
-- waterOff = i [] WaterOff
-- {-| <i class="mdi mdi-water-percent"></i> -}
-- waterPercent : Html msg
-- waterPercent = i [] WaterPercent
-- {-| <i class="mdi mdi-water-pump"></i> -}
-- waterPump : Html msg
-- waterPump = i [] WaterPump
-- {-| <i class="mdi mdi-watermark"></i> -}
-- watermark : Html msg
-- watermark = i [] Watermark
-- {-| <i class="mdi mdi-waves"></i> -}
-- waves : Html msg
-- waves = i [] Waves
-- {-| <i class="mdi mdi-weather-cloudy"></i> -}
-- weatherCloudy : Html msg
-- weatherCloudy = i [] WeatherCloudy
-- {-| <i class="mdi mdi-weather-fog"></i> -}
-- weatherFog : Html msg
-- weatherFog = i [] WeatherFog
-- {-| <i class="mdi mdi-weather-hail"></i> -}
-- weatherHail : Html msg
-- weatherHail = i [] WeatherHail
-- {-| <i class="mdi mdi-weather-lightning"></i> -}
-- weatherLightning : Html msg
-- weatherLightning = i [] WeatherLightning
-- {-| <i class="mdi mdi-weather-lightning-rainy"></i> -}
-- weatherLightningRainy : Html msg
-- weatherLightningRainy = i [] WeatherLightningRainy
-- {-| <i class="mdi mdi-weather-night"></i> -}
-- weatherNight : Html msg
-- weatherNight = i [] WeatherNight
-- {-| <i class="mdi mdi-weather-partlycloudy"></i> -}
-- weatherPartlycloudy : Html msg
-- weatherPartlycloudy = i [] WeatherPartlycloudy
-- {-| <i class="mdi mdi-weather-pouring"></i> -}
-- weatherPouring : Html msg
-- weatherPouring = i [] WeatherPouring
-- {-| <i class="mdi mdi-weather-rainy"></i> -}
-- weatherRainy : Html msg
-- weatherRainy = i [] WeatherRainy
-- {-| <i class="mdi mdi-weather-snowy"></i> -}
-- weatherSnowy : Html msg
-- weatherSnowy = i [] WeatherSnowy
-- {-| <i class="mdi mdi-weather-snowy-rainy"></i> -}
-- weatherSnowyRainy : Html msg
-- weatherSnowyRainy = i [] WeatherSnowyRainy
-- {-| <i class="mdi mdi-weather-sunny"></i> -}
-- weatherSunny : Html msg
-- weatherSunny = i [] WeatherSunny
-- {-| <i class="mdi mdi-weather-sunset"></i> -}
-- weatherSunset : Html msg
-- weatherSunset = i [] WeatherSunset
-- {-| <i class="mdi mdi-weather-sunset-down"></i> -}
-- weatherSunsetDown : Html msg
-- weatherSunsetDown = i [] WeatherSunsetDown
-- {-| <i class="mdi mdi-weather-sunset-up"></i> -}
-- weatherSunsetUp : Html msg
-- weatherSunsetUp = i [] WeatherSunsetUp
-- {-| <i class="mdi mdi-weather-windy"></i> -}
-- weatherWindy : Html msg
-- weatherWindy = i [] WeatherWindy
-- {-| <i class="mdi mdi-weather-windy-variant"></i> -}
-- weatherWindyVariant : Html msg
-- weatherWindyVariant = i [] WeatherWindyVariant
-- {-| <i class="mdi mdi-web"></i> -}
-- web : Html msg
-- web = i [] Web
-- {-| <i class="mdi mdi-webcam"></i> -}
-- webcam : Html msg
-- webcam = i [] Webcam
-- {-| <i class="mdi mdi-webhook"></i> -}
-- webhook : Html msg
-- webhook = i [] Webhook
-- {-| <i class="mdi mdi-webpack"></i> -}
-- webpack : Html msg
-- webpack = i [] Webpack
-- {-| <i class="mdi mdi-wechat"></i> -}
-- wechat : Html msg
-- wechat = i [] Wechat
-- {-| <i class="mdi mdi-weight"></i> -}
-- weight : Html msg
-- weight = i [] Weight
-- {-| <i class="mdi mdi-weight-kilogram"></i> -}
-- weightKilogram : Html msg
-- weightKilogram = i [] WeightKilogram
-- {-| <i class="mdi mdi-whatsapp"></i> -}
-- whatsapp : Html msg
-- whatsapp = i [] Whatsapp
-- {-| <i class="mdi mdi-wheelchair-accessibility"></i> -}
-- wheelchairAccessibility : Html msg
-- wheelchairAccessibility = i [] WheelchairAccessibility
-- {-| <i class="mdi mdi-white-balance-auto"></i> -}
-- whiteBalanceAuto : Html msg
-- whiteBalanceAuto = i [] WhiteBalanceAuto
-- {-| <i class="mdi mdi-white-balance-incandescent"></i> -}
-- whiteBalanceIncandescent : Html msg
-- whiteBalanceIncandescent = i [] WhiteBalanceIncandescent
-- {-| <i class="mdi mdi-white-balance-iridescent"></i> -}
-- whiteBalanceIridescent : Html msg
-- whiteBalanceIridescent = i [] WhiteBalanceIridescent
-- {-| <i class="mdi mdi-white-balance-sunny"></i> -}
-- whiteBalanceSunny : Html msg
-- whiteBalanceSunny = i [] WhiteBalanceSunny
-- {-| <i class="mdi mdi-widgets"></i> -}
-- widgets : Html msg
-- widgets = i [] Widgets
-- {-| <i class="mdi mdi-wifi"></i> -}
-- wifi : Html msg
-- wifi = i [] Wifi
-- {-| <i class="mdi mdi-wifi-off"></i> -}
-- wifiOff : Html msg
-- wifiOff = i [] WifiOff
-- {-| <i class="mdi mdi-wii"></i> -}
-- wii : Html msg
-- wii = i [] Wii
-- {-| <i class="mdi mdi-wiiu"></i> -}
-- wiiu : Html msg
-- wiiu = i [] Wiiu
-- {-| <i class="mdi mdi-wikipedia"></i> -}
-- wikipedia : Html msg
-- wikipedia = i [] Wikipedia
-- {-| <i class="mdi mdi-window-close"></i> -}
-- windowClose : Html msg
-- windowClose = i [] WindowClose
-- {-| <i class="mdi mdi-window-closed"></i> -}
-- windowClosed : Html msg
-- windowClosed = i [] WindowClosed
-- {-| <i class="mdi mdi-window-maximize"></i> -}
-- windowMaximize : Html msg
-- windowMaximize = i [] WindowMaximize
-- {-| <i class="mdi mdi-window-minimize"></i> -}
-- windowMinimize : Html msg
-- windowMinimize = i [] WindowMinimize
-- {-| <i class="mdi mdi-window-open"></i> -}
-- windowOpen : Html msg
-- windowOpen = i [] WindowOpen
-- {-| <i class="mdi mdi-window-restore"></i> -}
-- windowRestore : Html msg
-- windowRestore = i [] WindowRestore
-- {-| <i class="mdi mdi-windows"></i> -}
-- windows : Html msg
-- windows = i [] Windows
-- {-| <i class="mdi mdi-wordpress"></i> -}
-- wordpress : Html msg
-- wordpress = i [] Wordpress
-- {-| <i class="mdi mdi-worker"></i> -}
-- worker : Html msg
-- worker = i [] Worker
-- {-| <i class="mdi mdi-wrap"></i> -}
-- wrap : Html msg
-- wrap = i [] Wrap
-- {-| <i class="mdi mdi-wrench"></i> -}
-- wrench : Html msg
-- wrench = i [] Wrench
-- {-| <i class="mdi mdi-wunderlist"></i> -}
-- wunderlist : Html msg
-- wunderlist = i [] Wunderlist
-- {-| <i class="mdi mdi-xamarin"></i> -}
-- xamarin : Html msg
-- xamarin = i [] Xamarin
-- {-| <i class="mdi mdi-xamarin-outline"></i> -}
-- xamarinOutline : Html msg
-- xamarinOutline = i [] XamarinOutline
-- {-| <i class="mdi mdi-xaml"></i> -}
-- xaml : Html msg
-- xaml = i [] Xaml
-- {-| <i class="mdi mdi-xbox"></i> -}
-- xbox : Html msg
-- xbox = i [] Xbox
-- {-| <i class="mdi mdi-xbox-controller"></i> -}
-- xboxController : Html msg
-- xboxController = i [] XboxController
-- {-| <i class="mdi mdi-xbox-controller-battery-alert"></i> -}
-- xboxControllerBatteryAlert : Html msg
-- xboxControllerBatteryAlert = i [] XboxControllerBatteryAlert
-- {-| <i class="mdi mdi-xbox-controller-battery-empty"></i> -}
-- xboxControllerBatteryEmpty : Html msg
-- xboxControllerBatteryEmpty = i [] XboxControllerBatteryEmpty
-- {-| <i class="mdi mdi-xbox-controller-battery-full"></i> -}
-- xboxControllerBatteryFull : Html msg
-- xboxControllerBatteryFull = i [] XboxControllerBatteryFull
-- {-| <i class="mdi mdi-xbox-controller-battery-low"></i> -}
-- xboxControllerBatteryLow : Html msg
-- xboxControllerBatteryLow = i [] XboxControllerBatteryLow
-- {-| <i class="mdi mdi-xbox-controller-battery-medium"></i> -}
-- xboxControllerBatteryMedium : Html msg
-- xboxControllerBatteryMedium = i [] XboxControllerBatteryMedium
-- {-| <i class="mdi mdi-xbox-controller-battery-unknown"></i> -}
-- xboxControllerBatteryUnknown : Html msg
-- xboxControllerBatteryUnknown = i [] XboxControllerBatteryUnknown
-- {-| <i class="mdi mdi-xbox-controller-off"></i> -}
-- xboxControllerOff : Html msg
-- xboxControllerOff = i [] XboxControllerOff
-- {-| <i class="mdi mdi-xda"></i> -}
-- xda : Html msg
-- xda = i [] Xda
-- {-| <i class="mdi mdi-xing"></i> -}
-- xing : Html msg
-- xing = i [] Xing
-- {-| <i class="mdi mdi-xing-box"></i> -}
-- xingBox : Html msg
-- xingBox = i [] XingBox
-- {-| <i class="mdi mdi-xing-circle"></i> -}
-- xingCircle : Html msg
-- xingCircle = i [] XingCircle
-- {-| <i class="mdi mdi-xml"></i> -}
-- xml : Html msg
-- xml = i [] Xml
-- {-| <i class="mdi mdi-xmpp"></i> -}
-- xmpp : Html msg
-- xmpp = i [] Xmpp
-- {-| <i class="mdi mdi-yammer"></i> -}
-- yammer : Html msg
-- yammer = i [] Yammer
-- {-| <i class="mdi mdi-yeast"></i> -}
-- yeast : Html msg
-- yeast = i [] Yeast
-- {-| <i class="mdi mdi-yelp"></i> -}
-- yelp : Html msg
-- yelp = i [] Yelp
-- {-| <i class="mdi mdi-yin-yang"></i> -}
-- yinYang : Html msg
-- yinYang = i [] YinYang
-- {-| <i class="mdi mdi-youtube-creator-studio"></i> -}
-- youtubeCreatorStudio : Html msg
-- youtubeCreatorStudio = i [] YoutubeCreatorStudio
-- {-| <i class="mdi mdi-youtube-gaming"></i> -}
-- youtubeGaming : Html msg
-- youtubeGaming = i [] YoutubeGaming
-- {-| <i class="mdi mdi-youtube-play"></i> -}
-- youtubePlay : Html msg
-- youtubePlay = i [] YoutubePlay
-- {-| <i class="mdi mdi-youtube-tv"></i> -}
-- youtubeTv : Html msg
-- youtubeTv = i [] YoutubeTv
-- {-| <i class="mdi mdi-zip-box"></i> -}
-- zipBox : Html msg
-- zipBox = i [] ZipBox
