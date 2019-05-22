# This function looks at a specific state and finds the best/worst/rank of the hospital in
# the specific outcome category. For eg: rankhospital("TX","heart attack","best") will spit
# out the best hospital in TX for mortality in heart attacks


rankhospital <- function(state,outcome,num="best") {
  outcomes <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
  
  if (sum(state==outcomes$State)==0) {
    stop("invalid state")
  }
  
  if (sum(outcome==names(cols_of_interest))==0) {
    stop("invalid outcome")
  }
  
  cols_of_interest <- c("heart attack" = 11, "heart failure" = 17, "pneumonia" = 23)
  
  col_number <- cols_of_interest[[outcome]]
  
  subsetter <- subset(outcomes,State==state, select=c(Hospital.Name,col_number))

  
  if (is.numeric(num) && num > nrow(subsetter)) {
    return (NA)
  }
  
  subsetted <- subset(subsetter,subsetter[names(subsetter)[2]]!="Not Available")
  rank<- subsetted[order(as.numeric(subsetted[,2]),subsetted[,1]),]
  
  if (num == "best") {
    return(rank[1,1])
  }
  if(num == "worst") {
    return(rank[nrow(subsetted),1])
  }
  
  return(rank[num,1])
  
  
}