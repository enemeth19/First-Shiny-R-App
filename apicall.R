
library("httr")
 # For crafting calls and authentication of APIs

library("jsonlite")
  # For translating JSON structures into R objects

options(stringsAsFactors=FALSE)
  # Prevents conversion of characters into factor variables

url<-"http://firebrowse.org"
path<-"/api/v1/Samples/mRNASeq?format=json&cohort=PRAD&sample_type=TP&protocol=RSEM&page=1&page_size=550&sort_by=tcga_participant_barcode"

raw.result<-GET(url=url, path=path)

names(raw.result)
# Result is a list of length 10

raw.result$status_code

head(raw.result$content)

this.raw.content<-rawToChar(raw.result$content)

nchar(this.raw.content)

substr(this.raw.content, 1, 100)

this.content<-fromJSON(this.raw.content)

class(this.content)

length(this.content)









