%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1) (0 . 1) (0 . 0) (0 . -2)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (2 . 0) (2 . 0)) \etc
slurShapeC = \shape #'((-1 . 1) (-1 . 1) (0 . 1) (0 . 1)) \etc
slurShapeD = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeE = \shape #'(
                        ((0 . 2.5) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

%%% Music %%%

global = {
  \time 3/4
  \key b \minor
}

rightHand = \relative {
  \global
  \partial 4 fs''4->~( |
  fs8 g fs cs d b |
  as2) fs'4->~( |
  fs8 g fs cs e d |
  b2) fs'4->~( |
  fs8 g es fs b d) |
  d4( es,) d'->(~ |
  d4 e,!) cs'->(~ |
  cs8 b as g fs cs |
  
  \barNumberCheck 9
  d8)( g fs cs d b |
  as2) fs'4->~( |
  fs8 g fs cs e d |
  b2) fs'4->(~ |
  fs8 fs' cs d as b |
  a!8 g b, cs d e |
  g8 fs b, d cs fs, |
  b8) es,( fs as b cs |
  
  \barNumberCheck 17
  d8)(^\aTempo g fs cs d b |
  % like 2
  as2) fs'4->~( |
  fs8 g fs cs e d |
  b2) fs'4->~( |
  fs8 g es fs b d) |
  d4( es,) d'->(~ |
  d4 e,!) cs'->(~ |
  cs8 b as g fs cs |
  
  \barNumberCheck 25
  d8)( g fs cs d b |
  as2) fs'4->~( |
  fs8 g fs cs e d |
  b2) fs'4->-\slurShapeA ( |
  fs'8 cs d as b fs |
  a!8 g b, cs e g |
  g8 fs b, d cs fs, |
  b4.) fs8(^\aTempo b bf |
  
  \barNumberCheck 33
  % repeat volta in Urtext
  \repeat volta 2 {
    bf4.-!^\conAmina a8 cs e |
    g4. fs8 cs d |
    fs4. e8 b cs |
    e4. d8 cs b) |
    b4.( a8 cs e |
    g4. fs8 cs d |
    fs4. e8 b cs |
    as4. cs8 g cs |
    
    \barNumberCheck 41
    fs,4.)(^\aTempo as8 cs e |
    g4. fs8 cs d |
    fs4. e8 b cs |
    e4. d8 cs b) |
    b4.( a8 cs e |
    g4. fs8 cs d | 
    fs4.-! e8 fs' e | 
    d cs c b as a |
    
    \barNumberCheck 49
    gs g fs cs d b | 
    as4) r a'!( |
    gs8 g fs cs e d |
    b4) r a'( |
    gs8 g es fs b d) |
    d4( es,) d'->(~ |
    d4 e,!) cs'->( |
    c8 b as a gs g |
    
    \barNumberCheck 57
    fs8 f e d cs b |
    as2) g'4->( |
    fs8 g fs cs e d |
    b2) fs'4->-\slurShapeA ( |
    fs'8 cs d as b fs |
    a!8 g b, cs e g |
    g8 fs b, d cs fs, |
    \alternative {
      { b4.) fs8-\slurShapeB ^(^\aTempo b bf) | }
      { b4-\slurShapeC \repeatTie r fs(^\aTempo }
    }
  }
  
  \barNumberCheck 66
  \key b \major
  ds'8 e ds cs ds e |
  gs2 fs4) |
  ds8( e ds cs ds e |
  gs2 fs4) |
  fs4( ds'8.) ds16 ds4-> |
  cs4( e,8.) e16 e4-> |
  ds4( b'8.) b16 b4-> |
  as4( cs,8.) cs16 e4-> |
  
  \barNumberCheck 74
  ds8( e ds cs ds e |
  gs2 fs4) |
  ds8( e ds cs ds e |
  gs2 fs4) |
  ds4( b'8.) b16 b4-> |
  as4( cs,8.) cs16 cs4-> |
  b4( gs'8.) gs16 gs4-> |
  fs4( as,8.) as16 e'4-> |
  
  \barNumberCheck 82
  <b ds>8( <cs e> <b ds> <fs cs'> <b ds> <cs e> |
  <as gs'>2 <as fs'>4) |
  <b ds>8( <cs e> <b ds> <fs cs'> <b ds> <cs e> |
  <as gs'>2 <as fs'>4) |
  <ds fs>4( <fs ds'>8.) q16 q4-> |
  <e cs'>4( <cs e>8.) q16 q4-> |
  <b ds>4( <ds b'>8.) q16 q4-> |
  <cs as'>4( <as cs>8.) q16 <cs e>4-> |
  
  \barNumberCheck 90
  <b d>8( <cs e> <b d> <fs cs'> <b d> <cs e> |
  <as g'>2 <as fs'>4) |
  <b d>8( <cs e> <b d> <fs cs'> <b d> <cs e> |
  <as g'>2 <as fs'>4) |
  <d fs>4( <fs, e'>8[) r16 q16]( <b d>4) |
  <b d>4( <es,cs'>8[) r16 q]^(~ <es b'>4) |
  << { as4 cs2(~^\sf | cs4 fs,) } \\ { fs2.~ | fs4 s4 } >> fs'->(~ |
  
  \barNumberCheck 98
  \key b \minor
  fs8 g fs cs d b |
  % like 2
  as2) fs'4->~( |
  fs8 g fs cs e d |
  b2) fs'4->~( |
  fs8 g es fs b d) |
  d4( es,) d'->(~ |
  d4 e,!) cs'->(~ |
  cs8 b as g fs cs |
  
  \barNumberCheck 106
  % like 9
  d8)( g fs cs d b |
  as2) fs'4->~( |
  fs8 g fs cs e d |
  b2) fs'4->-\slurShapeA (~ |
  fs8 fs' cs d as b |
  a!8 g b, cs d e |
  g8 fs b, d cs fs, |
  b4.)^\aTempo fs8( b bf |
  
  \barNumberCheck 114
  % like 33
  bf4.-!^\conAmina a8 cs e |
  g4. fs8 cs d |
  fs4. e8 b cs |
  e4. d8 cs b) |
  b4.-\slurShapeD ( a8 cs e |
  g4. fs8 cs d |
  fs4. e8 b cs |
  as4. cs8 g cs |
  
  \barNumberCheck 122
  % like 41
  fs,4.)-\slurShapeE (^\aTempo as8 cs e |
  g4. fs8 cs d |
  fs4. e8 b cs |
  e4. d8 cs b) |
  b4.( a8 cs e |
  g4. fs8 cs d |
  fs4.-! e8 fs' e |
  d cs c b as a |
  
  \barNumberCheck 130
  % like 49
  gs g fs cs d b |
  as4) r a'!( |
  gs8 g fs cs e d |
  b4) r a'( |
  gs8 g es fs b d) |
  d4( es,) d'->(~ |
  d4 e,!) cs'->( |
  c8 b as a gs g |
  
  \barNumberCheck 138
  % like 57
  fs8 f e d cs b |
  as2) g'4->( |
  fs8 g fs cs e d |
  b2) fs'4->-\slurShapeA ( |
  fs'8 cs d as b fs |
  a!8 g b, cs e g |
  g8 fs b, d cs fs, |
  b4) r r |
  \bar "|."
}

