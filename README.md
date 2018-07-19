
# Elm Icons

Make icon fonts easy!


## Supported Fonts

First, choose your icon font:

    .------------------------------------------------------.
    | Icon Provider  | Version | CDN | Style | # of Icons  |
    |----------------|---------|-----|-------|-------------|
    | Material Icons | 2.1.19  |  ✓  |   ✓   |    2119     |
    | IonIcons       | 2.0.1   |  ✓  |       |     733     |
    | Open Iconic    | 1.1.1   |  ✓  |       |     223     |
    | FontAwesome    | 5.0.6   |  ✓  |   ✓   |     994     |
    | FontAwesome    | 4.7.0   |     |       | coming soon |
    | Octicons       |         |     |       | coming soon |
    | Entypo         |         |     |       | coming soon |
    | Typicons       |         |     |       | coming soon |
    '------------------------------------------------------'


## API

This package has a really easy-to-use API, with plenty of options!

Each module comes with a stylesheet and icons:
```elm
import Icon.OpenIconic as Icon 
  exposing ( stylesheet
           , wrench
           , accountLogin
           , briefcase
           )

view : model -> Html msg
view _
    = div []
    [ stylesheet
    , wrench
    , accountLogin
    , briefcase
    ]
```


### Customization

All modules additionally have tools for making custom icons:
```elm
import Icon.OpenIconic as Icon 
  exposing ( stylesheet
           , i
           , Icon(Wrench,AccountLogin,Briefcase)
           )

view : model -> Html msg
view _
    = div []
    [ stylesheet
    , i [] Wrench
    , i [] AccountLogin
    , i [] Briefcase
    ]
```


#### Styling

Additionally, some of the modules have styling shortcuts included:
```elm
import Icon.MaterialDesign as Icon 
  exposing ( stylesheet
           , i
           , Icon(Fish)
           )

view : model -> Html msg
view _
    = div []
    [ stylesheet
    , i [ light, flipV, size X48 ] Fish
    ]
```


## Contributions
- Feel free to [report bugs on Github](https://github.com/surprisetalk/elm-icon/issues).
- If you have any suggestions on how to make the API more friendly, please reach out to me at [surprisetalk@gmail.com](surprisetalk@gmail.com).


## Coming Soon
- □ [Octicons](https://octicons.github.com/)
- □ [Themify](http://themify.me/themify-icons)
- □ [Foundation](https://zurb.com/playground/foundation-icon-fonts-3)
- □ [Entypo](http://www.entypo.com/)
- □ [Typicons](http://s-ings.com/typicons/)
- □ [Meteocons]()
- □ [Maki](https://www.mapbox.com/maki-icons/)
- □ [Awesome Icons](https://github.com/vkarampinis/awesome-icons)
- □ [Feather Icons](https://feathericons.com/)
- □ [Iconic Fonts](https://github.com/brabadu/awesome-fonts#iconic-fonts)
- □ [Appa Sariicon](http://code.sariina.com/appa-sariicon/)
- □ [Flag Icons](http://flag-icon-css.lip.is/)
- □ [Evil Icons](http://evil-icons.io/)
- □ [MFizz](http://fizzed.com/oss/font-mfizz)
- □ [Icono](https://saeedalipoor.github.io/icono/)
- □ [Map Icons](http://map-icons.com/)
- □ [Open Web Icons](https://pfefferle.github.io/openwebicons/)
- □ [Payment Font](https://paymentfont.com/)
- □ [Analog Clock Icon Font](https://github.com/jhogue/PE-Analog-Clock-icon-font)
- □ [Weather Icons](http://erikflowers.github.io/weather-icons/)



