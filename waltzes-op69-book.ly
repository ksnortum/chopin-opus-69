%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/waltz-op69-no1-parts.ily"
\include "includes/waltz-op69-no2-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDF

\tocItem \markup \concat { 
  "No. 1, Lento in A" \raise #0.75 \teeny \flat " major" 
}
\waltzOneNotes
\pageBreak

\tocItem \markup "No. 2, Moderato in B minor"
\waltzTwoNotes

% Midi

\waltzOneMidi
\waltzTwoMidi
