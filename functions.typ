#let only(values) = {
  assert(values.len() == 1, message: "Expected an array of length 1")
  values.first()
}

#let title() = "Predicting Dropout in Special Forces Selection"

#let textcite(
  label,
  supplement: none,
) = {
  cite(
      label,
      supplement: supplement,
      form: "prose",
  )
}

// Parenthetical citation without surrounding braces.
// Thanks to https://github.com/typst/typst/issues/1139#issuecomment-2002940931.
#let parencite(
  label
) = context {
  // I probably can fix the not-showing-et-al bug but I need to figure out what cite calls.
  [#cite(label, form: "author"), #cite(label, form:"year")]
}

#let avoid_indent() = context [
  #v(-0.5cm)
  \
]

// Ensure that the next page starts on the right.
#let pagebreak_to_right() = context [
  #pagebreak()
  #if calc.even(only(counter(page).get())) [
    #pagebreak()
  ]
]

#let chapter(
  title,
  label: none,
  abstract: none
) = context {
  let based_on = if label != none [
    #set text(size: 9pt)
    _This chapter is based on:_ #v(0pt) \
    #set text(size: 8pt)
    #label
  ] else [
  ]
  let abstract_text = if label != none [
    === Abstract
    #abstract
  ] else [
  ]
  let chapter_selector = selector(
    heading.where(level: 1)
  ).before(here())
  let chapter_num = only(counter(chapter_selector).get()) + 1
  [
    #pagebreak()
    #show heading.where(level: 1): it => [
      #set text(0pt)
    ]
    // This heading is shown in the Table of Contents,
    // but hidden from the chapter page.
    #par(justify: false)[
      = #title
      #if chapter_num in range(2, 6) [
        #text([CHAPTER #chapter_num], style: "italic", size: 12pt) \
      ]
      \
      #text(title, weight: "bold", size: 16pt) \
      #if label != none [
        \
        #based_on
        \
      ]
    ]
    // Basically nested if is an and.
    #if abstract != none [
      #if label != none [
        #abstract_text
        #pagebreak()
      ]
    ]
  ]
}

#let header(
  current_heading
) = context {
  let num = only(counter(page).get())
  let is_left_page = calc.even(num)
  set text(size: 9pt)
  set text(fill: gray)
  if is_left_page [
    #upper(title())
  ] else [
    #h(1fr)
    #upper(current_heading)
  ]
}

#let bib() = {
  set par(
    first-line-indent: 0em,
    justify: false,
  )
  [= Bibliography]
  set text(size: 7pt)
  bibliography("references.bib", title: none, style: "apa.csl")
}

#let note(
  txt
) = {
  assert(type(txt) == content, message: "Expected content type")
  let elems = txt.children
  if elems.last() == [ ] {
    elems.pop()
  }
  let last_child = elems.last()
  let last_txt = last_child.text.trim(regex("\n| "))
  assert(last_txt.ends-with("."), message: "Note did not end with a dot")
  set text(size: 8pt, top-edge: 0.7em)
  set align(left)
  [_Note._ #txt #linebreak()]
}
