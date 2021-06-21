# review function 

# make a nice funtion for name 

nice_name<-function(x){
  gsub(" ","_", tolower(x))
}

name<-"yicong Li"

nice_name(name)
#results yicong_li

# do a 

library(tidyverse)

df <-tibble("A B C" =LETTERS[1:26], NORM =rnorm(26,mean = 3,sd=1))
head(df,5)

#change A B C to nice_name 

df%>%
  #rename_all change the colume name, nice_name default. 
  rename_all(nice_name)%>%
  slice(1:5)
