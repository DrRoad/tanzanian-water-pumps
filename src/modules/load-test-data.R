# Script to extract out the loading of the test data set with the purpose of being sourced into the notebooks

# Load the cleansed training data
test.values <- read.csv("../data/clean-test-set-values.csv", header = TRUE, na.strings = "NA")

test.values$funder <- as.character(test.values$funder)
test.values$funder[is.na(test.values$funder)] <- "UNKNOWN"
test.values$funder <- as.factor(test.values$funder)

test.values$permit <- as.character(test.values$permit)
test.values$permit[is.na(test.values$permit)] <- "UNKNOWN"
test.values$permit <- as.factor(test.values$permit)

test.values$construction_year[is.na(test.values$construction_year)] <- 0

test.values$population[is.na(test.values$population)] <- 0

test.values$public_meeting <- as.character(test.values$public_meeting)
test.values$public_meeting[is.na(test.values$public_meeting)] <- "UNKNOWN"
test.values$public_meeting <- as.factor(test.values$public_meeting)

test.values$scheme_management <- as.character(test.values$scheme_management)
test.values$scheme_management[is.na(test.values$scheme_management)] <- "UNKNOWN"
test.values$scheme_management <- as.factor(test.values$scheme_management)

test.values$wpt_name <- as.character(test.values$wpt_name)

test.values$region_code <- as.factor(test.values$region_code)

test.values$district_code <- as.factor(test.values$district_code)