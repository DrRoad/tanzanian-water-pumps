# Script to extract out the loading of the training data set with the purpose of being sourced into the notebooks

# Load the cleansed training data
train.values <- read.csv("../data/clean-training-set-values.csv", header = TRUE, na.strings = "NA")

train.values$funder <- as.character(train.values$funder)
train.values$funder[is.na(train.values$funder)] <- "UNKNOWN"
train.values$funder <- as.factor(train.values$funder)

train.values$permit <- as.character(train.values$permit)
train.values$permit[is.na(train.values$permit)] <- "UNKNOWN"
train.values$permit <- as.factor(train.values$permit)

train.values$construction_year[is.na(train.values$construction_year)] <- 0

train.values$population[is.na(train.values$population)] <- 0

train.values$scheme_management <- as.character(train.values$scheme_management)
train.values$scheme_management[is.na(train.values$scheme_management)] <- "UNKNOWN"
train.values$scheme_management <- as.factor(train.values$scheme_management)

train.values$wpt_name <- as.character(train.values$wpt_name)


# Load the training labels
train.labels <- read.csv("../data/src-training-set-labels.csv", header = TRUE)

# Merge the data values and labels
training.data <- merge(train.values, train.labels)

# Drop the id attribute
training.data <- training.data %>% select(-one_of(c("id")))