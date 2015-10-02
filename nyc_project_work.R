# Download PLUTO files if they don't already exist
if (!file.exists("data.zip")){
        download.file("http://www.nyc.gov/html/dcp/download/bytes/nyc_pluto_15v1.zip", "data.zip")
        unzip("data.zip")
}

# Import borough data from csv
mn <- read.csv("mn.csv")
qn <- read.csv("qn.csv")
bk <- read.csv("bk.csv")
bx <- read.csv("bx.csv")
si <- read.csv("si.csv")
# Join borough data into single table
data <- rbind(mn, qn, bk, bx, si)
rm(mn, qn, bk, bx, si)
