# Predicting the Operational Status of Tanzanian Water Pumps
**By:** Thomas Skowronek

**Program:** M.S. Data Science - Regis University

**Course:** MSDS-692 Data Science Practicum I


## Project Overview
Most citizens take the ease of accessibility to drinking water for granted.  However, in some parts of the world, drinking water is a scarce commodity.  An article published in Time Magazine in January 2018 states that Cape Town, South Africa is 90 days away from running out of water.   Given this critical social issue, I found the organization DrivenData, which is hosting a data science competition to detect the operational status of water pumps in Tanzanian.  The name of the competition is "[Pump it Up: Data Mining the Water Table](https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table/)".

## Project Goal
My goal for this project is to use the R language and apply the water pump data to multiple classification algorithms.  The classification models will be evaluated to determine, which algorithm and set of model parameters are able to maximize the classification rate according to the evaluation metric for the competition and correctly classify the status of the water pumps.

### Classification Algorithms
Given that the DrivenData challenge is focused on classification correctness, I selected algorithms that favor accuracy over speed to minimize the misclassification rate in my models.

* Decision Tree
* Random Forest
* Extreme Gradient Boosting
* Support Vector Machine
* Deep Neural Network


## Source Code
The complete source for this project is available below.  The source data for the project is not included.  However, the data ingest R Notebook will download the dataset from AWS S3.

* [01-Data-Ingest.Rmd](src/01-Data-Ingest.Rmd)
* [02-Data-Processing.Rmd](src/02-Data-Processing.Rmd)
* [03-Exploratory-Data-Analysis.Rmd](src/03-Exploratory-Data-Analysis.Rmd)
* [04-Decision-Tree.Rmd](src/04-Decision-Tree.Rmd)
* [05-Random-Forest.Rmd](src/05-Random-Forest.Rmd)
* [06-XGBoost.Rmd](src/06-XGBoost.Rmd)
* [07-Support-Vector-Machines.Rmd](src/07-Support-Vector-Machines.Rmd)
* [08-H2O-Deep-Learning.Rmd](src/08-H2O-Deep-Learning.Rmd)
* modules
  * [load-test-data.R](src/modules/load-test-data.R)
  * [load-training-data.R](src/modules/load-training-data.R)


## Presentation
* [Slide Deck](presentation/TSkowronek_MSDS692_Presentation.pdf)
* Narrated Presentation:
[![Narrated Presentation](images/video-presentation.png)](https://youtu.be/RE52IcqRRUQ)