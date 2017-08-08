library('shiny')
library('leaflet')
shinyUI(ui<-fluidPage(
  titlePanel("Uploading Files"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Choose file to upload',
                accept = c(
                  'text/csv',
                  'text/comma-separated-values',
                  'text/tab-separated-values',
                  'text/plain',
                '.csv',
                  '.tsv'
                
                )
       ),
      width =3
     
      
    ),
    
      
    mainPanel(
      
      leafletOutput("mymap",width = "100%",height =800)
      #tableOutput("contents")

    )
  )
)
)