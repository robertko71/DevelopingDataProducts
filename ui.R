shinyUI(pageWithSidebar(
    headerPanel("Locations in Holland"),
    sidebarPanel(
        radioButtons('inLocation', 'Choose Location', 
                     choices = list("Amsterdam" = "AMSTERDAM", 
                                    "Rotterdam" = "ROTTERDAM", 
                                    "Almere" = "ALMERE", 
                                    "Eindhoven" = "EINDHOVEN"),
                     selected="AMSTERDAM")
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("App",plotOutput('newMap')),
            tabPanel("Help",includeMarkdown('help.Rmd'))
        )
    ))
)
