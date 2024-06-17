# Recursive function to calculate Fibonacci sequence
fibonacci <- function(n) {
  if (n <= 1) {
    return(n)
  } else {
    return(fibonacci(n - 1) + fibonacci(n - 2))
  }
}

# Function to print Fibonacci series up to n terms
print_fibonacci_series <- function(n) {
  for (i in 0:(n-1)) {
    cat(fibonacci(i), " ")
  }
  cat("\n")
}

# Example usage:
n <-as.numeric(readline("number:"))  # Number of terms in the series
#print("Fibonacci series up to", n, "terms:")
print_fibonacci_series(n)

