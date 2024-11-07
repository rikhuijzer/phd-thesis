#import "functions.typ": only

#let table_of_contents() = context {
  let chapter_selector = selector(
    heading.where(level: 1)
  )
  let chapters = query(chapter_selector)
  let numbers = range(1, chapters.len() + 1)
  [
    \
    #text(upper("Table of Contents"), style: "italic", size: 12pt) \
    \
    #table(
      columns: (auto, auto),
      align: (left, right + bottom),
      ..for (i, chapter) in numbers.zip(chapters) {
        let papers = range(2, 6)
        let chapter_text = if i in papers [
          \
          #text("Chapter " + str(i), style: "italic", size: 8pt) \
          #chapter.body
        ] else [
          #if i == 6 [
            \
          ]
          // Summary and bibliography are sort of separate from the discussion.
          #if i == 7 [
            \
            \
          ]
          #chapter.body
        ]
        let loc = chapter.location()
        let page_number = loc.page() - 4
        let chapter_link = [#link(loc)[#page_number]]
        (chapter_text, chapter_link)
      }
    )

    \
  ]
}

#let figure_num(fig) = {
  let chapter_selector = selector(
    heading.where(level: 1)
  ).before(fig.location())
  // Re-count all chapters because we cannot easily grab the current chapter
  // number from the chapter (heading) element.
  let chapter_num = only(counter(chapter_selector).get())

  // Not handling empty case because figures come only after first chapter.
  let chapter = query(chapter_selector).last()
  let chapter_figs = selector(
    figure.where(kind: fig.kind)
  ).after(chapter.location()).before(fig.location())
  // Counter gives the wrong result for some reason.
  let fig_num = query(chapter_figs).len()
  [#chapter_num.#fig_num]
}

// I couldn't get the set and show for figure right, so
// as a workaround let's just use custom functions.
#let citefig(label) = context {
  let matches = query(selector(label))
  let fig = only(matches)
  link(fig.location())[#figure_num(fig)]
}

#let style(
  title: "Placeholder title",
  body
) = {
  show heading.where(
    depth: 1
  ): set heading(numbering: "1", supplement: [Chapter])

  show heading.where(
    depth: 2
  ): set heading(numbering: "1.1")

  show heading: set block(above: 1.4em, below: 1em)

  show figure: fig => context {
    // Contains fields: body, kind, supplement ([Figure]), numbering, counter.
    let caption = fig.caption
    let sup = caption.supplement
    let txt = caption.body.text
    assert(not txt.ends-with("."), message: "Caption ends with a dot")

    block(width: 100%)[
      // Having note not justified next to caption is okay because it further
      // distinguishes the note from the body of the text.
      #set par(justify: false)
      #set align(left)
      *#sup #figure_num(fig)* \
      _ #text(txt, size: 9pt) _
      #align(center)[
        #fig.body
      ]
    ]
  }

  set par(
    first-line-indent: 1em,
    justify: true,
  )

  // Automatically uses the bibliography style.
  let style = auto
  set cite(style: style)

  set table(
    stroke: none,
  )

  // Adobe Garamond Pro is nice but arguably does look a bit old fashion.
  // Baskerville is a bit more "straight" to the point, but has some fun on italics too.
  // Baskerville also has a slightly military touch to it.
  // But is a bit too curly on the number 2.
  // EurotypoBKL is more new but looks a bit like a cheap font.
  //
  // EB Garamond is good enough and is free.
  let font = "EB Garamond"
  // Use to test whether font is used.
  // Fallback true needed for Gronnerod in some fonts.
  let fallback = true
  set text(font: font, fallback: fallback, size: 10pt)
  table_of_contents()
  pagebreak() // Force blank back page.
  counter(heading).update(0)
  counter(page).update(0)

  set page(
        footer: context {
          set text(size: 9pt)
          let num = only(counter(page).get())
          if 0 < num {
            let is_left_page = calc.even(num)
            if is_left_page [
              #num
            ] else [
              #h(1fr)
              #num
            ]
          }
        }
  )

  set text(font: font, fallback: fallback, size: 10pt, top-edge: 1em)
  set par(spacing: 0.7em)

  // Includes code blocks and inline code.
  show raw: set text(size: 6.4pt)

  // Display the content.
  body
}
