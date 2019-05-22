# This function takes an outcome, looks through every state, and spits out a list documenting
# the hospital with the respective ranking in the state. FOr eg: rankall("heart attack","best)
# will give the hospital with the best survival rate in heart attacks for each state

rankall <- function(outcome, num = "best") {
  outcomes <- read.csv("outcome-of-care-measures.csv",colClasses = "character")
  
  if (sum(outcome==names(cols_of_interest))==0) {
    stop("invalid outcome")
  }

  cols_of_interest <- c("heart attack" = 11, "heart failure" = 17, "pneumonia" = 23)
  
  col_number <- cols_of_interest[[outcome]]  
  
  # This function will take the state and spit out rank
  fun <- function(x) {
    sorted <- x[order(as.numeric(x[,2]),x[,1]),]
  
    if (num == "best") {
      return(sorted[1,c(1,2,3)])
    }
    if (num == "worst") {
      new <- sorted[sorted[,2] != "Not Available",]
      return(new[nrow(new),c(1,2,3)])
    }
    if (is.numeric(num) && num > nrow(sorted)) {
      return (list(NA,NA,sorted[1,3]))
    }
    return(sorted[num,c(1,2,3)])
  }  
  
  splits<-split(outcomes[,c(2,col_number,7)],outcomes['State'])
  ans <- vapply(splits,fun,data.frame(1,2,3))
  dimnames(ans)[[1]] <- c("Hospital","State","Something")
  return(t(ans))
}