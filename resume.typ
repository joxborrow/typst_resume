// Set page defaults
#set page(
    paper: "us-letter",
    margin: (left: 5mm, right: 5mm, top: 5mm, bottom: 5mm)
)

// Set paragraph defaults
#set par(justify: true)

// Set Text Defaults
#set text(
  font: "Arial",
  size: 12pt,
)

// Set Block defaults
#set block(fill: rgb("#FFFFFF"),
       radius: 4pt,
       width: 100%,
       inset: .5em,
       above: .5em,
       below: .5em

    )

// Custom parameters
#let header_color = "BCC79E"

// Custom Functions
#let section_heading(string) = block(text(string, 
                                          fill: white, 
                                          size: 1.2em), 
                                     fill: rgb(black)
                                     )

//******************************************************************************
// Content
// *****************************************************************************

#block(fill: rgb(header_color))[
    #align(center)[
    #text(size: 2em)[Jonathan T. Oxborrow] #linebreak()
    Economics, S&OP and Pricing Analytics Professional #linebreak()
    Washington, IL 61571 || USA
    ]
]

#section_heading("Experience")

#grid(
    columns: (1fr, 2fr),
    inset: 2pt,
    align(left)[
        Analytics Manager #linebreak()
        Global Parts Pricing #linebreak()
        Caterpillar Inc., 11/2020-Present
    ],
    align(left)[
        #lorem(40)
    ]
)

#lorem(60)

#section_heading("Education")

#lorem(60)

#section_heading("Certifications")

#lorem(60)

#section_heading("Leadership Qualities & Training")

#lorem(60)

#section_heading("Analytic & Technical Skills")

#lorem(60)

#section_heading("Languages, Projects, and Activities")

#lorem(60)
