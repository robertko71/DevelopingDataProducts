library(UsingR)
library(ggmap)
library(mapproj)
map <- get_map(location = 'Netherlands', zoom = 7)
shinyServer(
    function(input, output) {
        output$newMap <- renderPlot({
            ggmap(map) + geom_point(data=geocode(input$inLocation),aes(x=lon,y=lat),colour="blue",size=5)
        })
    }
)