factorial_recursive <- function(n) {
  if (n == 0 || n == 1) {
    return(1)
  } else {
    return(n * factorial_recursive(n - 1))
  }
}

# Example usage:
a<-as.integer(readline("Enter a number:"))
result <- factorial_recursive(a)
print(result)  # Output: 120

