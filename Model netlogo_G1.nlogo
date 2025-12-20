to setup
  ca
  system-dynamics-setup
  do-plot
end

to go
  system-dynamics-go
  do-plot
  system-dynamics-do-plot
  end

to do-plot
  set-current-plot "Population de Syncerus caffer"
  set-current-plot-pen "Buffle"
  plotxy ticks Buffle

  set-current-plot "Production fourragère"
  set-current-plot-pen "Biomasse"
  plotxy ticks Biomasse


  set-current-plot "Ressource en eau"
  set-current-plot-pen "Eau"
  plotxy ticks Eau
  system-dynamics-do-plot
 end
@#$#@#$#@
GRAPHICS-WINDOW
1253
10
1339
97
-1
-1
2.364
1
10
1
1
1
0
1
1
1
-16
16
-16
16
0
0
1
ticks
30.0

PLOT
524
150
842
347
Population de Syncerus caffer
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Buffle" 1.0 0 -16777216 true "" "plot count turtles"

PLOT
864
150
1168
347
Production fourragère
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Biomasse" 1.0 0 -16777216 true "" "plot count turtles"

PLOT
220
152
510
348
Ressource en eau
NIL
NIL
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"Eau" 1.0 0 -16777216 true "" "plot count turtles"

MONITOR
26
393
203
438
NIL
Buffle
17
1
11

MONITOR
233
395
382
440
NIL
Biomasse
17
1
11

MONITOR
405
395
561
440
NIL
Eau
17
1
11

BUTTON
51
156
115
189
Setup
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
50
202
113
235
Go
go
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
50
248
113
281
5 Go
repeat 5 [Go]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
141
219
204
252
NIL
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
21
10
193
43
Input_braconnage
Input_braconnage
0.05
0.1
0.0725
0.05
1
NIL
HORIZONTAL

SLIDER
230
13
402
46
Input_feu
Input_feu
0
0.1
0.0371
0.05
1
NIL
HORIZONTAL

SLIDER
440
18
613
51
Input_deforestation
Input_deforestation
0.001
0.003
0.0021
0.001
1
NIL
HORIZONTAL

SLIDER
621
19
822
52
Input_precipitations
Input_precipitations
900
1200
1000.0
100
1
mm/an
HORIZONTAL

