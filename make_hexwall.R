hex_folder <- "hex_files"

download.file(
  url = "https://github.com/rstudio/hex-stickers/archive/master.zip",
  destfile = file.path(hex_folder, "rstudio-hex.zip")
)

unzip(
  zipfile = file.path(hex_folder, "rstudio-hex.zip"),
  exdir = hex_folder
)

path <- file.path(hex_folder, "hex-stickers-master", "PNG")

# Remove the non-image files
unlink(list.files(path, full.names = TRUE)[tools::file_ext(list.files(path)) %in% c("md", "Rmd")])

list.files(path)

source("hexwall.R")
hexwall(path, sticker_row_size = 9, sticker_width = 484)
