// Imports
#import "@preview/cades:0.3.0": qr-code
#import "@preview/fontawesome:0.5.0": *
#import "@preview/pinit:0.2.2"

// Custom parameters
#let header_color = rgb("BCC79E")
#let footer_color = rgb("#000000")
#let paragraph_font = "Lato"
#let paragraph_font_size = 9pt
#let title_font = "Lato"

// Set page defaults
#set page(
    paper: "us-letter",
    margin: (left: 0mm, right: 0mm, top: 21mm, bottom: 8mm),
    header-ascent: 0pt,
    header: place(top + center)[
                  #block(fill: header_color)[
                    #align(center)[
                        #text(size: 2em,
                        font: title_font,
                        weight: "semibold")[Jonathan T. Oxborrow] #linebreak()
                        Economics, S&OP and Pricing Analytics Professional #linebreak()
                        Washington, IL 61571 | USA | #link("tel:3098222113")[+1-309-822-2113] #linebreak()
                        #text(font: "FontAwesome", size: paragraph_font_size)[#link("https://www.linkedin.com/in/joxborrow1")[]  | #link("www.github.com/joxborrow")[] | #link("https://joxborrow.github.io")[] | #link("mailto:jonathan.todd.oxborrow@gmail.com")[] | #link("https://wa.me/13098222113")[]]
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
              )[Test]
    ],
    foreground: box(stroke: 2pt + black,
                    height: 100%, width: 100%,
                    fill: none)
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
                                    #v(0em)
                                    #text(line1, weight: "bold") #linebreak()
                                    #line2 #linebreak()
                                    #line3 
                                ],
                                align(left + top)[
                                    #v(-.5em)
                                    #content
                                ]
                               )
                          }

#let edu_entry(line1,
               line2,
               vspace: .0em,
               content) = {grid(columns: (.8fr,2fr),
                                gutter: 8pt,
                                inset: .0em,
                                align(left + top)[
                                    #v(vspace)
                                    #text(line1, weight: "bold") #linebreak()
                                    #line2 #linebreak()
                                ],
                                align(left + top)[
                                    #content
                                ]
                               )
                          }

#let ats_entry(line1,
               vspace: .5em,
               col1: .8fr,
               content) = {grid(columns: (col1,2fr),
                                gutter: 8pt,
                                inset: .0em,
                                align(left + top)[
                                    #v(vspace)
                                    #text(line1, weight: "bold")
                                ],
                                align(left + top)[
                                    #content
                                ]
                               )
                          }

#let badge(content, fill: header_color, stroke: none, text-color: black) = box(
  radius: 2pt,
  inset: 4pt,
  fill: fill,
  stroke: stroke,
  width: auto,
  height: auto,

  if type(content) == str {
    text(fill: text-color, content)
  } else {
    content
  }
)

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

#box(exp_entry("S&OP Coordinator - Analytics",
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
           ])

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
           Earned a B.A. in Economics. Coursework included Spanish, computer programming, calculus, differential equations, linear algebra, price theory,  financial, trade, urban, and  health economics.
           ]



#top_section_heading("Certifications")

#edu_entry("Machine Learning & A.I.",
           "UC Berkeley, Expected 3/2025")[
            Certification in tools and knowledge in Machine Learning and Artificial intelligence including: statistics, analysis, clustering, dimension reduction, regression, feature engineering, model selection and regularization, classification, logistic regression, decision trees, gradient descent and optimization, kernel methods, natural language processing, recommendation systems, ensemble techniques, and neural networks.
           ]


#edu_entry("Data Strategy",
          "UC Berkeley, 4/2024")[
            Comprehensive training in Data Strategy. Learnings included Data Management, Data Governance, Quality and Security, Data Processes and Technology, Data Organization and Culture, Data at the Leading Edge.
          ]


#set page(header: none,
          margin: (top: 0mm))

#top_section_heading("")

#edu_entry("AWS Certified Cloud Practitioner",
           "AWS, 8/2023-8/2026")[
            Foundational high level understanding of AWS cloud services and terminology. Essential understanding of AWS compute, network, database, security and storage services. Services covered: EC2, Elastic Load Balancing,
            SQS, SNS, AWS Global Infrastructure, CloudFront, VPNs, deployment models, EBS, EFS, RDS, IAM, Cloudwatch, Cloudtrail, Organizations, Cost Explorer, etc.
           ]

