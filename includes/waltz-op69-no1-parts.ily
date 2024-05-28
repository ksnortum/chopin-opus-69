%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . -1)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . -1))
                        ((0 . 0) (0 . 0) (0 . 2) (0 . 3))
                        ) \etc
slurShapeC = \shape #'((0 . -1) (0 . 0.5) (0 . 0.5) (0 . -1)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0.5) (0 . 0.5) (0 . 0))
                        ((0 . 4) (0 . 4) (0 . 2) (0 . -3))
                        ) \etc
slurShapeE = \shape #'((0 . -2) (0 . 0) (0 . 1) (0 . -2)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0)) \etc
slurShapeG = \shape #'((0 . 0.25) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeH = \shape #'((0 . 0) (0 . 0) (2 . 0) (2 . 0)) \etc
slurShapeI = \shape #'((-0.5 . 0) (-0.5 . 0) (0 . 0) (0 . 0)) \etc

moveRestA = \tweak X-offset 2.5 \etc
moveTextA = \tweak Y-offset 4 \etc

%%% Music %%%

global = {
  \time 3/4
  \key af \major
}

rightHandUpper = \relative {
  \partial 4 ef''8( d |
  \tuplet 3/2 { df!8 ef df } c df f ef |
  df2 c4) |
  r4 a8( bf \tuplet 3/2 { c ef df } |
  c2 bf4) |
  bf4.-\slurShapeB ( af8 \tuplet 3/2 { af g f } |
  f2 ef4) |
  r4 \acciaccatura { ef8 } g'( f ef df |
  b2 c4~) |
  
  \barNumberCheck 9
  c8-\slurShapeA ( df bf' af f df |
  df2 c4) |
  \tuplet 5/4 { a16( bf a gs a } \tuplet 3/2 { c8 ef f } gf8.) a,16( |
  \acciaccatura { a8 } c2 bf4) |
  bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
  f2 ef4) |
  \tuplet 3/2 { ef8( f ef } d ef <f df'!> <g c> |
  af2) ef'8(^\aTempo d |
  
  \barNumberCheck 17
  \tuplet 3/2 { df!8 ef df } c df f ef |
  df2 c4) |
  r4 a8( bf c \acciaccatura { ef } df |
  c2 bf4) |
  bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
  f2 ef4) |
  r4 \acciaccatura { ef8 } g'( f ef df |
  b2 c4~) |
  
  \barNumberCheck 25
  c8( df bf' af f df |
  df2 c4) |
  \stemUp \magnifyMusic #2/3 { \tuplet 13/4 { a8( bf a gs a bf b c df d ef e f
    } } \stemNeutral gf[-!) r16 a,]( |
  \acciaccatura { a8 } c2 bf4) |
  bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
  f2 ef4) |
  \tuplet 3/2 { ef8( f ef } d ef <f df'!> <g c> |
  af4) r^\aTempo c8-\slurShapeD ( cf |
  
  \repeat volta 2 {
    \barNumberCheck 33
    \tuplet 3/2 { bf8-\underSlur -\moveTextA ^\conAmina c bf } a[ bf] bf bf' |
    % 8. 16 rhythm in Urtext
    c8.[ bf16 g8 ef] bf4) |
    \tuplet 3/2 { bf8-\slurShapeE ( c bf } a[ bf] bf bf' |
    c8.[ bf16 g8 ef] bf4) |
    \tuplet 3/2 { bf8-\slurShapeE ( c bf } a[ bf] bf bf' |
    c8.[ bf16 g8 ef] bf4) |
    \tuplet 3/2 { bf8-\slurShapeF ( c bf } a bf af'! g |
    f4. ef8 g, af |
    
    \barNumberCheck 41
    \tuplet 3/2 { bf8)-\slurShapeG ( c bf } a[ bf] bf16 bf'8. |
    c8[-!) r16 bf( g8 ef] bf4) |
    \tuplet 3/2 { bf8( c bf } a[ bf] bf16 bf'8. |
    c8[-!) r16 bf( g8 ef] bf4) |
    \tuplet 3/2 { bf8( c bf } a[ bf] bf16 bf'8. |
    c8[-!) r16 bf( g8 ef] bf4) |
    \tuplet 3/2 { bf8-\slurShapeF ( c bf } a bf af'! g |
    f4. e8 ef d |
    
    \barNumberCheck 49
    % like 17 (16 bars)
    \tuplet 3/2 { df!8)(^\aTempo ef df } c df f ef |
    df2 c4) |
    r4 a8( bf c \acciaccatura { ef } df |
    c2 bf4) |
    bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
    f2 ef4) |
    r4 \acciaccatura { ef8 } g'( f ef df |
    b2 c4~) |
    
    \barNumberCheck 57
    c8( df \acciaccatura { df } bf' af f df |
    df2 c4) |
    \stemUp \magnifyMusic #2/3 { \tuplet 13/4 { a8( bf a gs a bf b c df d ef e
      f } } \stemNeutral gf[-!) r16 a,]( |
    \acciaccatura { a8 } c2 bf4) |
    bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
    f2 ef4) |
    \tuplet 3/2 { ef8( f ef } d ef <f df'!> <g c> |
    \alternative {
      { af4) r^\aTempo c8-\slurShapeH ( cf) | } 
      { af4-\slurShapeI \repeatTie ^\aTempo r <df f>( | }
    }
  }
  
  \barNumberCheck 66
  \voiceOne <bf df>2)^\dolce \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c af>4) <af' c> <df f>( |
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>2) <df' f>4( |
  
  \barNumberCheck 74
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c af>4) <af' c> <df f>( |
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>2) c'4 |
  
  \barNumberCheck 82
  <e, c'>4 q-> b'8( c |
  <f, df'>4) q-> c'!8( df |
  <f, d'>4) q-> c'8( d |
  <g, ef'>4) q-> d'8( ef | 
  <g, e'>4) q-> d'8( e |
  <af, f'>4) q-> e'8 f( |
  <bf, g'>4) q f'8( g |
  <c, af'>4) <df bf'>8\fermata r\fermata <df f>4(  |
  
  \barNumberCheck 90
  % like 74
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c af>4) <af' c> <df f>( |
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>2) c'4 |
  
  \barNumberCheck 98
  % like 82
  <e, c'>4 q-> b'8( c | 
  <f, df'>4) q-> c'!8( df |
  <f, d'>4) q-> c'8( d |
  <g, ef'>4) q-> d'8( ef | 
  <g, e'>4) q-> d'8( e |
  <af, f'>4) q-> e'8( f |
  <bf, g'>4) q f'8( g |
  <c, af'>4) <df bf'>8\fermata r\fermata <df f>4(  |
  
  \barNumberCheck 106
  % like 90
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c af>4) <af' c> <df f>( |
  \voiceOne <bf df>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>4) <af' c> <bf df>( |
  \voiceOne <g bf>2) \tuplet 3/2 { f8( g f } |
  \oneVoice <c ef>2) ef'8( d |
  
  \barNumberCheck 114
  % like 17
  \tuplet 3/2 { df!8 ef df } c df f ef |
  df2 c4) |
  r4 a8( bf c \acciaccatura { ef } df |
  c2 bf4) |
  bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
  f2 ef4) |
  r4 \acciaccatura { ef8 } g'( f ef df |
  b2 c4~) |
  
  \barNumberCheck 122
  c8( df \acciaccatura { df } bf' af f df |
  df2 c4) |
  \stemUp \magnifyMusic #2/3 { \tuplet 12/4 { a8([ bf a gs a c ef gf a c ef f]
    } } \stemNeutral gf8[-!) r16 a,,]( |
  \acciaccatura { a8 } c2 bf4) |
  bf4.-\slurShapeC ( af8 \tuplet 3/2 { af g f } |
  f2 ef4) |
  \tuplet 3/2 { ef8( f ef } d ef <f df'!> <g c> |
  af2) r4 |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \repeat volta 2 {
    \barNumberCheck 33
    s2. * 8 |
    
    \barNumberCheck 41
    s2. * 8 |
    
    \barNumberCheck 49
    s2. * 8 |
    
    \barNumberCheck 57
    s2. * 7 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 66
  \override TextScript.outside-staff-priority = ##f
  \voiceFour r4 df'2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  
  \barNumberCheck 74
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  
  \barNumberCheck 82
  s2. * 8 |
  
  \barNumberCheck 90
  % like 74
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  
  \barNumberCheck 98
  s2. * 8 |
  
  \barNumberCheck 106
  % like 90
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
  r4 df2->^\ten |
  s2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 4 s4 |
  \voiceThree r4 <af df> q |
  r4 <g c> q |
  r4 <gf c> q |
  r4 <f bf> q |
  r4 q <f b> |
  r4 <af c> q |
  s2. * 2 |
  
  \barNumberCheck 9
  r4 <af df> q |
  r4 <g df'> <g c> |
  r4 <gf c> q |
  r4 <f c'> <f bf> |
  r4 q <f b> |
  s2. * 3 |
  
  \barNumberCheck 17
  % like 9 and 1
  r4 <af df> q |
  r4 <g df'> <g c> |
  r4 <gf c> q |
  r4 <f c'> <f bf> |
  r4 q <f b> |
  r4 <af c> q |
  s2. * 2 |
  
  \barNumberCheck 25
  % like 9
  r4 <af df> q |
  r4 <g df'> <g c> |
  r4 <gf c> q |
  r4 <f c'> <f bf> |
  r4 q <f b> |
  s2. * 3 |
  
  \repeat volta 2 {
    \barNumberCheck 33
    bf4. d8 d4-> |
    \moveRestA b4\rest b8\rest bf bf4-> |
    af4. bf8 bf4-> |
    \moveRestA b4\rest b8\rest bf bf4-> |
    bf4. d8 d4-> |
    \moveRestA b4\rest b8\rest bf bf4-> |
    s2. * 2 |
    
    \barNumberCheck 41
    bf4. d8 d4-> |
    \moveRestA b4\rest b8\rest bf bf4-> |
    af4. bf8 bf4-> |
    \moveRestA b4\rest b8\rest bf bf4-> |
    bf4. d8 d4-> |
    \moveRestA b4\rest b8\rest bf bf4-> |
    s2. * 2 |
    
    \barNumberCheck 49
    % like 17 (16 bars)
    r4 <af df!> q |
    r4 <g df'> <g c> |
    r4 <gf c> q |
    r4 <f c'> <f bf> |
    r4 q <f b> |
    r4 <af c> q |
    s2. * 2 |
    
    \barNumberCheck 57
    % like 9
    r4 <af df> q |
    r4 <g df'> <g c> |
    r4 <gf c> q |
    r4 <f c'> <f bf> |
    r4 q <f b> |
    s2. * 2 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 66
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  
  \barNumberCheck 74
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  
  \barNumberCheck 82
  s2. * 8 |
  
  \barNumberCheck 90
  % like 74
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  
  \barNumberCheck 98
  s2. * 8 |
  
  \barNumberCheck 106
  % like 90
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  s4 g2 |
  s2. |
  s4 bf2 |
  s2. |
  
  \barNumberCheck 114
  % like 17
  r4 <af df> q |
  r4 <g df'> <g c> |
  r4 <gf c> q |
  r4 <f c'> <f bf> |
  r4 q <f b> |
  r4 <af c> q |
  s2. * 2 |
  
  \barNumberCheck 122
  % like 25
  r4 <af df> q |
  r4 <g df'> <g c> |
  r4 <gf c> q |
  r4 <f c'> <f bf> |
  r4 q <f b> |
  s2. * 3 |
}

leftHandLower = \relative {
  \partial 4 r4 |
  \voiceTwo f2. |
  e2. |
  ef!2. |
  df2. |
  d2. |
  ef2. |
  \oneVoice ef,4 <ef' bf' df> q |
  af,4 <ef' af c> q |
  
  \barNumberCheck 9
  \voiceTwo f2. |
  e2. |
  ef!2. |
  df2. |
  d2. |
  \oneVoice ef,4 <ef' af c> q |
  ef,4 <ef' g df'> <ef bf' df> |
  af,4 <ef' c'> r |
  
  \barNumberCheck 17
  % like 1
  \voiceTwo f2. |
  e2. |
  ef!2. |
  df2. |
  d2. |
  ef2. |
  \oneVoice ef,4 <ef' bf' df> <ef g df'> |
  af,4 <ef' af c> q |
  
  \barNumberCheck 25
  % like 9
  \voiceTwo f2. |
  e2. |
  ef!2. |
  df2. |
  d2. |
  \oneVoice ef,4 <ef' af c> q |
  ef,4 <ef' g df'> <ef bf' df> |
  af,4 <ef' c'> r |
  
  \repeat volta 2 {
    \barNumberCheck 33
    \voiceTwo <af f'>2. |
    <g ef'>2. |
    <bf, d'>2.\arpeggio |
    <ef g ef'>2. |
    <af f'>2. |
    <g ef'>2. |
    \oneVoice bf,4 <af'! d> <bf d> |
    ef,4 <g ef'> <bf ef> |
    
    \barNumberCheck 41
    \voiceTwo <af f'>2. |
    <g ef'>2. |
    <bf, d'>2.\arpeggio |
    <ef g ef'>2. |
    <af f'>2. |
    <g ef'>2. |
    \oneVoice bf,4 <af'! d> <bf d> |
    ef,4 <g ef'> <bf ef> |
    
    \barNumberCheck 49
    % like 17 (16 bars)
    \voiceTwo f2. |
    e2. |
    ef!2. |
    df2. |
    d2. |
    ef2. |
    \oneVoice ef,4 <ef' bf' df> <ef g df'> |
    af,4 <ef' af c> q |
    
    \barNumberCheck 57
    \voiceTwo f2. |
    e2. |
    ef!2. |
    df2. |
    d2. |
    \oneVoice ef,4 <ef' af c> q |
    ef,4 <ef' g df'> <ef bf' df> |
    \alternative {
      { af,4 <ef' c'> r | }
      { af,4 <ef' c'> r | }
    }
  }
  
  \barNumberCheck 66
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,4 af' ef |
  
  \barNumberCheck 74
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,2 r4 |
  
  \barNumberCheck 82
  <c g'>4 q2 |
  <cf af'>4 q2 |
  <bf bf'>4 q2 |
  <ef bf'>4 q2 |
  <c c'>4 q2 |
  <f c'>4 q2 |
  <ef ef'>4 q2 |
  <af ef'>4 <g ef'>8\fermata r\fermata r4 |
  
  \barNumberCheck 90
  % like 74 
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,2 r4 |
  
  \barNumberCheck 98
  % like 82
  <c g'>4 q2 |
  <cf af'>4 q2 |
  <bf bf'>4 q2 |
  <ef bf'>4 q2 |
  <c c'>4 q2 |
  <f c'>4 q2 |
  <ef ef'>4 q2 |
  <af ef'>4 <g ef'>8\fermata r\fermata r4 |
  
  \barNumberCheck 106
  % like 90
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 g' ef |
  \oneVoice af,4 af' ef |
  \voiceTwo ef,4 bf'' ef, |
  \oneVoice af,2 r4 |
  
  \barNumberCheck 114
  % like 17
  \voiceTwo f'2. |
  e2. |
  ef!2. |
  df2. |
  d2. |
  ef2. |
  \oneVoice ef,4 <ef' bf' df> <ef g df'> |
  af,4 <ef' af c> q |
  
  \barNumberCheck 122
  % like 25
  \voiceTwo f2. |
  e2. |
  ef!2. |
  df2. |
  d2. |
  \oneVoice ef,4 <ef' af c> q |
  ef,4 <ef' g df'> <ef bf' df> |
  af,4 <ef' c'> r |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override TextSpanner.Y-offset = 0 
  \override DynamicTextSpanner.style = #'none
  \partial 4 \tag layout { s4^\pConEspressione } \tag midi { s4\p } |
  s2. |
  s2\> s4\! |
  s4 s\< \tuplet 3/2 { s4 s8\! } |
  s2\> s4\! |
  s2.\cresc |
  s2\> s4\! |
  s2.\f |
  s2\> s8 s\! |
  
  \barNumberCheck 9
  s2.\p |
  s2\> s4\! |
  s4 \tuplet 3/2 { s4\< s8\! } s8.\> s16\! |
  s2\> s4\! |
  s2. |
  s2\> s8 s\! |
  s4 s2-\tweak Y-offset -2 ^\rit |
  s2. |
  
  \barNumberCheck 17
  s2. |
  s2\> s4\! |
  s4 s4.\< s8\! |
  s2\> s4\! |
  s2.\cresc |
  s2\> s4\! |
  s2.\f |
  s2\> s8 s\! |
  
  \barNumberCheck 25
  s2.\p |
  s2\> s4\! |
  s2\< s4\! |
  s2\> s4\! |
  s2. |
  s2\> s8 s\! |
  s4 s2-\tweak Y-offset -2 ^\rit |
  s2. |
  
  \repeat volta 2 {
    \barNumberCheck 33
    s2. * 6 |
    s4 s4.\< s8\! |
    s2\> s8 s\! |
    
    \barNumberCheck 41
    s2.\parenthesize\p |
    s2. * 5 |
    s4 s4.\< s8\> |
    s4 s8\! s4.^\rit  |
    
    \barNumberCheck 49
    s2.^\conForza |
    s2\> s4\! |
    s4 s4.\< s8\! |
    s2\> s4\! |
    s2.\cresc |
    s2\> s4\! |
    s2.\f |
    s2\> s4\! |
    
    \barNumberCheck 57
    s2.\p |
    s2\> s4\! |
    s2\< s4\! |
    s2\> s4\! |
    s2. |
    s2\> s4\! |
    s4 s2-\tweak Y-offset -2 ^\rit |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 66
  s2. |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s2. |
  
  \barNumberCheck 74
  s2. |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s2 s4\p |
  
  \barNumberCheck 82
  s2 \pocoAPocoCresc s4\startTextSpan |
  s2. * 4 |
  s2 s8 s\stopTextSpan
  s2\f s4\< |
  s4\! s-\tweak Y-offset 1 \sf s\p |
  
  \barNumberCheck 90
  % like 74
  s2.\! |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s2 s4\p |
  
  \barNumberCheck 98
  % like 82
  s2 \pocoAPocoCresc s4\startTextSpan |
  s2. * 4 |
  s2 s8 s\stopTextSpan
  s2\f s4\< |
  s4\! s-\tweak Y-offset 1 \sf s\p |
  
  \barNumberCheck 106
  % like 90
  s2.\! |
  s4 s2\< |
  s2.\! |
  s4 s2\< |
  s2.\! |
  s4 s2-\tweak Y-offset -1 \< |
  s2.\! |
  s2. |
  
  \barNumberCheck 114
  % like 17
  s2.\mf |
  s2\> s4\! |
  s4 s4.\< s8\! |
  s2\> s4\! |
  s2.\cresc |
  s2\> s4\! |
  s2.\f |
  s2\> s4\! |
  
  \barNumberCheck 122
  s2.\p |
  s2\> s4\! |
  s2\< s4\! |
  s2\> s4\! |
  s2. |
  s2\> s4\! |
  s4 s2-\tweak Y-offset -2 ^\rit |
  s2. |
}

tempi = {
  \tempo "Lento" 4 = 138
  \partial 4 s4 |
  \set Score.tempoHideNote = ##t
  s2.* 8 |
  
  \barNumberCheck 9
  s2. * 6 |
  s4 \tempo 4 = 120 s2 |
  s2 \tempo 4 = 138 s4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 2 |
  \tempo 4 = 120
  s2. |
  \tempo 4 = 138
  s2. * 3 |
  s4 \tempo 4 = 120 s2 |
  s2 \tempo 4 = 138 s4 |
  
  \repeat volta 2 {
    \barNumberCheck 33
    s2. * 8 |
    
    \barNumberCheck 41
    s2. * 7 |
    s4 \tempo 4 = 120 s2 |
    
    \barNumberCheck 49
    \tempo 4 = 138
    s2. * 8 |
    
    \barNumberCheck 57
    s2. * 2 |
    \tempo 4 = 120
    s2. |
    \tempo 4 = 138
    s2. * 3 |
    s4 \tempo 4 = 120 s2 |
    \alternative {
      { s2 \tempo 4 = 138 s4 | }
      { s2 \tempo 4 = 138 s4 | }
    }
  }
  
  \barNumberCheck 66
  s2. * 8 |
  
  \barNumberCheck 74
  s2. * 8 |
  
  \barNumberCheck 82
  \tempo 4 = 152
  s2. * 7 |
  s4 \tempo 4 = 60 s \tempo 4 = 138 s |
  
  \barNumberCheck 90
  s2. * 8 |
  
  \barNumberCheck 98
  \tempo 4 = 152
  s2. * 7 |
  s4 \tempo 4 = 60 s \tempo 4 = 138 s |
  
  \barNumberCheck 106
  s2. * 8 |
  
  \barNumberCheck 114
  s2. * 8 |
  
  \barNumberCheck 122
  s2. * 2 |
  \tempo 4 = 120
  s2. |
  \tempo 4 = 138
  s2. * 3 |
  s4 \tempo 4 = 120 s2 |
  s4 \tempo 4 = 60 s2 |
}

pedal = {
  \partial 4 s4 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 9
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \barNumberCheck 17
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  
  \repeat volta 2 {
    \barNumberCheck 33
    s2\sd s4\su |
    s2\sd s4\su |
    s2-\tweak Y-offset -1 \sd s4\su |
    s2-\tweak Y-offset -1 \sd s4\su |
    s2\sd s4\su |
    s2\sd s4\su |
    s2\sd s4\su |
    s2\sd s4\su |
    
    \barNumberCheck 41
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    
    \barNumberCheck 49
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s4\su |
    
    \barNumberCheck 57
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    \alternative {
      { s2\sd s4\su | }
      { s2\sd s4\su | }
    }
  }
  
  \barNumberCheck 66
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 74
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2. |
  
  \barNumberCheck 82
  s2. * 8 |
  
  \barNumberCheck 90
  % like 74
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2. |
  
  \barNumberCheck 98
  s2. * 8 |
  
  \barNumberCheck 106
  % like 90
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2. |
  
  \barNumberCheck 114
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 122
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
}

waltzOneNotes =
\score {
  \header {
    title = "Waltz One"
    composer = "Frédéric Chopin"
    opus = "Opus 69, No. 1"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

waltzOneMidi =
\book {
  \bookOutputName "waltz-op69-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
