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

  % 1. C-Dur
\key c \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "C-Dur" }
c'8 d' e' f' g' a' b' c'' | d'' c'' b' a' g' f' e' d' \bar "|"
c'4 e'8 g' c''4 g'8 e' | c'1 \bar "|." \break

% 2. G-Dur
\key g \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "G-Dur" }
g'8 a' b' c'' d'' e'' fis'' g'' | a'' g'' fis'' e'' d'' c'' b' a' \bar "|"
g'4 b'8 d'' g''4 d''8 b' | g'1 \bar "|." \break

% 3. D-Dur
\key d \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "D-Dur" }
d'8 e' fis' g' a' b' cis'' d'' | e'' d'' cis'' b' a' g' fis' e' \bar "|"
d'4 fis'8 a' d''4 a'8 fis' | d'1 \bar "|." \break

% 4. A-Dur
\key a \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "A-Dur" }
a'8 b' cis'' d'' e'' fis'' gis'' a'' | b'' a'' gis'' fis'' e'' d'' cis'' b' \bar "|"
a'4 cis''8 e'' a''4 e''8 cis'' | a'1 \bar "|." \break

% 5. E-Dur
\key e \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "E-Dur" }
e'8 fis' gis' a' b' cis'' dis'' e'' | fis'' e'' dis'' cis'' b' a' gis' fis' \bar "|"
e'4 gis'8 b' e''4 b'8 gis' | e'1 \bar "|." \break

% 6. H-Dur
\key b \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "H-Dur" }
b8 cis' dis' e' fis' gis' ais' b' | cis'' b' ais' gis' fis' e' dis' cis' \bar "|"
b4 dis'8 fis' b'4 fis'8 dis' | b1 \bar "|." \break

% 7. Fis-Dur
\key fis \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "Fis-Dur" }
fis'8 gis' ais' b' cis'' dis'' eis'' fis'' | gis'' fis'' eis'' dis'' cis'' b' ais' gis' \bar "|"
fis'4 ais'8 cis'' fis''4 cis''8 ais' | fis'1 \bar "|." \break

  % 8. F-Dur
\key f \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "F-Dur" }
f'8 g' a' bes' c'' d'' e'' f'' | g'' f'' e'' d'' c'' bes' a' g' \bar "|"
f'4 a'8 c'' f''4 c''8 a' | f'1 \bar "|." \break

% 9. B-Dur
\key bes \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "B-Dur" }
bes'8 c'' d'' es'' f'' g'' a'' bes'' | c''' bes'' a'' g'' f'' es'' d'' c'' \bar "|"
bes'4 d''8 f'' bes''4 f''8 d'' | bes'1 \bar "|." \break

% 10. Es-Dur
\key es \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "Es-Dur" }
es'8 f' g' as' bes' c'' d'' es'' | f'' es'' d'' c'' bes' as' g' f' \bar "|"
es'4 g'8 bes' es''4 bes'8 g' | es'1 \bar "|." \break

% 11. As-Dur
\key as \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "As-Dur" }
as'8 bes' c'' des'' es'' f'' g'' as'' | bes'' as'' g'' f'' es'' des'' c'' bes' \bar "|"
as'4 c''8 es'' as''4 es''8 c'' | as'1 \bar "|." \break

% 12. Des-Dur
\key des \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "Des-Dur" }
des'8 es' f' ges' as' bes' c'' des'' | es'' des'' c'' bes' as' ges' f' es' \bar "|"
des'4 f'8 as' des''4 as'8 f' | des'1 \bar "|." \break

% 13. Ges-Dur
\key ges \major
\once \override Score.RehearsalMark.self-alignment-X = #LEFT
\mark \markup { \bold "Ges-Dur" }
ges'8 as' bes' ces'' des'' es'' f'' ges'' | as'' ges'' f'' es'' des'' ces'' bes' as' \bar "|"
ges'4 bes'8 des'' ges''4 des''8 bes' | ges'1 \bar "|."
}