#edu_entry("Professional Forecaster",
           "Institute for Business Forecasting")[
            Certifies knowledge and skills in forecasting mechanics and process. Validates knowledge in S&OP/IBP, statistical forecast modeling and measurement, as well as the forecasting soft skills of getting buy-in from stakeholders.
           ]

#edu_entry("Economic Measurement",
           "NABE")[
            National Association for Business Economics certification in Economic Measurement requires a comprehensive knowledge of measures of U.S. economic performance and key analytic techniques to evaluate economic data.
           ]

#section_heading("Leadership Qualities & Training")

#ats_entry("Qualities", col1: .731fr)[
#grid(columns: (1fr, 1fr),
      inset: 0em,
[#v(-1em)
    - Communication & Emotional Intelligence
    - Ownership - Drives projects to completion
    - Values & Integrity],
[#v(-1em)
    - Enterprise Behavior & Teamwork
    - Goal/Result Oriented
    - Intellectually Curious & Continuous Learner

])]

#v(-1.8em)

#ats_entry("Training", col1: .731fr)[
    #grid(columns: (1fr, 1fr),
          inset: 0em,[
            - LD200 - Frontline Leadership
          ],
          [
            - Leadership Paradox
            - BetterUp Leadership Coaching
          ])
]

#v(-1em)

#section_heading("Analytic & Technical Skills")
#v(-.5em)
#ats_entry("Analytics & Programming",
            col1: .766fr)[
    #grid(
        rows: (auto, auto, auto),
        columns: (auto, auto),
        row-gutter: .25em,
        column-gutter: .25em,
        [Proficient:],
        [#par(leading: .25em, justify: false)[#badge("Python") #badge("PySpark") #badge("SQL/Snowflake") #badge("R")
        #badge("Quarto") #badge("AWS/EMR") #badge("Excel/VBA") #badge("Power Automate")
        #badge("Tableau") #badge("DevOps") #badge("Git/Github/Codespaces") #badge("Mermaid")
        #badge("Graphviz/Dot")]],
        [Experienced:],
        [#par(leading: .25em, justify: false)[#badge("PowerBI") #badge("Alteryx") #badge("Cognos") #badge("SAP Bobj")
        #badge("SAS") #badge("STATA") #badge("Eviews") #badge("bash") #badge("Typst")]],
        [Functional:],
        [#par(leading: .25em, justify: false)[#badge("Julia") #badge("C/C#"), #badge("Javascript") #badge("Docker")]])
]
#v(-1em)
#line(length: 1000%, stroke: .25pt, start: (0%, 0%))
#v(-1em)
#ats_entry("Statistics, ML, and AI",
           col1: .766fr)[
    #grid(
        rows: (auto, auto, auto),
        columns: (auto, auto),
        row-gutter: 4pt,
        column-gutter: 4pt,
        [Proficient:],
        [#par(leading: .25em, justify: false)[#badge("Time Series & Forecasting") #badge("Seasonal Adjustment") #badge("Regression/GLM") #badge("Classification")]],
        [Experienced:],
        [#par(leading: .25em, justify: false)[#badge("KNN/DBSCAN") #badge("Lasso/Ridge") #badge("Logistic Regression")
         #badge("Kernel Methods") #badge("Feature Engineering/Selection") #badge("Decision Trees/Random Forest")
         #badge("Outlier Detection") #badge("Imputation") #badge("NLP/Naive Bayes") #badge("SVD")
         #badge("Gradient Descent")]],
        [Functional:],[#par(leading: .25em, justify: false)[#badge("Graph & Network Analysis")]])]
#v(-.5em)

#section_heading("Languages, Projects, and Activities")

#ats_entry("Languages", vspace: 0em)[
    English: Native #linebreak()
    Spanish: Reads, writes, and speaks with professional proficiency
]

#ats_entry("Projects & Activities", vspace: 0em)[
    YNABR: An open source API client package for the "You Need a Budget" web application in R #linebreak()
    XRANDRGUI: An open source GUI for the XRANDR Linux utility implemented in Python #linebreak()
    BYU-Idaho Instructor: Part time online instructor for Econ 150, Fall 2021-Present
]

#ats_entry("Volunteer Service", vspace: 0em)[
    Economics Advisory Board, Illinois State University, January 2025-Present
]
