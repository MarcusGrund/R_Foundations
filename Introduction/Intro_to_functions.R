# Functions ---------------------------------------------------------------

# Basics ------------------------------------------------------------------
my_function <- function(argument1, argument2){
  #do something
}

# Examples -----------------------------------------------------------------
is_even <- function(number){
  reminder = number %% 2
  if (reminder == 0){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}

compare_numbers <- function(number1, number2){
  if(number1 > number2){
    response = c("Number 1 is larger then number 2.")
    return(response)
  }
}

is_even(7)
is_even(8)

compare_numbers(50,40)
