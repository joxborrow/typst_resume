// Imports
#import "@preview/cades:0.3.0": qr-code

// Custom parameters
#let header_color = rgb("BCC79E")
#let footer_color = rgb("#000000")
#let paragraph_font = "Lato"
#let paragraph_font_size = 10pt
#let title_font = "Lato"

// Set page defaults
#set page(
    paper: "us-letter",
    margin: (left: 0mm, right: 0mm, top: 18mm, bottom: 8mm),
    header-ascent: 0pt,
    header: place(top + center)[
                  #block(fill: header_color)[
                    #align(center)[
                        #text(size: 2em, 
                        font: title_font,
                        weight: "semibold")[Jonathan T. Oxborrow] #linebreak()
                        Economics, S&OP and Pricing Analytics Professional #linebreak()
                        Washington, IL 61571 || USA
                    ]
                  ]
            ],
    footer-descent: 0pt,
    footer: place(bottom + center)[
        #block(fill: footer_color,
               radius: (top-right: 2mm,
                        top-left: 2mm),
               above: .0em,
               below: .0em
              )[#text(fill: white,
                            weight: "semibold", 
                            size: 1.2em)[Testing]]
    ]  
)

// Set paragraph defaults
#set par(justify: true)

// Set Text Defaults
#set text(
  font: paragraph_font,
  size: paragraph_font_size,
)

// Set Block defaults
#set block(fill: rgb("#FFFFFF"),
       radius: 0pt,
       width: 100%,
       inset: .5em,
       above: .5em,
       below: .5em
    )

// Custom Functions
#let section_heading(string) = block(text(string, 
                                          fill: white,
                                          weight: "semibold", 
                                          size: 1.2em), 
                                     fill: rgb(black),
                                     radius: 2mm,
                                     above: .5em,
                                     below: .5em
                                     )

#let top_section_heading(string) = block(text(string, 
                                              fill: white,
                                              weight: "semibold", 
                                              size: 1.2em), 
                                         fill: rgb(black),
                                         radius: (bottom-right: 2mm,
                                                  bottom-left: 2mm),
                                         above: 0em,
                                         below: 0em
                                         )

#let exp_entry(line1, 
               line2, 
               line3,
               content) = {grid(columns: (.8fr, 2fr),
                                inset: .0em,
                                align(left + top)[
                                    #v(.5em)
                                    #text(line1, weight: "bold") #linebreak()
                                    #line2 #linebreak()
                                    #line3
                                ],
                                align(left + top)[
                                    #content
                                ]
                               )
                          }

#let edu_entry(line1, 
               line2, 
               content) = {grid(columns: (.8fr,2fr),
                                gutter: 8pt,
                                inset: .0em,
                                align(left + top)[
                                    #v(.5em)
                                    #text(line1, weight: "bold") #linebreak()
                                    #line2 #linebreak()
                                ],
                                align(left + top)[
                                    #content
                                ]
                               )
                          }

//******************************************************************************
// Content
// *****************************************************************************


#top_section_heading("Experience")

#exp_entry("Analytics Manager/Team Lead", 
           "Global Parts Pricing",
           "Caterpillar Inc., 11/2020-Present")[
            #list(
            [Team Leadership in Advanced Analytics, Data Engineering and Business Intelligence], 
            [Designed Parts Pricing Analytics Pricing Automation Evolution Roadmap], 
            [Interim data steward delegate ensuring compliance and risk management],
            [Reviewer\\approver of TAP data access to ensure compliance and security],
            [Strategic leader in AWS, Snowflake, R, Python, Alteryx and PowerBI],
            [Leads pricing automation, machine learning and reproducible reporting efforts],
            [Leads team of 8 data scientists and data engineers],
            [Manages analytics role in Major Price Plan ensuring seamless execution]
            )
           ]

#exp_entry("S&OP Coordinator - Analytics", 
           "Energy & Transportation",
           "Caterpillar Inc., 10/2015-10/2020")[
            #list(
            [Led data implementation for cloud based forecasting system with external vendor],
            [Implemented analytics server for increased automation and analytics],
            [Championed data governance and validation process establishment],
            [Built consensus across industry groups for key analytics initiatives],
            [Prepared centralized E&T scoped statistical forecast, improving forecast accuracy], 
            [Established data engineering, advanced analytic, and business intelligence efforts],
            [Implemented pricing anomaly detection program for the forecasting system],
            [Led implementation of centralized Tableau reporting/engineered standard metrics]
            )
           ]

