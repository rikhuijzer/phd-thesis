
// Duplicate of main doc, to allow stand-alone compilation.
#set page(
    // Slow Productivity is 14.61 x 21.69 cm (almost A5).
    // European printers all use A5.
    width: 148mm, // 15.24 cm
    height: 210mm, // 22.86 cm
    margin: (top: 13mm, bottom: 16mm),
)

#set text(font: "Georgia", size: 18pt)

#image("images/rugr_logoen_zwart_rgb.jpg", width: 50%)

#v(2em)

#align(center)[
  *Predicting Dropout in Special Forces Selection*
]

#v(3em)

#set text(size: 10pt)
#align(center)[
  *PhD thesis*
]

#v(3em)

#set text(size: 8pt)
#align(center)[
  to obtain the degree of PhD at the\
  University of Groningen\
  on the authority of the\
  Rector Magnificus Prof. J.M.A. Scherpen\
  and in accordance with\
  the decision by the College of Deans.\

  This thesis will be defended in public on\

  Monday 17 February 2025 at 16.15 hours
]

#v(3em)

#align(center)[
  by
]

#v(3em)

#align(center)[
  *Rik Huijzer*
]

#align(center)[
  born on
  #include("birthdate.typ")
]

#pagebreak()

#set text(font: "Cambria", size: 8pt)

*Promotores*\
Prof. R.J.R. den Hartigh\
Prof. P. de Jonge\
\
*Copromotor*\
Dr. F.J. Blaauw\
\
*Assessment Committee*\
Prof. R.R. Meijer\
Prof. G. Azzopardi\
Prof. S. Verstockt\
