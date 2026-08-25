\version "2.22.0"

\header {
  title = "Dur-Tonleitern und Akkorde im Violinschlüssel"
  subtitle = "
  
  "
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  top-margin = 10\mm
  bottom-margin = 10\mm
  left-margin = 15\mm
  right-margin = 15\mm
  indent = 0\mm
  ragged-last-bottom = ##f
  system-system-spacing =
    #'((basic-distance . 8.5)
       (minimum-distance . 7.0)
       (padding . 1.5)
       (stretchability . 60))
}

\layout {
  \context {
    \Score
    \override BarNumber.stencil = ##f
  }

  \context {
    \Staff

    % Neue Tonart nicht am Ende der vorherigen Zeile anzeigen,
    % sondern nur am Anfang der neuen Zeile
    explicitKeySignatureVisibility = ##(#f #f #t)

    % Keine Auflösungszeichen am Zeilenende
    printKeyCancellation = ##f

    \override KeySignature.break-visibility = ##(#f #f #t)
    \override KeyCancellation.break-visibility = ##(#f #f #f)
  }
}

\new Staff {
  \clef treble

  \set Staff.explicitKeySignatureVisibility = ##(#f #f #t)
  \set Staff.printKeyCancellation = ##f

% 1. a-Moll
\key a \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "a-Moll" }
a'8 b' c'' d'' e'' f'' g'' a'' | b'' a'' g'' f'' e'' d'' c'' b' \bar "|"
a'4 c''8 e'' a''4 e''8 c'' | a'1 \bar "|." \break

% 2. e-Moll
\key e \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "e-Moll" }
e'8 fis' g' a' b' c'' d'' e'' | fis'' e'' d'' c'' b' a' g' fis' \bar "|"
e'4 g'8 b' e''4 b'8 g' | e'1 \bar "|." \break

% 3. h-Moll
\key b \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "h-Moll" }
b'8 cis'' d'' e'' fis'' g'' a'' b'' | cis''' b'' a'' g'' fis'' e'' d'' cis'' \bar "|"
b'4 d''8 fis'' b''4 fis''8 d'' | b'1 \bar "|." \break

% 4. fis-Moll
\key fis \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "fis-Moll" }
fis'8 gis' a' b' cis'' d'' e'' fis'' | gis'' fis'' e'' d'' cis'' b' a' gis' \bar "|"
fis'4 a'8 cis'' fis''4 cis''8 a' | fis'1 \bar "|." \break

% 5. cis-Moll
\key cis \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "cis-Moll" }
cis'8 dis' e' fis' gis' a' b' cis'' | dis'' cis'' b' a' gis' fis' e' dis' \bar "|"
cis'4 e'8 gis' cis''4 gis'8 e' | cis'1 \bar "|." \break

% 6. gis-Moll
\key gis \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "gis-Moll" }
gis'8 ais' b' cis'' dis'' e'' fis'' gis'' | ais'' gis'' fis'' e'' dis'' cis'' b' ais' \bar "|"
gis'4 b'8 dis'' gis''4 dis''8 b' | gis'1 \bar "|." \break

% 7. dis-Moll
\key dis \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "dis-Moll" }
dis'8 eis' fis' gis' ais' b' cis'' dis'' | eis'' dis'' cis'' b' ais' gis' fis' eis' \bar "|"
dis'4 fis'8 ais' dis''4 ais'8 fis' | dis'1 \bar "|." \break

% 8. d-Moll
\key d \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "d-Moll" }
d'8 e' f' g' a' bes' c'' d'' | e'' d'' c'' bes' a' g' f' e' \bar "|"
d'4 f'8 a' d''4 a'8 f' | d'1 \bar "|." \break

% 9. g-Moll
\key g \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "g-Moll" }
g'8 a' bes' c'' d'' es'' f'' g'' | a'' g'' f'' es'' d'' c'' bes' a' \bar "|"
g'4 bes'8 d'' g''4 d''8 bes' | g'1 \bar "|." \break

% 10. c-Moll
\key c \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "c-Moll" }
c'8 d' es' f' g' as' bes' c'' | d'' c'' bes' as' g' f' es' d' \bar "|"
c'4 es'8 g' c''4 g'8 es' | c'1 \bar "|." \break

% 11. f-Moll
\key f \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "f-Moll" }
f'8 g' as' bes' c'' des'' es'' f'' | g'' f'' es'' des'' c'' bes' as' g' \bar "|"
f'4 as'8 c'' f''4 c''8 as' | f'1 \bar "|." \break

% 12. b-Moll
\key bes \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "b-Moll" }
bes'8 c'' des'' es'' f'' ges'' as'' bes'' | c''' bes'' as'' ges'' f'' es'' des'' c'' \bar "|"
bes'4 des''8 f'' bes''4 f''8 des'' | bes'1 \bar "|." \break

% 13. es-Moll
\key es \minor
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "es-Moll" }
es'8 f' ges' as' bes' ces'' des'' es'' | f'' es'' des'' ces'' bes' as' ges' f' \bar "|"
es'4 ges'8 bes' es''4 bes'8 ges' | es'1 \bar "|."
}