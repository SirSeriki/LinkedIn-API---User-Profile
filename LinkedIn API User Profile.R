# Installing Packages 
install.packages("Rlinkedin")


# From Github
library(devtools)
install_github("mpiccirilli/Rlinkedin")
library(Rlinkedin)

# API Authentication 

in.auth <- inOAuth("RevOps", "Client ID","Client Secret")

# People search 

people_search <- searchPeople(token = in.auth, keywords = "Chief Revenue Officer")
colnames(people_search)

length(people_search)

# Checking the elements within list items 

sapply(people_search, function(x) names(x))

# Creating a data frame of the list items 

data.frame(t(sapply(people_search, function(x){
  x[c("formatted_name","headline","num_connection","industry","location","profile_url")]
})))


