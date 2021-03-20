library(dplyr)

fis <- list.files(path="_posts", pattern = "\\.md", full.names = TRUE) 
bare_file_names <- list.files(path="_posts", pattern = "\\.md") 

file_frame <- data.frame(fis, bare_file_names)

file_frame %<>%
  mutate(new_file = gsub("\\.md", "\\.Rmd", fis)) %>%
  mutate(file_folder = gsub(".Rmd", "", new_file)) %>%
  mutate(bare_new_file = gsub("\\.md", "\\.Rmd", bare_file_names)) %>%
  mutate(new_location = paste0(file_folder, "/", bare_new_file))

for(i in 1:nrow(file_frame)){
  row <- file_frame[i,]
  dir.create(row$file_folder)
  file.copy(from = row$fis, row$new_location)
  file.remove(row$ris)
}