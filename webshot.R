
library(webshot)
library(magick)

image_from_url <- function(url, geometry="x400", filename="web_image.png") {
  tmp_file = tempfile("img", fileext = ".png")
  webshot("url", tmp_file) 

  image_read(tmp_file) |>
    image_crop(geometry=geometry) |>
    image_write(path="./test.png")

}

image_from_yaml <- function(geometry="400", filename){
  yaml_url <- rmarkdown::metadata()$url
  
  image_from_url(url, geometry, filename)
  
}

#knitr::include_graphics("shiny.png")
