library(bslib)
library(dplyr)
library(gsm)
library(purrr)
library(shiny)
library(shinyjs)
library(stringr)
library(tidyr)
library(DT)
library(htmltools)

purrr::walk(
    list.files('R', full.names = TRUE),
    source
)

#snapshot <- readRDS('data/snapshot.rds')
load('data/snapshot.rda')

#run_app(snapshot) # shiny::shinyApp()

    shinyApp(
        ui = ui(),
        server = function(input, output, session) {
            server(input, output, session, snapshot)
        }
    )
