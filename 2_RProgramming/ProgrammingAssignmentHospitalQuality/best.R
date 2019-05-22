# This function takes in a state and an outcome (heart attack, heart failure, pneumonia) and
# spits out an ordered list of the hospitals in the state (lowest to highest death rates for
# respective outcome)

best <- function(state, outcome) {
  outcomes <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
  
  cols_of_interest <- c("heart attack" = 11, "heart failure" = 17, "pneumonia" = 23)
  
  if (sum(state==outcomes$State)==0) {
    stop("invalid state")
  }
  
  if (sum(outcome==names(cols_of_interest))==0) {
    stop("invalid outcome")
  }
  

  col_number <- cols_of_interest[[outcome]]
  
  subsetter <- subset(outcomes,State == state,select = c(Hospital.Name,col_number))
  
  sorter <- subsetter[order(as.numeric(subsetter[,2]),subsetter[,1]),]
  return(sorter[[1,1]])
  
  
}