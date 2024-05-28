\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

underSlur = \tweak outside-staff-priority ##f \etc

pocoAPocoCresc = 
  \makeSpanner \markup \large \italic \whiteout \pad-markup #0.25 
  "poco a poco cresc."

%
% Markup
%

calando = \markup \large \italic calando
rit = \markup \large \italic rit.
dimParen = \markup \large \italic \whiteout \pad-markup #0.25 (dim.)
dimERit = \markup \large \italic "(dim. e) rit."
ten = \markup \large \italic ten.
dolce = \markup \large \italic dolce
aTempo = \markup \large \italic "a tempo"
conAmina = \markup \large \italic "con anima"
conForza = \markup \large \italic "con forza"
pocoCresc = \markup \large \italic "poco cresc."
pConEspressione = 
  \markup { \dynamic p \large \italic \whiteout "con espressione" } 
mfDolce = \markup { \dynamic mf \large \italic dolce }
