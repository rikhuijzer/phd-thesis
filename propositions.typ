#let font = "EB Garamond"
// Use to test whether font is used.
// Fallback true needed for Gronnerod in some fonts.
#let fallback = true
#set text(font: font, fallback: fallback, size: 14pt)

// A5
#set page(
  width: 148mm,
  height: 210mm,
  margin: (top: 22mm, bottom: 22mm),
  footer: none,
)

#align(center)[
  #set text(size: 20pt)
  Propositions
]
\
#align(center)[
  Belonging to the dissertation \
  *Predicting Dropout in Special Forces Selection* \
  by Rik Huijzer
]
\
+ We can predict dropout in special forces selection reasonably well, but validation in practice is necessary (this thesis).
+ Physical measures are more predictive of dropout in special forces selection than psychological measures (this thesis).
+ It is easier to predict dropout than to predict graduation (this thesis).
+ Psychology's near-total focus on explaining the causes of behavior has led to theories with little (or unknown) ability to accurately predict future behaviors (this thesis).
+ Machine learning's near-total focus on predictive performance has led to accurate models with possibly unsafe, unfair, or unreliable predictions (this thesis).
+ A solution is to combine prediction and explanation (this thesis).
+ Recognize reality even when you don't like it. Especially when you don't like it (Charlie Munger).
