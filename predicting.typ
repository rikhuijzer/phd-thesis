#import "style.typ": style
#import "functions.typ": bib, title, header, only
#show: style.with(
  title: title()
)

// https://www.rug.nl/education/phd-programmes/promotieregeling/
// Note the PhD Regulations University of Groningen 2022 file.

#set page(header: header("Introduction"))
#include "chapters/introduction.typ"
#set page(header: header("Chapter 2"))
#include "chapters/2.typ"
#set page(header: header("Chapter 3"))
#include "chapters/3.typ"
#set page(header: header("Chapter 4"))
#include "chapters/4.typ"
#set page(header: header("Chapter 5"))
#include "chapters/5.typ"
#set page(header: header("Discussion"))
#include "chapters/discussion.typ"
#set page(header: header("Nederlandse samenvatting"))
#include "chapters/nederlandse-samenvatting.typ"

#set page(header: header("Bibliography"))
#bib()

// #set page(header: header("Acknowledgements"))
// #include "chapters/acknowledgements.typ"
