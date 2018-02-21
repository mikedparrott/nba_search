#' A Function to Find Oldest NBA Player by Year
#'
#' This function allows you to Find Oldest NBA Player by Year
#' @param yearinput
#' @keywords nba,oldest
#' @export
#' @examples
#' find_oldest()

find_oldest<-function(yearinput){
data(nba_data)
ageyeardata<-  dplyr::select(nba_data, Year, Age)
 yeardata<- dplyr::filter(ageyeardata,Year==yearinput)
yeardata<-yeardata[complete.cases(yeardata),] #remove missing values NA, NaN, and Inf values

 max(yeardata$Age,na.rm=TRUE)


}

