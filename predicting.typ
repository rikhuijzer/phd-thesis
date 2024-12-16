#import "style.typ": style
#import "functions.typ": bib, title, header, only

#set page(
    width: 170mm,
    height: 240mm,
    margin: (top: 26mm, bottom: 24mm, left: 24mm, right: 24mm),
    footer: none,
)

#include "title-page.typ"
#pagebreak() // For title page.

#show: style.with(
  title: title()
)

// https://www.rug.nl/education/phd-programmes/promotieregeling/
// Note the PhD Regulations University of Groningen 2022 file.

// Not using hydra because I couldn't figure out how to tweak it.
#set page(header: header(""))
#include "chapters/introduction.typ"
#set page(header: header(""))
#include "chapters/2.typ"
#set page(header: header(""))
#include "chapters/3.typ"
#set page(header: header(""))
#include "chapters/4.typ"
#set page(header: header(""))
#include "chapters/5.typ"
#set page(header: header(""))
#include "chapters/discussion.typ"
#set page(header: header(""))
#include "chapters/nederlandse-samenvatting.typ"

// To go to the right side.
#pagebreak()
#pagebreak()
#set page(header: header("Bibliography"))
#bib()

// #set page(header: header(""))
// #include "chapters/acknowledgements.typ"