#exp_entry("Machine Demand Forecaster", 
           "Business Economics",
           "Caterpillar Inc., 4/2012-9/2015")[
            #list(
            [Developed demand forecast and annual Long Term Forecast for L&H product],
            [Forecasted over \$3 billion in annual revenue],
            [Collaborated with forecast stakeholders to arrive at forecast consensus],
            [Prepared forecast analysis for upper management in Executive S&OP meetings],
            [Presented monthly to product managers on forecast changes and performance],
            [Mined economic databases for leading indicators for machine learning model],
            [Developed Excel/VBA based forecasting system for use across the division],            
            )
           ]

#exp_entry("Regional/Sr. Economic Analyst", 
           "Business Economics",
           "Caterpillar Inc., 11/2006-3/2012")[
            #list(
            [Prepared North American economic forecast (GDP, inflation, interest rates, IP, etc.)],
            [Enhanced the U.S. GDP forecast using chaining to ensure hierarchical consistency],
            [Prepared North American machine industry sales forecast],
            [Authored Canada economic summary for Caterpillar Board of Directors meetings],
            [Managed and communicated North America PINS/market share assumptions],
            [Prepared worldwide long term exchange rate forecasts],
            [Supported business cycle monitoring processes and various enterprise initiatives]
            )
           ]

#exp_entry("Economic/Quantitative Analyst", 
           "Business Economics",
           "Caterpillar Inc., 6/2005-10/2006")[
            #list(
            [Maintained monthly processes for Asia Pacific and Latin America],
            [Translated relevant Spanish language economic articles],
            [Prepared models and reports for Business Plan and Long Term forecast],
            [On-boarded new analysts and interns]
            )
           ]

#section_heading("Education")

#edu_entry("M.A., Applied Economics", 
           "Illinois State University, 5/2005")[
            Earned an M.A. in Applied Economics. Coursework included advanced linear algebra, real analysis, stochastic processes, econometrics, statistics, and labor/human resource economics. Required demonstration of the command of a foreign language.
           ]

#edu_entry("B.A., Economics", 
           "Brigham Young University, 12/2002")[
           Earned a B.A. in Economics. Coursework included spanish, computer programming, calculus, differential equations, linear algebra, price theory,  finanical, trade, urban, and  health economics.
           ]

#pagebreak()

#set page(
    paper: "us-letter",
    margin: (left: 0mm, right: 0mm, top: 0mm, bottom: 0mm))

#top_section_heading("Certifications")

#grid(columns: (8%, 22%, 8%, 23%, 8%, 25%),
//      stroke: rgb(blue),
      gutter: 1%,
      grid.cell(image("graphics/Data Strategy Certification.png", width: 100%), align: horizon), 
      grid.cell([#text("Data Strategy", weight: "bold") #linebreak()
       #text("UC Berkeley, 4/2024") #linebreak()
       #text("Data as a Strategic Advantage")], align: horizon),
       grid.cell([#text("In") #linebreak()
        #text("Progress...")], align: horizon + center, fill: rgb("#cac8c8")),
       grid.cell([#text("Machine Learning & AI", weight: "bold") #linebreak()
        #text("UC Berkeley, Expected 3/2025") #linebreak()
        #text("Strong Foundation in ML/AI")], align: horizon),
       grid.cell(image("graphics/certified_cloud_practitioner.png", width: 100%), align: horizon),
       grid.cell([#text("AWS Certified Cloud Practitioner", weight: "bold") #linebreak()
        #text("AWS, 8/2023-8/2026") #linebreak()
        #text("Foundational Understanding of") #linebreak()
        #text("Cloud Services")], align: horizon))

#grid(columns: (5%, 44%, 44%, 5%),
      gutter: 1%,
      [],
      grid.cell([#text("Professional Forecaster", weight: "bold") #linebreak()
       #text("Institute for Business Forecasting, 8/2010-6/2014")], align: horizon + center),
      grid.cell([#text("Economic Measurement", weight: "bold") #linebreak()
       #text("National Association for Business Economics, 10/2011")], align: horizon + center),
       [])

//#lorem(60)

#section_heading("Leadership Qualities & Training")

#lorem(60)

#section_heading("Analytic & Technical Skills")

#lorem(60)

#section_heading("Languages, Projects, and Activities")

#lorem(60)
