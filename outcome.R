library(data.table)

# res <- data.table::fread('data/outcome-of-care-measures.csv')
# head(res)
# str(res[,c(2,7,11,17,19,23)])
# summary(res[,c(2,7, 11,17,19,23)])

# res[, 11] <- as.numeric(unlist(res[, 11]))
# hist(unlist(res[, 11]))

outcome <- read.csv("data/outcome-of-care-measures.csv", colClasses = "character")
ncol(outcome)
nrow(outcome)
outcome[, 11] <- as.numeric(unlist(outcome[, 11]))
# res <- outcome[, 11]
hist(outcome[, 11])