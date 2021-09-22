library("openxlsx")
dataCreditRating <- read.xlsx(xlsxFile = "file.xlsx")
dataCreditRating$risk_rating <- as.factor(dataCreditRating$risk_rating) 
input_columns <- c("durasi_pinjaman_bulan", "jumlah_tanggungan")
datafeed <- dataCreditRating[ , input_columns ]
set.seed(100)
indeks_training_set <- sample(900, 800)
input_training_set <- datafeed[indeks_training_set,]
class_training_set <- dataCreditRating[indeks_training_set,]$risk_rating
input_testing_set <- datafeed[-indeks_training_set,]
str(input_training_set)
str(class_training_set)
str(input_testing_set)