leftHand = \relative {
  \global
  \clef bass
  \partial 4 r4 |
  b,4 <fs' b d> q |
  cs4 <fs cs' e> q |
  % beats 2 and 3, cs in chord, not as, Urtext
  as,4 <fs' cs' e> q |
  b,4 <fs' b d> q |
  b,4 <fs' b d> q |
  b,4 <gs' b d> q |
  b,4 <g'! b e> q |
  b,4 <fs' cs' e> <fs as e'> |
  
  \barNumberCheck 9
  b,4 <fs' b d> q |
  cs4 <fs cs' e> q |
  fs,4 <fs' as e'> <fs cs' e> |
  b,4 <fs' b d> q |
  d4 <fs b d> q |
  e4 <b' cs g'> r |
  << { r4 <b d> <as e'> } \\ { fs2. } >> |
  <b d>4 b, r |
  
  \barNumberCheck 17
  % almost like 1
  b4 <fs' b d> q |
  cs4 <fs cs' e> q |
  % beat 3, cs in chord, not as, Urtext
  as,4 <fs' cs' e> q  |
  b,4 <fs' b d> q |
  b,4 <fs' b d> q |
  b,4 <gs' b d> q |
  b,4 <g'! b e> q |
  b,4 <fs' cs' e> <fs as e'> |
  
  \barNumberCheck 25
  b,4 <fs' b d> q |
  cs4 <fs cs' e> q |
  fs,4 <fs' as e'> <fs cs' e> |
  b,4 <fs' b d> q |
  d4 <fs b d> q |
  e4 <g cs> r |
  << { r4 <b d> <as e'> } \\ { fs2. } >> |
  b,4 <fs' d'> d |
  
  \barNumberCheck 33
  \repeat volta 2 {
    cs4 <g' a e'> q |
    d4 <fs a d> q |
    % beat 3, cs in chord, not as, Urtext
    a,4 <a' cs g'> <a e' g> |
    d,4 <a' d fs> q |
    cs,4 <a' e' g> q |
    d,4 <a' d fs> q |
    g,4 <g' b e> q |
    <fs, fs'>4 <fs' cs' e> <fs b e> |
    
    \barNumberCheck 41
    <fs, fs'>4 <fs' cs' e> <fs as e'> |
    b,4 <fs' b d> q |
    % beat 3, cs in chord, not as, Urtext
    a,4 <a' cs g'> <a e' g> |
    d,4 <a' d fs> q |
    cs,4 <a' e' g> q |
    d,4 <a' d fs> q |
    g,4 <g' e'> r |
    fs,4 <fs' e'> as, |
    
    \barNumberCheck 49
    b4 <fs' d'> q |
    cs4 <fs cs' e> q |
    as,4 <fs' cs' e> q |
    b,4 <fs' b d> q |
    b,4 <fs' b d> q |
    b,4 <gs' b d> q |
    b,4 <g'! b e> q |
    b,4 <fs' as e'> q |
    
    \barNumberCheck 57
    b,4 <fs' b d> q |
    cs4 <fs cs' e> q |
    as,4 <fs' cs' e> q |
    b,4 <fs' b d> q |
    d4 <fs b d> q |
    e4 <g cs> r |
    << { r4 <b d> <as e'> } \\ { fs2. } >> |
    \alternative {
      { b,4 <fs' d'> d | }
      { <b' d> b, r }
    }
  }
  
  \barNumberCheck 66
  \key b \major
  b4 <fs' b ds> q |
  as,4 <fs' cs' e> q |
  b,4 <fs' b ds> q |
  as,4 <fs' cs' e> q |
  b,4 <fs' b ds> q |
  fs,4 <fs' as e'> q |
  b,4 <fs' b ds> q |
  fs,4 <fs' as e'> q |
  
  \barNumberCheck 74
  b,4 <fs' b ds> q |
  as,4 <fs' cs' e> q |
  b,4 <fs' b ds> q |
  as,4 <fs' cs' e> q |
  b,4 <fs' b ds> <gs b ds> |
  cs,4 <as' cs fs> q |
  cs,4 <gs' cs es> q |
  fs,4 <fs' cs' e!> q |
  
  \barNumberCheck 82
  b,4 <fs' b ds> q |
  fs, <fs' cs' e> q |
  b,4 <fs' b ds> q |
  fs, <fs' cs' e> q |
  b,4 <fs' b ds> q |
  % beat 2 and 3, as in chord, not cs, Urtext
  fs, <fs' as e'> q |
  b,4 <fs' b ds> q |
  fs, <fs' cs' e> q |
  
  \barNumberCheck 90
  b,4 <fs' b d> q |
  fs, <fs' cs' e> q |
  b,4 <fs' b d> q |
  fs, <fs' e'> q |
  b,4 <fs' d'> b, |
  % measures 95, 96 follow Urtext
  g4 <cs b'> g |
  fs4 <cs' as'> q |
  fs,4 <fs' as e'!> q |
  
  \barNumberCheck 98
  \key b \minor
  b,,4 <fs'' b d> q |
  % like 2
  cs4 <fs cs' e> q |
  % beats 2 and 3, cs in chord, not as, Urtext
  as,4 <fs' cs' e> q |
  b,4 <fs' b d> q |
  b,4 <fs' b d> q |
  b,4 <gs' b d> q |
  b,4 <g'! b e> q |
  b,4 <fs' cs' e> <fs as e'> |
  
  \barNumberCheck 106
  % like 9
  b,4 <fs' b d> q |
  cs4 <fs cs' e> q |
  fs,4 <fs' as e'> <fs cs' e> |
  b,4 <fs' b d> q |
  d4 <fs b d> q |
  e4 <b' cs g'> r |
  << { r4 <b d> <as e'> } \\ { fs2. } >> |
  b,4 <fs' d'> d |
  
  \barNumberCheck 114
  % like 33
  cs4 <g' a e'> q |
  d4 <fs a d> q |
  % beat 3, cs in chord, not as, Urtext
  a,4 <a' cs g'> <a e' g> |
  d,4 <a' d fs> q |
  cs,4 <a' e' g> q |
  d,4 <a' d fs> q |
  g,4 <g' b e> q |
  <fs, fs'>4 <fs' cs' e> <fs b e> |
  
  \barNumberCheck 122
  % like 41
  <fs, fs'>4 <fs' cs' e> <fs as e'> |
  b,4 <fs' b d> q |
  a,4 <a' cs g'> <a e' g> |
  d,4 <a' d fs> q |
  cs,4 <a' e' g> q |
  d,4 <a' d fs> q |
  g,4 <g' e'> r |
  fs,4 <fs' e'> as, |
  
  \barNumberCheck 130
  % like 49 
  b4 <fs' d'> q |
  cs4 <fs cs' e> q |
  as,4 <fs' cs' e> q |
  b,4 <fs' b d> q |
  b,4 <fs' b d> q |
  b,4 <gs' b d> q |
  b,4 <g'! b e> q |
  b,4 <fs' as e'> q |
  
  \barNumberCheck 138
  % like 57
  b,4 <fs' b d> q |
  cs4 <fs cs' e> q |
  % beat 2, cs in chord, not as, Urtext
  as,4 <fs' cs' e> q |
  b,4 <fs' b d> q |
  d4 <fs b d> q |
  e4 <g cs> r |
  << { r4 <b d> <as e'> } \\ { fs2. } >> |
  <b d>4 b, r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \partial 4 s4 |
  s2.\p |
  s2. * 3 |
  s2\< s8 s\! |
  s2.\f |
  s2. |
  s2\> s8 s\! |
  
  \barNumberCheck 9
  s2. * 5 |
  s2 s4^\rit |
  s4 s2-\tweak Y-offset 1 ^\parenthesize^\dim |
  s2\> s8 s\! |
  
  \barNumberCheck 17
  % like 1
  s2.\p |
  s2. * 3 |
  s2\< s8 s\! |
  s2.\f |
  s2. |
  s2\> s8 s\! |
  
  \barNumberCheck 25
  s2. * 5 |
  s2 s4^\rit |
  s4 s2-\tweak Y-offset 1 \parenthesize\dim |
  s2.\! |
  
  \barNumberCheck 33
  \repeat volta 2 {
    s4. s4\< s8\! |
    s2\> s8 s\! |
    s2. * 2 |
    s4. s4\< s8\! |
    s2\> s8 s\! |
    s2. |
    s2.^\rit |
    
    \barNumberCheck 41
    s4. s4\< s8\! |
    s2\> s8 s\! |
    s2\> s8 s\! |
    s2\> s8 s\! |
    s4. s4\< s8\! |
    s2\> s8 s\! |
    s2 s4\f |
    s2 s8 s^\dimParen |
    
    \barNumberCheck 49
    s2. |
    s2 s4-\tweak Y-offset 1 \sf |
    \tag layout { s2. } \tag midi { s2.\f } |
    s2 s4-\tweak Y-offset 1 \sf |
    \tag layout { s2\< } \tag midi { s2\f\< } s8 s\! |
    s2.\f |
    s2. |
    s4 s2\parenthesize\dim |
    
    \barNumberCheck 57
    s2. |
    s2.\! |
    s2. * 2 |
    s2.\f |
    s2 s4^\rit |
    s2.-\tweak Y-offset 1 \parenthesize\dim |
    \alternative {
      { s4 s2\! | }
      { s4 s2\! | }
    }
  }
  
  \barNumberCheck 66
  % key of b major
  s2.^\mfDolce |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 74
  s2. |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2.^\pocoCresc |
  s2. * 3 |
  
  \barNumberCheck 82
  s2. |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2. * 4 |
  
  \barNumberCheck 90
  s2.\cresc |
  s2\> s8 s\! |
  s2. |
  s2\> s8 s\! |
  s2.\dim |
  s2. |
  s2.\parenthesize\p |
  s2. |
  
  \barNumberCheck 98
  % key of b minor
  s2.\f |
  s2. * 3 |
  s2\< s8 s\! |
  s2.\f |
  s2. |
  s2\> s8 s\! |
  
  \barNumberCheck 106
  s2. * 5 |
  s2 s4-\tweak Y-offset -1.5 ^\rit |
  s2.\parenthesize\dim |
  s2.\! |
  
  \barNumberCheck 114
  % like 33
  s4. s4\< s8\! |
  s2\> s8 s\! |
  s2. * 2 |
  s4. s4\< s8\! |
  s2\> s8 s\! |
  s2. |
  s2.^\rit |
  
  \barNumberCheck 122
  % like 41
  s4. s4\< s8\! |
  s2\> s8 s\! |
  s2\> s8 s\! |
  s2\> s8 s\! |
  s4. s4\< s8\! |
  s2\> s8 s\! |
  s2 s4-\tweak Y-offset -1 \f |
  s4.. s16-\tweak Y-offset -1 ^\dimParen s4 |
  
  \barNumberCheck 130
  % like 49
   s2. |
   s2 s4\sf |
  \tag layout { s2. } \tag midi { s2.\f } |
  s2 s4-\tweak Y-offset 1 \sf |
  \tag layout { s2\< } \tag midi { s2\f\< } s8 s\! |
  s2.\f |
  s2. |
  s2.^\dimERit
  
  \barNumberCheck 138
  s2. * 4 |
  s2.\f |
  s2.^\calando |
  s2. * 2 |
}

tempi = {
  \tempo "Moderato" 4 = 152
  \partial 4 s4 |
  \set Score.tempoHideNote = ##t
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 5 |
  s2 \tempo 4 = 144 s4 |
  s2. |
  \tempo 4= 138
  s2. |
  
  \barNumberCheck 17
  \tempo 4 = 152
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 5 |
  s2 \tempo 4 = 138 s4 |
  s2. |
  s4. \tempo 4 = 152 s |
  
  \repeat volta 2 {
    \tempo 4 = 160
    \barNumberCheck 33
    s2. * 7 |
    \tempo 4 = 138
    s2. |
    
    \barNumberCheck 41
    \tempo 4 = 160
    s2. * 8 |
    
    \barNumberCheck 49
    s2. * 8 |
    
    \barNumberCheck 57
    s2. * 5 |
    s2 \tempo 4 = 138 s4 |
    s2. |
    \alternative {
      { s4. \tempo 4 = 160 s | }
      { s2 \tempo 4 = 152 s4 | }
    }
  }
  
  \barNumberCheck 66
  s2. * 8 |
  
  \barNumberCheck 74
  s2. * 8 |
  
  \barNumberCheck 82
  s2. * 8 |
  
  \barNumberCheck 90
  s2. * 8 |
  
  \barNumberCheck 98
  s2. * 8 |
  
  \barNumberCheck 106
  s2. * 5 |
  s2 \tempo 4 = 138 s4 |
  s2. |
  \tempo 4 = 152
  s2. |
  
  \barNumberCheck 114
  \tempo 4 = 160
  s2. * 7 |
  \tempo 4 = 138
  s2. |
  
  \barNumberCheck 122
  \tempo 4 = 160
  s2. * 7 |
  \tempo 4 = 138
  s2. |
  
  \barNumberCheck 130
  \tempo 4 = 152
  s2. * 8 |
  
  \barNumberCheck 138
  s2. * 5 |
  \tempo 4 = 144
  s2. |
  \tempo 4 = 138
  s2. |
  \tempo 4 = 126
  s2. |
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
  s2\sd s4\su |
  s2. |
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
  s2\sd s4\su |
  s2. * 2 |
  
  \barNumberCheck 33
  \repeat volta 2 {
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2. |
    
    \barNumberCheck 41
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s4\su |
    s4.\sd s\su |
    
    \barNumberCheck 49
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    
    \barNumberCheck 57
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s4\su |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 66
  % key of b major
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 74
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 82
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 90
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 98
  % key of b minor
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 106
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  
  \barNumberCheck 114
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 122
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 130
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 138
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2. * 2 |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
}

waltzTwoNotes =
\score {
  \header {
    title = "Waltz Two"
    composer = "Frédéric Chopin"
    opus = "Opus 69, No. 2"
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

waltzTwoMidi =
\book {
  \bookOutputName "waltz-op69-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
