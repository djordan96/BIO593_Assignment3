download.file("https://ndownloader.figshare.com/files/2292169" , "data/portal_data_joined.csv") 
download.file("https://ndownloader.figshare.com/files/2292171" , "data/portal_data.sqlite", mode = "wb")
surveys <- read.csv("data/portal_data_joined.csv") #uploading csv