SLIDER
836
20
1008
53
Input_reconstitution
Input_reconstitution
0.0001
0.001
5.0E-4
0.0005
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.4.0
@#$#@#$#@
@#$#@#$#@
1.0
    org.nlogo.sdm.gui.AggregateDrawing 64
        org.nlogo.sdm.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 270 114 60 40
            org.nlogo.sdm.gui.WrappedStock "Buffle" "20439\n\n;;Nago et al. (2016)" 1
        org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 79 134 30 30
        org.nlogo.sdm.gui.RateConnection 3 342 135 409 138 477 141 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.jhotdraw.figures.ChopEllipseConnector
                org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 476 126 30 30
            org.nlogo.sdm.gui.WrappedRate "(Mortality_rate + Poach_rate + Surchage_alim) * Buffle\n\n\n;;Mortalité annuelle en fonction de la mortalité naturelle,\n;;le taux de braconnage et la surchage alimentaire \n;;(lié au capacité de charge)" "Death" REF 2
                org.nlogo.sdm.gui.WrappedReservoir  0   REF 7
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 77 32 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.0678\n\n;;Taux de natalitée % \n;;(Bangar et al, 2014 ; Jolles, 2007)" "Birth_rate"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 23 294 50 50
            org.nlogo.sdm.gui.WrappedConverter "Biomasse / Syncerus_cons\n\n;;Capacité de charge en nombre d'individus\n;;Rapport de la disponibilité fourragère et \n;;la consommation annuelle d'un buffle" "K"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 461 21 50 50
            org.nlogo.sdm.gui.WrappedConverter "Input_braconnage\n\n;;Taux de braconnage en % (Saley, 2019)" "Poach_rate"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 322 14 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.0273\n\n;;Taux de mortalité (Bangar et al., 2014)" "Mortality_rate"
        org.nlogo.sdm.gui.BindingConnection 2 356 54 409 138 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 16
            org.nlogo.sdm.gui.ChopRateConnector REF 4
        org.nlogo.sdm.gui.BindingConnection 2 474 59 409 138 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 14
            org.nlogo.sdm.gui.ChopRateConnector REF 4
        org.nlogo.sdm.gui.BindingConnection 2 342 135 409 138 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.nlogo.sdm.gui.ChopRateConnector REF 4
        org.nlogo.sdm.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 293 361 60 40
            org.nlogo.sdm.gui.WrappedStock "Biomasse" "471140\n\n;;Biomasse en tonnes à raison de 1 t de MS/ha" 1
        org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 64 383 30 30
        org.nlogo.sdm.gui.RateConnection 3 94 398 187 390 281 383 NULL NULL 0 0 0
            org.jhotdraw.figures.ChopEllipseConnector REF 29
            org.jhotdraw.standard.ChopBoxConnector REF 27
            org.nlogo.sdm.gui.WrappedRate "(Fourrage_an)  + ( Biomasse * Reconstitution )\n\n;;Biomasse produite en t \n;;fonction de la production liée au WUE \n;; et la reconstitution naturelle" "Biom_dispo"
                org.nlogo.sdm.gui.WrappedReservoir  REF 28 0
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 308 274 50 50
            org.nlogo.sdm.gui.WrappedConverter "(0.75 * Eau) / 1000\n\n;;Disponibilité fourragère en fonction du Water use efficiency (WUE)" "Fourrage_an"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 132 491 50 50
            org.nlogo.sdm.gui.WrappedConverter "Input_reconstitution\n\n;;Taux de reconstitution naturelle par an (Zakari et al., 2021)" "Reconstitution"
        org.nlogo.sdm.gui.BindingConnection 2 317 308 187 390 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 35
            org.nlogo.sdm.gui.ChopRateConnector REF 30
        org.nlogo.sdm.gui.BindingConnection 2 161 495 187 390 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 37
            org.nlogo.sdm.gui.ChopRateConnector REF 30
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 193 282 50 50
            org.nlogo.sdm.gui.WrappedConverter "(10 * 365) / 1000\n\n;; Consommation annuelle des buffles en t\n;; Cornelis et al., 2014" "Syncerus_cons"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 655 503 50 50
            org.nlogo.sdm.gui.WrappedConverter "Input_deforestation\n\n;;Taux de déforestation (Zakari et al., 2021)" "Deforestation"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 474 490 50 50
            org.nlogo.sdm.gui.WrappedConverter "Input_feu\n;;Taux de feu de brousse (Houindote et al., 2022)" "Feu"
        org.nlogo.sdm.gui.BindingConnection 2 281 383 187 390 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 27
            org.nlogo.sdm.gui.ChopRateConnector REF 30
        org.nlogo.sdm.gui.RateConnection 3 365 385 483 400 601 416 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 27
            org.jhotdraw.figures.ChopEllipseConnector
                org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 600 402 30 30
            org.nlogo.sdm.gui.WrappedRate "(( Feu + Deforestation ) * Biomasse ) + (Syncerus_cons * Buffle)\n\n;; perte de biomasse en t\n;;fonction de la déforestation, des feux de brousses \n;; et la consommation des buffles" "Biom_loss" REF 28
                org.nlogo.sdm.gui.WrappedReservoir  0   REF 57
        org.nlogo.sdm.gui.BindingConnection 2 236 313 483 400 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 45
            org.nlogo.sdm.gui.ChopRateConnector REF 54
        org.nlogo.sdm.gui.BindingConnection 2 664 518 483 400 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 47
            org.nlogo.sdm.gui.ChopRateConnector REF 54
        org.nlogo.sdm.gui.BindingConnection 2 495 493 483 400 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 49
            org.nlogo.sdm.gui.ChopRateConnector REF 54
        org.nlogo.sdm.gui.BindingConnection 2 365 385 483 400 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 27
            org.nlogo.sdm.gui.ChopRateConnector REF 54
        org.nlogo.sdm.gui.BindingConnection 2 194 308 71 317 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 45
            org.jhotdraw.contrib.ChopDiamondConnector REF 12
        org.nlogo.sdm.gui.BindingConnection 2 281 371 68 323 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 27
            org.jhotdraw.contrib.ChopDiamondConnector REF 12
        org.nlogo.sdm.gui.BindingConnection 2 322 166 483 400 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.nlogo.sdm.gui.ChopRateConnector REF 54
        org.nlogo.sdm.gui.StockFigure "attributes" "attributes" 1 "FillColor" "Color" 225 225 182 616 262 60 40
            org.nlogo.sdm.gui.WrappedStock "Eau" "41.76 * 1000000\n\n;;Valeur selon Totin et al." 1
        org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 474 219 30 30
        org.nlogo.sdm.gui.RateConnection 3 503 238 553 253 604 268 NULL NULL 0 0 0
            org.jhotdraw.figures.ChopEllipseConnector REF 83
            org.jhotdraw.standard.ChopBoxConnector REF 81
            org.nlogo.sdm.gui.WrappedRate "(Precipitations * 471140 * 10) \n\n;;Volume d'eau précipitée en m3/an" "Eau_disponible"
                org.nlogo.sdm.gui.WrappedReservoir  REF 82 0
        org.nlogo.sdm.gui.RateConnection 3 688 277 767 269 847 261 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 81
            org.jhotdraw.figures.ChopEllipseConnector
                org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 846 245 30 30
            org.nlogo.sdm.gui.WrappedRate "((ETP + Autres) * 471140 * 10) + ( Syncerus_eau * Buffle ) + ( Cons_eau * Biomasse)\n\n;;Perte d'eau en m3\n;;fonction des pertes régulières\n;;La consommation des buffles \n;;La consommation de la biomasse" "Eau_perte" REF 82
                org.nlogo.sdm.gui.WrappedReservoir  0   REF 92
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 552 79 50 50
            org.nlogo.sdm.gui.WrappedConverter "Input_precipitations\n\n;;Precipitations annuelles" "Precipitations"
        org.nlogo.sdm.gui.BindingConnection 2 573 125 553 253 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 95
            org.nlogo.sdm.gui.ChopRateConnector REF 84
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 766 105 50 50
            org.nlogo.sdm.gui.WrappedConverter "(35 * 365) / 1000\n\n;;Consommation annuelle en eau en m3\n;; Auge-Sabatier, 2006" "Syncerus_eau"
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 946 71 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.87 * Precipitations\n\n;;Evapotranspiration" "ETP"
        org.nlogo.sdm.gui.BindingConnection 2 787 151 767 269 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 100
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.BindingConnection 2 342 146 767 269 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.BindingConnection 2 601 103 946 96 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 95
            org.jhotdraw.contrib.ChopDiamondConnector REF 102
        org.nlogo.sdm.gui.BindingConnection 2 957 107 767 269 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 102
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.BindingConnection 2 688 277 767 269 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 81
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.BindingConnection 2 604 268 553 253 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 81
            org.nlogo.sdm.gui.ChopRateConnector REF 84
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 643 367 50 50
            org.nlogo.sdm.gui.WrappedConverter "75\n\n;;Consommation en eau de 1 t de biomasse\n;;Hypothèse" "Cons_eau"
        org.nlogo.sdm.gui.BindingConnection 2 679 378 767 269 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 122
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.BindingConnection 2 365 370 767 269 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 27
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 67 172 50 50
            org.nlogo.sdm.gui.WrappedConverter "Buffle / K\n\n;; Ratio à intégrer pour la variation de la population" "Ratio"
        org.nlogo.sdm.gui.ReservoirFigure "attributes" "attributes" 1 "FillColor" "Color" 192 192 192 34 123 30 30
        org.nlogo.sdm.gui.RateConnection 3 64 138 161 136 258 134 NULL NULL 0 0 0
            org.jhotdraw.figures.ChopEllipseConnector REF 132
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.nlogo.sdm.gui.WrappedRate "(Birth_rate * Buffle) + (Buffle * Birth_rate * (1 - min (list 1 Ratio)))\n\n;;Calcul des naissances en utilisant \n;; la natalité et la variation de la population\n;; selon la formule de Verhulst" "Birth_buffle"
                org.nlogo.sdm.gui.WrappedReservoir  REF 2 0
        org.nlogo.sdm.gui.BindingConnection 2 112 71 161 136 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 10
            org.nlogo.sdm.gui.ChopRateConnector REF 133
        org.nlogo.sdm.gui.BindingConnection 2 54 300 85 215 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 12
            org.jhotdraw.contrib.ChopDiamondConnector REF 130
        org.nlogo.sdm.gui.BindingConnection 2 258 146 111 191 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.jhotdraw.contrib.ChopDiamondConnector REF 130
        org.nlogo.sdm.gui.BindingConnection 2 105 185 161 136 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 130
            org.nlogo.sdm.gui.ChopRateConnector REF 133
        org.nlogo.sdm.gui.BindingConnection 2 258 134 161 136 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 1
            org.nlogo.sdm.gui.ChopRateConnector REF 133
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 654 164 50 50
            org.nlogo.sdm.gui.WrappedConverter "0.084 * Precipitations\n\n;; Ruissellement et infiltration" "Autres"
        org.nlogo.sdm.gui.BindingConnection 2 590 115 665 177 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 95
            org.jhotdraw.contrib.ChopDiamondConnector REF 153
        org.nlogo.sdm.gui.BindingConnection 2 692 200 767 269 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 153
            org.nlogo.sdm.gui.ChopRateConnector REF 89
        org.nlogo.sdm.gui.BindingConnection 2 604 284 356 297 NULL NULL 0 0 0
            org.jhotdraw.standard.ChopBoxConnector REF 81
            org.jhotdraw.contrib.ChopDiamondConnector REF 35
        org.nlogo.sdm.gui.ConverterFigure "attributes" "attributes" 1 "FillColor" "Color" 130 188 183 238 189 50 50
            org.nlogo.sdm.gui.WrappedConverter "max (list 0 (1 - Ratio)) / 10" "Surchage_alim"
        org.nlogo.sdm.gui.BindingConnection 2 114 199 240 211 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 130
            org.jhotdraw.contrib.ChopDiamondConnector REF 164
        org.nlogo.sdm.gui.BindingConnection 2 279 205 409 138 NULL NULL 0 0 0
            org.jhotdraw.contrib.ChopDiamondConnector REF 164
            org.nlogo.sdm.gui.ChopRateConnector REF 4
@#$#@#$#@
<experiments>
  <experiment name="experiment" repetitions="1" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <metric>Buffle</metric>
    <metric>Biomasse</metric>
    <metric>Eau</metric>
    <enumeratedValueSet variable="Input_reconstitution">
      <value value="1.0E-4"/>
      <value value="5.0E-4"/>
      <value value="0.001"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Input_deforestation">
      <value value="0.001"/>
      <value value="0.0021"/>
      <value value="0.003"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Input_braconnage">
      <value value="0.05"/>
      <value value="0.075"/>
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Input_precipitations">
      <value value="900"/>
      <value value="1000"/>
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Input_feu">
      <value value="0"/>
      <value value="0.0371"/>
      <value value="0.1"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
